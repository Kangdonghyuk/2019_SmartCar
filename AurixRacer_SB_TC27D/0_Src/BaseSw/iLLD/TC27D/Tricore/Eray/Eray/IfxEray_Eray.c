/**
 * \file IfxEray_Eray.c
 * \brief ERAY ERAY details
 *
 * \version iLLD_1_0_1_8_0
 * \copyright Copyright (c) 2018 Infineon Technologies AG. All rights reserved.
 *
 *
 *                                 IMPORTANT NOTICE
 *
 *
 * Infineon Technologies AG (Infineon) is supplying this file for use
 * exclusively with Infineon's microcontroller products. This file can be freely
 * distributed within development tools that are supporting such microcontroller
 * products.
 *
 * THIS SOFTWARE IS PROVIDED "AS IS".  NO WARRANTIES, WHETHER EXPRESS, IMPLIED
 * OR STATUTORY, INCLUDING, BUT NOT LIMITED TO, IMPLIED WARRANTIES OF
 * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE APPLY TO THIS SOFTWARE.
 * INFINEON SHALL NOT, IN ANY CIRCUMSTANCES, BE LIABLE FOR SPECIAL, INCIDENTAL,
 * OR CONSEQUENTIAL DAMAGES, FOR ANY REASON WHATSOEVER.
 *
 */

/******************************************************************************/
/*----------------------------------Includes----------------------------------*/
/******************************************************************************/

#include "IfxEray_Eray.h"
#include "Mtu/Std/IfxMtu.h"

/** \addtogroup IfxLld_Eray_Eray_Node
 * \{ */

/******************************************************************************/
/*-----------------------Private Function Prototypes--------------------------*/
/******************************************************************************/

/** \brief Inialises the communication controller.
 * \param eray pointer to ERAY Module handle.
 * \param config pointer to communication controller config structure.
 * \return None
 */
IFX_STATIC void IfxEray_Eray_Node_initCommunicationController(IfxEray_Eray *eray, const IfxEray_Eray_ControllerConfig *config);

/** \brief Initialises the Global Timing Unit.
 * \param eray pointer to ERAY Module handle.
 * \param config global timing unit Configuration structure.
 * \return None
 */
IFX_STATIC void IfxEray_Eray_Node_initGTU(IfxEray_Eray *eray, const IfxEray_Eray_GTUConfig *config);

/** \brief Inialises the message RAM.
 * \param eray pointer to ERAY Module handle.
 * \param config pointer to message RAM config structure.
 * \return None
 */
IFX_STATIC void IfxEray_Eray_Node_initMessageRAM(IfxEray_Eray *eray, const IfxEray_Eray_MessageRAMConfig *config);

/** \} */

/******************************************************************************/
/*-------------------------Function Implementations---------------------------*/
/******************************************************************************/

