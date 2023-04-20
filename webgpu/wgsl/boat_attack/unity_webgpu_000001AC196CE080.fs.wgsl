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
  unity_OrthoParams : vec4<f32>,
  /* @offset(112) */
  unity_FogParams : vec4<f32>,
  /* @offset(128) */
  unity_FogColor : vec4<f32>,
  /* @offset(144) */
  unity_MatrixV : mat4x4<f32>,
  /* @offset(208) */
  x_DitheringTextureInvSize : f32,
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

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(2) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(7) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_45 : PGlobals;

@group(1) @binding(3) var<uniform> x_57 : UnityPerMaterial;

var<private> u_xlat1 : vec3<f32>;

@group(0) @binding(5) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_PointRepeat : sampler;

var<private> u_xlatb10 : bool;

@group(1) @binding(2) var<uniform> x_95 : UnityPerDraw;

var<private> u_xlatb1 : bool;

var<private> u_xlat10 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat28 : f32;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> u_xlat29 : f32;

var<private> u_xlat3 : vec4<f32>;

@group(0) @binding(1) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(6) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

var<private> u_xlat4 : vec3<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat30 : f32;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(9) var sampler_LinearClampCompare : sampler_comparison;

@group(1) @binding(4) var<uniform> x_323 : LightShadows;

var<private> u_xlatb4 : bool;

var<private> u_xlatb13 : bool;

var<private> u_xlat13 : vec3<f32>;

var<private> u_xlat22 : f32;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlat32 : f32;

var<private> u_xlatu5 : u32;

var<private> u_xlat14 : vec3<f32>;

var<private> u_xlatu15 : u32;

var<private> u_xlati24 : i32;

var<private> u_xlat15 : vec3<f32>;

var<private> u_xlati15 : i32;

var<private> u_xlat7 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_548 : AdditionalLights;

var<private> u_xlat24 : f32;

var<private> u_xlat33 : f32;

var<private> u_xlati33 : i32;

var<private> u_xlatb34 : bool;

var<private> u_xlatb8 : vec4<bool>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat35 : f32;

var<private> u_xlat17 : f32;

var<private> u_xlat34 : f32;

@group(0) @binding(4) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat9 : vec3<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatb9 : bool;

var<private> u_xlatu6 : u32;

