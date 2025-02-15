export interface IArchiveDto {
    id: string,
    createdAt: number,
    duration: number,
    name: string,
    partnerId: number,
    sessionId: string,
    reason: string,
    hasVideo: boolean,
    hasAudio: boolean,
    resolution: boolean,
    outputMode: string,
    size: number,
    status: string,
    url: string,
    password: string,
    streamMode: string,
    multiArchiveTag: string,
}