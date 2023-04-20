diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2<f32>,
  /* @offset(8) */
  x_AlphaToMaskAvailable : f32,
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
}

struct UnityPerMaterial {
  /* @offset(0) */
  x_MainTex_ST : vec4<f32>,
  /* @offset(16) */
  x_BaseColor : vec4<f32>,
  /* @offset(32) */
  x_SpecColor : vec4<f32>,
  /* @offset(48) */
  x_EmissionColor : vec4<f32>,
  /* @offset(64) */
  x_Cutoff : f32,
  /* @offset(68) */
  x_Shininess : f32,
}

alias Arr = array<mat4x4<f32>, 5u>;

alias Arr_1 = array<vec4<f32>, 32u>;

alias Arr_2 = array<mat4x4<f32>, 32u>;

alias Arr_3 = array<vec4<f32>, 32u>;

struct LightShadows {
  /* @offset(0) */
  x_MainLightWorldToShadow : Arr,
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
  x_AdditionalShadowParams : Arr_3,
  /* @offset(1040) */
  x_AdditionalLightsWorldToShadow : Arr_2,
}

alias Arr_4 = array<vec4<f32>, 2u>;

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
  unity_LightIndices : Arr_4,
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
  x_AdditionalLightsPosition : Arr_3,
  /* @offset(512) */
  x_AdditionalLightsColor : Arr_3,
  /* @offset(1024) */
  x_AdditionalLightsAttenuation : Arr_3,
  /* @offset(1536) */
  x_AdditionalLightsSpotDir : Arr_3,
  /* @offset(2048) */
  x_AdditionalLightsOcclusionProbes : Arr_3,
  /* @offset(2560) */
  x_AdditionalLightsLayerMasks : Arr_9,
}

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(2) var x_MainTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec4<f32>;

var<private> u_xlatb0 : bool;

@group(1) @binding(3) var<uniform> x_65 : UnityPerMaterial;

var<private> u_xlat8 : f32;

var<private> u_xlat16 : f32;

var<private> u_xlat24 : f32;

var<private> u_xlatb16 : bool;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat3 : vec4<f32>;

@group(0) @binding(1) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(5) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

var<private> u_xlat4 : vec3<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(7) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat25 : f32;

@group(1) @binding(4) var<uniform> x_279 : LightShadows;

var<private> u_xlatb25 : bool;

var<private> u_xlatb26 : bool;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> u_xlat26 : f32;

var<private> u_xlat27 : f32;

@group(1) @binding(2) var<uniform> x_340 : UnityPerDraw;

var<private> u_xlatu24 : u32;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlatu27 : u32;

var<private> u_xlati28 : i32;

var<private> u_xlati27 : i32;

var<private> u_xlat6 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_446 : AdditionalLights;

var<private> u_xlat28 : f32;

var<private> u_xlat29 : f32;

var<private> u_xlati29 : i32;

var<private> u_xlatb30 : bool;

var<private> u_xlatb7 : vec4<bool>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat31 : f32;

var<private> u_xlat15 : f32;

var<private> u_xlat30 : f32;

@group(0) @binding(4) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatu26 : u32;