void IfxEray_Eray_Node_init(IfxEray_Eray *eray, const IfxEray_Eray_NodeConfig *config)
{
    Ifx_ERAY *eraySFR = eray->eray;
    // clear all the flags
    IfxEray_clearAllFlags(eraySFR);

    // set Communication Controller to config state
    if (IfxEray_getPocState(eraySFR) != IfxEray_PocState_config)
    {
        IfxEray_changePocState(eraySFR, IfxEray_PocCommand_freeze);
        IfxEray_waitForPocState(eraySFR, IfxEray_PocState_halt);
        IfxEray_changePocState(eraySFR, IfxEray_PocCommand_config);
        IfxEray_waitForPocState(eraySFR, IfxEray_PocState_defaultConfig);
        IfxEray_changePocState(eraySFR, IfxEray_PocCommand_config);
        IfxEray_waitForPocState(eraySFR, IfxEray_PocState_config);
    }

    // enable interrupt lines
    IfxEray_enableInterruptLines(eraySFR);
    IfxEray_setAutoDelayBuffers(eraySFR);
    //configure message RAM ( slots and slot buffers )
    IfxEray_Eray_Node_initMessageRAM(eray, &config->messageRAMConfig);
    //configure communication controller for clock corrections
    IfxEray_Eray_Node_initCommunicationController(eray, &config->controllerConfig);
    // initialise the Node pins.
    const IfxEray_Eray_Pins *pins = config->pins;

    if (pins != NULL_PTR)
    {
        const IfxEray_Eray_NodeA *nodeAPins = pins->nodeAPins;

        if (nodeAPins != NULL_PTR)
        {
            const IfxEray_Rxd_In *rx = nodeAPins->rxIn;

            if (rx != NULL_PTR)
            {
                IfxEray_initRxPinWithPadLevel(rx, nodeAPins->rxInMode, nodeAPins->pinDriver);
            }

            const IfxEray_Txd_Out *tx = nodeAPins->txOut;

            if (tx != NULL_PTR)
            {
                IfxEray_initTxPin(tx, nodeAPins->txOutMode, nodeAPins->pinDriver);
            }

            const IfxEray_Txen_Out *txEn = nodeAPins->txEnOut;

            if (txEn != NULL_PTR)
            {
                IfxEray_initTxEnPin(txEn, nodeAPins->txEnOutMode, nodeAPins->pinDriver);
            }
        }

        const IfxEray_Eray_NodeB *nodeBPins = pins->nodeBPins;

        if (nodeBPins != NULL_PTR)
        {
            const IfxEray_Rxd_In *rx = nodeBPins->rxIn;

            if (rx != NULL_PTR)
            {
                IfxEray_initRxPinWithPadLevel(rx, nodeBPins->rxInMode, nodeBPins->pinDriver);
            }

            const IfxEray_Txd_Out *tx = nodeBPins->txOut;

            if (tx != NULL_PTR)
            {
                IfxEray_initTxPin(tx, nodeBPins->txOutMode, nodeBPins->pinDriver);
            }

            const IfxEray_Txen_Out *txEn = nodeBPins->txEnOut;

            if (txEn != NULL_PTR)
            {
                IfxEray_initTxEnPin(txEn, nodeBPins->txEnOutMode, nodeBPins->pinDriver);
            }
        }
    }

    // set the Communication Controller to ready state
    IfxEray_setPocReady(eraySFR);
}


IFX_STATIC void IfxEray_Eray_Node_initCommunicationController(IfxEray_Eray *eray, const IfxEray_Eray_ControllerConfig *config)
{
    Ifx_ERAY *eraySFR = eray->eray;
    //SUCC1
    IfxEray_setTransmittedFrames(eraySFR, config->succ1Config.startupFrameTransmitted, config->succ1Config.syncFrameTransmitted);
    IfxEray_setMaxColdStartAttempts(eraySFR, config->succ1Config.maxColdStartAttempts);
    IfxEray_setActiveCyclePairs(eraySFR, config->succ1Config.numberOfCyclePairsForActive);
    IfxEray_setWakeupPatternChannel(eraySFR, config->succ1Config.wakeupPatternChannel);
    IfxEray_setTransmissionSlotMode(eraySFR, config->succ1Config.transmissionSlotMode);
    IfxEray_setClockSynchErrorHalt(eraySFR, config->succ1Config.clockSyncErrorHalt);
    IfxEray_setSymbolChannels(eraySFR, config->succ1Config.channelASymbolTransmitted, config->succ1Config.channelBSymbolTransmitted);
    IfxEray_setNodeChannels(eraySFR, config->succ1Config.channelAConnectedNode, config->succ1Config.channelBConnectedNode);
    //SUCC2
    IfxEray_setListenTimeOuts(eraySFR, config->succ2Config.listenTimeOut, config->succ2Config.listenTimeOutNoise);
    //SUCC3
    IfxEray_setClockCorrectionCycles(eraySFR, config->succ3Config.clockCorrectionCyclesPassive, config->succ3Config.clockCorrectionCyclesHalt);
    //NEMC
    IfxEray_setNetworkVectorLength(eraySFR, config->networkVectorLength);
    //PRTC1, PRTC2
    IfxEray_setTransmissionStartTime(eraySFR, (uint8)config->prtc1Control.transmissionStartTime);
    IfxEray_setCollisionAvoidanceDuration(eraySFR, config->prtc1Control.collisionAvoidanceDuration);
    IfxEray_setStrobePosition(eraySFR, config->prtc1Control.strobePosition);
    IfxEray_setBaudrate(eraySFR, config->prtc1Control.baudrate);
    IfxEray_setReceiveWakeupTimes(eraySFR, config->prtc1Control.receiveWakeupTestDuration, config->prtc2Control.receiveWakeupIdleTime, config->prtc2Control.receiveWakeupLowTime
        );
    IfxEray_setTransmitWakeupTimes(eraySFR, config->prtc1Control.transmitWakeupRepetitions, config->prtc2Control.transmitWakeupIdleTime, config->prtc2Control.transmitWakeupLowTime);
    //MHDC
    IfxEray_setMessageHandlerConfigurations(eraySFR, config->staticFramepayload, config->latestTransmissionStart);
    // GTU
    IfxEray_Eray_Node_initGTU(eray, &config->gtuConfig);
}