var<private> u_xlatb15 : bool;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var x_103 : f32;
  var x_175 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_683 : f32;
  var x_693 : f32;
  var txVec1 : vec3<f32>;
  var x_941 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_41 : vec2<f32> = vs_TEXCOORD0;
  let x_51 : f32 = x_45.x_GlobalMipBias.x;
  let x_52 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_41, x_51);
  u_xlat0 = x_52;
  let x_53 : vec4<f32> = u_xlat0;
  let x_61 : vec4<f32> = x_57.x_BaseColor;
  u_xlat0 = (vec4<f32>(x_53.w, x_53.x, x_53.y, x_53.z) * vec4<f32>(x_61.w, x_61.x, x_61.y, x_61.z));
  let x_66 : vec4<f32> = hlslcc_FragCoord;
  let x_70 : f32 = x_45.x_DitheringTextureInvSize;
  let x_72 : vec2<f32> = (vec2<f32>(x_66.x, x_66.y) * vec2<f32>(x_70, x_70));
  let x_73 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_72.x, x_72.y, x_73.z);
  let x_80 : vec3<f32> = u_xlat1;
  let x_83 : f32 = x_45.x_GlobalMipBias.x;
  let x_84 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_PointRepeat, vec2<f32>(x_80.x, x_80.y), x_83);
  u_xlat1.x = x_84.w;
  let x_98 : f32 = x_95.unity_LODFade.x;
  u_xlatb10 = (x_98 >= 0.0f);
  let x_101 : bool = u_xlatb10;
  if (x_101) {
    let x_107 : f32 = u_xlat1.x;
    x_103 = abs(x_107);
  } else {
    let x_111 : f32 = u_xlat1.x;
    x_103 = -(abs(x_111));
  }
  let x_114 : f32 = x_103;
  u_xlat1.x = x_114;
  let x_117 : f32 = u_xlat1.x;
  let x_120 : f32 = x_95.unity_LODFade.x;
  u_xlat1.x = (-(x_117) + x_120);
  let x_125 : f32 = u_xlat1.x;
  u_xlatb1 = (x_125 < 0.0f);
  let x_127 : bool = u_xlatb1;
  if (((select(0i, 1i, x_127) * -1i) != 0i)) {
    discard;
  }
  let x_137 : f32 = x_45.unity_OrthoParams.w;
  u_xlatb1 = (x_137 == 0.0f);
  let x_142 : vec3<f32> = vs_TEXCOORD1;
  let x_147 : vec3<f32> = x_45.x_WorldSpaceCameraPos;
  u_xlat10 = (-(x_142) + x_147);
  let x_150 : vec3<f32> = u_xlat10;
  let x_151 : vec3<f32> = u_xlat10;
  u_xlat2.x = dot(x_150, x_151);
  let x_155 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_155);
  let x_158 : vec3<f32> = u_xlat10;
  let x_159 : vec3<f32> = u_xlat2;
  u_xlat10 = (x_158 * vec3<f32>(x_159.x, x_159.x, x_159.x));
  let x_164 : f32 = x_45.unity_MatrixV[0i].z;
  u_xlat2.x = x_164;
  let x_167 : f32 = x_45.unity_MatrixV[1i].z;
  u_xlat2.y = x_167;
  let x_171 : f32 = x_45.unity_MatrixV[2i].z;
  u_xlat2.z = x_171;
  let x_173 : bool = u_xlatb1;
  if (x_173) {
    let x_178 : vec3<f32> = u_xlat10;
    x_175 = x_178;
  } else {
    let x_180 : vec3<f32> = u_xlat2;
    x_175 = x_180;
  }
  let x_181 : vec3<f32> = x_175;
  u_xlat1 = x_181;
  let x_184 : vec3<f32> = vs_TEXCOORD2;
  let x_185 : vec3<f32> = vs_TEXCOORD2;
  u_xlat28 = dot(x_184, x_185);
  let x_187 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_187);
  let x_189 : f32 = u_xlat28;
  let x_191 : vec3<f32> = vs_TEXCOORD2;
  u_xlat2 = (vec3<f32>(x_189, x_189, x_189) * x_191);
  let x_193 : vec3<f32> = u_xlat1;
  let x_194 : vec3<f32> = u_xlat1;
  u_xlat28 = dot(x_193, x_194);
  let x_196 : f32 = u_xlat28;
  u_xlat28 = max(x_196, 0.00006103515625f);
  let x_199 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_199);
  let x_203 : f32 = vs_TEXCOORD1.y;
  let x_205 : f32 = x_45.unity_MatrixV[1i].z;
  u_xlat29 = (x_203 * x_205);
  let x_208 : f32 = x_45.unity_MatrixV[0i].z;
  let x_210 : f32 = vs_TEXCOORD1.x;
  let x_212 : f32 = u_xlat29;
  u_xlat29 = ((x_208 * x_210) + x_212);
  let x_215 : f32 = x_45.unity_MatrixV[2i].z;
  let x_217 : f32 = vs_TEXCOORD1.z;
  let x_219 : f32 = u_xlat29;
  u_xlat29 = ((x_215 * x_217) + x_219);
  let x_221 : f32 = u_xlat29;
  let x_224 : f32 = x_45.unity_MatrixV[3i].z;
  u_xlat29 = (x_221 + x_224);
  let x_226 : f32 = u_xlat29;
  let x_230 : f32 = x_45.x_ProjectionParams.y;
  u_xlat29 = (-(x_226) + -(x_230));
  let x_233 : f32 = u_xlat29;
  u_xlat29 = max(x_233, 0.0f);
  let x_235 : f32 = u_xlat29;
  let x_238 : f32 = x_45.unity_FogParams.x;
  u_xlat29 = (x_235 * x_238);
  let x_247 : vec2<f32> = vs_TEXCOORD7;
  let x_249 : f32 = x_45.x_GlobalMipBias.x;
  let x_250 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_247, x_249);
  u_xlat3 = x_250;
  let x_256 : vec2<f32> = vs_TEXCOORD7;
  let x_258 : f32 = x_45.x_GlobalMipBias.x;
  let x_259 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_256, x_258);
  u_xlat4 = vec3<f32>(x_259.x, x_259.y, x_259.z);
  let x_261 : vec4<f32> = u_xlat3;
  let x_265 : vec3<f32> = (vec3<f32>(x_261.x, x_261.y, x_261.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_266 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_265.x, x_265.y, x_265.z, x_266.w);
  let x_268 : vec3<f32> = u_xlat2;
  let x_269 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(x_268, vec3<f32>(x_269.x, x_269.y, x_269.z));
  let x_274 : f32 = u_xlat3.x;
  u_xlat3.x = (x_274 + 0.5f);
  let x_278 : vec4<f32> = u_xlat3;
  let x_280 : vec3<f32> = u_xlat4;
  let x_281 : vec3<f32> = (vec3<f32>(x_278.x, x_278.x, x_278.x) * x_280);
  let x_282 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_281.x, x_281.y, x_281.z, x_282.w);
  let x_286 : f32 = u_xlat3.w;
  u_xlat30 = max(x_286, 0.00009999999747378752f);
  let x_289 : vec4<f32> = u_xlat3;
  let x_291 : f32 = u_xlat30;
  let x_293 : vec3<f32> = (vec3<f32>(x_289.x, x_289.y, x_289.z) / vec3<f32>(x_291, x_291, x_291));
  let x_294 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_293.x, x_293.y, x_293.z, x_294.w);
  let x_298 : vec4<f32> = vs_TEXCOORD6;
  let x_299 : vec2<f32> = vec2<f32>(x_298.x, x_298.y);
  let x_301 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_299.x, x_299.y, x_301);
  let x_313 : vec3<f32> = txVec0;
  let x_315 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_313.xy, x_313.z);
  u_xlat30 = x_315;
  let x_326 : f32 = x_323.x_MainLightShadowParams.x;
  u_xlat4.x = (-(x_326) + 1.0f);
  let x_330 : f32 = u_xlat30;
  let x_332 : f32 = x_323.x_MainLightShadowParams.x;
  let x_335 : f32 = u_xlat4.x;
  u_xlat30 = ((x_330 * x_332) + x_335);
  let x_339 : f32 = vs_TEXCOORD6.z;
  u_xlatb4 = (0.0f >= x_339);
  let x_343 : f32 = vs_TEXCOORD6.z;
  u_xlatb13 = (x_343 >= 1.0f);
  let x_345 : bool = u_xlatb13;
  let x_346 : bool = u_xlatb4;
  u_xlatb4 = (x_345 | x_346);
  let x_348 : bool = u_xlatb4;
  let x_349 : f32 = u_xlat30;
  u_xlat30 = select(x_349, 1.0f, x_348);
  let x_351 : vec3<f32> = vs_TEXCOORD1;
  let x_353 : vec3<f32> = x_45.x_WorldSpaceCameraPos;
  u_xlat4 = (x_351 + -(x_353));
  let x_356 : vec3<f32> = u_xlat4;
  let x_357 : vec3<f32> = u_xlat4;
  u_xlat4.x = dot(x_356, x_357);
  let x_362 : f32 = u_xlat4.x;
  let x_364 : f32 = x_323.x_MainLightShadowParams.z;
  let x_367 : f32 = x_323.x_MainLightShadowParams.w;
  u_xlat13.x = ((x_362 * x_364) + x_367);
  let x_371 : f32 = u_xlat13.x;
  u_xlat13.x = clamp(x_371, 0.0f, 1.0f);
  let x_375 : f32 = u_xlat30;
  u_xlat22 = (-(x_375) + 1.0f);
  let x_379 : f32 = u_xlat13.x;
  let x_380 : f32 = u_xlat22;
  let x_382 : f32 = u_xlat30;
  u_xlat30 = ((x_379 * x_380) + x_382);
  let x_384 : f32 = u_xlat30;
  let x_386 : f32 = x_95.unity_LightData.z;
  u_xlat30 = (x_384 * x_386);
  let x_388 : f32 = u_xlat30;
  let x_391 : vec4<f32> = x_45.x_MainLightColor;
  u_xlat13 = (vec3<f32>(x_388, x_388, x_388) * vec3<f32>(x_391.x, x_391.y, x_391.z));
  let x_394 : vec3<f32> = u_xlat2;
  let x_396 : vec4<f32> = x_45.x_MainLightPosition;
  u_xlat30 = dot(x_394, vec3<f32>(x_396.x, x_396.y, x_396.z));
  let x_399 : f32 = u_xlat30;
  u_xlat30 = clamp(x_399, 0.0f, 1.0f);
  let x_402 : f32 = u_xlat30;
  let x_404 : vec3<f32> = u_xlat13;
  u_xlat5 = (vec3<f32>(x_402, x_402, x_402) * x_404);
  let x_407 : f32 = u_xlat0.x;
  u_xlat30 = ((x_407 * 10.0f) + 1.0f);
  let x_411 : f32 = u_xlat30;
  u_xlat30 = exp2(x_411);
  let x_414 : vec3<f32> = u_xlat1;
  let x_415 : f32 = u_xlat28;
  let x_419 : vec4<f32> = x_45.x_MainLightPosition;
  u_xlat6 = ((x_414 * vec3<f32>(x_415, x_415, x_415)) + vec3<f32>(x_419.x, x_419.y, x_419.z));
  let x_423 : vec3<f32> = u_xlat6;
  let x_424 : vec3<f32> = u_xlat6;
  u_xlat32 = dot(x_423, x_424);
  let x_426 : f32 = u_xlat32;
  u_xlat32 = max(x_426, 1.17549435e-38f);
  let x_429 : f32 = u_xlat32;
  u_xlat32 = inverseSqrt(x_429);
  let x_431 : f32 = u_xlat32;
  let x_433 : vec3<f32> = u_xlat6;
  u_xlat6 = (vec3<f32>(x_431, x_431, x_431) * x_433);
  let x_435 : vec3<f32> = u_xlat2;
  let x_436 : vec3<f32> = u_xlat6;
  u_xlat32 = dot(x_435, x_436);
  let x_438 : f32 = u_xlat32;
  u_xlat32 = clamp(x_438, 0.0f, 1.0f);
  let x_440 : f32 = u_xlat32;
  u_xlat32 = log2(x_440);
  let x_442 : f32 = u_xlat30;
  let x_443 : f32 = u_xlat32;
  u_xlat32 = (x_442 * x_443);
  let x_445 : f32 = u_xlat32;
  u_xlat32 = exp2(x_445);
  let x_447 : f32 = u_xlat32;
  let x_450 : vec4<f32> = x_57.x_SpecColor;
  u_xlat6 = (vec3<f32>(x_447, x_447, x_447) * vec3<f32>(x_450.x, x_450.y, x_450.z));
  let x_453 : vec3<f32> = u_xlat13;
  let x_454 : vec3<f32> = u_xlat6;
  u_xlat13 = (x_453 * x_454);
  let x_456 : vec3<f32> = u_xlat5;
  let x_457 : vec4<f32> = u_xlat0;
  let x_460 : vec3<f32> = u_xlat13;
  u_xlat13 = ((x_456 * vec3<f32>(x_457.y, x_457.z, x_457.w)) + x_460);
  let x_463 : f32 = x_45.x_AdditionalLightsCount.x;
  let x_465 : f32 = x_95.unity_LightData.y;
  u_xlat5.x = min(x_463, x_465);
  let x_471 : f32 = u_xlat5.x;
  u_xlatu5 = bitcast<u32>(i32(x_471));
  let x_475 : f32 = u_xlat4.x;
  let x_478 : f32 = x_323.x_AdditionalShadowFadeParams.x;
  let x_481 : f32 = x_323.x_AdditionalShadowFadeParams.y;
  u_xlat4.x = ((x_475 * x_478) + x_481);
  let x_485 : f32 = u_xlat4.x;
  u_xlat4.x = clamp(x_485, 0.0f, 1.0f);
  u_xlat14.x = 0.0f;
  u_xlat14.y = 0.0f;
  u_xlat14.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_499 : u32 = u_xlatu_loop_1;
    let x_500 : u32 = u_xlatu5;
    if ((x_499 < x_500)) {
    } else {
      break;
    }
    let x_503 : u32 = u_xlatu_loop_1;
    u_xlatu15 = (x_503 >> 2u);
    let x_507 : u32 = u_xlatu_loop_1;
    u_xlati24 = bitcast<i32>((x_507 & 3u));
    let x_511 : u32 = u_xlatu15;
    let x_514 : vec4<f32> = x_95.unity_LightIndices[bitcast<i32>(x_511)];
    let x_524 : i32 = u_xlati24;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_529 : vec4<u32> = indexable[x_524];
    u_xlat15.x = dot(x_514, bitcast<vec4<f32>>(x_529));
    let x_535 : f32 = u_xlat15.x;
    u_xlati15 = i32(x_535);
    let x_538 : vec3<f32> = vs_TEXCOORD1;
    let x_549 : i32 = u_xlati15;
    let x_551 : vec4<f32> = x_548.x_AdditionalLightsPosition[x_549];
    let x_554 : i32 = u_xlati15;
    let x_556 : vec4<f32> = x_548.x_AdditionalLightsPosition[x_554];
    u_xlat7 = ((-(x_538) * vec3<f32>(x_551.w, x_551.w, x_551.w)) + vec3<f32>(x_556.x, x_556.y, x_556.z));
    let x_560 : vec3<f32> = u_xlat7;
    let x_561 : vec3<f32> = u_xlat7;
    u_xlat24 = dot(x_560, x_561);
    let x_563 : f32 = u_xlat24;
    u_xlat24 = max(x_563, 0.00006103515625f);
    let x_566 : f32 = u_xlat24;
    u_xlat33 = inverseSqrt(x_566);
    let x_568 : f32 = u_xlat33;
    let x_570 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_568, x_568, x_568) * x_570);
    let x_572 : f32 = u_xlat24;
    u_xlat33 = (1.0f / x_572);
    let x_574 : f32 = u_xlat24;
    let x_575 : i32 = u_xlati15;
    let x_577 : f32 = x_548.x_AdditionalLightsAttenuation[x_575].x;
    u_xlat24 = (x_574 * x_577);
    let x_579 : f32 = u_xlat24;
    let x_581 : f32 = u_xlat24;
    u_xlat24 = ((-(x_579) * x_581) + 1.0f);
    let x_584 : f32 = u_xlat24;
    u_xlat24 = max(x_584, 0.0f);
    let x_586 : f32 = u_xlat24;
    let x_587 : f32 = u_xlat24;
    u_xlat24 = (x_586 * x_587);
    let x_589 : f32 = u_xlat24;
    let x_590 : f32 = u_xlat33;
    u_xlat24 = (x_589 * x_590);
    let x_592 : i32 = u_xlati15;
    let x_594 : vec4<f32> = x_548.x_AdditionalLightsSpotDir[x_592];
    let x_596 : vec3<f32> = u_xlat7;
    u_xlat33 = dot(vec3<f32>(x_594.x, x_594.y, x_594.z), x_596);
    let x_598 : f32 = u_xlat33;
    let x_599 : i32 = u_xlati15;
    let x_601 : f32 = x_548.x_AdditionalLightsAttenuation[x_599].z;
    let x_603 : i32 = u_xlati15;
    let x_605 : f32 = x_548.x_AdditionalLightsAttenuation[x_603].w;
    u_xlat33 = ((x_598 * x_601) + x_605);
    let x_607 : f32 = u_xlat33;
    u_xlat33 = clamp(x_607, 0.0f, 1.0f);
    let x_609 : f32 = u_xlat33;
    let x_610 : f32 = u_xlat33;
    u_xlat33 = (x_609 * x_610);
    let x_612 : f32 = u_xlat33;
    let x_613 : f32 = u_xlat24;
    u_xlat24 = (x_612 * x_613);
    let x_617 : i32 = u_xlati15;
    let x_619 : f32 = x_323.x_AdditionalShadowParams[x_617].w;
    u_xlati33 = i32(x_619);
    let x_622 : i32 = u_xlati33;
    u_xlatb34 = (x_622 >= 0i);
    let x_624 : bool = u_xlatb34;
    if (x_624) {
      let x_628 : i32 = u_xlati15;
      let x_630 : f32 = x_323.x_AdditionalShadowParams[x_628].z;
      u_xlatb34 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_630, x_630, x_630, x_630))));
      let x_635 : bool = u_xlatb34;
      if (x_635) {
        let x_640 : vec3<f32> = u_xlat7;
        let x_643 : vec3<f32> = u_xlat7;
        let x_646 : vec4<bool> = (abs(vec4<f32>(x_640.z, x_640.z, x_640.y, x_640.z)) >= abs(vec4<f32>(x_643.x, x_643.y, x_643.x, x_643.x)));
        let x_648 : vec3<bool> = vec3<bool>(x_646.x, x_646.y, x_646.z);
        let x_649 : vec4<bool> = u_xlatb8;
        u_xlatb8 = vec4<bool>(x_648.x, x_648.y, x_648.z, x_649.w);
        let x_652 : bool = u_xlatb8.y;
        let x_654 : bool = u_xlatb8.x;
        u_xlatb34 = (x_652 & x_654);
        let x_656 : vec3<f32> = u_xlat7;
        let x_659 : vec4<bool> = (-(vec4<f32>(x_656.z, x_656.y, x_656.z, x_656.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_660 : vec3<bool> = vec3<bool>(x_659.x, x_659.y, x_659.w);
        let x_661 : vec4<bool> = u_xlatb8;
        u_xlatb8 = vec4<bool>(x_660.x, x_660.y, x_661.z, x_660.z);
        let x_665 : bool = u_xlatb8.x;
        u_xlat8.x = select(4.0f, 5.0f, x_665);
        let x_671 : bool = u_xlatb8.y;
        u_xlat8.y = select(2.0f, 3.0f, x_671);
        let x_678 : bool = u_xlatb8.w;
        u_xlat35 = select(0.0f, 1.0f, x_678);
        let x_682 : bool = u_xlatb8.z;
        if (x_682) {
          let x_687 : f32 = u_xlat8.y;
          x_683 = x_687;
        } else {
          let x_689 : f32 = u_xlat35;
          x_683 = x_689;
        }
        let x_690 : f32 = x_683;
        u_xlat17 = x_690;
        let x_692 : bool = u_xlatb34;
        if (x_692) {
          let x_697 : f32 = u_xlat8.x;
          x_693 = x_697;
        } else {
          let x_699 : f32 = u_xlat17;
          x_693 = x_699;
        }
        let x_700 : f32 = x_693;
        u_xlat34 = x_700;
        let x_701 : i32 = u_xlati15;
        let x_703 : f32 = x_323.x_AdditionalShadowParams[x_701].w;
        u_xlat8.x = trunc(x_703);
        let x_706 : f32 = u_xlat34;
        let x_708 : f32 = u_xlat8.x;
        u_xlat34 = (x_706 + x_708);
        let x_710 : f32 = u_xlat34;
        u_xlati33 = i32(x_710);
      }
      let x_712 : i32 = u_xlati33;
      u_xlati33 = (x_712 << bitcast<u32>(2i));
      let x_714 : vec3<f32> = vs_TEXCOORD1;
      let x_717 : i32 = u_xlati33;
      let x_720 : i32 = u_xlati33;
      let x_724 : vec4<f32> = x_323.x_AdditionalLightsWorldToShadow[((x_717 + 1i) / 4i)][((x_720 + 1i) % 4i)];
      u_xlat8 = (vec4<f32>(x_714.y, x_714.y, x_714.y, x_714.y) * x_724);
      let x_726 : i32 = u_xlati33;
      let x_728 : i32 = u_xlati33;
      let x_731 : vec4<f32> = x_323.x_AdditionalLightsWorldToShadow[(x_726 / 4i)][(x_728 % 4i)];
      let x_732 : vec3<f32> = vs_TEXCOORD1;
      let x_735 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_731 * vec4<f32>(x_732.x, x_732.x, x_732.x, x_732.x)) + x_735);
      let x_737 : i32 = u_xlati33;
      let x_740 : i32 = u_xlati33;
      let x_744 : vec4<f32> = x_323.x_AdditionalLightsWorldToShadow[((x_737 + 2i) / 4i)][((x_740 + 2i) % 4i)];
      let x_745 : vec3<f32> = vs_TEXCOORD1;
      let x_748 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_744 * vec4<f32>(x_745.z, x_745.z, x_745.z, x_745.z)) + x_748);
      let x_750 : vec4<f32> = u_xlat8;
      let x_751 : i32 = u_xlati33;
      let x_754 : i32 = u_xlati33;
      let x_758 : vec4<f32> = x_323.x_AdditionalLightsWorldToShadow[((x_751 + 3i) / 4i)][((x_754 + 3i) % 4i)];
      u_xlat8 = (x_750 + x_758);
      let x_760 : vec4<f32> = u_xlat8;
      let x_762 : vec4<f32> = u_xlat8;
      let x_764 : vec3<f32> = (vec3<f32>(x_760.x, x_760.y, x_760.z) / vec3<f32>(x_762.w, x_762.w, x_762.w));
      let x_765 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_764.x, x_764.y, x_764.z, x_765.w);
      let x_768 : vec4<f32> = u_xlat8;
      let x_769 : vec2<f32> = vec2<f32>(x_768.x, x_768.y);
      let x_771 : f32 = u_xlat8.z;
      txVec1 = vec3<f32>(x_769.x, x_769.y, x_771);
      let x_779 : vec3<f32> = txVec1;
      let x_781 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_779.xy, x_779.z);
      u_xlat33 = x_781;
      let x_782 : i32 = u_xlati15;
      let x_784 : f32 = x_323.x_AdditionalShadowParams[x_782].x;
      u_xlat34 = (1.0f + -(x_784));
      let x_787 : f32 = u_xlat33;
      let x_788 : i32 = u_xlati15;
      let x_790 : f32 = x_323.x_AdditionalShadowParams[x_788].x;
      let x_792 : f32 = u_xlat34;
      u_xlat33 = ((x_787 * x_790) + x_792);
      let x_795 : f32 = u_xlat8.z;
      u_xlatb34 = (0.0f >= x_795);
      let x_798 : f32 = u_xlat8.z;
      u_xlatb8.x = (x_798 >= 1.0f);
      let x_801 : bool = u_xlatb34;
      let x_803 : bool = u_xlatb8.x;
      u_xlatb34 = (x_801 | x_803);
      let x_805 : bool = u_xlatb34;
      let x_806 : f32 = u_xlat33;
      u_xlat33 = select(x_806, 1.0f, x_805);
    } else {
      u_xlat33 = 1.0f;
    }
    let x_809 : f32 = u_xlat33;
    u_xlat34 = (-(x_809) + 1.0f);
    let x_813 : f32 = u_xlat4.x;
    let x_814 : f32 = u_xlat34;
    let x_816 : f32 = u_xlat33;
    u_xlat33 = ((x_813 * x_814) + x_816);
    let x_818 : f32 = u_xlat33;
    let x_819 : f32 = u_xlat24;
    u_xlat24 = (x_818 * x_819);
    let x_821 : f32 = u_xlat24;
    let x_823 : i32 = u_xlati15;
    let x_825 : vec4<f32> = x_548.x_AdditionalLightsColor[x_823];
    u_xlat15 = (vec3<f32>(x_821, x_821, x_821) * vec3<f32>(x_825.x, x_825.y, x_825.z));
    let x_828 : vec3<f32> = u_xlat2;
    let x_829 : vec3<f32> = u_xlat7;
    u_xlat34 = dot(x_828, x_829);
    let x_831 : f32 = u_xlat34;
    u_xlat34 = clamp(x_831, 0.0f, 1.0f);
    let x_833 : vec3<f32> = u_xlat15;
    let x_834 : f32 = u_xlat34;
    let x_836 : vec3<f32> = (x_833 * vec3<f32>(x_834, x_834, x_834));
    let x_837 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_836.x, x_836.y, x_836.z, x_837.w);
    let x_839 : vec3<f32> = u_xlat1;
    let x_840 : f32 = u_xlat28;
    let x_843 : vec3<f32> = u_xlat7;
    u_xlat7 = ((x_839 * vec3<f32>(x_840, x_840, x_840)) + x_843);
    let x_845 : vec3<f32> = u_xlat7;
    let x_846 : vec3<f32> = u_xlat7;
    u_xlat34 = dot(x_845, x_846);
    let x_848 : f32 = u_xlat34;
    u_xlat34 = max(x_848, 1.17549435e-38f);
    let x_850 : f32 = u_xlat34;
    u_xlat34 = inverseSqrt(x_850);
    let x_852 : f32 = u_xlat34;
    let x_854 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_852, x_852, x_852) * x_854);
    let x_856 : vec3<f32> = u_xlat2;
    let x_857 : vec3<f32> = u_xlat7;
    u_xlat7.x = dot(x_856, x_857);
    let x_861 : f32 = u_xlat7.x;
    u_xlat7.x = clamp(x_861, 0.0f, 1.0f);
    let x_865 : f32 = u_xlat7.x;
    u_xlat7.x = log2(x_865);
    let x_868 : f32 = u_xlat30;
    let x_870 : f32 = u_xlat7.x;
    u_xlat7.x = (x_868 * x_870);
    let x_874 : f32 = u_xlat7.x;
    u_xlat7.x = exp2(x_874);
    let x_877 : vec3<f32> = u_xlat7;
    let x_880 : vec4<f32> = x_57.x_SpecColor;
    u_xlat7 = (vec3<f32>(x_877.x, x_877.x, x_877.x) * vec3<f32>(x_880.x, x_880.y, x_880.z));
    let x_883 : vec3<f32> = u_xlat15;
    let x_884 : vec3<f32> = u_xlat7;
    u_xlat15 = (x_883 * x_884);
    let x_886 : vec4<f32> = u_xlat8;
    let x_888 : vec4<f32> = u_xlat0;
    let x_891 : vec3<f32> = u_xlat15;
    u_xlat15 = ((vec3<f32>(x_886.x, x_886.y, x_886.z) * vec3<f32>(x_888.y, x_888.z, x_888.w)) + x_891);
    let x_893 : vec3<f32> = u_xlat14;
    let x_894 : vec3<f32> = u_xlat15;
    u_xlat14 = (x_893 + x_894);

    continuing {
      let x_896 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_896 + bitcast<u32>(1i));
    }
  }
  let x_899 : vec4<f32> = u_xlat3;
  let x_901 : vec4<f32> = u_xlat0;
  let x_904 : vec3<f32> = u_xlat13;
  u_xlat9 = ((vec3<f32>(x_899.x, x_899.y, x_899.z) * vec3<f32>(x_901.y, x_901.z, x_901.w)) + x_904);
  let x_906 : vec3<f32> = u_xlat14;
  let x_907 : vec3<f32> = u_xlat9;
  u_xlat9 = (x_906 + x_907);
  let x_909 : f32 = u_xlat29;
  let x_910 : f32 = u_xlat29;
  u_xlat1.x = (x_909 * -(x_910));
  let x_915 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_915);
  let x_918 : vec3<f32> = u_xlat9;
  let x_920 : vec4<f32> = x_45.unity_FogColor;
  u_xlat9 = (x_918 + -(vec3<f32>(x_920.x, x_920.y, x_920.z)));
  let x_926 : vec3<f32> = u_xlat1;
  let x_928 : vec3<f32> = u_xlat9;
  let x_931 : vec4<f32> = x_45.unity_FogColor;
  let x_933 : vec3<f32> = ((vec3<f32>(x_926.x, x_926.x, x_926.x) * x_928) + vec3<f32>(x_931.x, x_931.y, x_931.z));
  let x_934 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_933.x, x_933.y, x_933.z, x_934.w);
  let x_938 : f32 = x_57.x_Surface;
  u_xlatb9 = (x_938 == 1.0f);
  let x_940 : bool = u_xlatb9;
  if (x_940) {
    let x_945 : f32 = u_xlat0.x;
    x_941 = x_945;
  } else {
    x_941 = 1.0f;
  }
  let x_947 : f32 = x_941;
  SV_Target0.w = x_947;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(4) vs_TEXCOORD7_param : vec2<f32>, @location(3) vs_TEXCOORD6_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  main_1();
  return main_out(SV_Target0);
}


