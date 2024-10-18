# struct EMdgmMRZ_def
# {
#   struct EMdgmHeader_def header;
#   struct EMdgmMpartition_def partition;
#   struct EMdgmMbody_def cmnPart;
#   struct EMdgmMRZ_pingInfo_def pingInfo;
#   struct EMdgmMRZ_txSectorInfo_def sectorInfo[MAX_NUM_TX_PULSES];
#   struct EMdgmMRZ_rxInfo_def rxInfo;
#   struct EMdgmMRZ_extraDetClassInfo_def extraDetClassInfo[MAX_EXTRA_DET_CLASSES];

#   struct EMdgmMRZ_sounding_def sounding[MAX_NUM_BEAMS + MAX_EXTRA_DET];
#   int16_t SIsample_desidB[MAX_SIDESCAN_SAMP];
# };


# struct EMdgmHeader_def
# {
#   uint32_t numBytesDgm;
#   uint8_t dgmType[4];
#   uint8_t dgmVersion;
#   uint8_t systemID;
#   uint16_t echoSounderID;
#   uint32_t time_sec;
#   uint32_t time_nanosec;
# };

std_msgs/Header header

uint32 dgmVersion
uint8  systemID
uint16 echoSounderID


# struct EMdgmMpartition_def
# {
#   uint16_t numOfDgms;
#   uint16_t dgmNum;
# };

uint16 numOfDgms
uint16 dgmNum

# struct EMdgmMbody_def
# {
#   uint16_t numBytesCmnPart;
#   uint16_t pingCnt;
#   uint8_t rxFansPerPing;
#   uint8_t rxFanIndex;
#   uint8_t swathsPerPing;
#   uint8_t swathAlongPosition;
#   uint8_t txTransducerInd;
#   uint8_t rxTransducerInd;
#   uint8_t numRxTransducers;
#   uint8_t algorithmType;
# };


uint16 pingCnt
uint8  rxFansPerPing
uint8  rxFanIndex
uint8  swathsPerPing
uint8  swathAlongPosition
uint8  txTransducerInd
uint8  rxTransducerInd
uint8  numRxTransducers
uint8  algorithmType

# struct EMdgmMRZ_pingInfo_def
# {
#   uint16_t numBytesInfoData;
#   uint16_t padding0;
#   float pingRate_Hz;
#   uint8_t beamSpacing;
#   uint8_t depthMode;
#   uint8_t subDepthMode;
#   uint8_t distanceBtwSwath;
#   uint8_t detectionMode;
#   uint8_t pulseForm;
#   uint16_t padding1;

#   float frequencyMode_Hz;
#   float freqRangeLowLim_Hz;
#   float freqRangeHighLim_Hz;
#   float maxTotalTxPulseLength_sec;
#   float maxEffTxPulseLength_sec;
#   float maxEffTxBandWidth_Hz;
#   float absCoeff_dBPerkm;
#   float portSectorEdge_deg;
#   float starbSectorEdge_deg;
#   float portMeanCov_deg;
#   float starbMeanCov_deg;
#   int16_t portMeanCov_m;
#   int16_t starbMeanCov_m;
#   uint8_t modeAndStabilisation;
#   uint8_t runtimeFilter1;
#   uint16_t runtimeFilter2;
#   uint32_t pipeTrackingStatus;
#   float transmitArraySizeUsed_deg;
#   float receiveArraySizeUsed_deg;
#   float transmitPower_dB;
#   uint16_t SLrampUpTimeRemaining;
#   uint16_t padding2;
#   float yawAngle_deg;
#   uint16_t numTxSectors;
#   uint16_t numBytesPerTxSector;
#   float headingVessel_deg;
#   float soundSpeedAtTxDepth_mPerSec;
#   float txTransducerDepth_m;
#   float z_waterLevelReRefPoint_m;
#   float x_kmallToall_m;
#   float y_kmallToall_m;
#   uint8_t latLongInfo;
#   uint8_t posSensorStatus;
#   uint8_t attitudeSensorStatus;
#   uint8_t padding3;
#   double latitude_deg;
#   double longitude_deg;
#   float ellipsoidHeightReRefPoint_m;
# };


float32 pingRate_Hz
uint8  beamSpacing
uint8  depthMode
uint8  subDepthMode
uint8  distanceBtwSwath
uint8  detectionMode
uint8  pulseForm

float32 frequencyMode_Hz
float32 freqRangeLowLim_Hz
float32 freqRangeHighLim_Hz
float32 maxTotalTxPulseLength_sec
float32 maxEffTxPulseLength_sec
float32 maxEffTxBandWidth_Hz
float32 absCoeff_dBPerkm
float32 portSectorEdge_deg
float32 starbSectorEdge_deg
float32 portMeanCov_deg
float32 starbMeanCov_deg
int16 portMeanCov_m
int16 starbMeanCov_m
uint8 modeAndStabilisation
uint8 runtimeFilter1
uint16 runtimeFilter2
uint32 pipeTrackingStatus
float32 transmitArraySizeUsed_deg
float32 receiveArraySizeUsed_deg
float32 transmitPower_dB
uint16 SLrampUpTimeRemaining

float32 yawAngle_deg
uint16 numTxSectors
uint16 numBytesPerTxSector
float32 headingVessel_deg
float32 soundSpeedAtTxDepth_mPerSec
float32 txTransducerDepth_m
float32 z_waterLevelReRefPoint_m
float32 x_kmallToall_m
float32 y_kmallToall_m
uint8 latLongInfo
uint8 posSensorStatus
uint8 attitudeSensorStatus
float64 latitude_deg
float64 longitude_deg
float32 ellipsoidHeightReRefPoint_m

KongsbergMRZtxSectorInfo[] sectorInfo

# struct EMdgmMRZ_rxInfo_def
# {
#   uint16_t numBytesRxInfo;
#   uint16_t numSoundingsMaxMain;
#   uint16_t numSoundingsValidMain;
#   uint16_t numBytesPerSounding;
#   float WCSampleRate;
#   float seabedImageSampleRate;
#   float BSnormal_dB;
#   float BSoblique_dB;
#   uint16_t extraDetectionAlarmFlag;
#   uint16_t numExtraDetections;
#   uint16_t numExtraDetectionClasses;
#   uint16_t numBytesPerClass;
# };


uint16 numBytesRxInfo
uint16 numSoundingsMaxMain
uint16 numSoundingsValidMain
uint16 numBytesPerSounding
float32 WCSampleRate
float32 seabedImageSampleRate
float32 BSnormal_dB
float32 BSoblique_dB
uint16 extraDetectionAlarmFlag
uint16 numExtraDetections
uint16 numExtraDetectionClasses
uint16 numBytesPerClass

# struct EMdgmMRZ_extraDetClassInfo_def
# {
#   uint16_t numExtraDetInClass;
#   int8_t padding;
#   uint8_t alarmFlag;
# };

uint16 numExtraDetInClass
uint8 alarmFlag

KongsbergMRZsounding[] soundings

int16[] SIsample_desidB