void IfxEray_Eray_Node_initConfig(IfxEray_Eray_NodeConfig *config)
{
    // Default node configurations buffer
    const IfxEray_Eray_NodeConfig nodeConfig = {
        .messageRAMConfig                           = {
            .firstDynamicBuffer     = 0,
            .numberOfMessageBuffers = 0,
            .fifoBufferStartIndex   = 0x80,
            .fifoDepth              = 30,
            .frameIdFilter          = 0x7FD,
            .receiveChannel         = IfxEray_ReceiveChannel_a,
            .rejectedFrameId        = 2,
            .filteredCycleNumber    = 0,
            .staticFifoDisabled     = FALSE,
            .fifoNullFramesRejected = FALSE,
            .bufferReconfigEnabled  = TRUE,
            .fifoConfigured         = FALSE
        },

        .controllerConfig                           = {
            .networkVectorLength     = 0x2,
            .staticFramepayload      = 0x4,
            .latestTransmissionStart = 0x3F,

            .prtc1Control            = {
                .transmissionStartTime      = 0xA,
                .collisionAvoidanceDuration = 0x61,
                .strobePosition             = IfxEray_StrobePosition_5,
                .baudrate                   = IfxEray_Baudrate_10,
                .receiveWakeupTestDuration  = 0x8C,
                .transmitWakeupRepetitions  = 0x2
            },

            .prtc2Control                           = {
                .receiveWakeupIdleTime  = 0x2D,
                .receiveWakeupLowTime   = 0x12,
                .transmitWakeupIdleTime = 0x2D,
                .transmitWakeupLowTime  = 0x12
            },

            .succ1Config                            = {
                .channelAConnectedNode       = TRUE,
                .channelBConnectedNode       = TRUE,
                .channelASymbolTransmitted   = FALSE,
                .channelBSymbolTransmitted   = FALSE,
                .clockSyncErrorHalt          = TRUE,
                .transmissionSlotMode        = IfxEray_TransmissionSlotMode_single,
                .wakeupPatternChannel        = IfxEray_WakeupChannel_a,
                .numberOfCyclePairsForActive = 0x7,
                .maxColdStartAttempts        = 0x1F,
                .syncFrameTransmitted        = TRUE,
                .startupFrameTransmitted     = TRUE
            },

            .succ2Config                            = {
                .listenTimeOut      = 0x13972,
                .listenTimeOutNoise = IfxEray_ListenTimeOutNoise_16
            },

            .succ3Config                            = {
                .clockCorrectionCyclesPassive = 0x1,
                .clockCorrectionCyclesHalt    = 0x1
            },

            .gtuConfig                              = {
                .gtu01Config.microticksPerCycle = 0x9C40,

                .gtu02Config                    = {
                    .macroticksPerCycle = 0x3E8,
                    .maxSyncFrames      = 0x4
                },

                .gtu03Config                        = {
                    .channelAMicrotickInitialOffset = 0x19,
                    .channelBMicrotickInitialOffset = 0x19,
                    .channelAMacrotickInitialOffset = 0xA,
                    .channelBMacrotickInitialOffset = 0x2
                },

                .gtu04Config                        = {
                    .networkStartIdleTime = 0x38E,
                    .correctionOffset     = 0x394
                },

                .gtu05Config                        = {
                    .channelAReceptionDelay = 0x4,
                    .channelBReceptionDelay = 0x4,
                    .clusterDrift           = 1,
                    .decodingCorrection     = 0x34
                },

                .gtu06Config                        = {
                    .acceptedStartupDeviation = 0x81,
                    .maxDriftOffset           = 0xD2
                },

                .gtu07Config                        = {
                    .staticSlotLength = 0x32,
                    .staticSlotsCount = 0xC
                },

                .gtu08Config                        = {
                    .dynamicSlotLength = 4,
                    .dynamicSlotCount  = 0x4B,
                },

                .gtu09Config                        = {
                    .idleDynamicSlots   = IfxEray_IdleDynamicSlots_1,
                    .staticActionPoint  = 8,
                    .dynamicActionPoint = 3
                },

                .gtu10Config                        = {
                    .maxOffsetCorrection = 0x32,
                    .maxRateCorrection   = 0xD2
                },

                .gtu11Config                        = {
                    .externalOffsetCorrection = IfxEray_ExternalOffsetCorrection_0,
                    .externalRateCorrection   = IfxEray_ExternalRateCorrection_0,
                    .externalOffset           = IfxEray_ExternalOffset_noCorrection,
                    .externalRate             = IfxEray_ExternalRate_noCorrection
                },
            },
        },
        .pins                                       = NULL_PTR
    };

    *config = nodeConfig;
}


