diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2<f32>,
  /* @offset(16) */
  x_MainLightPosition : vec4<f32>,
  /* @offset(32) */
  x_MainLightColor : vec4<f32>,
  /* @offset(48) */
  x_AdditionalLightsCount : vec4<f32>,
  /* @offset(64) */
  x_WorldSpaceCameraPos : vec3<f32>,
  /* @offset(80) */
  x_ProjectionParams : vec4<f32>,
  /* @offset(96) */
  unity_FogParams : vec4<f32>,
  /* @offset(112) */
  unity_FogColor : vec4<f32>,
  /* @offset(128) */
  unity_MatrixV : mat4x4<f32>,
}

struct UnityPerMaterial {
  /* @offset(0) */
  x_BaseMap_ST : vec4<f32>,
  /* @offset(16) */
  x_BaseColor : vec4<f32>,
  /* @offset(32) */
  x_SpecColor : vec4<f32>,
  /* @offset(48) */
  x_EmissionColor : vec4<f32>,
  /* @offset(64) */
  x_Cutoff : f32,
  /* @offset(68) */
  x_Surface : f32,
}

alias Arr = array<vec4<f32>, 2u>;

struct UnityPerDraw {
  /* @offset(0) */
  unity_ObjectToWorld : mat4x4<f32>,
  /* @offset(64) */
  unity_WorldToObject : mat4x4<f32>,
  /* @offset(128) */
  unity_LODFade : vec4<f32>,
  /* @offset(144) */
  unity_WorldTransformParams : vec4<f32>,
  /* @offset(160) */
  unity_RenderingLayer : vec4<f32>,
  /* @offset(176) */
  unity_LightData : vec4<f32>,
  /* @offset(192) */
  unity_LightIndices : Arr,
  /* @offset(224) */
  unity_ProbesOcclusion : vec4<f32>,
  /* @offset(240) */
  unity_SpecCube0_HDR : vec4<f32>,
  /* @offset(256) */
  unity_SpecCube1_HDR : vec4<f32>,
  /* @offset(272) */
  unity_SpecCube0_BoxMax : vec4<f32>,
  /* @offset(288) */
  unity_SpecCube0_BoxMin : vec4<f32>,
  /* @offset(304) */
  unity_SpecCube0_ProbePosition : vec4<f32>,
  /* @offset(320) */
  unity_SpecCube1_BoxMax : vec4<f32>,
  /* @offset(336) */
  unity_SpecCube1_BoxMin : vec4<f32>,
  /* @offset(352) */
  unity_SpecCube1_ProbePosition : vec4<f32>,
  /* @offset(368) */
  unity_LightmapST : vec4<f32>,
  /* @offset(384) */
  unity_DynamicLightmapST : vec4<f32>,
  /* @offset(400) */
  unity_SHAr : vec4<f32>,
  /* @offset(416) */
  unity_SHAg : vec4<f32>,
  /* @offset(432) */
  unity_SHAb : vec4<f32>,
  /* @offset(448) */
  unity_SHBr : vec4<f32>,
  /* @offset(464) */
  unity_SHBg : vec4<f32>,
  /* @offset(480) */
  unity_SHBb : vec4<f32>,
  /* @offset(496) */
  unity_SHC : vec4<f32>,
  /* @offset(512) */
  unity_RendererBounds_Min : vec4<f32>,
  /* @offset(528) */
  unity_RendererBounds_Max : vec4<f32>,
  /* @offset(544) */
  unity_MatrixPreviousM : mat4x4<f32>,
  /* @offset(608) */
  unity_MatrixPreviousMI : mat4x4<f32>,
  /* @offset(672) */
  unity_MotionVectorsParams : vec4<f32>,
  /* @offset(688) */
  unity_SpriteColor : vec4<f32>,
  /* @offset(704) */
  unity_SpriteProps : vec4<f32>,
}

alias Arr_1 = array<mat4x4<f32>, 5u>;

alias Arr_2 = array<vec4<f32>, 32u>;

alias Arr_3 = array<mat4x4<f32>, 32u>;