var<private> u_xlatb27 : bool;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var x_72 : f32;
  var x_121 : f32;
  var txVec0 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_582 : f32;
  var x_592 : f32;
  var txVec1 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_41 : vec2<f32> = vs_TEXCOORD0;
  let x_50 : f32 = x_44.x_GlobalMipBias.x;
  let x_51 : vec4<f32> = textureSampleBias(x_MainTex, sampler_MainTex, x_41, x_50);
  u_xlat0 = x_51;
  let x_53 : vec4<f32> = u_xlat0;
  let x_55 : vec4<f32> = vs_TEXCOORD7;
  u_xlat1 = (x_53 * x_55);
  let x_62 : f32 = u_xlat1.w;
  let x_68 : f32 = x_65.x_Cutoff;
  u_xlatb0 = (x_62 >= x_68);
  let x_70 : bool = u_xlatb0;
  if (x_70) {
    let x_76 : f32 = u_xlat1.w;
    x_72 = x_76;
  } else {
    x_72 = 0.0f;
  }
  let x_79 : f32 = x_72;
  u_xlat0.x = x_79;
  let x_83 : f32 = u_xlat0.w;
  let x_85 : f32 = vs_TEXCOORD7.w;
  let x_88 : f32 = x_65.x_Cutoff;
  u_xlat8 = ((x_83 * x_85) + -(x_88));
  let x_93 : f32 = u_xlat1.w;
  u_xlat16 = dpdxCoarse(x_93);
  let x_97 : f32 = u_xlat1.w;
  u_xlat24 = dpdyCoarse(x_97);
  let x_99 : f32 = u_xlat24;
  let x_101 : f32 = u_xlat16;
  u_xlat16 = (abs(x_99) + abs(x_101));
  let x_104 : f32 = u_xlat16;
  u_xlat16 = max(x_104, 0.00009999999747378752f);
  let x_107 : f32 = u_xlat8;
  let x_108 : f32 = u_xlat16;
  u_xlat8 = (x_107 / x_108);
  let x_110 : f32 = u_xlat8;
  u_xlat8 = (x_110 + 0.5f);
  let x_113 : f32 = u_xlat8;
  u_xlat8 = clamp(x_113, 0.0f, 1.0f);
  let x_118 : f32 = x_44.x_AlphaToMaskAvailable;
  u_xlatb16 = !((x_118 == 0.0f));
  let x_120 : bool = u_xlatb16;
  if (x_120) {
    let x_124 : f32 = u_xlat8;
    x_121 = x_124;
  } else {
    let x_127 : f32 = u_xlat0.x;
    x_121 = x_127;
  }
  let x_128 : f32 = x_121;
  u_xlat0.x = x_128;
  let x_131 : f32 = u_xlat0.x;
  u_xlat0.x = (x_131 + -0.00009999999747378752f);
  let x_136 : f32 = u_xlat0.x;
  u_xlatb0 = (x_136 < 0.0f);
  let x_138 : bool = u_xlatb0;
  if (((select(0i, 1i, x_138) * -1i) != 0i)) {
    discard;
  }
  let x_148 : vec3<f32> = vs_TEXCOORD3;
  let x_149 : vec3<f32> = vs_TEXCOORD3;
  u_xlat0.x = dot(x_148, x_149);
  let x_153 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_153);
  let x_158 : vec4<f32> = u_xlat0;
  let x_160 : vec3<f32> = vs_TEXCOORD3;
  u_xlat2 = (vec3<f32>(x_158.x, x_158.x, x_158.x) * x_160);
  let x_163 : f32 = hlslcc_FragCoord.w;
  let x_166 : f32 = hlslcc_FragCoord.z;
  u_xlat0.x = (x_163 * x_166);
  let x_170 : f32 = u_xlat0.x;
  let x_174 : f32 = x_44.x_ProjectionParams.y;
  u_xlat0.x = (x_170 / x_174);
  let x_178 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_178) + 1.0f);
  let x_183 : f32 = u_xlat0.x;
  let x_185 : f32 = x_44.x_ProjectionParams.z;
  u_xlat0.x = (x_183 * x_185);
  let x_189 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_189, 0.0f);
  let x_193 : f32 = u_xlat0.x;
  let x_196 : f32 = x_44.unity_FogParams.x;
  u_xlat0.x = (x_193 * x_196);
  let x_206 : vec2<f32> = vs_TEXCOORD1;
  let x_208 : f32 = x_44.x_GlobalMipBias.x;
  let x_209 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_206, x_208);
  u_xlat3 = x_209;
  let x_215 : vec2<f32> = vs_TEXCOORD1;
  let x_217 : f32 = x_44.x_GlobalMipBias.x;
  let x_218 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_215, x_217);
  u_xlat4 = vec3<f32>(x_218.x, x_218.y, x_218.z);
  let x_220 : vec4<f32> = u_xlat3;
  let x_224 : vec3<f32> = (vec3<f32>(x_220.x, x_220.y, x_220.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_225 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_224.x, x_224.y, x_224.z, x_225.w);
  let x_227 : vec3<f32> = u_xlat2;
  let x_228 : vec4<f32> = u_xlat3;
  u_xlat24 = dot(x_227, vec3<f32>(x_228.x, x_228.y, x_228.z));
  let x_231 : f32 = u_xlat24;
  u_xlat24 = (x_231 + 0.5f);
  let x_233 : f32 = u_xlat24;
  let x_235 : vec3<f32> = u_xlat4;
  let x_236 : vec3<f32> = (vec3<f32>(x_233, x_233, x_233) * x_235);
  let x_237 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_236.x, x_236.y, x_236.z, x_237.w);
  let x_240 : f32 = u_xlat3.w;
  u_xlat24 = max(x_240, 0.00009999999747378752f);
  let x_242 : vec4<f32> = u_xlat3;
  let x_244 : f32 = u_xlat24;
  let x_246 : vec3<f32> = (vec3<f32>(x_242.x, x_242.y, x_242.z) / vec3<f32>(x_244, x_244, x_244));
  let x_247 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_246.x, x_246.y, x_246.z, x_247.w);
  let x_252 : vec4<f32> = vs_TEXCOORD6;
  let x_253 : vec2<f32> = vec2<f32>(x_252.x, x_252.y);
  let x_255 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_253.x, x_253.y, x_255);
  let x_267 : vec3<f32> = txVec0;
  let x_269 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_267.xy, x_267.z);
  u_xlat24 = x_269;
  let x_282 : f32 = x_279.x_MainLightShadowParams.x;
  u_xlat25 = (-(x_282) + 1.0f);
  let x_285 : f32 = u_xlat24;
  let x_287 : f32 = x_279.x_MainLightShadowParams.x;
  let x_289 : f32 = u_xlat25;
  u_xlat24 = ((x_285 * x_287) + x_289);
  let x_293 : f32 = vs_TEXCOORD6.z;
  u_xlatb25 = (0.0f >= x_293);
  let x_297 : f32 = vs_TEXCOORD6.z;
  u_xlatb26 = (x_297 >= 1.0f);
  let x_299 : bool = u_xlatb25;
  let x_300 : bool = u_xlatb26;
  u_xlatb25 = (x_299 | x_300);
  let x_302 : bool = u_xlatb25;
  let x_303 : f32 = u_xlat24;
  u_xlat24 = select(x_303, 1.0f, x_302);
  let x_306 : vec4<f32> = vs_TEXCOORD2;
  let x_311 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat4 = (vec3<f32>(x_306.x, x_306.y, x_306.z) + -(x_311));
  let x_314 : vec3<f32> = u_xlat4;
  let x_315 : vec3<f32> = u_xlat4;
  u_xlat25 = dot(x_314, x_315);
  let x_318 : f32 = u_xlat25;
  let x_320 : f32 = x_279.x_MainLightShadowParams.z;
  let x_323 : f32 = x_279.x_MainLightShadowParams.w;
  u_xlat26 = ((x_318 * x_320) + x_323);
  let x_325 : f32 = u_xlat26;
  u_xlat26 = clamp(x_325, 0.0f, 1.0f);
  let x_328 : f32 = u_xlat24;
  u_xlat27 = (-(x_328) + 1.0f);
  let x_331 : f32 = u_xlat26;
  let x_332 : f32 = u_xlat27;
  let x_334 : f32 = u_xlat24;
  u_xlat24 = ((x_331 * x_332) + x_334);
  let x_336 : f32 = u_xlat24;
  let x_342 : f32 = x_340.unity_LightData.z;
  u_xlat24 = (x_336 * x_342);
  let x_344 : f32 = u_xlat24;
  let x_349 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat4 = (vec3<f32>(x_344, x_344, x_344) * vec3<f32>(x_349.x, x_349.y, x_349.z));
  let x_352 : vec3<f32> = u_xlat2;
  let x_355 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat24 = dot(x_352, vec3<f32>(x_355.x, x_355.y, x_355.z));
  let x_358 : f32 = u_xlat24;
  u_xlat24 = clamp(x_358, 0.0f, 1.0f);
  let x_360 : f32 = u_xlat24;
  let x_362 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_360, x_360, x_360) * x_362);
  let x_364 : vec4<f32> = u_xlat1;
  let x_366 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_364.x, x_364.y, x_364.z) * x_366);
  let x_369 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_371 : f32 = x_340.unity_LightData.y;
  u_xlat24 = min(x_369, x_371);
  let x_375 : f32 = u_xlat24;
  u_xlatu24 = bitcast<u32>(i32(x_375));
  let x_378 : f32 = u_xlat25;
  let x_381 : f32 = x_279.x_AdditionalShadowFadeParams.x;
  let x_384 : f32 = x_279.x_AdditionalShadowFadeParams.y;
  u_xlat25 = ((x_378 * x_381) + x_384);
  let x_386 : f32 = u_xlat25;
  u_xlat25 = clamp(x_386, 0.0f, 1.0f);
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_399 : u32 = u_xlatu_loop_1;
    let x_400 : u32 = u_xlatu24;
    if ((x_399 < x_400)) {
    } else {
      break;
    }
    let x_403 : u32 = u_xlatu_loop_1;
    u_xlatu27 = (x_403 >> 2u);
    let x_407 : u32 = u_xlatu_loop_1;
    u_xlati28 = bitcast<i32>((x_407 & 3u));
    let x_410 : u32 = u_xlatu27;
    let x_413 : vec4<f32> = x_340.unity_LightIndices[bitcast<i32>(x_410)];
    let x_423 : i32 = u_xlati28;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_428 : vec4<u32> = indexable[x_423];
    u_xlat27 = dot(x_413, bitcast<vec4<f32>>(x_428));
    let x_432 : f32 = u_xlat27;
    u_xlati27 = i32(x_432);
    let x_435 : vec4<f32> = vs_TEXCOORD2;
    let x_447 : i32 = u_xlati27;
    let x_449 : vec4<f32> = x_446.x_AdditionalLightsPosition[x_447];
    let x_452 : i32 = u_xlati27;
    let x_454 : vec4<f32> = x_446.x_AdditionalLightsPosition[x_452];
    u_xlat6 = ((-(vec3<f32>(x_435.x, x_435.y, x_435.z)) * vec3<f32>(x_449.w, x_449.w, x_449.w)) + vec3<f32>(x_454.x, x_454.y, x_454.z));
    let x_458 : vec3<f32> = u_xlat6;
    let x_459 : vec3<f32> = u_xlat6;
    u_xlat28 = dot(x_458, x_459);
    let x_461 : f32 = u_xlat28;
    u_xlat28 = max(x_461, 0.00006103515625f);
    let x_465 : f32 = u_xlat28;
    u_xlat29 = inverseSqrt(x_465);
    let x_467 : f32 = u_xlat29;
    let x_469 : vec3<f32> = u_xlat6;
    u_xlat6 = (vec3<f32>(x_467, x_467, x_467) * x_469);
    let x_471 : f32 = u_xlat28;
    u_xlat29 = (1.0f / x_471);
    let x_473 : f32 = u_xlat28;
    let x_474 : i32 = u_xlati27;
    let x_476 : f32 = x_446.x_AdditionalLightsAttenuation[x_474].x;
    u_xlat28 = (x_473 * x_476);
    let x_478 : f32 = u_xlat28;
    let x_480 : f32 = u_xlat28;
    u_xlat28 = ((-(x_478) * x_480) + 1.0f);
    let x_483 : f32 = u_xlat28;
    u_xlat28 = max(x_483, 0.0f);
    let x_485 : f32 = u_xlat28;
    let x_486 : f32 = u_xlat28;
    u_xlat28 = (x_485 * x_486);
    let x_488 : f32 = u_xlat28;
    let x_489 : f32 = u_xlat29;
    u_xlat28 = (x_488 * x_489);
    let x_491 : i32 = u_xlati27;
    let x_493 : vec4<f32> = x_446.x_AdditionalLightsSpotDir[x_491];
    let x_495 : vec3<f32> = u_xlat6;
    u_xlat29 = dot(vec3<f32>(x_493.x, x_493.y, x_493.z), x_495);
    let x_497 : f32 = u_xlat29;
    let x_498 : i32 = u_xlati27;
    let x_500 : f32 = x_446.x_AdditionalLightsAttenuation[x_498].z;
    let x_502 : i32 = u_xlati27;
    let x_504 : f32 = x_446.x_AdditionalLightsAttenuation[x_502].w;
    u_xlat29 = ((x_497 * x_500) + x_504);
    let x_506 : f32 = u_xlat29;
    u_xlat29 = clamp(x_506, 0.0f, 1.0f);
    let x_508 : f32 = u_xlat29;
    let x_509 : f32 = u_xlat29;
    u_xlat29 = (x_508 * x_509);
    let x_511 : f32 = u_xlat28;
    let x_512 : f32 = u_xlat29;
    u_xlat28 = (x_511 * x_512);
    let x_516 : i32 = u_xlati27;
    let x_518 : f32 = x_279.x_AdditionalShadowParams[x_516].w;
    u_xlati29 = i32(x_518);
    let x_521 : i32 = u_xlati29;
    u_xlatb30 = (x_521 >= 0i);
    let x_523 : bool = u_xlatb30;
    if (x_523) {
      let x_527 : i32 = u_xlati27;
      let x_529 : f32 = x_279.x_AdditionalShadowParams[x_527].z;
      u_xlatb30 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_529, x_529, x_529, x_529))));
      let x_534 : bool = u_xlatb30;
      if (x_534) {
        let x_539 : vec3<f32> = u_xlat6;
        let x_542 : vec3<f32> = u_xlat6;
        let x_545 : vec4<bool> = (abs(vec4<f32>(x_539.z, x_539.z, x_539.y, x_539.z)) >= abs(vec4<f32>(x_542.x, x_542.y, x_542.x, x_542.x)));
        let x_547 : vec3<bool> = vec3<bool>(x_545.x, x_545.y, x_545.z);
        let x_548 : vec4<bool> = u_xlatb7;
        u_xlatb7 = vec4<bool>(x_547.x, x_547.y, x_547.z, x_548.w);
        let x_551 : bool = u_xlatb7.y;
        let x_553 : bool = u_xlatb7.x;
        u_xlatb30 = (x_551 & x_553);
        let x_555 : vec3<f32> = u_xlat6;
        let x_558 : vec4<bool> = (-(vec4<f32>(x_555.z, x_555.y, x_555.z, x_555.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_559 : vec3<bool> = vec3<bool>(x_558.x, x_558.y, x_558.w);
        let x_560 : vec4<bool> = u_xlatb7;
        u_xlatb7 = vec4<bool>(x_559.x, x_559.y, x_560.z, x_559.z);
        let x_564 : bool = u_xlatb7.x;
        u_xlat7.x = select(4.0f, 5.0f, x_564);
        let x_570 : bool = u_xlatb7.y;
        u_xlat7.y = select(2.0f, 3.0f, x_570);
        let x_577 : bool = u_xlatb7.w;
        u_xlat31 = select(0.0f, 1.0f, x_577);
        let x_581 : bool = u_xlatb7.z;
        if (x_581) {
          let x_586 : f32 = u_xlat7.y;
          x_582 = x_586;
        } else {
          let x_588 : f32 = u_xlat31;
          x_582 = x_588;
        }
        let x_589 : f32 = x_582;
        u_xlat15 = x_589;
        let x_591 : bool = u_xlatb30;
        if (x_591) {
          let x_596 : f32 = u_xlat7.x;
          x_592 = x_596;
        } else {
          let x_598 : f32 = u_xlat15;
          x_592 = x_598;
        }
        let x_599 : f32 = x_592;
        u_xlat30 = x_599;
        let x_600 : i32 = u_xlati27;
        let x_602 : f32 = x_279.x_AdditionalShadowParams[x_600].w;
        u_xlat7.x = trunc(x_602);
        let x_605 : f32 = u_xlat30;
        let x_607 : f32 = u_xlat7.x;
        u_xlat30 = (x_605 + x_607);
        let x_609 : f32 = u_xlat30;
        u_xlati29 = i32(x_609);
      }
      let x_611 : i32 = u_xlati29;
      u_xlati29 = (x_611 << bitcast<u32>(2i));
      let x_613 : vec4<f32> = vs_TEXCOORD2;
      let x_616 : i32 = u_xlati29;
      let x_619 : i32 = u_xlati29;
      let x_623 : vec4<f32> = x_279.x_AdditionalLightsWorldToShadow[((x_616 + 1i) / 4i)][((x_619 + 1i) % 4i)];
      u_xlat7 = (vec4<f32>(x_613.y, x_613.y, x_613.y, x_613.y) * x_623);
      let x_625 : i32 = u_xlati29;
      let x_627 : i32 = u_xlati29;
      let x_630 : vec4<f32> = x_279.x_AdditionalLightsWorldToShadow[(x_625 / 4i)][(x_627 % 4i)];
      let x_631 : vec4<f32> = vs_TEXCOORD2;
      let x_634 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_630 * vec4<f32>(x_631.x, x_631.x, x_631.x, x_631.x)) + x_634);
      let x_636 : i32 = u_xlati29;
      let x_639 : i32 = u_xlati29;
      let x_643 : vec4<f32> = x_279.x_AdditionalLightsWorldToShadow[((x_636 + 2i) / 4i)][((x_639 + 2i) % 4i)];
      let x_644 : vec4<f32> = vs_TEXCOORD2;
      let x_647 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_643 * vec4<f32>(x_644.z, x_644.z, x_644.z, x_644.z)) + x_647);
      let x_649 : vec4<f32> = u_xlat7;
      let x_650 : i32 = u_xlati29;
      let x_653 : i32 = u_xlati29;
      let x_657 : vec4<f32> = x_279.x_AdditionalLightsWorldToShadow[((x_650 + 3i) / 4i)][((x_653 + 3i) % 4i)];
      u_xlat7 = (x_649 + x_657);
      let x_659 : vec4<f32> = u_xlat7;
      let x_661 : vec4<f32> = u_xlat7;
      let x_663 : vec3<f32> = (vec3<f32>(x_659.x, x_659.y, x_659.z) / vec3<f32>(x_661.w, x_661.w, x_661.w));
      let x_664 : vec4<f32> = u_xlat7;
      u_xlat7 = vec4<f32>(x_663.x, x_663.y, x_663.z, x_664.w);
      let x_667 : vec4<f32> = u_xlat7;
      let x_668 : vec2<f32> = vec2<f32>(x_667.x, x_667.y);
      let x_670 : f32 = u_xlat7.z;
      txVec1 = vec3<f32>(x_668.x, x_668.y, x_670);
      let x_678 : vec3<f32> = txVec1;
      let x_680 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_678.xy, x_678.z);
      u_xlat29 = x_680;
      let x_681 : i32 = u_xlati27;
      let x_683 : f32 = x_279.x_AdditionalShadowParams[x_681].x;
      u_xlat30 = (1.0f + -(x_683));
      let x_686 : f32 = u_xlat29;
      let x_687 : i32 = u_xlati27;
      let x_689 : f32 = x_279.x_AdditionalShadowParams[x_687].x;
      let x_691 : f32 = u_xlat30;
      u_xlat29 = ((x_686 * x_689) + x_691);
      let x_694 : f32 = u_xlat7.z;
      u_xlatb30 = (0.0f >= x_694);
      let x_697 : f32 = u_xlat7.z;
      u_xlatb7.x = (x_697 >= 1.0f);
      let x_700 : bool = u_xlatb30;
      let x_702 : bool = u_xlatb7.x;
      u_xlatb30 = (x_700 | x_702);
      let x_704 : bool = u_xlatb30;
      let x_705 : f32 = u_xlat29;
      u_xlat29 = select(x_705, 1.0f, x_704);
    } else {
      u_xlat29 = 1.0f;
    }
    let x_708 : f32 = u_xlat29;
    u_xlat30 = (-(x_708) + 1.0f);
    let x_711 : f32 = u_xlat25;
    let x_712 : f32 = u_xlat30;
    let x_714 : f32 = u_xlat29;
    u_xlat29 = ((x_711 * x_712) + x_714);
    let x_716 : f32 = u_xlat28;
    let x_717 : f32 = u_xlat29;
    u_xlat28 = (x_716 * x_717);
    let x_719 : f32 = u_xlat28;
    let x_721 : i32 = u_xlati27;
    let x_723 : vec4<f32> = x_446.x_AdditionalLightsColor[x_721];
    let x_725 : vec3<f32> = (vec3<f32>(x_719, x_719, x_719) * vec3<f32>(x_723.x, x_723.y, x_723.z));
    let x_726 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_725.x, x_725.y, x_725.z, x_726.w);
    let x_728 : vec3<f32> = u_xlat2;
    let x_729 : vec3<f32> = u_xlat6;
    u_xlat27 = dot(x_728, x_729);
    let x_731 : f32 = u_xlat27;
    u_xlat27 = clamp(x_731, 0.0f, 1.0f);
    let x_733 : f32 = u_xlat27;
    let x_735 : vec4<f32> = u_xlat7;
    u_xlat6 = (vec3<f32>(x_733, x_733, x_733) * vec3<f32>(x_735.x, x_735.y, x_735.z));
    let x_738 : vec3<f32> = u_xlat6;
    let x_739 : vec4<f32> = u_xlat1;
    let x_742 : vec3<f32> = u_xlat5;
    u_xlat5 = ((x_738 * vec3<f32>(x_739.x, x_739.y, x_739.z)) + x_742);

    continuing {
      let x_744 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_744 + bitcast<u32>(1i));
    }
  }
  let x_746 : vec4<f32> = u_xlat3;
  let x_748 : vec4<f32> = u_xlat1;
  let x_751 : vec3<f32> = u_xlat4;
  let x_752 : vec3<f32> = ((vec3<f32>(x_746.x, x_746.y, x_746.z) * vec3<f32>(x_748.x, x_748.y, x_748.z)) + x_751);
  let x_753 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_752.x, x_752.y, x_752.z, x_753.w);
  let x_755 : vec3<f32> = u_xlat5;
  let x_756 : vec4<f32> = u_xlat1;
  let x_758 : vec3<f32> = (x_755 + vec3<f32>(x_756.x, x_756.y, x_756.z));
  let x_759 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_758.x, x_758.y, x_758.z, x_759.w);
  let x_762 : f32 = u_xlat0.x;
  let x_764 : f32 = u_xlat0.x;
  u_xlat0.x = (x_762 * -(x_764));
  let x_769 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_769);
  let x_772 : vec4<f32> = u_xlat1;
  let x_775 : vec4<f32> = x_44.unity_FogColor;
  let x_778 : vec3<f32> = (vec3<f32>(x_772.x, x_772.y, x_772.z) + -(vec3<f32>(x_775.x, x_775.y, x_775.z)));
  let x_779 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_778.x, x_778.y, x_778.z, x_779.w);
  let x_783 : vec4<f32> = u_xlat0;
  let x_785 : vec4<f32> = u_xlat1;
  let x_789 : vec4<f32> = x_44.unity_FogColor;
  let x_791 : vec3<f32> = ((vec3<f32>(x_783.x, x_783.x, x_783.x) * vec3<f32>(x_785.x, x_785.y, x_785.z)) + vec3<f32>(x_789.x, x_789.y, x_789.z));
  let x_792 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_791.x, x_791.y, x_791.z, x_792.w);
  let x_794 : bool = u_xlatb16;
  let x_795 : f32 = u_xlat8;
  SV_Target0.w = select(1.0f, x_795, x_794);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(5) vs_TEXCOORD7_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec3<f32>, @location(1) vs_TEXCOORD1_param : vec2<f32>, @location(4) vs_TEXCOORD6_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  main_1();
  return main_out(SV_Target0);
}