IFX_STATIC void IfxEray_Eray_Node_initGTU(IfxEray_Eray *eray, const IfxEray_Eray_GTUConfig *config)
{
    Ifx_ERAY *eraySFR = eray->eray;

    IfxEray_setCycleDurationMicroticks(eraySFR, config->gtu01Config.microticksPerCycle);
    IfxEray_setCycleDurationMacroticks(eraySFR, config->gtu02Config.macroticksPerCycle);
    IfxEray_setMaxSynchFrames(eraySFR, (IfxEray_MaxSynchFrames)config->gtu02Config.maxSyncFrames);
    IfxEray_setChannelAInitialOffsets(eraySFR, config->gtu03Config.channelAMicrotickInitialOffset, config->gtu03Config.channelAMacrotickInitialOffset);
    IfxEray_setChannelBInitialOffsets(eraySFR, config->gtu03Config.channelBMicrotickInitialOffset, config->gtu03Config.channelBMacrotickInitialOffset);
    IfxEray_setNetworkStartIdleTime(eraySFR, config->gtu04Config.networkStartIdleTime);
    IfxEray_setOffsetCorrection(eraySFR, config->gtu04Config.correctionOffset);
    IfxEray_setChannelsReceiveDelay(eraySFR, config->gtu05Config.channelAReceptionDelay, config->gtu05Config.channelBReceptionDelay);
    IfxEray_setDecodingCorrectionValue(eraySFR, config->gtu05Config.decodingCorrection);
    IfxEray_setClusterDriftValues(eraySFR, config->gtu05Config.clusterDrift, config->gtu06Config.maxDriftOffset);
    IfxEray_setClusterStartupDeviation(eraySFR, config->gtu06Config.acceptedStartupDeviation);
    IfxEray_setStaticSlots(eraySFR, config->gtu07Config.staticSlotLength, config->gtu07Config.staticSlotsCount);
    IfxEray_setDynamicSlots(eraySFR, config->gtu08Config.dynamicSlotLength, config->gtu08Config.dynamicSlotCount, config->gtu09Config.idleDynamicSlots);
    IfxEray_setSlotActionPoints(eraySFR, config->gtu09Config.staticActionPoint, config->gtu09Config.dynamicActionPoint);
    IfxEray_setMaxCorrectionValues(eraySFR, config->gtu10Config.maxOffsetCorrection, config->gtu10Config.maxRateCorrection);
    IfxEray_setExternalCorrectionControl(eraySFR, config->gtu11Config.externalOffset, config->gtu11Config.externalRate);
    IfxEray_setExternalCorrectionValues(eraySFR, config->gtu11Config.externalOffsetCorrection, config->gtu11Config.externalRateCorrection);
}