alias Arr_4 = array<vec4<f32>, 32u>;

struct LightShadows {
  /* @offset(0) */
  x_MainLightWorldToShadow : Arr_1,
  /* @offset(320) */
  x_CascadeShadowSplitSpheres0 : vec4<f32>,
  /* @offset(336) */
  x_CascadeShadowSplitSpheres1 : vec4<f32>,
  /* @offset(352) */
  x_CascadeShadowSplitSpheres2 : vec4<f32>,
  /* @offset(368) */
  x_CascadeShadowSplitSpheres3 : vec4<f32>,
  /* @offset(384) */
  x_CascadeShadowSplitSphereRadii : vec4<f32>,
  /* @offset(400) */
  x_MainLightShadowOffset0 : vec4<f32>,
  /* @offset(416) */
  x_MainLightShadowOffset1 : vec4<f32>,
  /* @offset(432) */
  x_MainLightShadowParams : vec4<f32>,
  /* @offset(448) */
  x_MainLightShadowmapSize : vec4<f32>,
  /* @offset(464) */
  x_AdditionalShadowOffset0 : vec4<f32>,
  /* @offset(480) */
  x_AdditionalShadowOffset1 : vec4<f32>,
  /* @offset(496) */
  x_AdditionalShadowFadeParams : vec4<f32>,
  /* @offset(512) */
  x_AdditionalShadowmapSize : vec4<f32>,
  /* @offset(528) */
  x_AdditionalShadowParams : Arr_4,
  /* @offset(1040) */
  x_AdditionalLightsWorldToShadow : Arr_3,
}

alias Arr_5 = array<vec4<f32>, 32u>;

alias Arr_6 = array<vec4<f32>, 32u>;

alias Arr_7 = array<vec4<f32>, 32u>;

alias Arr_8 = array<vec4<f32>, 32u>;

struct strided_arr {
  @size(16)
  el : f32,
}

alias Arr_9 = array<strided_arr, 32u>;

