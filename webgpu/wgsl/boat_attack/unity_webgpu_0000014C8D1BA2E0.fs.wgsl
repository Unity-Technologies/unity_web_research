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

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(2) var x_MainTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_27 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec4<f32>;

var<private> u_xlatb0 : bool;

@group(1) @binding(3) var<uniform> x_51 : UnityPerMaterial;

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

@group(1) @binding(4) var<uniform> x_235 : LightShadows;

var<private> u_xlatb24 : bool;

var<private> u_xlatb25 : bool;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> u_xlat25 : f32;

var<private> u_xlat26 : f32;

@group(1) @binding(2) var<uniform> x_308 : UnityPerDraw;

var<private> u_xlatu0 : u32;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlatu26 : u32;

var<private> u_xlati27 : i32;

var<private> u_xlati26 : i32;

var<private> u_xlat6 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_422 : AdditionalLights;

var<private> u_xlat27 : f32;

var<private> u_xlat28 : f32;

var<private> u_xlati28 : i32;

var<private> u_xlatb29 : bool;

var<private> u_xlatb7 : vec4<bool>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat30 : f32;

var<private> u_xlat29 : f32;

@group(0) @binding(4) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb30 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu25 : u32;

var<private> u_xlatb26 : bool;

fn main_1() {
  var x_58 : f32;
  var x_109 : f32;
  var txVec0 : vec3<f32>;
  var x_261 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_557 : f32;
  var x_567 : f32;
  var txVec1 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_34 : f32 = x_27.x_GlobalMipBias.x;
  let x_35 : vec4<f32> = textureSampleBias(x_MainTex, sampler_MainTex, x_23, x_34);
  u_xlat0 = x_35;
  let x_37 : vec4<f32> = u_xlat0;
  let x_40 : vec4<f32> = vs_TEXCOORD7;
  u_xlat1 = (x_37 * x_40);
  let x_48 : f32 = u_xlat1.w;
  let x_54 : f32 = x_51.x_Cutoff;
  u_xlatb0 = (x_48 >= x_54);
  let x_56 : bool = u_xlatb0;
  if (x_56) {
    let x_62 : f32 = u_xlat1.w;
    x_58 = x_62;
  } else {
    x_58 = 0.0f;
  }
  let x_65 : f32 = x_58;
  u_xlat0.x = x_65;
  let x_69 : f32 = u_xlat0.w;
  let x_72 : f32 = vs_TEXCOORD7.w;
  let x_75 : f32 = x_51.x_Cutoff;
  u_xlat8 = ((x_69 * x_72) + -(x_75));
  let x_80 : f32 = u_xlat1.w;
  u_xlat16 = dpdxCoarse(x_80);
  let x_84 : f32 = u_xlat1.w;
  u_xlat24 = dpdyCoarse(x_84);
  let x_86 : f32 = u_xlat24;
  let x_88 : f32 = u_xlat16;
  u_xlat16 = (abs(x_86) + abs(x_88));
  let x_91 : f32 = u_xlat16;
  u_xlat16 = max(x_91, 0.00009999999747378752f);
  let x_94 : f32 = u_xlat8;
  let x_95 : f32 = u_xlat16;
  u_xlat8 = (x_94 / x_95);
  let x_97 : f32 = u_xlat8;
  u_xlat8 = (x_97 + 0.5f);
  let x_100 : f32 = u_xlat8;
  u_xlat8 = clamp(x_100, 0.0f, 1.0f);
  let x_106 : f32 = x_27.x_AlphaToMaskAvailable;
  u_xlatb16 = !((x_106 == 0.0f));
  let x_108 : bool = u_xlatb16;
  if (x_108) {
    let x_112 : f32 = u_xlat8;
    x_109 = x_112;
  } else {
    let x_115 : f32 = u_xlat0.x;
    x_109 = x_115;
  }
  let x_116 : f32 = x_109;
  u_xlat0.x = x_116;
  let x_119 : f32 = u_xlat0.x;
  u_xlat0.x = (x_119 + -0.00009999999747378752f);
  let x_124 : f32 = u_xlat0.x;
  u_xlatb0 = (x_124 < 0.0f);
  let x_126 : bool = u_xlatb0;
  if (((select(0i, 1i, x_126) * -1i) != 0i)) {
    discard;
  }
  let x_136 : vec3<f32> = vs_TEXCOORD3;
  let x_137 : vec3<f32> = vs_TEXCOORD3;
  u_xlat0.x = dot(x_136, x_137);
  let x_141 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_141);
  let x_146 : vec4<f32> = u_xlat0;
  let x_148 : vec3<f32> = vs_TEXCOORD3;
  u_xlat2 = (vec3<f32>(x_146.x, x_146.x, x_146.x) * x_148);
  let x_157 : vec2<f32> = vs_TEXCOORD1;
  let x_159 : f32 = x_27.x_GlobalMipBias.x;
  let x_160 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_157, x_159);
  u_xlat3 = x_160;
  let x_166 : vec2<f32> = vs_TEXCOORD1;
  let x_168 : f32 = x_27.x_GlobalMipBias.x;
  let x_169 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_166, x_168);
  u_xlat4 = vec3<f32>(x_169.x, x_169.y, x_169.z);
  let x_171 : vec4<f32> = u_xlat3;
  let x_175 : vec3<f32> = (vec3<f32>(x_171.x, x_171.y, x_171.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_176 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_175.x, x_175.y, x_175.z, x_176.w);
  let x_178 : vec3<f32> = u_xlat2;
  let x_179 : vec4<f32> = u_xlat3;
  u_xlat0.x = dot(x_178, vec3<f32>(x_179.x, x_179.y, x_179.z));
  let x_184 : f32 = u_xlat0.x;
  u_xlat0.x = (x_184 + 0.5f);
  let x_187 : vec4<f32> = u_xlat0;
  let x_189 : vec3<f32> = u_xlat4;
  let x_190 : vec3<f32> = (vec3<f32>(x_187.x, x_187.x, x_187.x) * x_189);
  let x_191 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_190.x, x_190.y, x_190.z, x_191.w);
  let x_194 : f32 = u_xlat3.w;
  u_xlat0.x = max(x_194, 0.00009999999747378752f);
  let x_197 : vec4<f32> = u_xlat3;
  let x_199 : vec4<f32> = u_xlat0;
  let x_201 : vec3<f32> = (vec3<f32>(x_197.x, x_197.y, x_197.z) / vec3<f32>(x_199.x, x_199.x, x_199.x));
  let x_202 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_201.x, x_201.y, x_201.z, x_202.w);
  let x_207 : vec4<f32> = vs_TEXCOORD6;
  let x_208 : vec2<f32> = vec2<f32>(x_207.x, x_207.y);
  let x_211 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_208.x, x_208.y, x_211);
  let x_223 : vec3<f32> = txVec0;
  let x_225 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_223.xy, x_223.z);
  u_xlat0.x = x_225;
  let x_238 : f32 = x_235.x_MainLightShadowParams.x;
  u_xlat24 = (-(x_238) + 1.0f);
  let x_242 : f32 = u_xlat0.x;
  let x_244 : f32 = x_235.x_MainLightShadowParams.x;
  let x_246 : f32 = u_xlat24;
  u_xlat0.x = ((x_242 * x_244) + x_246);
  let x_251 : f32 = vs_TEXCOORD6.z;
  u_xlatb24 = (0.0f >= x_251);
  let x_255 : f32 = vs_TEXCOORD6.z;
  u_xlatb25 = (x_255 >= 1.0f);
  let x_257 : bool = u_xlatb24;
  let x_258 : bool = u_xlatb25;
  u_xlatb24 = (x_257 | x_258);
  let x_260 : bool = u_xlatb24;
  if (x_260) {
    x_261 = 1.0f;
  } else {
    let x_266 : f32 = u_xlat0.x;
    x_261 = x_266;
  }
  let x_267 : f32 = x_261;
  u_xlat0.x = x_267;
  let x_270 : vec4<f32> = vs_TEXCOORD2;
  let x_275 : vec3<f32> = x_27.x_WorldSpaceCameraPos;
  u_xlat4 = (vec3<f32>(x_270.x, x_270.y, x_270.z) + -(x_275));
  let x_278 : vec3<f32> = u_xlat4;
  let x_279 : vec3<f32> = u_xlat4;
  u_xlat24 = dot(x_278, x_279);
  let x_282 : f32 = u_xlat24;
  let x_284 : f32 = x_235.x_MainLightShadowParams.z;
  let x_287 : f32 = x_235.x_MainLightShadowParams.w;
  u_xlat25 = ((x_282 * x_284) + x_287);
  let x_289 : f32 = u_xlat25;
  u_xlat25 = clamp(x_289, 0.0f, 1.0f);
  let x_293 : f32 = u_xlat0.x;
  u_xlat26 = (-(x_293) + 1.0f);
  let x_296 : f32 = u_xlat25;
  let x_297 : f32 = u_xlat26;
  let x_300 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_296 * x_297) + x_300);
  let x_304 : f32 = u_xlat0.x;
  let x_310 : f32 = x_308.unity_LightData.z;
  u_xlat0.x = (x_304 * x_310);
  let x_313 : vec4<f32> = u_xlat0;
  let x_318 : vec4<f32> = x_27.x_MainLightColor;
  u_xlat4 = (vec3<f32>(x_313.x, x_313.x, x_313.x) * vec3<f32>(x_318.x, x_318.y, x_318.z));
  let x_321 : vec3<f32> = u_xlat2;
  let x_324 : vec4<f32> = x_27.x_MainLightPosition;
  u_xlat0.x = dot(x_321, vec3<f32>(x_324.x, x_324.y, x_324.z));
  let x_329 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_329, 0.0f, 1.0f);
  let x_332 : vec4<f32> = u_xlat0;
  let x_334 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_332.x, x_332.x, x_332.x) * x_334);
  let x_336 : vec4<f32> = u_xlat1;
  let x_338 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_336.x, x_336.y, x_336.z) * x_338);
  let x_341 : f32 = x_27.x_AdditionalLightsCount.x;
  let x_344 : f32 = x_308.unity_LightData.y;
  u_xlat0.x = min(x_341, x_344);
  let x_350 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_350));
  let x_353 : f32 = u_xlat24;
  let x_356 : f32 = x_235.x_AdditionalShadowFadeParams.x;
  let x_359 : f32 = x_235.x_AdditionalShadowFadeParams.y;
  u_xlat24 = ((x_353 * x_356) + x_359);
  let x_361 : f32 = u_xlat24;
  u_xlat24 = clamp(x_361, 0.0f, 1.0f);
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_374 : u32 = u_xlatu_loop_1;
    let x_375 : u32 = u_xlatu0;
    if ((x_374 < x_375)) {
    } else {
      break;
    }
    let x_378 : u32 = u_xlatu_loop_1;
    u_xlatu26 = (x_378 >> 2u);
    let x_382 : u32 = u_xlatu_loop_1;
    u_xlati27 = bitcast<i32>((x_382 & 3u));
    let x_386 : u32 = u_xlatu26;
    let x_389 : vec4<f32> = x_308.unity_LightIndices[bitcast<i32>(x_386)];
    let x_399 : i32 = u_xlati27;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_404 : vec4<u32> = indexable[x_399];
    u_xlat26 = dot(x_389, bitcast<vec4<f32>>(x_404));
    let x_408 : f32 = u_xlat26;
    u_xlati26 = i32(x_408);
    let x_411 : vec4<f32> = vs_TEXCOORD2;
    let x_423 : i32 = u_xlati26;
    let x_425 : vec4<f32> = x_422.x_AdditionalLightsPosition[x_423];
    let x_428 : i32 = u_xlati26;
    let x_430 : vec4<f32> = x_422.x_AdditionalLightsPosition[x_428];
    u_xlat6 = ((-(vec3<f32>(x_411.x, x_411.y, x_411.z)) * vec3<f32>(x_425.w, x_425.w, x_425.w)) + vec3<f32>(x_430.x, x_430.y, x_430.z));
    let x_434 : vec3<f32> = u_xlat6;
    let x_435 : vec3<f32> = u_xlat6;
    u_xlat27 = dot(x_434, x_435);
    let x_437 : f32 = u_xlat27;
    u_xlat27 = max(x_437, 0.00006103515625f);
    let x_441 : f32 = u_xlat27;
    u_xlat28 = inverseSqrt(x_441);
    let x_443 : f32 = u_xlat28;
    let x_445 : vec3<f32> = u_xlat6;
    u_xlat6 = (vec3<f32>(x_443, x_443, x_443) * x_445);
    let x_447 : f32 = u_xlat27;
    u_xlat28 = (1.0f / x_447);
    let x_449 : f32 = u_xlat27;
    let x_450 : i32 = u_xlati26;
    let x_452 : f32 = x_422.x_AdditionalLightsAttenuation[x_450].x;
    u_xlat27 = (x_449 * x_452);
    let x_454 : f32 = u_xlat27;
    let x_456 : f32 = u_xlat27;
    u_xlat27 = ((-(x_454) * x_456) + 1.0f);
    let x_459 : f32 = u_xlat27;
    u_xlat27 = max(x_459, 0.0f);
    let x_461 : f32 = u_xlat27;
    let x_462 : f32 = u_xlat27;
    u_xlat27 = (x_461 * x_462);
    let x_464 : f32 = u_xlat27;
    let x_465 : f32 = u_xlat28;
    u_xlat27 = (x_464 * x_465);
    let x_467 : i32 = u_xlati26;
    let x_469 : vec4<f32> = x_422.x_AdditionalLightsSpotDir[x_467];
    let x_471 : vec3<f32> = u_xlat6;
    u_xlat28 = dot(vec3<f32>(x_469.x, x_469.y, x_469.z), x_471);
    let x_473 : f32 = u_xlat28;
    let x_474 : i32 = u_xlati26;
    let x_476 : f32 = x_422.x_AdditionalLightsAttenuation[x_474].z;
    let x_478 : i32 = u_xlati26;
    let x_480 : f32 = x_422.x_AdditionalLightsAttenuation[x_478].w;
    u_xlat28 = ((x_473 * x_476) + x_480);
    let x_482 : f32 = u_xlat28;
    u_xlat28 = clamp(x_482, 0.0f, 1.0f);
    let x_484 : f32 = u_xlat28;
    let x_485 : f32 = u_xlat28;
    u_xlat28 = (x_484 * x_485);
    let x_487 : f32 = u_xlat27;
    let x_488 : f32 = u_xlat28;
    u_xlat27 = (x_487 * x_488);
    let x_492 : i32 = u_xlati26;
    let x_494 : f32 = x_235.x_AdditionalShadowParams[x_492].w;
    u_xlati28 = i32(x_494);
    let x_497 : i32 = u_xlati28;
    u_xlatb29 = (x_497 >= 0i);
    let x_499 : bool = u_xlatb29;
    if (x_499) {
      let x_503 : i32 = u_xlati26;
      let x_505 : f32 = x_235.x_AdditionalShadowParams[x_503].z;
      u_xlatb29 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_505, x_505, x_505, x_505))));
      let x_510 : bool = u_xlatb29;
      if (x_510) {
        let x_515 : vec3<f32> = u_xlat6;
        let x_518 : vec3<f32> = u_xlat6;
        let x_521 : vec4<bool> = (abs(vec4<f32>(x_515.z, x_515.z, x_515.y, x_515.z)) >= abs(vec4<f32>(x_518.x, x_518.y, x_518.x, x_518.x)));
        let x_523 : vec3<bool> = vec3<bool>(x_521.x, x_521.y, x_521.z);
        let x_524 : vec4<bool> = u_xlatb7;
        u_xlatb7 = vec4<bool>(x_523.x, x_523.y, x_523.z, x_524.w);
        let x_527 : bool = u_xlatb7.y;
        let x_529 : bool = u_xlatb7.x;
        u_xlatb29 = (x_527 & x_529);
        let x_531 : vec3<f32> = u_xlat6;
        let x_534 : vec4<bool> = (-(vec4<f32>(x_531.z, x_531.y, x_531.z, x_531.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_535 : vec3<bool> = vec3<bool>(x_534.x, x_534.y, x_534.w);
        let x_536 : vec4<bool> = u_xlatb7;
        u_xlatb7 = vec4<bool>(x_535.x, x_535.y, x_536.z, x_535.z);
        let x_540 : bool = u_xlatb7.x;
        u_xlat7.x = select(4.0f, 5.0f, x_540);
        let x_546 : bool = u_xlatb7.y;
        u_xlat7.y = select(2.0f, 3.0f, x_546);
        let x_553 : bool = u_xlatb7.w;
        u_xlat30 = select(0.0f, 1.0f, x_553);
        let x_556 : bool = u_xlatb7.z;
        if (x_556) {
          let x_561 : f32 = u_xlat7.y;
          x_557 = x_561;
        } else {
          let x_563 : f32 = u_xlat30;
          x_557 = x_563;
        }
        let x_564 : f32 = x_557;
        u_xlat30 = x_564;
        let x_566 : bool = u_xlatb29;
        if (x_566) {
          let x_571 : f32 = u_xlat7.x;
          x_567 = x_571;
        } else {
          let x_573 : f32 = u_xlat30;
          x_567 = x_573;
        }
        let x_574 : f32 = x_567;
        u_xlat29 = x_574;
        let x_575 : i32 = u_xlati26;
        let x_577 : f32 = x_235.x_AdditionalShadowParams[x_575].w;
        u_xlat30 = trunc(x_577);
        let x_579 : f32 = u_xlat29;
        let x_580 : f32 = u_xlat30;
        u_xlat29 = (x_579 + x_580);
        let x_582 : f32 = u_xlat29;
        u_xlati28 = i32(x_582);
      }
      let x_584 : i32 = u_xlati28;
      u_xlati28 = (x_584 << bitcast<u32>(2i));
      let x_586 : vec4<f32> = vs_TEXCOORD2;
      let x_589 : i32 = u_xlati28;
      let x_592 : i32 = u_xlati28;
      let x_596 : vec4<f32> = x_235.x_AdditionalLightsWorldToShadow[((x_589 + 1i) / 4i)][((x_592 + 1i) % 4i)];
      u_xlat7 = (vec4<f32>(x_586.y, x_586.y, x_586.y, x_586.y) * x_596);
      let x_598 : i32 = u_xlati28;
      let x_600 : i32 = u_xlati28;
      let x_603 : vec4<f32> = x_235.x_AdditionalLightsWorldToShadow[(x_598 / 4i)][(x_600 % 4i)];
      let x_604 : vec4<f32> = vs_TEXCOORD2;
      let x_607 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_603 * vec4<f32>(x_604.x, x_604.x, x_604.x, x_604.x)) + x_607);
      let x_609 : i32 = u_xlati28;
      let x_612 : i32 = u_xlati28;
      let x_616 : vec4<f32> = x_235.x_AdditionalLightsWorldToShadow[((x_609 + 2i) / 4i)][((x_612 + 2i) % 4i)];
      let x_617 : vec4<f32> = vs_TEXCOORD2;
      let x_620 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_616 * vec4<f32>(x_617.z, x_617.z, x_617.z, x_617.z)) + x_620);
      let x_622 : vec4<f32> = u_xlat7;
      let x_623 : i32 = u_xlati28;
      let x_626 : i32 = u_xlati28;
      let x_630 : vec4<f32> = x_235.x_AdditionalLightsWorldToShadow[((x_623 + 3i) / 4i)][((x_626 + 3i) % 4i)];
      u_xlat7 = (x_622 + x_630);
      let x_632 : vec4<f32> = u_xlat7;
      let x_634 : vec4<f32> = u_xlat7;
      let x_636 : vec3<f32> = (vec3<f32>(x_632.x, x_632.y, x_632.z) / vec3<f32>(x_634.w, x_634.w, x_634.w));
      let x_637 : vec4<f32> = u_xlat7;
      u_xlat7 = vec4<f32>(x_636.x, x_636.y, x_636.z, x_637.w);
      let x_640 : vec4<f32> = u_xlat7;
      let x_641 : vec2<f32> = vec2<f32>(x_640.x, x_640.y);
      let x_643 : f32 = u_xlat7.z;
      txVec1 = vec3<f32>(x_641.x, x_641.y, x_643);
      let x_651 : vec3<f32> = txVec1;
      let x_653 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_651.xy, x_651.z);
      u_xlat28 = x_653;
      let x_654 : i32 = u_xlati26;
      let x_656 : f32 = x_235.x_AdditionalShadowParams[x_654].x;
      u_xlat29 = (1.0f + -(x_656));
      let x_659 : f32 = u_xlat28;
      let x_660 : i32 = u_xlati26;
      let x_662 : f32 = x_235.x_AdditionalShadowParams[x_660].x;
      let x_664 : f32 = u_xlat29;
      u_xlat28 = ((x_659 * x_662) + x_664);
      let x_667 : f32 = u_xlat7.z;
      u_xlatb29 = (0.0f >= x_667);
      let x_671 : f32 = u_xlat7.z;
      u_xlatb30 = (x_671 >= 1.0f);
      let x_673 : bool = u_xlatb29;
      let x_674 : bool = u_xlatb30;
      u_xlatb29 = (x_673 | x_674);
      let x_676 : bool = u_xlatb29;
      let x_677 : f32 = u_xlat28;
      u_xlat28 = select(x_677, 1.0f, x_676);
    } else {
      u_xlat28 = 1.0f;
    }
    let x_680 : f32 = u_xlat28;
    u_xlat29 = (-(x_680) + 1.0f);
    let x_683 : f32 = u_xlat24;
    let x_684 : f32 = u_xlat29;
    let x_686 : f32 = u_xlat28;
    u_xlat28 = ((x_683 * x_684) + x_686);
    let x_688 : f32 = u_xlat27;
    let x_689 : f32 = u_xlat28;
    u_xlat27 = (x_688 * x_689);
    let x_691 : f32 = u_xlat27;
    let x_693 : i32 = u_xlati26;
    let x_695 : vec4<f32> = x_422.x_AdditionalLightsColor[x_693];
    let x_697 : vec3<f32> = (vec3<f32>(x_691, x_691, x_691) * vec3<f32>(x_695.x, x_695.y, x_695.z));
    let x_698 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_697.x, x_697.y, x_697.z, x_698.w);
    let x_700 : vec3<f32> = u_xlat2;
    let x_701 : vec3<f32> = u_xlat6;
    u_xlat26 = dot(x_700, x_701);
    let x_703 : f32 = u_xlat26;
    u_xlat26 = clamp(x_703, 0.0f, 1.0f);
    let x_705 : f32 = u_xlat26;
    let x_707 : vec4<f32> = u_xlat7;
    u_xlat6 = (vec3<f32>(x_705, x_705, x_705) * vec3<f32>(x_707.x, x_707.y, x_707.z));
    let x_710 : vec3<f32> = u_xlat6;
    let x_711 : vec4<f32> = u_xlat1;
    let x_714 : vec3<f32> = u_xlat5;
    u_xlat5 = ((x_710 * vec3<f32>(x_711.x, x_711.y, x_711.z)) + x_714);

    continuing {
      let x_716 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_716 + bitcast<u32>(1i));
    }
  }
  let x_718 : vec4<f32> = u_xlat3;
  let x_720 : vec4<f32> = u_xlat1;
  let x_723 : vec3<f32> = u_xlat4;
  let x_724 : vec3<f32> = ((vec3<f32>(x_718.x, x_718.y, x_718.z) * vec3<f32>(x_720.x, x_720.y, x_720.z)) + x_723);
  let x_725 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_724.x, x_724.y, x_724.z, x_725.w);
  let x_729 : vec3<f32> = u_xlat5;
  let x_730 : vec4<f32> = u_xlat1;
  let x_732 : vec3<f32> = (x_729 + vec3<f32>(x_730.x, x_730.y, x_730.z));
  let x_733 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_732.x, x_732.y, x_732.z, x_733.w);
  let x_735 : bool = u_xlatb16;
  let x_736 : f32 = u_xlat8;
  SV_Target0.w = select(1.0f, x_736, x_735);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(5) vs_TEXCOORD7_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec3<f32>, @location(1) vs_TEXCOORD1_param : vec2<f32>, @location(4) vs_TEXCOORD6_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