IFX_STATIC void IfxEray_Eray_Node_initMessageRAM(IfxEray_Eray *eray, const IfxEray_Eray_MessageRAMConfig *config)
{
    Ifx_ERAY *eraySFR = eray->eray;
    uint32    bufferCount;
    //group of Message Buffers exclusively for the static segment configured
    IfxEray_setFirstDynamicBuffer(eraySFR, config->firstDynamicBuffer);
    /*  Last Configured Buffer
     *  01H..7FH: Number of Message Buffers is LCB + 1
     *  80H..FFH: No Message Buffer configured
     */
    IfxEray_setMessageBufferCount(eraySFR, config->numberOfMessageBuffers);

    // receive FIFO buffers configuration
    if (config->fifoConfigured == TRUE)
    {
        IfxEray_setFifoBufferStartIndex(eraySFR, (uint8)config->fifoBufferStartIndex);
        IfxEray_setFifoMessageBufferConfigurations(eraySFR, config->receiveChannel, config->staticFifoDisabled, config->fifoDepth);
        IfxEray_setFifoFilterConfigurations(eraySFR, config->rejectedFrameId, config->filteredCycleNumber, config->fifoNullFramesRejected, config->frameIdFilter);
    }
    else
    {
        // FIFO is not supported. No message buffers assigned to the FIFO, if FFB >= 128
        IfxEray_setFifoBufferStartIndex(eraySFR, (uint8)config->fifoBufferStartIndex);
    }

    if (config->bufferReconfigEnabled == TRUE)
    {
        //buffers reconfigured
        IfxEray_setBufferReconfigSecure(eraySFR, 0);
    }
    else
    {
        //buffer reconfiguration locked
        IfxEray_setBufferReconfigSecure(eraySFR, 2);
    }

    for (bufferCount = 0; bufferCount < config->numberOfMessageBuffers; bufferCount++)
    {
        IfxEray_setSlot(eraySFR, config->header[bufferCount], config->data[bufferCount], config->slotControl[bufferCount]);
    }
}


