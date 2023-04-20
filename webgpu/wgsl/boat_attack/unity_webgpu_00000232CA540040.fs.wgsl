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

alias Arr_5 = array<mat4x4<f32>, 32u>;

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
  x_AdditionalLightsWorldToShadow : Arr_5,
}

alias Arr_6 = array<vec4<f32>, 32u>;

struct strided_arr {
  @size(16)
  el : f32,
}

alias Arr_7 = array<strided_arr, 32u>;

alias Arr_8 = array<strided_arr, 32u>;

struct LightCookies {
  /* @offset(0) */
  x_MainLightWorldToLight : mat4x4<f32>,
  /* @offset(64) */
  x_AdditionalLightsCookieEnableBits : f32,
  /* @offset(68) */
  x_MainLightCookieTextureFormat : f32,
  /* @offset(72) */
  x_AdditionalLightsCookieAtlasTextureFormat : f32,
  /* @offset(80) */
  x_AdditionalLightsWorldToLights : Arr_5,
  /* @offset(2128) */
  x_AdditionalLightsCookieAtlasUVRects : Arr_4,
  /* @offset(2640) */
  x_AdditionalLightsLightTypes : Arr_8,
}

alias Arr_9 = array<vec4<f32>, 32u>;

alias Arr_10 = array<vec4<f32>, 32u>;

alias Arr_11 = array<vec4<f32>, 32u>;

alias Arr_12 = array<vec4<f32>, 32u>;

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
  x_AdditionalLightsLayerMasks : Arr_8,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(0) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(5) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_28 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_42 : UnityPerMaterial;

var<private> u_xlatb0 : bool;

var<private> u_xlat11 : f32;

var<private> u_xlat22 : f32;

var<private> u_xlat33 : f32;

var<private> u_xlatb22 : bool;

var<private> u_xlatb11 : bool;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat3 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_199 : UnityPerDraw;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec3<f32>;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(7) var sampler_LinearClampCompare : sampler_comparison;

@group(1) @binding(4) var<uniform> x_303 : LightShadows;

var<private> u_xlatb1 : bool;

var<private> u_xlatb35 : bool;

var<private> u_xlat35 : f32;

var<private> u_xlat36 : f32;

@group(1) @binding(5) var<uniform> x_371 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb5 : vec2<bool>;

var<private> u_xlatu33 : u32;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlatu36 : u32;

var<private> u_xlati37 : i32;

var<private> u_xlati36 : i32;

var<private> u_xlat7 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_621 : AdditionalLights;

var<private> u_xlat37 : f32;

var<private> u_xlat27 : f32;

var<private> u_xlati27 : i32;

var<private> u_xlatb38 : bool;

var<private> u_xlatb8 : vec4<bool>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat39 : f32;

var<private> u_xlat38 : f32;

@group(0) @binding(2) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb39 : bool;

var<private> u_xlati38 : i32;

var<private> u_xlati39 : i32;

var<private> u_xlati40 : i32;

var<private> u_xlat30 : vec2<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat10 : vec3<f32>;

var<private> u_xlatb30 : vec2<bool>;

@group(0) @binding(4) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(6) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu35 : u32;

var<private> u_xlatb36 : bool;