struct AdditionalLights {
  /* @offset(0) */
  x_AdditionalLightsPosition : Arr_4,
  /* @offset(512) */
  x_AdditionalLightsColor : Arr_4,
  /* @offset(1024) */
  x_AdditionalLightsAttenuation : Arr_4,
  /* @offset(1536) */
  x_AdditionalLightsSpotDir : Arr_4,
  /* @offset(2048) */
  x_AdditionalLightsOcclusionProbes : Arr_4,
  /* @offset(2560) */
  x_AdditionalLightsLayerMasks : Arr_9,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(0) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(3) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_28 : PGlobals;

@group(1) @binding(3) var<uniform> x_41 : UnityPerMaterial;

var<private> u_xlat1 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> u_xlat2 : f32;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat3 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_120 : UnityPerDraw;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlat25 : f32;

var<private> u_xlat10 : vec3<f32>;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(4) var sampler_LinearClampCompare : sampler_comparison;

@group(1) @binding(4) var<uniform> x_223 : LightShadows;

var<private> u_xlatb3 : bool;

var<private> u_xlatb11 : bool;

var<private> u_xlat11 : vec3<f32>;

var<private> u_xlat19 : f32;

var<private> u_xlatu25 : u32;

var<private> u_xlatu5 : u32;

var<private> u_xlati13 : i32;

var<private> u_xlati5 : i32;

var<private> u_xlat13 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_395 : AdditionalLights;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlat14 : vec3<f32>;

var<private> u_xlati14 : i32;

var<private> u_xlatb22 : bool;

var<private> u_xlatb7 : vec4<bool>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat30 : f32;

var<private> u_xlat22 : f32;

@group(0) @binding(2) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb30 : bool;

var<private> u_xlat8 : vec3<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatb8 : bool;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatb5 : bool;

var<private> u_xlatu28 : u32;

fn main_1() {
  var txVec0 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_562 : f32;
  var x_572 : f32;
  var txVec1 : vec3<f32>;
  var x_683 : f32;
  var x_786 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_35 : f32 = x_28.x_GlobalMipBias.x;
  let x_36 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_23, x_35);
  u_xlat0 = x_36;
  let x_37 : vec4<f32> = u_xlat0;
  let x_45 : vec4<f32> = x_41.x_BaseColor;
  u_xlat0 = (vec4<f32>(x_37.w, x_37.x, x_37.y, x_37.z) * vec4<f32>(x_45.w, x_45.x, x_45.y, x_45.z));
  let x_51 : vec3<f32> = vs_TEXCOORD2;
  let x_52 : vec3<f32> = vs_TEXCOORD2;
  u_xlat1.x = dot(x_51, x_52);
  let x_57 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_57);
  let x_60 : vec4<f32> = u_xlat1;
  let x_62 : vec3<f32> = vs_TEXCOORD2;
  let x_63 : vec3<f32> = (vec3<f32>(x_60.x, x_60.x, x_60.x) * x_62);
  let x_64 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_63.x, x_63.y, x_63.z, x_64.w);
  let x_71 : f32 = vs_TEXCOORD1.y;
  let x_75 : f32 = x_28.unity_MatrixV[1i].z;
  u_xlat2 = (x_71 * x_75);
  let x_78 : f32 = x_28.unity_MatrixV[0i].z;
  let x_80 : f32 = vs_TEXCOORD1.x;
  let x_82 : f32 = u_xlat2;
  u_xlat2 = ((x_78 * x_80) + x_82);
  let x_86 : f32 = x_28.unity_MatrixV[2i].z;
  let x_88 : f32 = vs_TEXCOORD1.z;
  let x_90 : f32 = u_xlat2;
  u_xlat2 = ((x_86 * x_88) + x_90);
  let x_92 : f32 = u_xlat2;
  let x_95 : f32 = x_28.unity_MatrixV[3i].z;
  u_xlat2 = (x_92 + x_95);
  let x_97 : f32 = u_xlat2;
  let x_101 : f32 = x_28.x_ProjectionParams.y;
  u_xlat2 = (-(x_97) + -(x_101));
  let x_104 : f32 = u_xlat2;
  u_xlat2 = max(x_104, 0.0f);
  let x_107 : f32 = u_xlat2;
  let x_110 : f32 = x_28.unity_FogParams.x;
  u_xlat2 = (x_107 * x_110);
  u_xlat1.w = 1.0f;
  let x_123 : vec4<f32> = x_120.unity_SHAr;
  let x_124 : vec4<f32> = u_xlat1;
  u_xlat3.x = dot(x_123, x_124);
  let x_129 : vec4<f32> = x_120.unity_SHAg;
  let x_130 : vec4<f32> = u_xlat1;
  u_xlat3.y = dot(x_129, x_130);
  let x_135 : vec4<f32> = x_120.unity_SHAb;
  let x_136 : vec4<f32> = u_xlat1;
  u_xlat3.z = dot(x_135, x_136);
  let x_140 : vec4<f32> = u_xlat1;
  let x_142 : vec4<f32> = u_xlat1;
  u_xlat4 = (vec4<f32>(x_140.y, x_140.z, x_140.z, x_140.x) * vec4<f32>(x_142.x, x_142.y, x_142.z, x_142.z));
  let x_148 : vec4<f32> = x_120.unity_SHBr;
  let x_149 : vec4<f32> = u_xlat4;
  u_xlat5.x = dot(x_148, x_149);
  let x_154 : vec4<f32> = x_120.unity_SHBg;
  let x_155 : vec4<f32> = u_xlat4;
  u_xlat5.y = dot(x_154, x_155);
  let x_160 : vec4<f32> = x_120.unity_SHBb;
  let x_161 : vec4<f32> = u_xlat4;
  u_xlat5.z = dot(x_160, x_161);
  let x_166 : f32 = u_xlat1.y;
  let x_168 : f32 = u_xlat1.y;
  u_xlat25 = (x_166 * x_168);
  let x_171 : f32 = u_xlat1.x;
  let x_173 : f32 = u_xlat1.x;
  let x_175 : f32 = u_xlat25;
  u_xlat25 = ((x_171 * x_173) + -(x_175));
  let x_181 : vec4<f32> = x_120.unity_SHC;
  let x_183 : f32 = u_xlat25;
  let x_186 : vec3<f32> = u_xlat5;
  u_xlat10 = ((vec3<f32>(x_181.x, x_181.y, x_181.z) * vec3<f32>(x_183, x_183, x_183)) + x_186);
  let x_188 : vec3<f32> = u_xlat10;
  let x_189 : vec3<f32> = u_xlat3;
  u_xlat10 = (x_188 + x_189);
  let x_191 : vec3<f32> = u_xlat10;
  u_xlat10 = max(x_191, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_198 : vec4<f32> = vs_TEXCOORD6;
  let x_199 : vec2<f32> = vec2<f32>(x_198.x, x_198.y);
  let x_201 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_199.x, x_199.y, x_201);
  let x_213 : vec3<f32> = txVec0;
  let x_215 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_213.xy, x_213.z);
  u_xlat25 = x_215;
  let x_225 : f32 = x_223.x_MainLightShadowParams.x;
  u_xlat3.x = (-(x_225) + 1.0f);
  let x_229 : f32 = u_xlat25;
  let x_231 : f32 = x_223.x_MainLightShadowParams.x;
  let x_234 : f32 = u_xlat3.x;
  u_xlat25 = ((x_229 * x_231) + x_234);
  let x_240 : f32 = vs_TEXCOORD6.z;
  u_xlatb3 = (0.0f >= x_240);
  let x_244 : f32 = vs_TEXCOORD6.z;
  u_xlatb11 = (x_244 >= 1.0f);
  let x_246 : bool = u_xlatb11;
  let x_247 : bool = u_xlatb3;
  u_xlatb3 = (x_246 | x_247);
  let x_249 : bool = u_xlatb3;
  let x_250 : f32 = u_xlat25;
  u_xlat25 = select(x_250, 1.0f, x_249);
  let x_252 : vec3<f32> = vs_TEXCOORD1;
  let x_256 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  u_xlat3 = (x_252 + -(x_256));
  let x_259 : vec3<f32> = u_xlat3;
  let x_260 : vec3<f32> = u_xlat3;
  u_xlat3.x = dot(x_259, x_260);
  let x_265 : f32 = u_xlat3.x;
  let x_267 : f32 = x_223.x_MainLightShadowParams.z;
  let x_270 : f32 = x_223.x_MainLightShadowParams.w;
  u_xlat11.x = ((x_265 * x_267) + x_270);
  let x_274 : f32 = u_xlat11.x;
  u_xlat11.x = clamp(x_274, 0.0f, 1.0f);
  let x_278 : f32 = u_xlat25;
  u_xlat19 = (-(x_278) + 1.0f);
  let x_282 : f32 = u_xlat11.x;
  let x_283 : f32 = u_xlat19;
  let x_285 : f32 = u_xlat25;
  u_xlat25 = ((x_282 * x_283) + x_285);
  let x_287 : f32 = u_xlat25;
  let x_289 : f32 = x_120.unity_LightData.z;
  u_xlat25 = (x_287 * x_289);
  let x_291 : f32 = u_xlat25;
  let x_294 : vec4<f32> = x_28.x_MainLightColor;
  u_xlat11 = (vec3<f32>(x_291, x_291, x_291) * vec3<f32>(x_294.x, x_294.y, x_294.z));
  let x_297 : vec4<f32> = u_xlat1;
  let x_300 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat25 = dot(vec3<f32>(x_297.x, x_297.y, x_297.z), vec3<f32>(x_300.x, x_300.y, x_300.z));
  let x_303 : f32 = u_xlat25;
  u_xlat25 = clamp(x_303, 0.0f, 1.0f);
  let x_305 : f32 = u_xlat25;
  let x_307 : vec3<f32> = u_xlat11;
  u_xlat11 = (vec3<f32>(x_305, x_305, x_305) * x_307);
  let x_309 : vec4<f32> = u_xlat0;
  let x_311 : vec3<f32> = u_xlat11;
  u_xlat11 = (vec3<f32>(x_309.y, x_309.z, x_309.w) * x_311);
  let x_314 : f32 = x_28.x_AdditionalLightsCount.x;
  let x_316 : f32 = x_120.unity_LightData.y;
  u_xlat25 = min(x_314, x_316);
  let x_320 : f32 = u_xlat25;
  u_xlatu25 = bitcast<u32>(i32(x_320));
  let x_324 : f32 = u_xlat3.x;
  let x_327 : f32 = x_223.x_AdditionalShadowFadeParams.x;
  let x_330 : f32 = x_223.x_AdditionalShadowFadeParams.y;
  u_xlat3.x = ((x_324 * x_327) + x_330);
  let x_334 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_334, 0.0f, 1.0f);
  u_xlat4.x = 0.0f;
  u_xlat4.y = 0.0f;
  u_xlat4.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_347 : u32 = u_xlatu_loop_1;
    let x_348 : u32 = u_xlatu25;
    if ((x_347 < x_348)) {
    } else {
      break;
    }
    let x_351 : u32 = u_xlatu_loop_1;
    u_xlatu5 = (x_351 >> 2u);
    let x_355 : u32 = u_xlatu_loop_1;
    u_xlati13 = bitcast<i32>((x_355 & 3u));
    let x_358 : u32 = u_xlatu5;
    let x_361 : vec4<f32> = x_120.unity_LightIndices[bitcast<i32>(x_358)];
    let x_371 : i32 = u_xlati13;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_376 : vec4<u32> = indexable[x_371];
    u_xlat5.x = dot(x_361, bitcast<vec4<f32>>(x_376));
    let x_382 : f32 = u_xlat5.x;
    u_xlati5 = i32(x_382);
    let x_385 : vec3<f32> = vs_TEXCOORD1;
    let x_396 : i32 = u_xlati5;
    let x_398 : vec4<f32> = x_395.x_AdditionalLightsPosition[x_396];
    let x_401 : i32 = u_xlati5;
    let x_403 : vec4<f32> = x_395.x_AdditionalLightsPosition[x_401];
    u_xlat13 = ((-(x_385) * vec3<f32>(x_398.w, x_398.w, x_398.w)) + vec3<f32>(x_403.x, x_403.y, x_403.z));
    let x_407 : vec3<f32> = u_xlat13;
    let x_408 : vec3<f32> = u_xlat13;
    u_xlat6.x = dot(x_407, x_408);
    let x_412 : f32 = u_xlat6.x;
    u_xlat6.x = max(x_412, 0.00006103515625f);
    let x_418 : f32 = u_xlat6.x;
    u_xlat14.x = inverseSqrt(x_418);
    let x_421 : vec3<f32> = u_xlat13;
    let x_422 : vec3<f32> = u_xlat14;
    u_xlat13 = (x_421 * vec3<f32>(x_422.x, x_422.x, x_422.x));
    let x_426 : f32 = u_xlat6.x;
    u_xlat14.x = (1.0f / x_426);
    let x_430 : f32 = u_xlat6.x;
    let x_431 : i32 = u_xlati5;
    let x_433 : f32 = x_395.x_AdditionalLightsAttenuation[x_431].x;
    u_xlat6.x = (x_430 * x_433);
    let x_437 : f32 = u_xlat6.x;
    let x_440 : f32 = u_xlat6.x;
    u_xlat6.x = ((-(x_437) * x_440) + 1.0f);
    let x_445 : f32 = u_xlat6.x;
    u_xlat6.x = max(x_445, 0.0f);
    let x_449 : f32 = u_xlat6.x;
    let x_451 : f32 = u_xlat6.x;
    u_xlat6.x = (x_449 * x_451);
    let x_455 : f32 = u_xlat6.x;
    let x_457 : f32 = u_xlat14.x;
    u_xlat6.x = (x_455 * x_457);
    let x_460 : i32 = u_xlati5;
    let x_462 : vec4<f32> = x_395.x_AdditionalLightsSpotDir[x_460];
    let x_464 : vec3<f32> = u_xlat13;
    u_xlat14.x = dot(vec3<f32>(x_462.x, x_462.y, x_462.z), x_464);
    let x_468 : f32 = u_xlat14.x;
    let x_469 : i32 = u_xlati5;
    let x_471 : f32 = x_395.x_AdditionalLightsAttenuation[x_469].z;
    let x_473 : i32 = u_xlati5;
    let x_475 : f32 = x_395.x_AdditionalLightsAttenuation[x_473].w;
    u_xlat14.x = ((x_468 * x_471) + x_475);
    let x_479 : f32 = u_xlat14.x;
    u_xlat14.x = clamp(x_479, 0.0f, 1.0f);
    let x_483 : f32 = u_xlat14.x;
    let x_485 : f32 = u_xlat14.x;
    u_xlat14.x = (x_483 * x_485);
    let x_489 : f32 = u_xlat14.x;
    let x_491 : f32 = u_xlat6.x;
    u_xlat6.x = (x_489 * x_491);
    let x_496 : i32 = u_xlati5;
    let x_498 : f32 = x_223.x_AdditionalShadowParams[x_496].w;
    u_xlati14 = i32(x_498);
    let x_501 : i32 = u_xlati14;
    u_xlatb22 = (x_501 >= 0i);
    let x_503 : bool = u_xlatb22;
    if (x_503) {
      let x_507 : i32 = u_xlati5;
      let x_509 : f32 = x_223.x_AdditionalShadowParams[x_507].z;
      u_xlatb22 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_509, x_509, x_509, x_509))));
      let x_514 : bool = u_xlatb22;
      if (x_514) {
        let x_519 : vec3<f32> = u_xlat13;
        let x_522 : vec3<f32> = u_xlat13;
        let x_525 : vec4<bool> = (abs(vec4<f32>(x_519.z, x_519.z, x_519.y, x_519.z)) >= abs(vec4<f32>(x_522.x, x_522.y, x_522.x, x_522.x)));
        let x_527 : vec3<bool> = vec3<bool>(x_525.x, x_525.y, x_525.z);
        let x_528 : vec4<bool> = u_xlatb7;
        u_xlatb7 = vec4<bool>(x_527.x, x_527.y, x_527.z, x_528.w);
        let x_531 : bool = u_xlatb7.y;
        let x_533 : bool = u_xlatb7.x;
        u_xlatb22 = (x_531 & x_533);
        let x_535 : vec3<f32> = u_xlat13;
        let x_538 : vec4<bool> = (-(vec4<f32>(x_535.z, x_535.y, x_535.z, x_535.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_539 : vec3<bool> = vec3<bool>(x_538.x, x_538.y, x_538.w);
        let x_540 : vec4<bool> = u_xlatb7;
        u_xlatb7 = vec4<bool>(x_539.x, x_539.y, x_540.z, x_539.z);
        let x_544 : bool = u_xlatb7.x;
        u_xlat7.x = select(4.0f, 5.0f, x_544);
        let x_550 : bool = u_xlatb7.y;
        u_xlat7.y = select(2.0f, 3.0f, x_550);
        let x_557 : bool = u_xlatb7.w;
        u_xlat30 = select(0.0f, 1.0f, x_557);
        let x_560 : bool = u_xlatb7.z;
        if (x_560) {
          let x_566 : f32 = u_xlat7.y;
          x_562 = x_566;
        } else {
          let x_568 : f32 = u_xlat30;
          x_562 = x_568;
        }
        let x_569 : f32 = x_562;
        u_xlat30 = x_569;
        let x_571 : bool = u_xlatb22;
        if (x_571) {
          let x_576 : f32 = u_xlat7.x;
          x_572 = x_576;
        } else {
          let x_578 : f32 = u_xlat30;
          x_572 = x_578;
        }
        let x_579 : f32 = x_572;
        u_xlat22 = x_579;
        let x_580 : i32 = u_xlati5;
        let x_582 : f32 = x_223.x_AdditionalShadowParams[x_580].w;
        u_xlat30 = trunc(x_582);
        let x_584 : f32 = u_xlat22;
        let x_585 : f32 = u_xlat30;
        u_xlat22 = (x_584 + x_585);
        let x_587 : f32 = u_xlat22;
        u_xlati14 = i32(x_587);
      }
      let x_589 : i32 = u_xlati14;
      u_xlati14 = (x_589 << bitcast<u32>(2i));
      let x_591 : vec3<f32> = vs_TEXCOORD1;
      let x_594 : i32 = u_xlati14;
      let x_597 : i32 = u_xlati14;
      let x_601 : vec4<f32> = x_223.x_AdditionalLightsWorldToShadow[((x_594 + 1i) / 4i)][((x_597 + 1i) % 4i)];
      u_xlat7 = (vec4<f32>(x_591.y, x_591.y, x_591.y, x_591.y) * x_601);
      let x_603 : i32 = u_xlati14;
      let x_605 : i32 = u_xlati14;
      let x_608 : vec4<f32> = x_223.x_AdditionalLightsWorldToShadow[(x_603 / 4i)][(x_605 % 4i)];
      let x_609 : vec3<f32> = vs_TEXCOORD1;
      let x_612 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_608 * vec4<f32>(x_609.x, x_609.x, x_609.x, x_609.x)) + x_612);
      let x_614 : i32 = u_xlati14;
      let x_617 : i32 = u_xlati14;
      let x_621 : vec4<f32> = x_223.x_AdditionalLightsWorldToShadow[((x_614 + 2i) / 4i)][((x_617 + 2i) % 4i)];
      let x_622 : vec3<f32> = vs_TEXCOORD1;
      let x_625 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_621 * vec4<f32>(x_622.z, x_622.z, x_622.z, x_622.z)) + x_625);
      let x_627 : vec4<f32> = u_xlat7;
      let x_628 : i32 = u_xlati14;
      let x_631 : i32 = u_xlati14;
      let x_635 : vec4<f32> = x_223.x_AdditionalLightsWorldToShadow[((x_628 + 3i) / 4i)][((x_631 + 3i) % 4i)];
      u_xlat7 = (x_627 + x_635);
      let x_637 : vec4<f32> = u_xlat7;
      let x_639 : vec4<f32> = u_xlat7;
      u_xlat14 = (vec3<f32>(x_637.x, x_637.y, x_637.z) / vec3<f32>(x_639.w, x_639.w, x_639.w));
      let x_643 : vec3<f32> = u_xlat14;
      let x_644 : vec2<f32> = vec2<f32>(x_643.x, x_643.y);
      let x_646 : f32 = u_xlat14.z;
      txVec1 = vec3<f32>(x_644.x, x_644.y, x_646);
      let x_654 : vec3<f32> = txVec1;
      let x_656 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_654.xy, x_654.z);
      u_xlat14.x = x_656;
      let x_658 : i32 = u_xlati5;
      let x_660 : f32 = x_223.x_AdditionalShadowParams[x_658].x;
      u_xlat22 = (1.0f + -(x_660));
      let x_664 : f32 = u_xlat14.x;
      let x_665 : i32 = u_xlati5;
      let x_667 : f32 = x_223.x_AdditionalShadowParams[x_665].x;
      let x_669 : f32 = u_xlat22;
      u_xlat14.x = ((x_664 * x_667) + x_669);
      let x_673 : f32 = u_xlat14.z;
      u_xlatb22 = (0.0f >= x_673);
      let x_677 : f32 = u_xlat14.z;
      u_xlatb30 = (x_677 >= 1.0f);
      let x_679 : bool = u_xlatb30;
      let x_680 : bool = u_xlatb22;
      u_xlatb22 = (x_679 | x_680);
      let x_682 : bool = u_xlatb22;
      if (x_682) {
        x_683 = 1.0f;
      } else {
        let x_688 : f32 = u_xlat14.x;
        x_683 = x_688;
      }
      let x_689 : f32 = x_683;
      u_xlat14.x = x_689;
    } else {
      u_xlat14.x = 1.0f;
    }
    let x_694 : f32 = u_xlat14.x;
    u_xlat22 = (-(x_694) + 1.0f);
    let x_698 : f32 = u_xlat3.x;
    let x_699 : f32 = u_xlat22;
    let x_702 : f32 = u_xlat14.x;
    u_xlat14.x = ((x_698 * x_699) + x_702);
    let x_706 : f32 = u_xlat14.x;
    let x_708 : f32 = u_xlat6.x;
    u_xlat6.x = (x_706 * x_708);
    let x_711 : vec3<f32> = u_xlat6;
    let x_713 : i32 = u_xlati5;
    let x_715 : vec4<f32> = x_395.x_AdditionalLightsColor[x_713];
    u_xlat6 = (vec3<f32>(x_711.x, x_711.x, x_711.x) * vec3<f32>(x_715.x, x_715.y, x_715.z));
    let x_718 : vec4<f32> = u_xlat1;
    let x_720 : vec3<f32> = u_xlat13;
    u_xlat5.x = dot(vec3<f32>(x_718.x, x_718.y, x_718.z), x_720);
    let x_724 : f32 = u_xlat5.x;
    u_xlat5.x = clamp(x_724, 0.0f, 1.0f);
    let x_727 : vec3<f32> = u_xlat5;
    let x_729 : vec3<f32> = u_xlat6;
    u_xlat5 = (vec3<f32>(x_727.x, x_727.x, x_727.x) * x_729);
    let x_731 : vec3<f32> = u_xlat5;
    let x_732 : vec4<f32> = u_xlat0;
    let x_735 : vec4<f32> = u_xlat4;
    let x_737 : vec3<f32> = ((x_731 * vec3<f32>(x_732.y, x_732.z, x_732.w)) + vec3<f32>(x_735.x, x_735.y, x_735.z));
    let x_738 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_737.x, x_737.y, x_737.z, x_738.w);

    continuing {
      let x_740 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_740 + bitcast<u32>(1i));
    }
  }
  let x_743 : vec3<f32> = u_xlat10;
  let x_744 : vec4<f32> = u_xlat0;
  let x_747 : vec3<f32> = u_xlat11;
  u_xlat8 = ((x_743 * vec3<f32>(x_744.y, x_744.z, x_744.w)) + x_747);
  let x_749 : vec4<f32> = u_xlat4;
  let x_751 : vec3<f32> = u_xlat8;
  u_xlat8 = (vec3<f32>(x_749.x, x_749.y, x_749.z) + x_751);
  let x_753 : f32 = u_xlat2;
  let x_754 : f32 = u_xlat2;
  u_xlat1.x = (x_753 * -(x_754));
  let x_759 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_759);
  let x_762 : vec3<f32> = u_xlat8;
  let x_765 : vec4<f32> = x_28.unity_FogColor;
  u_xlat8 = (x_762 + -(vec3<f32>(x_765.x, x_765.y, x_765.z)));
  let x_771 : vec4<f32> = u_xlat1;
  let x_773 : vec3<f32> = u_xlat8;
  let x_776 : vec4<f32> = x_28.unity_FogColor;
  let x_778 : vec3<f32> = ((vec3<f32>(x_771.x, x_771.x, x_771.x) * x_773) + vec3<f32>(x_776.x, x_776.y, x_776.z));
  let x_779 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_778.x, x_778.y, x_778.z, x_779.w);
  let x_783 : f32 = x_41.x_Surface;
  u_xlatb8 = (x_783 == 1.0f);
  let x_785 : bool = u_xlatb8;
  if (x_785) {
    let x_790 : f32 = u_xlat0.x;
    x_786 = x_790;
  } else {
    x_786 = 1.0f;
  }
  let x_792 : f32 = x_786;
  SV_Target0.w = x_792;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(3) vs_TEXCOORD6_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