void IfxEray_Eray_initModule(IfxEray_Eray *eray, const IfxEray_Eray_Config *config)
{
    eray->eray = config->module;
    Ifx_ERAY *eraySFR = config->module;
    // Enable MTU clock
    {
        uint16 password = IfxScuWdt_getCpuWatchdogPassword();
        IfxScuWdt_clearCpuEndinit(password);
        IfxMtu_enableModule();
        IfxScuWdt_setCpuEndinit(password);
    }
    // clear RAMS
    {
        uint16 password = IfxScuWdt_getSafetyWatchdogPassword();
        IfxScuWdt_clearSafetyEndinit(password);
        IfxMtu_clearSram(IfxMtu_MbistSel_erayObf);
        IfxMtu_clearSram(IfxMtu_MbistSel_erayIbfTbf);
        IfxMtu_clearSram(IfxMtu_MbistSel_erayMbf);

        IfxScuWdt_setSafetyEndinit(password);
    }

    {
        IfxEray_enableModule(eraySFR);
    }

    /** NOTE: If not DMA, the interrupt service provider is assigned to the CPU ID where
     * this function is called from */
    {
        if (config->interrupt.int0Priority != 0)
        {
            volatile Ifx_SRC_SRCR *src = IfxEray_getInterruptLine0SrcPtr(eraySFR);
            IfxSrc_init(src, config->interrupt.int0IsrProvider, config->interrupt.int0Priority);
            IfxSrc_enable(src);
        }

        if (config->interrupt.int1Priority != 0)
        {
            volatile Ifx_SRC_SRCR *src = IfxEray_getInterruptLine1SrcPtr(eraySFR);
            IfxSrc_init(src, config->interrupt.int1IsrProvider, config->interrupt.int1Priority);
            IfxSrc_enable(src);
        }

        if (config->interrupt.tint0Priority != 0)
        {
            volatile Ifx_SRC_SRCR *src = IfxEray_getTimerInterrupt0SrcPtr(eraySFR);
            IfxSrc_init(src, config->interrupt.tint0IsrProvider, config->interrupt.tint0Priority);
            IfxSrc_enable(src);
        }

        if (config->interrupt.tint1Priority != 0)
        {
            volatile Ifx_SRC_SRCR *src = IfxEray_getTimerInterrupt1SrcPtr(eraySFR);
            IfxSrc_init(src, config->interrupt.tint1IsrProvider, config->interrupt.tint1Priority);
            IfxSrc_enable(src);
        }

        if (config->interrupt.mbsc0Priority != 0)
        {
            volatile Ifx_SRC_SRCR *src = IfxEray_getMessageBufferStatus0SrcPtr(eraySFR);
            IfxSrc_init(src, config->interrupt.mbsc0IsrProvider, config->interrupt.mbsc0Priority);
            IfxSrc_enable(src);
        }

        if (config->interrupt.mbsc1Priority != 0)
        {
            volatile Ifx_SRC_SRCR *src = IfxEray_getMessageBufferStatus1SrcPtr(eraySFR);
            IfxSrc_init(src, config->interrupt.mbsc1IsrProvider, config->interrupt.mbsc1Priority);
            IfxSrc_enable(src);
        }

        if (config->interrupt.ibusyPriority != 0)
        {
            volatile Ifx_SRC_SRCR *src = IfxEray_getInputBufferBusySrcPtr(eraySFR);
            IfxSrc_init(src, config->interrupt.ibusyIsrProvider, config->interrupt.ibusyPriority);
            IfxSrc_enable(src);
        }

        if (config->interrupt.obusyPriority != 0)
        {
            volatile Ifx_SRC_SRCR *src = IfxEray_getOutputBufferBusySrcPtr(eraySFR);
            IfxSrc_init(src, config->interrupt.obusyIsrProvider, config->interrupt.obusyPriority);
            IfxSrc_enable(src);
        }

        if (config->interrupt.ndat0Priority != 0)
        {
            volatile Ifx_SRC_SRCR *src = IfxEray_getNewDataInterrupt0SrcPtr(eraySFR);
            IfxSrc_init(src, config->interrupt.ndat0IsrProvider, config->interrupt.ndat0Priority);
            IfxSrc_enable(src);
        }

        if (config->interrupt.ndat1Priority != 0)
        {
            volatile Ifx_SRC_SRCR *src = IfxEray_getNewDataInterrupt1SrcPtr(eraySFR);
            IfxSrc_init(src, config->interrupt.ndat1IsrProvider, config->interrupt.ndat1Priority);
            IfxSrc_enable(src);
        }
    }
}