fn main_1() {
  var x_61 : f32;
  var x_111 : f32;
  var txVec0 : vec3<f32>;
  var x_457 : f32;
  var x_468 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_755 : f32;
  var x_765 : f32;
  var txVec1 : vec3<f32>;
  var x_1189 : f32;
  var x_1202 : f32;
  var x_1250 : f32;
  var x_1261 : vec3<f32>;
  var x_1364 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_35 : f32 = x_28.x_GlobalMipBias.x;
  let x_36 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_23, x_35);
  u_xlat0 = x_36;
  let x_38 : vec4<f32> = u_xlat0;
  let x_46 : vec4<f32> = x_42.x_BaseColor;
  u_xlat1 = (vec4<f32>(x_38.w, x_38.x, x_38.y, x_38.z) * vec4<f32>(x_46.w, x_46.x, x_46.y, x_46.z));
  let x_54 : f32 = u_xlat1.x;
  let x_57 : f32 = x_42.x_Cutoff;
  u_xlatb0 = (x_54 >= x_57);
  let x_59 : bool = u_xlatb0;
  if (x_59) {
    let x_65 : f32 = u_xlat1.x;
    x_61 = x_65;
  } else {
    x_61 = 0.0f;
  }
  let x_68 : f32 = x_61;
  u_xlat0.x = x_68;
  let x_73 : f32 = u_xlat0.w;
  let x_75 : f32 = x_42.x_BaseColor.w;
  let x_78 : f32 = x_42.x_Cutoff;
  u_xlat11 = ((x_73 * x_75) + -(x_78));
  let x_83 : f32 = u_xlat1.x;
  u_xlat22 = dpdxCoarse(x_83);
  let x_87 : f32 = u_xlat1.x;
  u_xlat33 = dpdyCoarse(x_87);
  let x_89 : f32 = u_xlat33;
  let x_91 : f32 = u_xlat22;
  u_xlat22 = (abs(x_89) + abs(x_91));
  let x_94 : f32 = u_xlat22;
  u_xlat22 = max(x_94, 0.00009999999747378752f);
  let x_97 : f32 = u_xlat11;
  let x_98 : f32 = u_xlat22;
  u_xlat11 = (x_97 / x_98);
  let x_100 : f32 = u_xlat11;
  u_xlat11 = (x_100 + 0.5f);
  let x_103 : f32 = u_xlat11;
  u_xlat11 = clamp(x_103, 0.0f, 1.0f);
  let x_108 : f32 = x_28.x_AlphaToMaskAvailable;
  u_xlatb22 = !((x_108 == 0.0f));
  let x_110 : bool = u_xlatb22;
  if (x_110) {
    let x_114 : f32 = u_xlat11;
    x_111 = x_114;
  } else {
    let x_117 : f32 = u_xlat0.x;
    x_111 = x_117;
  }
  let x_118 : f32 = x_111;
  u_xlat0.x = x_118;
  let x_121 : f32 = u_xlat0.x;
  u_xlat11 = (x_121 + -0.00009999999747378752f);
  let x_125 : f32 = u_xlat11;
  u_xlatb11 = (x_125 < 0.0f);
  let x_127 : bool = u_xlatb11;
  if (((select(0i, 1i, x_127) * -1i) != 0i)) {
    discard;
  }
  let x_137 : vec3<f32> = vs_TEXCOORD2;
  let x_138 : vec3<f32> = vs_TEXCOORD2;
  u_xlat11 = dot(x_137, x_138);
  let x_140 : f32 = u_xlat11;
  u_xlat11 = inverseSqrt(x_140);
  let x_143 : f32 = u_xlat11;
  let x_145 : vec3<f32> = vs_TEXCOORD2;
  let x_146 : vec3<f32> = (vec3<f32>(x_143, x_143, x_143) * x_145);
  let x_147 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_146.x, x_146.y, x_146.z, x_147.w);
  let x_153 : f32 = vs_TEXCOORD1.y;
  let x_157 : f32 = x_28.unity_MatrixV[1i].z;
  u_xlat11 = (x_153 * x_157);
  let x_160 : f32 = x_28.unity_MatrixV[0i].z;
  let x_162 : f32 = vs_TEXCOORD1.x;
  let x_164 : f32 = u_xlat11;
  u_xlat11 = ((x_160 * x_162) + x_164);
  let x_168 : f32 = x_28.unity_MatrixV[2i].z;
  let x_170 : f32 = vs_TEXCOORD1.z;
  let x_172 : f32 = u_xlat11;
  u_xlat11 = ((x_168 * x_170) + x_172);
  let x_174 : f32 = u_xlat11;
  let x_177 : f32 = x_28.unity_MatrixV[3i].z;
  u_xlat11 = (x_174 + x_177);
  let x_179 : f32 = u_xlat11;
  let x_183 : f32 = x_28.x_ProjectionParams.y;
  u_xlat11 = (-(x_179) + -(x_183));
  let x_186 : f32 = u_xlat11;
  u_xlat11 = max(x_186, 0.0f);
  let x_188 : f32 = u_xlat11;
  let x_191 : f32 = x_28.unity_FogParams.x;
  u_xlat11 = (x_188 * x_191);
  u_xlat2.w = 1.0f;
  let x_202 : vec4<f32> = x_199.unity_SHAr;
  let x_203 : vec4<f32> = u_xlat2;
  u_xlat3.x = dot(x_202, x_203);
  let x_208 : vec4<f32> = x_199.unity_SHAg;
  let x_209 : vec4<f32> = u_xlat2;
  u_xlat3.y = dot(x_208, x_209);
  let x_214 : vec4<f32> = x_199.unity_SHAb;
  let x_215 : vec4<f32> = u_xlat2;
  u_xlat3.z = dot(x_214, x_215);
  let x_219 : vec4<f32> = u_xlat2;
  let x_221 : vec4<f32> = u_xlat2;
  u_xlat4 = (vec4<f32>(x_219.y, x_219.z, x_219.z, x_219.x) * vec4<f32>(x_221.x, x_221.y, x_221.z, x_221.z));
  let x_227 : vec4<f32> = x_199.unity_SHBr;
  let x_228 : vec4<f32> = u_xlat4;
  u_xlat5.x = dot(x_227, x_228);
  let x_233 : vec4<f32> = x_199.unity_SHBg;
  let x_234 : vec4<f32> = u_xlat4;
  u_xlat5.y = dot(x_233, x_234);
  let x_239 : vec4<f32> = x_199.unity_SHBb;
  let x_240 : vec4<f32> = u_xlat4;
  u_xlat5.z = dot(x_239, x_240);
  let x_244 : f32 = u_xlat2.y;
  let x_246 : f32 = u_xlat2.y;
  u_xlat33 = (x_244 * x_246);
  let x_249 : f32 = u_xlat2.x;
  let x_251 : f32 = u_xlat2.x;
  let x_253 : f32 = u_xlat33;
  u_xlat33 = ((x_249 * x_251) + -(x_253));
  let x_258 : vec4<f32> = x_199.unity_SHC;
  let x_260 : f32 = u_xlat33;
  let x_263 : vec3<f32> = u_xlat5;
  let x_264 : vec3<f32> = ((vec3<f32>(x_258.x, x_258.y, x_258.z) * vec3<f32>(x_260, x_260, x_260)) + x_263);
  let x_265 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_264.x, x_264.y, x_264.z, x_265.w);
  let x_267 : vec3<f32> = u_xlat3;
  let x_268 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_267 + vec3<f32>(x_268.x, x_268.y, x_268.z));
  let x_271 : vec3<f32> = u_xlat3;
  u_xlat3 = max(x_271, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_278 : vec4<f32> = vs_TEXCOORD6;
  let x_279 : vec2<f32> = vec2<f32>(x_278.x, x_278.y);
  let x_281 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_279.x, x_279.y, x_281);
  let x_293 : vec3<f32> = txVec0;
  let x_295 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_293.xy, x_293.z);
  u_xlat33 = x_295;
  let x_306 : f32 = x_303.x_MainLightShadowParams.x;
  u_xlat1.x = (-(x_306) + 1.0f);
  let x_310 : f32 = u_xlat33;
  let x_312 : f32 = x_303.x_MainLightShadowParams.x;
  let x_315 : f32 = u_xlat1.x;
  u_xlat33 = ((x_310 * x_312) + x_315);
  let x_319 : f32 = vs_TEXCOORD6.z;
  u_xlatb1 = (0.0f >= x_319);
  let x_323 : f32 = vs_TEXCOORD6.z;
  u_xlatb35 = (x_323 >= 1.0f);
  let x_325 : bool = u_xlatb1;
  let x_326 : bool = u_xlatb35;
  u_xlatb1 = (x_325 | x_326);
  let x_328 : bool = u_xlatb1;
  let x_329 : f32 = u_xlat33;
  u_xlat33 = select(x_329, 1.0f, x_328);
  let x_331 : vec3<f32> = vs_TEXCOORD1;
  let x_335 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  let x_337 : vec3<f32> = (x_331 + -(x_335));
  let x_338 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_337.x, x_337.y, x_337.z, x_338.w);
  let x_340 : vec4<f32> = u_xlat4;
  let x_342 : vec4<f32> = u_xlat4;
  u_xlat1.x = dot(vec3<f32>(x_340.x, x_340.y, x_340.z), vec3<f32>(x_342.x, x_342.y, x_342.z));
  let x_348 : f32 = u_xlat1.x;
  let x_350 : f32 = x_303.x_MainLightShadowParams.z;
  let x_353 : f32 = x_303.x_MainLightShadowParams.w;
  u_xlat35 = ((x_348 * x_350) + x_353);
  let x_355 : f32 = u_xlat35;
  u_xlat35 = clamp(x_355, 0.0f, 1.0f);
  let x_358 : f32 = u_xlat33;
  u_xlat36 = (-(x_358) + 1.0f);
  let x_361 : f32 = u_xlat35;
  let x_362 : f32 = u_xlat36;
  let x_364 : f32 = u_xlat33;
  u_xlat33 = ((x_361 * x_362) + x_364);
  let x_373 : f32 = x_371.x_MainLightCookieTextureFormat;
  u_xlatb35 = !((x_373 == -1.0f));
  let x_376 : bool = u_xlatb35;
  if (x_376) {
    let x_379 : vec3<f32> = vs_TEXCOORD1;
    let x_382 : vec4<f32> = x_371.x_MainLightWorldToLight[1i];
    let x_384 : vec2<f32> = (vec2<f32>(x_379.y, x_379.y) * vec2<f32>(x_382.x, x_382.y));
    let x_385 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_384.x, x_384.y, x_385.z, x_385.w);
    let x_388 : vec4<f32> = x_371.x_MainLightWorldToLight[0i];
    let x_390 : vec3<f32> = vs_TEXCOORD1;
    let x_393 : vec4<f32> = u_xlat4;
    let x_395 : vec2<f32> = ((vec2<f32>(x_388.x, x_388.y) * vec2<f32>(x_390.x, x_390.x)) + vec2<f32>(x_393.x, x_393.y));
    let x_396 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_395.x, x_395.y, x_396.z, x_396.w);
    let x_399 : vec4<f32> = x_371.x_MainLightWorldToLight[2i];
    let x_401 : vec3<f32> = vs_TEXCOORD1;
    let x_404 : vec4<f32> = u_xlat4;
    let x_406 : vec2<f32> = ((vec2<f32>(x_399.x, x_399.y) * vec2<f32>(x_401.z, x_401.z)) + vec2<f32>(x_404.x, x_404.y));
    let x_407 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_406.x, x_406.y, x_407.z, x_407.w);
    let x_409 : vec4<f32> = u_xlat4;
    let x_412 : vec4<f32> = x_371.x_MainLightWorldToLight[3i];
    let x_414 : vec2<f32> = (vec2<f32>(x_409.x, x_409.y) + vec2<f32>(x_412.x, x_412.y));
    let x_415 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_414.x, x_414.y, x_415.z, x_415.w);
    let x_417 : vec4<f32> = u_xlat4;
    let x_421 : vec2<f32> = ((vec2<f32>(x_417.x, x_417.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_422 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_421.x, x_421.y, x_422.z, x_422.w);
    let x_429 : vec4<f32> = u_xlat4;
    let x_432 : f32 = x_28.x_GlobalMipBias.x;
    let x_433 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_429.x, x_429.y), x_432);
    u_xlat4 = x_433;
    let x_438 : f32 = x_371.x_MainLightCookieTextureFormat;
    let x_440 : f32 = x_371.x_MainLightCookieTextureFormat;
    let x_442 : f32 = x_371.x_MainLightCookieTextureFormat;
    let x_444 : f32 = x_371.x_MainLightCookieTextureFormat;
    let x_445 : vec4<f32> = vec4<f32>(x_438, x_440, x_442, x_444);
    let x_453 : vec4<bool> = (vec4<f32>(x_445.x, x_445.y, x_445.z, x_445.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb5 = vec2<bool>(x_453.x, x_453.y);
    let x_456 : bool = u_xlatb5.y;
    if (x_456) {
      let x_461 : f32 = u_xlat4.w;
      x_457 = x_461;
    } else {
      let x_464 : f32 = u_xlat4.x;
      x_457 = x_464;
    }
    let x_465 : f32 = x_457;
    u_xlat35 = x_465;
    let x_467 : bool = u_xlatb5.x;
    if (x_467) {
      let x_471 : vec4<f32> = u_xlat4;
      x_468 = vec3<f32>(x_471.x, x_471.y, x_471.z);
    } else {
      let x_474 : f32 = u_xlat35;
      x_468 = vec3<f32>(x_474, x_474, x_474);
    }
    let x_476 : vec3<f32> = x_468;
    let x_477 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_476.x, x_476.y, x_476.z, x_477.w);
  } else {
    u_xlat4.x = 1.0f;
    u_xlat4.y = 1.0f;
    u_xlat4.z = 1.0f;
  }
  let x_483 : vec4<f32> = u_xlat4;
  let x_486 : vec4<f32> = x_28.x_MainLightColor;
  let x_488 : vec3<f32> = (vec3<f32>(x_483.x, x_483.y, x_483.z) * vec3<f32>(x_486.x, x_486.y, x_486.z));
  let x_489 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_488.x, x_488.y, x_488.z, x_489.w);
  let x_491 : f32 = u_xlat33;
  let x_493 : f32 = x_199.unity_LightData.z;
  u_xlat33 = (x_491 * x_493);
  let x_495 : f32 = u_xlat33;
  let x_497 : vec4<f32> = u_xlat4;
  let x_499 : vec3<f32> = (vec3<f32>(x_495, x_495, x_495) * vec3<f32>(x_497.x, x_497.y, x_497.z));
  let x_500 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_499.x, x_499.y, x_499.z, x_500.w);
  let x_502 : vec4<f32> = u_xlat2;
  let x_505 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat33 = dot(vec3<f32>(x_502.x, x_502.y, x_502.z), vec3<f32>(x_505.x, x_505.y, x_505.z));
  let x_508 : f32 = u_xlat33;
  u_xlat33 = clamp(x_508, 0.0f, 1.0f);
  let x_510 : f32 = u_xlat33;
  let x_512 : vec4<f32> = u_xlat4;
  let x_514 : vec3<f32> = (vec3<f32>(x_510, x_510, x_510) * vec3<f32>(x_512.x, x_512.y, x_512.z));
  let x_515 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_514.x, x_514.y, x_514.z, x_515.w);
  let x_517 : vec4<f32> = u_xlat1;
  let x_519 : vec4<f32> = u_xlat4;
  let x_521 : vec3<f32> = (vec3<f32>(x_517.y, x_517.z, x_517.w) * vec3<f32>(x_519.x, x_519.y, x_519.z));
  let x_522 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_521.x, x_521.y, x_521.z, x_522.w);
  let x_525 : f32 = x_28.x_AdditionalLightsCount.x;
  let x_527 : f32 = x_199.unity_LightData.y;
  u_xlat33 = min(x_525, x_527);
  let x_531 : f32 = u_xlat33;
  u_xlatu33 = bitcast<u32>(i32(x_531));
  let x_535 : f32 = u_xlat1.x;
  let x_538 : f32 = x_303.x_AdditionalShadowFadeParams.x;
  let x_541 : f32 = x_303.x_AdditionalShadowFadeParams.y;
  u_xlat1.x = ((x_535 * x_538) + x_541);
  let x_545 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_545, 0.0f, 1.0f);
  let x_549 : f32 = x_371.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_551 : f32 = x_371.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_553 : f32 = x_371.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_555 : f32 = x_371.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_556 : vec4<f32> = vec4<f32>(x_549, x_551, x_553, x_555);
  let x_562 : vec4<bool> = (vec4<f32>(x_556.x, x_556.y, x_556.z, x_556.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb5 = vec2<bool>(x_562.x, x_562.y);
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_575 : u32 = u_xlatu_loop_1;
    let x_576 : u32 = u_xlatu33;
    if ((x_575 < x_576)) {
    } else {
      break;
    }
    let x_579 : u32 = u_xlatu_loop_1;
    u_xlatu36 = (x_579 >> 2u);
    let x_583 : u32 = u_xlatu_loop_1;
    u_xlati37 = bitcast<i32>((x_583 & 3u));
    let x_586 : u32 = u_xlatu36;
    let x_589 : vec4<f32> = x_199.unity_LightIndices[bitcast<i32>(x_586)];
    let x_599 : i32 = u_xlati37;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_604 : vec4<u32> = indexable[x_599];
    u_xlat36 = dot(x_589, bitcast<vec4<f32>>(x_604));
    let x_608 : f32 = u_xlat36;
    u_xlati36 = i32(x_608);
    let x_611 : vec3<f32> = vs_TEXCOORD1;
    let x_622 : i32 = u_xlati36;
    let x_624 : vec4<f32> = x_621.x_AdditionalLightsPosition[x_622];
    let x_627 : i32 = u_xlati36;
    let x_629 : vec4<f32> = x_621.x_AdditionalLightsPosition[x_627];
    u_xlat7 = ((-(x_611) * vec3<f32>(x_624.w, x_624.w, x_624.w)) + vec3<f32>(x_629.x, x_629.y, x_629.z));
    let x_633 : vec3<f32> = u_xlat7;
    let x_634 : vec3<f32> = u_xlat7;
    u_xlat37 = dot(x_633, x_634);
    let x_636 : f32 = u_xlat37;
    u_xlat37 = max(x_636, 0.00006103515625f);
    let x_640 : f32 = u_xlat37;
    u_xlat27 = inverseSqrt(x_640);
    let x_642 : f32 = u_xlat27;
    let x_644 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_642, x_642, x_642) * x_644);
    let x_646 : f32 = u_xlat37;
    u_xlat27 = (1.0f / x_646);
    let x_648 : f32 = u_xlat37;
    let x_649 : i32 = u_xlati36;
    let x_651 : f32 = x_621.x_AdditionalLightsAttenuation[x_649].x;
    u_xlat37 = (x_648 * x_651);
    let x_653 : f32 = u_xlat37;
    let x_655 : f32 = u_xlat37;
    u_xlat37 = ((-(x_653) * x_655) + 1.0f);
    let x_658 : f32 = u_xlat37;
    u_xlat37 = max(x_658, 0.0f);
    let x_660 : f32 = u_xlat37;
    let x_661 : f32 = u_xlat37;
    u_xlat37 = (x_660 * x_661);
    let x_663 : f32 = u_xlat37;
    let x_664 : f32 = u_xlat27;
    u_xlat37 = (x_663 * x_664);
    let x_666 : i32 = u_xlati36;
    let x_668 : vec4<f32> = x_621.x_AdditionalLightsSpotDir[x_666];
    let x_670 : vec3<f32> = u_xlat7;
    u_xlat27 = dot(vec3<f32>(x_668.x, x_668.y, x_668.z), x_670);
    let x_672 : f32 = u_xlat27;
    let x_673 : i32 = u_xlati36;
    let x_675 : f32 = x_621.x_AdditionalLightsAttenuation[x_673].z;
    let x_677 : i32 = u_xlati36;
    let x_679 : f32 = x_621.x_AdditionalLightsAttenuation[x_677].w;
    u_xlat27 = ((x_672 * x_675) + x_679);
    let x_681 : f32 = u_xlat27;
    u_xlat27 = clamp(x_681, 0.0f, 1.0f);
    let x_683 : f32 = u_xlat27;
    let x_684 : f32 = u_xlat27;
    u_xlat27 = (x_683 * x_684);
    let x_686 : f32 = u_xlat37;
    let x_687 : f32 = u_xlat27;
    u_xlat37 = (x_686 * x_687);
    let x_691 : i32 = u_xlati36;
    let x_693 : f32 = x_303.x_AdditionalShadowParams[x_691].w;
    u_xlati27 = i32(x_693);
    let x_696 : i32 = u_xlati27;
    u_xlatb38 = (x_696 >= 0i);
    let x_698 : bool = u_xlatb38;
    if (x_698) {
      let x_702 : i32 = u_xlati36;
      let x_704 : f32 = x_303.x_AdditionalShadowParams[x_702].z;
      u_xlatb38 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_704, x_704, x_704, x_704))));
      let x_708 : bool = u_xlatb38;
      if (x_708) {
        let x_713 : vec3<f32> = u_xlat7;
        let x_716 : vec3<f32> = u_xlat7;
        let x_719 : vec4<bool> = (abs(vec4<f32>(x_713.z, x_713.z, x_713.y, x_713.z)) >= abs(vec4<f32>(x_716.x, x_716.y, x_716.x, x_716.x)));
        let x_721 : vec3<bool> = vec3<bool>(x_719.x, x_719.y, x_719.z);
        let x_722 : vec4<bool> = u_xlatb8;
        u_xlatb8 = vec4<bool>(x_721.x, x_721.y, x_721.z, x_722.w);
        let x_725 : bool = u_xlatb8.y;
        let x_727 : bool = u_xlatb8.x;
        u_xlatb38 = (x_725 & x_727);
        let x_729 : vec3<f32> = u_xlat7;
        let x_732 : vec4<bool> = (-(vec4<f32>(x_729.z, x_729.y, x_729.z, x_729.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_733 : vec3<bool> = vec3<bool>(x_732.x, x_732.y, x_732.w);
        let x_734 : vec4<bool> = u_xlatb8;
        u_xlatb8 = vec4<bool>(x_733.x, x_733.y, x_734.z, x_733.z);
        let x_738 : bool = u_xlatb8.x;
        u_xlat8.x = select(4.0f, 5.0f, x_738);
        let x_744 : bool = u_xlatb8.y;
        u_xlat8.y = select(2.0f, 3.0f, x_744);
        let x_751 : bool = u_xlatb8.w;
        u_xlat39 = select(0.0f, 1.0f, x_751);
        let x_754 : bool = u_xlatb8.z;
        if (x_754) {
          let x_759 : f32 = u_xlat8.y;
          x_755 = x_759;
        } else {
          let x_761 : f32 = u_xlat39;
          x_755 = x_761;
        }
        let x_762 : f32 = x_755;
        u_xlat39 = x_762;
        let x_764 : bool = u_xlatb38;
        if (x_764) {
          let x_769 : f32 = u_xlat8.x;
          x_765 = x_769;
        } else {
          let x_771 : f32 = u_xlat39;
          x_765 = x_771;
        }
        let x_772 : f32 = x_765;
        u_xlat38 = x_772;
        let x_773 : i32 = u_xlati36;
        let x_775 : f32 = x_303.x_AdditionalShadowParams[x_773].w;
        u_xlat39 = trunc(x_775);
        let x_777 : f32 = u_xlat38;
        let x_778 : f32 = u_xlat39;
        u_xlat38 = (x_777 + x_778);
        let x_780 : f32 = u_xlat38;
        u_xlati27 = i32(x_780);
      }
      let x_782 : i32 = u_xlati27;
      u_xlati27 = (x_782 << bitcast<u32>(2i));
      let x_784 : vec3<f32> = vs_TEXCOORD1;
      let x_787 : i32 = u_xlati27;
      let x_790 : i32 = u_xlati27;
      let x_794 : vec4<f32> = x_303.x_AdditionalLightsWorldToShadow[((x_787 + 1i) / 4i)][((x_790 + 1i) % 4i)];
      u_xlat8 = (vec4<f32>(x_784.y, x_784.y, x_784.y, x_784.y) * x_794);
      let x_796 : i32 = u_xlati27;
      let x_798 : i32 = u_xlati27;
      let x_801 : vec4<f32> = x_303.x_AdditionalLightsWorldToShadow[(x_796 / 4i)][(x_798 % 4i)];
      let x_802 : vec3<f32> = vs_TEXCOORD1;
      let x_805 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_801 * vec4<f32>(x_802.x, x_802.x, x_802.x, x_802.x)) + x_805);
      let x_807 : i32 = u_xlati27;
      let x_810 : i32 = u_xlati27;
      let x_814 : vec4<f32> = x_303.x_AdditionalLightsWorldToShadow[((x_807 + 2i) / 4i)][((x_810 + 2i) % 4i)];
      let x_815 : vec3<f32> = vs_TEXCOORD1;
      let x_818 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_814 * vec4<f32>(x_815.z, x_815.z, x_815.z, x_815.z)) + x_818);
      let x_820 : vec4<f32> = u_xlat8;
      let x_821 : i32 = u_xlati27;
      let x_824 : i32 = u_xlati27;
      let x_828 : vec4<f32> = x_303.x_AdditionalLightsWorldToShadow[((x_821 + 3i) / 4i)][((x_824 + 3i) % 4i)];
      u_xlat8 = (x_820 + x_828);
      let x_830 : vec4<f32> = u_xlat8;
      let x_832 : vec4<f32> = u_xlat8;
      let x_834 : vec3<f32> = (vec3<f32>(x_830.x, x_830.y, x_830.z) / vec3<f32>(x_832.w, x_832.w, x_832.w));
      let x_835 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_834.x, x_834.y, x_834.z, x_835.w);
      let x_838 : vec4<f32> = u_xlat8;
      let x_839 : vec2<f32> = vec2<f32>(x_838.x, x_838.y);
      let x_841 : f32 = u_xlat8.z;
      txVec1 = vec3<f32>(x_839.x, x_839.y, x_841);
      let x_849 : vec3<f32> = txVec1;
      let x_851 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_849.xy, x_849.z);
      u_xlat27 = x_851;
      let x_852 : i32 = u_xlati36;
      let x_854 : f32 = x_303.x_AdditionalShadowParams[x_852].x;
      u_xlat38 = (1.0f + -(x_854));
      let x_857 : f32 = u_xlat27;
      let x_858 : i32 = u_xlati36;
      let x_860 : f32 = x_303.x_AdditionalShadowParams[x_858].x;
      let x_862 : f32 = u_xlat38;
      u_xlat27 = ((x_857 * x_860) + x_862);
      let x_865 : f32 = u_xlat8.z;
      u_xlatb38 = (0.0f >= x_865);
      let x_869 : f32 = u_xlat8.z;
      u_xlatb39 = (x_869 >= 1.0f);
      let x_871 : bool = u_xlatb38;
      let x_872 : bool = u_xlatb39;
      u_xlatb38 = (x_871 | x_872);
      let x_874 : bool = u_xlatb38;
      let x_875 : f32 = u_xlat27;
      u_xlat27 = select(x_875, 1.0f, x_874);
    } else {
      u_xlat27 = 1.0f;
    }
    let x_878 : f32 = u_xlat27;
    u_xlat38 = (-(x_878) + 1.0f);
    let x_882 : f32 = u_xlat1.x;
    let x_883 : f32 = u_xlat38;
    let x_885 : f32 = u_xlat27;
    u_xlat27 = ((x_882 * x_883) + x_885);
    let x_888 : i32 = u_xlati36;
    u_xlati38 = (1i << bitcast<u32>((x_888 & 31i)));
    let x_892 : i32 = u_xlati38;
    let x_895 : f32 = x_371.x_AdditionalLightsCookieEnableBits;
    u_xlati38 = bitcast<i32>((bitcast<u32>(x_892) & bitcast<u32>(x_895)));
    let x_899 : i32 = u_xlati38;
    if ((x_899 != 0i)) {
      let x_903 : i32 = u_xlati36;
      let x_905 : f32 = x_371.x_AdditionalLightsLightTypes[x_903].el;
      u_xlati38 = i32(x_905);
      let x_908 : i32 = u_xlati38;
      u_xlati39 = select(1i, 0i, (x_908 != 0i));
      let x_912 : i32 = u_xlati36;
      u_xlati40 = (x_912 << bitcast<u32>(2i));
      let x_914 : i32 = u_xlati39;
      if ((x_914 != 0i)) {
        let x_918 : vec3<f32> = vs_TEXCOORD1;
        let x_920 : i32 = u_xlati40;
        let x_923 : i32 = u_xlati40;
        let x_927 : vec4<f32> = x_371.x_AdditionalLightsWorldToLights[((x_920 + 1i) / 4i)][((x_923 + 1i) % 4i)];
        let x_929 : vec3<f32> = (vec3<f32>(x_918.y, x_918.y, x_918.y) * vec3<f32>(x_927.x, x_927.y, x_927.w));
        let x_930 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_929.x, x_929.y, x_929.z, x_930.w);
        let x_932 : i32 = u_xlati40;
        let x_934 : i32 = u_xlati40;
        let x_937 : vec4<f32> = x_371.x_AdditionalLightsWorldToLights[(x_932 / 4i)][(x_934 % 4i)];
        let x_939 : vec3<f32> = vs_TEXCOORD1;
        let x_942 : vec4<f32> = u_xlat8;
        let x_944 : vec3<f32> = ((vec3<f32>(x_937.x, x_937.y, x_937.w) * vec3<f32>(x_939.x, x_939.x, x_939.x)) + vec3<f32>(x_942.x, x_942.y, x_942.z));
        let x_945 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_944.x, x_944.y, x_944.z, x_945.w);
        let x_947 : i32 = u_xlati40;
        let x_950 : i32 = u_xlati40;
        let x_954 : vec4<f32> = x_371.x_AdditionalLightsWorldToLights[((x_947 + 2i) / 4i)][((x_950 + 2i) % 4i)];
        let x_956 : vec3<f32> = vs_TEXCOORD1;
        let x_959 : vec4<f32> = u_xlat8;
        let x_961 : vec3<f32> = ((vec3<f32>(x_954.x, x_954.y, x_954.w) * vec3<f32>(x_956.z, x_956.z, x_956.z)) + vec3<f32>(x_959.x, x_959.y, x_959.z));
        let x_962 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_961.x, x_961.y, x_961.z, x_962.w);
        let x_964 : vec4<f32> = u_xlat8;
        let x_966 : i32 = u_xlati40;
        let x_969 : i32 = u_xlati40;
        let x_973 : vec4<f32> = x_371.x_AdditionalLightsWorldToLights[((x_966 + 3i) / 4i)][((x_969 + 3i) % 4i)];
        let x_975 : vec3<f32> = (vec3<f32>(x_964.x, x_964.y, x_964.z) + vec3<f32>(x_973.x, x_973.y, x_973.w));
        let x_976 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_975.x, x_975.y, x_975.z, x_976.w);
        let x_978 : vec4<f32> = u_xlat8;
        let x_980 : vec4<f32> = u_xlat8;
        let x_982 : vec2<f32> = (vec2<f32>(x_978.x, x_978.y) / vec2<f32>(x_980.z, x_980.z));
        let x_983 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_982.x, x_982.y, x_983.z, x_983.w);
        let x_985 : vec4<f32> = u_xlat8;
        let x_988 : vec2<f32> = ((vec2<f32>(x_985.x, x_985.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_989 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_988.x, x_988.y, x_989.z, x_989.w);
        let x_991 : vec4<f32> = u_xlat8;
        let x_995 : vec2<f32> = clamp(vec2<f32>(x_991.x, x_991.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_996 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_995.x, x_995.y, x_996.z, x_996.w);
        let x_998 : i32 = u_xlati36;
        let x_1000 : vec4<f32> = x_371.x_AdditionalLightsCookieAtlasUVRects[x_998];
        let x_1002 : vec4<f32> = u_xlat8;
        let x_1005 : i32 = u_xlati36;
        let x_1007 : vec4<f32> = x_371.x_AdditionalLightsCookieAtlasUVRects[x_1005];
        let x_1009 : vec2<f32> = ((vec2<f32>(x_1000.x, x_1000.y) * vec2<f32>(x_1002.x, x_1002.y)) + vec2<f32>(x_1007.z, x_1007.w));
        let x_1010 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1009.x, x_1009.y, x_1010.z, x_1010.w);
      } else {
        let x_1013 : i32 = u_xlati38;
        u_xlatb38 = (x_1013 == 1i);
        let x_1015 : bool = u_xlatb38;
        u_xlati38 = select(0i, 1i, x_1015);
        let x_1017 : i32 = u_xlati38;
        if ((x_1017 != 0i)) {
          let x_1023 : vec3<f32> = vs_TEXCOORD1;
          let x_1025 : i32 = u_xlati40;
          let x_1028 : i32 = u_xlati40;
          let x_1032 : vec4<f32> = x_371.x_AdditionalLightsWorldToLights[((x_1025 + 1i) / 4i)][((x_1028 + 1i) % 4i)];
          u_xlat30 = (vec2<f32>(x_1023.y, x_1023.y) * vec2<f32>(x_1032.x, x_1032.y));
          let x_1035 : i32 = u_xlati40;
          let x_1037 : i32 = u_xlati40;
          let x_1040 : vec4<f32> = x_371.x_AdditionalLightsWorldToLights[(x_1035 / 4i)][(x_1037 % 4i)];
          let x_1042 : vec3<f32> = vs_TEXCOORD1;
          let x_1045 : vec2<f32> = u_xlat30;
          u_xlat30 = ((vec2<f32>(x_1040.x, x_1040.y) * vec2<f32>(x_1042.x, x_1042.x)) + x_1045);
          let x_1047 : i32 = u_xlati40;
          let x_1050 : i32 = u_xlati40;
          let x_1054 : vec4<f32> = x_371.x_AdditionalLightsWorldToLights[((x_1047 + 2i) / 4i)][((x_1050 + 2i) % 4i)];
          let x_1056 : vec3<f32> = vs_TEXCOORD1;
          let x_1059 : vec2<f32> = u_xlat30;
          u_xlat30 = ((vec2<f32>(x_1054.x, x_1054.y) * vec2<f32>(x_1056.z, x_1056.z)) + x_1059);
          let x_1061 : vec2<f32> = u_xlat30;
          let x_1062 : i32 = u_xlati40;
          let x_1065 : i32 = u_xlati40;
          let x_1069 : vec4<f32> = x_371.x_AdditionalLightsWorldToLights[((x_1062 + 3i) / 4i)][((x_1065 + 3i) % 4i)];
          u_xlat30 = (x_1061 + vec2<f32>(x_1069.x, x_1069.y));
          let x_1072 : vec2<f32> = u_xlat30;
          u_xlat30 = ((x_1072 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1075 : vec2<f32> = u_xlat30;
          u_xlat30 = fract(x_1075);
          let x_1077 : i32 = u_xlati36;
          let x_1079 : vec4<f32> = x_371.x_AdditionalLightsCookieAtlasUVRects[x_1077];
          let x_1081 : vec2<f32> = u_xlat30;
          let x_1083 : i32 = u_xlati36;
          let x_1085 : vec4<f32> = x_371.x_AdditionalLightsCookieAtlasUVRects[x_1083];
          let x_1087 : vec2<f32> = ((vec2<f32>(x_1079.x, x_1079.y) * x_1081) + vec2<f32>(x_1085.z, x_1085.w));
          let x_1088 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1087.x, x_1087.y, x_1088.z, x_1088.w);
        } else {
          let x_1092 : vec3<f32> = vs_TEXCOORD1;
          let x_1094 : i32 = u_xlati40;
          let x_1097 : i32 = u_xlati40;
          let x_1101 : vec4<f32> = x_371.x_AdditionalLightsWorldToLights[((x_1094 + 1i) / 4i)][((x_1097 + 1i) % 4i)];
          u_xlat9 = (vec4<f32>(x_1092.y, x_1092.y, x_1092.y, x_1092.y) * x_1101);
          let x_1103 : i32 = u_xlati40;
          let x_1105 : i32 = u_xlati40;
          let x_1108 : vec4<f32> = x_371.x_AdditionalLightsWorldToLights[(x_1103 / 4i)][(x_1105 % 4i)];
          let x_1109 : vec3<f32> = vs_TEXCOORD1;
          let x_1112 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_1108 * vec4<f32>(x_1109.x, x_1109.x, x_1109.x, x_1109.x)) + x_1112);
          let x_1114 : i32 = u_xlati40;
          let x_1117 : i32 = u_xlati40;
          let x_1121 : vec4<f32> = x_371.x_AdditionalLightsWorldToLights[((x_1114 + 2i) / 4i)][((x_1117 + 2i) % 4i)];
          let x_1122 : vec3<f32> = vs_TEXCOORD1;
          let x_1125 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_1121 * vec4<f32>(x_1122.z, x_1122.z, x_1122.z, x_1122.z)) + x_1125);
          let x_1127 : vec4<f32> = u_xlat9;
          let x_1128 : i32 = u_xlati40;
          let x_1131 : i32 = u_xlati40;
          let x_1135 : vec4<f32> = x_371.x_AdditionalLightsWorldToLights[((x_1128 + 3i) / 4i)][((x_1131 + 3i) % 4i)];
          u_xlat9 = (x_1127 + x_1135);
          let x_1137 : vec4<f32> = u_xlat9;
          let x_1139 : vec4<f32> = u_xlat9;
          let x_1141 : vec3<f32> = (vec3<f32>(x_1137.x, x_1137.y, x_1137.z) / vec3<f32>(x_1139.w, x_1139.w, x_1139.w));
          let x_1142 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1141.x, x_1141.y, x_1141.z, x_1142.w);
          let x_1144 : vec4<f32> = u_xlat9;
          let x_1146 : vec4<f32> = u_xlat9;
          u_xlat38 = dot(vec3<f32>(x_1144.x, x_1144.y, x_1144.z), vec3<f32>(x_1146.x, x_1146.y, x_1146.z));
          let x_1149 : f32 = u_xlat38;
          u_xlat38 = inverseSqrt(x_1149);
          let x_1151 : f32 = u_xlat38;
          let x_1153 : vec4<f32> = u_xlat9;
          let x_1155 : vec3<f32> = (vec3<f32>(x_1151, x_1151, x_1151) * vec3<f32>(x_1153.x, x_1153.y, x_1153.z));
          let x_1156 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1155.x, x_1155.y, x_1155.z, x_1156.w);
          let x_1158 : vec4<f32> = u_xlat9;
          u_xlat38 = dot(abs(vec3<f32>(x_1158.x, x_1158.y, x_1158.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1163 : f32 = u_xlat38;
          u_xlat38 = max(x_1163, 0.00000099999999747524f);
          let x_1166 : f32 = u_xlat38;
          u_xlat38 = (1.0f / x_1166);
          let x_1169 : f32 = u_xlat38;
          let x_1171 : vec4<f32> = u_xlat9;
          u_xlat10 = (vec3<f32>(x_1169, x_1169, x_1169) * vec3<f32>(x_1171.z, x_1171.x, x_1171.y));
          let x_1175 : f32 = u_xlat10.x;
          u_xlat10.x = -(x_1175);
          let x_1179 : f32 = u_xlat10.x;
          u_xlat10.x = clamp(x_1179, 0.0f, 1.0f);
          let x_1183 : vec3<f32> = u_xlat10;
          let x_1185 : vec4<bool> = (vec4<f32>(x_1183.y, x_1183.z, x_1183.y, x_1183.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb30 = vec2<bool>(x_1185.x, x_1185.y);
          let x_1188 : bool = u_xlatb30.x;
          if (x_1188) {
            let x_1193 : f32 = u_xlat10.x;
            x_1189 = x_1193;
          } else {
            let x_1196 : f32 = u_xlat10.x;
            x_1189 = -(x_1196);
          }
          let x_1198 : f32 = x_1189;
          u_xlat30.x = x_1198;
          let x_1201 : bool = u_xlatb30.y;
          if (x_1201) {
            let x_1206 : f32 = u_xlat10.x;
            x_1202 = x_1206;
          } else {
            let x_1209 : f32 = u_xlat10.x;
            x_1202 = -(x_1209);
          }
          let x_1211 : f32 = x_1202;
          u_xlat30.y = x_1211;
          let x_1213 : vec4<f32> = u_xlat9;
          let x_1215 : f32 = u_xlat38;
          let x_1218 : vec2<f32> = u_xlat30;
          u_xlat30 = ((vec2<f32>(x_1213.x, x_1213.y) * vec2<f32>(x_1215, x_1215)) + x_1218);
          let x_1220 : vec2<f32> = u_xlat30;
          u_xlat30 = ((x_1220 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1223 : vec2<f32> = u_xlat30;
          u_xlat30 = clamp(x_1223, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1227 : i32 = u_xlati36;
          let x_1229 : vec4<f32> = x_371.x_AdditionalLightsCookieAtlasUVRects[x_1227];
          let x_1231 : vec2<f32> = u_xlat30;
          let x_1233 : i32 = u_xlati36;
          let x_1235 : vec4<f32> = x_371.x_AdditionalLightsCookieAtlasUVRects[x_1233];
          let x_1237 : vec2<f32> = ((vec2<f32>(x_1229.x, x_1229.y) * x_1231) + vec2<f32>(x_1235.z, x_1235.w));
          let x_1238 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1237.x, x_1237.y, x_1238.z, x_1238.w);
        }
      }
      let x_1245 : vec4<f32> = u_xlat8;
      let x_1247 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_1245.x, x_1245.y), 0.0f);
      u_xlat8 = x_1247;
      let x_1249 : bool = u_xlatb5.y;
      if (x_1249) {
        let x_1254 : f32 = u_xlat8.w;
        x_1250 = x_1254;
      } else {
        let x_1257 : f32 = u_xlat8.x;
        x_1250 = x_1257;
      }
      let x_1258 : f32 = x_1250;
      u_xlat38 = x_1258;
      let x_1260 : bool = u_xlatb5.x;
      if (x_1260) {
        let x_1264 : vec4<f32> = u_xlat8;
        x_1261 = vec3<f32>(x_1264.x, x_1264.y, x_1264.z);
      } else {
        let x_1267 : f32 = u_xlat38;
        x_1261 = vec3<f32>(x_1267, x_1267, x_1267);
      }
      let x_1269 : vec3<f32> = x_1261;
      let x_1270 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_1269.x, x_1269.y, x_1269.z, x_1270.w);
    } else {
      u_xlat8.x = 1.0f;
      u_xlat8.y = 1.0f;
      u_xlat8.z = 1.0f;
    }
    let x_1276 : vec4<f32> = u_xlat8;
    let x_1278 : i32 = u_xlati36;
    let x_1280 : vec4<f32> = x_621.x_AdditionalLightsColor[x_1278];
    let x_1282 : vec3<f32> = (vec3<f32>(x_1276.x, x_1276.y, x_1276.z) * vec3<f32>(x_1280.x, x_1280.y, x_1280.z));
    let x_1283 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1282.x, x_1282.y, x_1282.z, x_1283.w);
    let x_1285 : f32 = u_xlat37;
    let x_1286 : f32 = u_xlat27;
    u_xlat36 = (x_1285 * x_1286);
    let x_1288 : f32 = u_xlat36;
    let x_1290 : vec4<f32> = u_xlat8;
    let x_1292 : vec3<f32> = (vec3<f32>(x_1288, x_1288, x_1288) * vec3<f32>(x_1290.x, x_1290.y, x_1290.z));
    let x_1293 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1292.x, x_1292.y, x_1292.z, x_1293.w);
    let x_1295 : vec4<f32> = u_xlat2;
    let x_1297 : vec3<f32> = u_xlat7;
    u_xlat36 = dot(vec3<f32>(x_1295.x, x_1295.y, x_1295.z), x_1297);
    let x_1299 : f32 = u_xlat36;
    u_xlat36 = clamp(x_1299, 0.0f, 1.0f);
    let x_1301 : f32 = u_xlat36;
    let x_1303 : vec4<f32> = u_xlat8;
    u_xlat7 = (vec3<f32>(x_1301, x_1301, x_1301) * vec3<f32>(x_1303.x, x_1303.y, x_1303.z));
    let x_1306 : vec3<f32> = u_xlat7;
    let x_1307 : vec4<f32> = u_xlat1;
    let x_1310 : vec3<f32> = u_xlat6;
    u_xlat6 = ((x_1306 * vec3<f32>(x_1307.y, x_1307.z, x_1307.w)) + x_1310);

    continuing {
      let x_1312 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1312 + bitcast<u32>(1i));
    }
  }
  let x_1314 : vec3<f32> = u_xlat3;
  let x_1315 : vec4<f32> = u_xlat1;
  let x_1318 : vec4<f32> = u_xlat4;
  let x_1320 : vec3<f32> = ((x_1314 * vec3<f32>(x_1315.y, x_1315.z, x_1315.w)) + vec3<f32>(x_1318.x, x_1318.y, x_1318.z));
  let x_1321 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1320.x, x_1320.y, x_1320.z, x_1321.w);
  let x_1323 : vec3<f32> = u_xlat6;
  let x_1324 : vec4<f32> = u_xlat1;
  let x_1326 : vec3<f32> = (x_1323 + vec3<f32>(x_1324.x, x_1324.y, x_1324.z));
  let x_1327 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1326.x, x_1326.y, x_1326.z, x_1327.w);
  let x_1329 : f32 = u_xlat11;
  let x_1330 : f32 = u_xlat11;
  u_xlat11 = (x_1329 * -(x_1330));
  let x_1333 : f32 = u_xlat11;
  u_xlat11 = exp2(x_1333);
  let x_1335 : vec4<f32> = u_xlat1;
  let x_1338 : vec4<f32> = x_28.unity_FogColor;
  let x_1341 : vec3<f32> = (vec3<f32>(x_1335.x, x_1335.y, x_1335.z) + -(vec3<f32>(x_1338.x, x_1338.y, x_1338.z)));
  let x_1342 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1341.x, x_1341.y, x_1341.z, x_1342.w);
  let x_1346 : f32 = u_xlat11;
  let x_1348 : vec4<f32> = u_xlat1;
  let x_1352 : vec4<f32> = x_28.unity_FogColor;
  let x_1354 : vec3<f32> = ((vec3<f32>(x_1346, x_1346, x_1346) * vec3<f32>(x_1348.x, x_1348.y, x_1348.z)) + vec3<f32>(x_1352.x, x_1352.y, x_1352.z));
  let x_1355 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1354.x, x_1354.y, x_1354.z, x_1355.w);
  let x_1358 : f32 = x_42.x_Surface;
  u_xlatb11 = (x_1358 == 1.0f);
  let x_1360 : bool = u_xlatb11;
  let x_1361 : bool = u_xlatb22;
  u_xlatb11 = (x_1360 | x_1361);
  let x_1363 : bool = u_xlatb11;
  if (x_1363) {
    let x_1368 : f32 = u_xlat0.x;
    x_1364 = x_1368;
  } else {
    x_1364 = 1.0f;
  }
  let x_1370 : f32 = x_1364;
  SV_Target0.w = x_1370;
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