void IfxEray_Eray_initModuleConfig(IfxEray_Eray_Config *config, Ifx_ERAY *eray)
{
    config->module                     = eray;
    config->interrupt.int0IsrProvider  = IfxSrc_Tos_cpu0;
    config->interrupt.int1IsrProvider  = IfxSrc_Tos_cpu0;
    config->interrupt.tint0IsrProvider = IfxSrc_Tos_cpu0;
    config->interrupt.tint1IsrProvider = IfxSrc_Tos_cpu0;
    config->interrupt.ndat0IsrProvider = IfxSrc_Tos_cpu0;
    config->interrupt.ndat1IsrProvider = IfxSrc_Tos_cpu0;
    config->interrupt.mbsc0IsrProvider = IfxSrc_Tos_cpu0;
    config->interrupt.mbsc1IsrProvider = IfxSrc_Tos_cpu0;
    config->interrupt.ibusyIsrProvider = IfxSrc_Tos_cpu0;
    config->interrupt.obusyIsrProvider = IfxSrc_Tos_cpu0;

    config->interrupt.int0Priority     = 0;
    config->interrupt.int1Priority     = 0;
    config->interrupt.tint0Priority    = 0;
    config->interrupt.tint1Priority    = 0;
    config->interrupt.ndat0Priority    = 0;
    config->interrupt.ndat1Priority    = 0;
    config->interrupt.mbsc0Priority    = 0;
    config->interrupt.mbsc1Priority    = 0;
    config->interrupt.ibusyPriority    = 0;
    config->interrupt.obusyPriority    = 0;
}


void IfxEray_Eray_receiveFifoFrame(IfxEray_Eray *eray, IfxEray_Eray_ReceiveControl *config)
{
    Ifx_ERAY    *eraySFR    = eray->eray;

    Ifx_ERAY_FSR fifoStatus = IfxEray_getFifoStatus(eraySFR);

    // Check if FIFO is not empty
    if (fifoStatus.B.RFNE == 1)
    {
        if (fifoStatus.B.RFO == 1)
        {
            //FIX ME: FIFO overrun error
        }
        else
        {
            while (IfxEray_getOutputBufferBusyShadowStatus(eraySFR) == TRUE)
            {}

            IfxEray_receiveHeader(eraySFR, config->headerReceived);
            IfxEray_receiveData(eraySFR, config->dataReceived);
            //Transfer the first message buffer ID of FIFO
            IfxEray_setRxBufferNumber(eraySFR, IfxEray_getFifoIndex(eraySFR));
            IfxEray_setReceiveRequest(eraySFR, config->receiveRequested);

            while (IfxEray_getOutputBufferBusyShadowStatus(eraySFR))
            {}

            if (config->swapRequested && (IfxEray_getOutputBuffer(eraySFR) != config->bufferIndex))
            {
                IfxEray_setViewData(eraySFR, config->swapRequested);
            }
        }
    }
}


void IfxEray_Eray_receiveFrame(IfxEray_Eray *eray, IfxEray_Eray_ReceiveControl *config)
{
    Ifx_ERAY *eraySFR = eray->eray;

    while (IfxEray_getOutputBufferBusyShadowStatus(eraySFR) == TRUE)
    {}

    IfxEray_receiveHeader(eraySFR, config->headerReceived);
    IfxEray_receiveData(eraySFR, config->dataReceived);
    IfxEray_setRxBufferNumber(eraySFR, config->bufferIndex);
    IfxEray_setReceiveRequest(eraySFR, config->receiveRequested);

    while (IfxEray_getOutputBufferBusyShadowStatus(eraySFR) == TRUE)
    {}

    if (config->swapRequested && (IfxEray_getOutputBuffer(eraySFR) != config->bufferIndex))
    {
        IfxEray_setViewData(eraySFR, config->swapRequested);
    }
}


void IfxEray_Eray_transmitFrame(IfxEray_Eray *eray, IfxEray_Eray_TransmitControl *transmitControl)
{
    Ifx_ERAY *eraySFR = eray->eray;

    while (IfxEray_getInputBufferBusyHostStatus(eraySFR) == TRUE)
    {}

    IfxEray_sendHeader(eraySFR, transmitControl->headerTransfered);
    IfxEray_sendData(eraySFR, transmitControl->dataTransfered);
    IfxEray_setTransmitRequest(eraySFR, transmitControl->transferRequested);
    IfxEray_setTxBufferNumber(eraySFR, transmitControl->bufferIndex);

    while (IfxEray_getInputBufferBusyShadowStatus(eraySFR) == TRUE)
    {}

    while (IfxEray_getInputBufferBusyHostStatus(eraySFR) == TRUE)
    {}
}
