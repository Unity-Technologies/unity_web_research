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

@group(1) @binding(1) var<uniform> x_628 : AdditionalLights;

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
  var x_762 : f32;
  var x_772 : f32;
  var txVec1 : vec3<f32>;
  var x_1196 : f32;
  var x_1209 : f32;
  var x_1257 : f32;
  var x_1268 : vec3<f32>;
  var x_1375 : f32;
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
  let x_524 : vec4<f32> = u_xlat0;
  let x_526 : vec4<f32> = u_xlat4;
  let x_528 : vec3<f32> = (vec3<f32>(x_524.x, x_524.x, x_524.x) * vec3<f32>(x_526.x, x_526.y, x_526.z));
  let x_529 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_528.x, x_528.y, x_528.z, x_529.w);
  let x_532 : f32 = x_28.x_AdditionalLightsCount.x;
  let x_534 : f32 = x_199.unity_LightData.y;
  u_xlat33 = min(x_532, x_534);
  let x_538 : f32 = u_xlat33;
  u_xlatu33 = bitcast<u32>(i32(x_538));
  let x_542 : f32 = u_xlat1.x;
  let x_545 : f32 = x_303.x_AdditionalShadowFadeParams.x;
  let x_548 : f32 = x_303.x_AdditionalShadowFadeParams.y;
  u_xlat1.x = ((x_542 * x_545) + x_548);
  let x_552 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_552, 0.0f, 1.0f);
  let x_556 : f32 = x_371.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_558 : f32 = x_371.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_560 : f32 = x_371.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_562 : f32 = x_371.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_563 : vec4<f32> = vec4<f32>(x_556, x_558, x_560, x_562);
  let x_569 : vec4<bool> = (vec4<f32>(x_563.x, x_563.y, x_563.z, x_563.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb5 = vec2<bool>(x_569.x, x_569.y);
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_582 : u32 = u_xlatu_loop_1;
    let x_583 : u32 = u_xlatu33;
    if ((x_582 < x_583)) {
    } else {
      break;
    }
    let x_586 : u32 = u_xlatu_loop_1;
    u_xlatu36 = (x_586 >> 2u);
    let x_590 : u32 = u_xlatu_loop_1;
    u_xlati37 = bitcast<i32>((x_590 & 3u));
    let x_593 : u32 = u_xlatu36;
    let x_596 : vec4<f32> = x_199.unity_LightIndices[bitcast<i32>(x_593)];
    let x_606 : i32 = u_xlati37;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_611 : vec4<u32> = indexable[x_606];
    u_xlat36 = dot(x_596, bitcast<vec4<f32>>(x_611));
    let x_615 : f32 = u_xlat36;
    u_xlati36 = i32(x_615);
    let x_618 : vec3<f32> = vs_TEXCOORD1;
    let x_629 : i32 = u_xlati36;
    let x_631 : vec4<f32> = x_628.x_AdditionalLightsPosition[x_629];
    let x_634 : i32 = u_xlati36;
    let x_636 : vec4<f32> = x_628.x_AdditionalLightsPosition[x_634];
    u_xlat7 = ((-(x_618) * vec3<f32>(x_631.w, x_631.w, x_631.w)) + vec3<f32>(x_636.x, x_636.y, x_636.z));
    let x_640 : vec3<f32> = u_xlat7;
    let x_641 : vec3<f32> = u_xlat7;
    u_xlat37 = dot(x_640, x_641);
    let x_643 : f32 = u_xlat37;
    u_xlat37 = max(x_643, 0.00006103515625f);
    let x_647 : f32 = u_xlat37;
    u_xlat27 = inverseSqrt(x_647);
    let x_649 : f32 = u_xlat27;
    let x_651 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_649, x_649, x_649) * x_651);
    let x_653 : f32 = u_xlat37;
    u_xlat27 = (1.0f / x_653);
    let x_655 : f32 = u_xlat37;
    let x_656 : i32 = u_xlati36;
    let x_658 : f32 = x_628.x_AdditionalLightsAttenuation[x_656].x;
    u_xlat37 = (x_655 * x_658);
    let x_660 : f32 = u_xlat37;
    let x_662 : f32 = u_xlat37;
    u_xlat37 = ((-(x_660) * x_662) + 1.0f);
    let x_665 : f32 = u_xlat37;
    u_xlat37 = max(x_665, 0.0f);
    let x_667 : f32 = u_xlat37;
    let x_668 : f32 = u_xlat37;
    u_xlat37 = (x_667 * x_668);
    let x_670 : f32 = u_xlat37;
    let x_671 : f32 = u_xlat27;
    u_xlat37 = (x_670 * x_671);
    let x_673 : i32 = u_xlati36;
    let x_675 : vec4<f32> = x_628.x_AdditionalLightsSpotDir[x_673];
    let x_677 : vec3<f32> = u_xlat7;
    u_xlat27 = dot(vec3<f32>(x_675.x, x_675.y, x_675.z), x_677);
    let x_679 : f32 = u_xlat27;
    let x_680 : i32 = u_xlati36;
    let x_682 : f32 = x_628.x_AdditionalLightsAttenuation[x_680].z;
    let x_684 : i32 = u_xlati36;
    let x_686 : f32 = x_628.x_AdditionalLightsAttenuation[x_684].w;
    u_xlat27 = ((x_679 * x_682) + x_686);
    let x_688 : f32 = u_xlat27;
    u_xlat27 = clamp(x_688, 0.0f, 1.0f);
    let x_690 : f32 = u_xlat27;
    let x_691 : f32 = u_xlat27;
    u_xlat27 = (x_690 * x_691);
    let x_693 : f32 = u_xlat37;
    let x_694 : f32 = u_xlat27;
    u_xlat37 = (x_693 * x_694);
    let x_698 : i32 = u_xlati36;
    let x_700 : f32 = x_303.x_AdditionalShadowParams[x_698].w;
    u_xlati27 = i32(x_700);
    let x_703 : i32 = u_xlati27;
    u_xlatb38 = (x_703 >= 0i);
    let x_705 : bool = u_xlatb38;
    if (x_705) {
      let x_709 : i32 = u_xlati36;
      let x_711 : f32 = x_303.x_AdditionalShadowParams[x_709].z;
      u_xlatb38 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_711, x_711, x_711, x_711))));
      let x_715 : bool = u_xlatb38;
      if (x_715) {
        let x_720 : vec3<f32> = u_xlat7;
        let x_723 : vec3<f32> = u_xlat7;
        let x_726 : vec4<bool> = (abs(vec4<f32>(x_720.z, x_720.z, x_720.y, x_720.z)) >= abs(vec4<f32>(x_723.x, x_723.y, x_723.x, x_723.x)));
        let x_728 : vec3<bool> = vec3<bool>(x_726.x, x_726.y, x_726.z);
        let x_729 : vec4<bool> = u_xlatb8;
        u_xlatb8 = vec4<bool>(x_728.x, x_728.y, x_728.z, x_729.w);
        let x_732 : bool = u_xlatb8.y;
        let x_734 : bool = u_xlatb8.x;
        u_xlatb38 = (x_732 & x_734);
        let x_736 : vec3<f32> = u_xlat7;
        let x_739 : vec4<bool> = (-(vec4<f32>(x_736.z, x_736.y, x_736.z, x_736.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_740 : vec3<bool> = vec3<bool>(x_739.x, x_739.y, x_739.w);
        let x_741 : vec4<bool> = u_xlatb8;
        u_xlatb8 = vec4<bool>(x_740.x, x_740.y, x_741.z, x_740.z);
        let x_745 : bool = u_xlatb8.x;
        u_xlat8.x = select(4.0f, 5.0f, x_745);
        let x_751 : bool = u_xlatb8.y;
        u_xlat8.y = select(2.0f, 3.0f, x_751);
        let x_758 : bool = u_xlatb8.w;
        u_xlat39 = select(0.0f, 1.0f, x_758);
        let x_761 : bool = u_xlatb8.z;
        if (x_761) {
          let x_766 : f32 = u_xlat8.y;
          x_762 = x_766;
        } else {
          let x_768 : f32 = u_xlat39;
          x_762 = x_768;
        }
        let x_769 : f32 = x_762;
        u_xlat39 = x_769;
        let x_771 : bool = u_xlatb38;
        if (x_771) {
          let x_776 : f32 = u_xlat8.x;
          x_772 = x_776;
        } else {
          let x_778 : f32 = u_xlat39;
          x_772 = x_778;
        }
        let x_779 : f32 = x_772;
        u_xlat38 = x_779;
        let x_780 : i32 = u_xlati36;
        let x_782 : f32 = x_303.x_AdditionalShadowParams[x_780].w;
        u_xlat39 = trunc(x_782);
        let x_784 : f32 = u_xlat38;
        let x_785 : f32 = u_xlat39;
        u_xlat38 = (x_784 + x_785);
        let x_787 : f32 = u_xlat38;
        u_xlati27 = i32(x_787);
      }
      let x_789 : i32 = u_xlati27;
      u_xlati27 = (x_789 << bitcast<u32>(2i));
      let x_791 : vec3<f32> = vs_TEXCOORD1;
      let x_794 : i32 = u_xlati27;
      let x_797 : i32 = u_xlati27;
      let x_801 : vec4<f32> = x_303.x_AdditionalLightsWorldToShadow[((x_794 + 1i) / 4i)][((x_797 + 1i) % 4i)];
      u_xlat8 = (vec4<f32>(x_791.y, x_791.y, x_791.y, x_791.y) * x_801);
      let x_803 : i32 = u_xlati27;
      let x_805 : i32 = u_xlati27;
      let x_808 : vec4<f32> = x_303.x_AdditionalLightsWorldToShadow[(x_803 / 4i)][(x_805 % 4i)];
      let x_809 : vec3<f32> = vs_TEXCOORD1;
      let x_812 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_808 * vec4<f32>(x_809.x, x_809.x, x_809.x, x_809.x)) + x_812);
      let x_814 : i32 = u_xlati27;
      let x_817 : i32 = u_xlati27;
      let x_821 : vec4<f32> = x_303.x_AdditionalLightsWorldToShadow[((x_814 + 2i) / 4i)][((x_817 + 2i) % 4i)];
      let x_822 : vec3<f32> = vs_TEXCOORD1;
      let x_825 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_821 * vec4<f32>(x_822.z, x_822.z, x_822.z, x_822.z)) + x_825);
      let x_827 : vec4<f32> = u_xlat8;
      let x_828 : i32 = u_xlati27;
      let x_831 : i32 = u_xlati27;
      let x_835 : vec4<f32> = x_303.x_AdditionalLightsWorldToShadow[((x_828 + 3i) / 4i)][((x_831 + 3i) % 4i)];
      u_xlat8 = (x_827 + x_835);
      let x_837 : vec4<f32> = u_xlat8;
      let x_839 : vec4<f32> = u_xlat8;
      let x_841 : vec3<f32> = (vec3<f32>(x_837.x, x_837.y, x_837.z) / vec3<f32>(x_839.w, x_839.w, x_839.w));
      let x_842 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_841.x, x_841.y, x_841.z, x_842.w);
      let x_845 : vec4<f32> = u_xlat8;
      let x_846 : vec2<f32> = vec2<f32>(x_845.x, x_845.y);
      let x_848 : f32 = u_xlat8.z;
      txVec1 = vec3<f32>(x_846.x, x_846.y, x_848);
      let x_856 : vec3<f32> = txVec1;
      let x_858 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_856.xy, x_856.z);
      u_xlat27 = x_858;
      let x_859 : i32 = u_xlati36;
      let x_861 : f32 = x_303.x_AdditionalShadowParams[x_859].x;
      u_xlat38 = (1.0f + -(x_861));
      let x_864 : f32 = u_xlat27;
      let x_865 : i32 = u_xlati36;
      let x_867 : f32 = x_303.x_AdditionalShadowParams[x_865].x;
      let x_869 : f32 = u_xlat38;
      u_xlat27 = ((x_864 * x_867) + x_869);
      let x_872 : f32 = u_xlat8.z;
      u_xlatb38 = (0.0f >= x_872);
      let x_876 : f32 = u_xlat8.z;
      u_xlatb39 = (x_876 >= 1.0f);
      let x_878 : bool = u_xlatb38;
      let x_879 : bool = u_xlatb39;
      u_xlatb38 = (x_878 | x_879);
      let x_881 : bool = u_xlatb38;
      let x_882 : f32 = u_xlat27;
      u_xlat27 = select(x_882, 1.0f, x_881);
    } else {
      u_xlat27 = 1.0f;
    }
    let x_885 : f32 = u_xlat27;
    u_xlat38 = (-(x_885) + 1.0f);
    let x_889 : f32 = u_xlat1.x;
    let x_890 : f32 = u_xlat38;
    let x_892 : f32 = u_xlat27;
    u_xlat27 = ((x_889 * x_890) + x_892);
    let x_895 : i32 = u_xlati36;
    u_xlati38 = (1i << bitcast<u32>((x_895 & 31i)));
    let x_899 : i32 = u_xlati38;
    let x_902 : f32 = x_371.x_AdditionalLightsCookieEnableBits;
    u_xlati38 = bitcast<i32>((bitcast<u32>(x_899) & bitcast<u32>(x_902)));
    let x_906 : i32 = u_xlati38;
    if ((x_906 != 0i)) {
      let x_910 : i32 = u_xlati36;
      let x_912 : f32 = x_371.x_AdditionalLightsLightTypes[x_910].el;
      u_xlati38 = i32(x_912);
      let x_915 : i32 = u_xlati38;
      u_xlati39 = select(1i, 0i, (x_915 != 0i));
      let x_919 : i32 = u_xlati36;
      u_xlati40 = (x_919 << bitcast<u32>(2i));
      let x_921 : i32 = u_xlati39;
      if ((x_921 != 0i)) {
        let x_925 : vec3<f32> = vs_TEXCOORD1;
        let x_927 : i32 = u_xlati40;
        let x_930 : i32 = u_xlati40;
        let x_934 : vec4<f32> = x_371.x_AdditionalLightsWorldToLights[((x_927 + 1i) / 4i)][((x_930 + 1i) % 4i)];
        let x_936 : vec3<f32> = (vec3<f32>(x_925.y, x_925.y, x_925.y) * vec3<f32>(x_934.x, x_934.y, x_934.w));
        let x_937 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_936.x, x_936.y, x_936.z, x_937.w);
        let x_939 : i32 = u_xlati40;
        let x_941 : i32 = u_xlati40;
        let x_944 : vec4<f32> = x_371.x_AdditionalLightsWorldToLights[(x_939 / 4i)][(x_941 % 4i)];
        let x_946 : vec3<f32> = vs_TEXCOORD1;
        let x_949 : vec4<f32> = u_xlat8;
        let x_951 : vec3<f32> = ((vec3<f32>(x_944.x, x_944.y, x_944.w) * vec3<f32>(x_946.x, x_946.x, x_946.x)) + vec3<f32>(x_949.x, x_949.y, x_949.z));
        let x_952 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_951.x, x_951.y, x_951.z, x_952.w);
        let x_954 : i32 = u_xlati40;
        let x_957 : i32 = u_xlati40;
        let x_961 : vec4<f32> = x_371.x_AdditionalLightsWorldToLights[((x_954 + 2i) / 4i)][((x_957 + 2i) % 4i)];
        let x_963 : vec3<f32> = vs_TEXCOORD1;
        let x_966 : vec4<f32> = u_xlat8;
        let x_968 : vec3<f32> = ((vec3<f32>(x_961.x, x_961.y, x_961.w) * vec3<f32>(x_963.z, x_963.z, x_963.z)) + vec3<f32>(x_966.x, x_966.y, x_966.z));
        let x_969 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_968.x, x_968.y, x_968.z, x_969.w);
        let x_971 : vec4<f32> = u_xlat8;
        let x_973 : i32 = u_xlati40;
        let x_976 : i32 = u_xlati40;
        let x_980 : vec4<f32> = x_371.x_AdditionalLightsWorldToLights[((x_973 + 3i) / 4i)][((x_976 + 3i) % 4i)];
        let x_982 : vec3<f32> = (vec3<f32>(x_971.x, x_971.y, x_971.z) + vec3<f32>(x_980.x, x_980.y, x_980.w));
        let x_983 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_982.x, x_982.y, x_982.z, x_983.w);
        let x_985 : vec4<f32> = u_xlat8;
        let x_987 : vec4<f32> = u_xlat8;
        let x_989 : vec2<f32> = (vec2<f32>(x_985.x, x_985.y) / vec2<f32>(x_987.z, x_987.z));
        let x_990 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_989.x, x_989.y, x_990.z, x_990.w);
        let x_992 : vec4<f32> = u_xlat8;
        let x_995 : vec2<f32> = ((vec2<f32>(x_992.x, x_992.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_996 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_995.x, x_995.y, x_996.z, x_996.w);
        let x_998 : vec4<f32> = u_xlat8;
        let x_1002 : vec2<f32> = clamp(vec2<f32>(x_998.x, x_998.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1003 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1002.x, x_1002.y, x_1003.z, x_1003.w);
        let x_1005 : i32 = u_xlati36;
        let x_1007 : vec4<f32> = x_371.x_AdditionalLightsCookieAtlasUVRects[x_1005];
        let x_1009 : vec4<f32> = u_xlat8;
        let x_1012 : i32 = u_xlati36;
        let x_1014 : vec4<f32> = x_371.x_AdditionalLightsCookieAtlasUVRects[x_1012];
        let x_1016 : vec2<f32> = ((vec2<f32>(x_1007.x, x_1007.y) * vec2<f32>(x_1009.x, x_1009.y)) + vec2<f32>(x_1014.z, x_1014.w));
        let x_1017 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1016.x, x_1016.y, x_1017.z, x_1017.w);
      } else {
        let x_1020 : i32 = u_xlati38;
        u_xlatb38 = (x_1020 == 1i);
        let x_1022 : bool = u_xlatb38;
        u_xlati38 = select(0i, 1i, x_1022);
        let x_1024 : i32 = u_xlati38;
        if ((x_1024 != 0i)) {
          let x_1030 : vec3<f32> = vs_TEXCOORD1;
          let x_1032 : i32 = u_xlati40;
          let x_1035 : i32 = u_xlati40;
          let x_1039 : vec4<f32> = x_371.x_AdditionalLightsWorldToLights[((x_1032 + 1i) / 4i)][((x_1035 + 1i) % 4i)];
          u_xlat30 = (vec2<f32>(x_1030.y, x_1030.y) * vec2<f32>(x_1039.x, x_1039.y));
          let x_1042 : i32 = u_xlati40;
          let x_1044 : i32 = u_xlati40;
          let x_1047 : vec4<f32> = x_371.x_AdditionalLightsWorldToLights[(x_1042 / 4i)][(x_1044 % 4i)];
          let x_1049 : vec3<f32> = vs_TEXCOORD1;
          let x_1052 : vec2<f32> = u_xlat30;
          u_xlat30 = ((vec2<f32>(x_1047.x, x_1047.y) * vec2<f32>(x_1049.x, x_1049.x)) + x_1052);
          let x_1054 : i32 = u_xlati40;
          let x_1057 : i32 = u_xlati40;
          let x_1061 : vec4<f32> = x_371.x_AdditionalLightsWorldToLights[((x_1054 + 2i) / 4i)][((x_1057 + 2i) % 4i)];
          let x_1063 : vec3<f32> = vs_TEXCOORD1;
          let x_1066 : vec2<f32> = u_xlat30;
          u_xlat30 = ((vec2<f32>(x_1061.x, x_1061.y) * vec2<f32>(x_1063.z, x_1063.z)) + x_1066);
          let x_1068 : vec2<f32> = u_xlat30;
          let x_1069 : i32 = u_xlati40;
          let x_1072 : i32 = u_xlati40;
          let x_1076 : vec4<f32> = x_371.x_AdditionalLightsWorldToLights[((x_1069 + 3i) / 4i)][((x_1072 + 3i) % 4i)];
          u_xlat30 = (x_1068 + vec2<f32>(x_1076.x, x_1076.y));
          let x_1079 : vec2<f32> = u_xlat30;
          u_xlat30 = ((x_1079 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1082 : vec2<f32> = u_xlat30;
          u_xlat30 = fract(x_1082);
          let x_1084 : i32 = u_xlati36;
          let x_1086 : vec4<f32> = x_371.x_AdditionalLightsCookieAtlasUVRects[x_1084];
          let x_1088 : vec2<f32> = u_xlat30;
          let x_1090 : i32 = u_xlati36;
          let x_1092 : vec4<f32> = x_371.x_AdditionalLightsCookieAtlasUVRects[x_1090];
          let x_1094 : vec2<f32> = ((vec2<f32>(x_1086.x, x_1086.y) * x_1088) + vec2<f32>(x_1092.z, x_1092.w));
          let x_1095 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1094.x, x_1094.y, x_1095.z, x_1095.w);
        } else {
          let x_1099 : vec3<f32> = vs_TEXCOORD1;
          let x_1101 : i32 = u_xlati40;
          let x_1104 : i32 = u_xlati40;
          let x_1108 : vec4<f32> = x_371.x_AdditionalLightsWorldToLights[((x_1101 + 1i) / 4i)][((x_1104 + 1i) % 4i)];
          u_xlat9 = (vec4<f32>(x_1099.y, x_1099.y, x_1099.y, x_1099.y) * x_1108);
          let x_1110 : i32 = u_xlati40;
          let x_1112 : i32 = u_xlati40;
          let x_1115 : vec4<f32> = x_371.x_AdditionalLightsWorldToLights[(x_1110 / 4i)][(x_1112 % 4i)];
          let x_1116 : vec3<f32> = vs_TEXCOORD1;
          let x_1119 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_1115 * vec4<f32>(x_1116.x, x_1116.x, x_1116.x, x_1116.x)) + x_1119);
          let x_1121 : i32 = u_xlati40;
          let x_1124 : i32 = u_xlati40;
          let x_1128 : vec4<f32> = x_371.x_AdditionalLightsWorldToLights[((x_1121 + 2i) / 4i)][((x_1124 + 2i) % 4i)];
          let x_1129 : vec3<f32> = vs_TEXCOORD1;
          let x_1132 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_1128 * vec4<f32>(x_1129.z, x_1129.z, x_1129.z, x_1129.z)) + x_1132);
          let x_1134 : vec4<f32> = u_xlat9;
          let x_1135 : i32 = u_xlati40;
          let x_1138 : i32 = u_xlati40;
          let x_1142 : vec4<f32> = x_371.x_AdditionalLightsWorldToLights[((x_1135 + 3i) / 4i)][((x_1138 + 3i) % 4i)];
          u_xlat9 = (x_1134 + x_1142);
          let x_1144 : vec4<f32> = u_xlat9;
          let x_1146 : vec4<f32> = u_xlat9;
          let x_1148 : vec3<f32> = (vec3<f32>(x_1144.x, x_1144.y, x_1144.z) / vec3<f32>(x_1146.w, x_1146.w, x_1146.w));
          let x_1149 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1148.x, x_1148.y, x_1148.z, x_1149.w);
          let x_1151 : vec4<f32> = u_xlat9;
          let x_1153 : vec4<f32> = u_xlat9;
          u_xlat38 = dot(vec3<f32>(x_1151.x, x_1151.y, x_1151.z), vec3<f32>(x_1153.x, x_1153.y, x_1153.z));
          let x_1156 : f32 = u_xlat38;
          u_xlat38 = inverseSqrt(x_1156);
          let x_1158 : f32 = u_xlat38;
          let x_1160 : vec4<f32> = u_xlat9;
          let x_1162 : vec3<f32> = (vec3<f32>(x_1158, x_1158, x_1158) * vec3<f32>(x_1160.x, x_1160.y, x_1160.z));
          let x_1163 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1162.x, x_1162.y, x_1162.z, x_1163.w);
          let x_1165 : vec4<f32> = u_xlat9;
          u_xlat38 = dot(abs(vec3<f32>(x_1165.x, x_1165.y, x_1165.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1170 : f32 = u_xlat38;
          u_xlat38 = max(x_1170, 0.00000099999999747524f);
          let x_1173 : f32 = u_xlat38;
          u_xlat38 = (1.0f / x_1173);
          let x_1176 : f32 = u_xlat38;
          let x_1178 : vec4<f32> = u_xlat9;
          u_xlat10 = (vec3<f32>(x_1176, x_1176, x_1176) * vec3<f32>(x_1178.z, x_1178.x, x_1178.y));
          let x_1182 : f32 = u_xlat10.x;
          u_xlat10.x = -(x_1182);
          let x_1186 : f32 = u_xlat10.x;
          u_xlat10.x = clamp(x_1186, 0.0f, 1.0f);
          let x_1190 : vec3<f32> = u_xlat10;
          let x_1192 : vec4<bool> = (vec4<f32>(x_1190.y, x_1190.z, x_1190.y, x_1190.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb30 = vec2<bool>(x_1192.x, x_1192.y);
          let x_1195 : bool = u_xlatb30.x;
          if (x_1195) {
            let x_1200 : f32 = u_xlat10.x;
            x_1196 = x_1200;
          } else {
            let x_1203 : f32 = u_xlat10.x;
            x_1196 = -(x_1203);
          }
          let x_1205 : f32 = x_1196;
          u_xlat30.x = x_1205;
          let x_1208 : bool = u_xlatb30.y;
          if (x_1208) {
            let x_1213 : f32 = u_xlat10.x;
            x_1209 = x_1213;
          } else {
            let x_1216 : f32 = u_xlat10.x;
            x_1209 = -(x_1216);
          }
          let x_1218 : f32 = x_1209;
          u_xlat30.y = x_1218;
          let x_1220 : vec4<f32> = u_xlat9;
          let x_1222 : f32 = u_xlat38;
          let x_1225 : vec2<f32> = u_xlat30;
          u_xlat30 = ((vec2<f32>(x_1220.x, x_1220.y) * vec2<f32>(x_1222, x_1222)) + x_1225);
          let x_1227 : vec2<f32> = u_xlat30;
          u_xlat30 = ((x_1227 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1230 : vec2<f32> = u_xlat30;
          u_xlat30 = clamp(x_1230, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1234 : i32 = u_xlati36;
          let x_1236 : vec4<f32> = x_371.x_AdditionalLightsCookieAtlasUVRects[x_1234];
          let x_1238 : vec2<f32> = u_xlat30;
          let x_1240 : i32 = u_xlati36;
          let x_1242 : vec4<f32> = x_371.x_AdditionalLightsCookieAtlasUVRects[x_1240];
          let x_1244 : vec2<f32> = ((vec2<f32>(x_1236.x, x_1236.y) * x_1238) + vec2<f32>(x_1242.z, x_1242.w));
          let x_1245 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1244.x, x_1244.y, x_1245.z, x_1245.w);
        }
      }
      let x_1252 : vec4<f32> = u_xlat8;
      let x_1254 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_1252.x, x_1252.y), 0.0f);
      u_xlat8 = x_1254;
      let x_1256 : bool = u_xlatb5.y;
      if (x_1256) {
        let x_1261 : f32 = u_xlat8.w;
        x_1257 = x_1261;
      } else {
        let x_1264 : f32 = u_xlat8.x;
        x_1257 = x_1264;
      }
      let x_1265 : f32 = x_1257;
      u_xlat38 = x_1265;
      let x_1267 : bool = u_xlatb5.x;
      if (x_1267) {
        let x_1271 : vec4<f32> = u_xlat8;
        x_1268 = vec3<f32>(x_1271.x, x_1271.y, x_1271.z);
      } else {
        let x_1274 : f32 = u_xlat38;
        x_1268 = vec3<f32>(x_1274, x_1274, x_1274);
      }
      let x_1276 : vec3<f32> = x_1268;
      let x_1277 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_1276.x, x_1276.y, x_1276.z, x_1277.w);
    } else {
      u_xlat8.x = 1.0f;
      u_xlat8.y = 1.0f;
      u_xlat8.z = 1.0f;
    }
    let x_1283 : vec4<f32> = u_xlat8;
    let x_1285 : i32 = u_xlati36;
    let x_1287 : vec4<f32> = x_628.x_AdditionalLightsColor[x_1285];
    let x_1289 : vec3<f32> = (vec3<f32>(x_1283.x, x_1283.y, x_1283.z) * vec3<f32>(x_1287.x, x_1287.y, x_1287.z));
    let x_1290 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1289.x, x_1289.y, x_1289.z, x_1290.w);
    let x_1292 : f32 = u_xlat37;
    let x_1293 : f32 = u_xlat27;
    u_xlat36 = (x_1292 * x_1293);
    let x_1295 : f32 = u_xlat36;
    let x_1297 : vec4<f32> = u_xlat8;
    let x_1299 : vec3<f32> = (vec3<f32>(x_1295, x_1295, x_1295) * vec3<f32>(x_1297.x, x_1297.y, x_1297.z));
    let x_1300 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1299.x, x_1299.y, x_1299.z, x_1300.w);
    let x_1302 : vec4<f32> = u_xlat2;
    let x_1304 : vec3<f32> = u_xlat7;
    u_xlat36 = dot(vec3<f32>(x_1302.x, x_1302.y, x_1302.z), x_1304);
    let x_1306 : f32 = u_xlat36;
    u_xlat36 = clamp(x_1306, 0.0f, 1.0f);
    let x_1308 : f32 = u_xlat36;
    let x_1310 : vec4<f32> = u_xlat8;
    u_xlat7 = (vec3<f32>(x_1308, x_1308, x_1308) * vec3<f32>(x_1310.x, x_1310.y, x_1310.z));
    let x_1313 : vec4<f32> = u_xlat1;
    let x_1315 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_1313.y, x_1313.z, x_1313.w) * x_1315);
    let x_1317 : vec3<f32> = u_xlat7;
    let x_1318 : vec4<f32> = u_xlat0;
    let x_1321 : vec3<f32> = u_xlat6;
    u_xlat6 = ((x_1317 * vec3<f32>(x_1318.x, x_1318.x, x_1318.x)) + x_1321);

    continuing {
      let x_1323 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1323 + bitcast<u32>(1i));
    }
  }
  let x_1325 : vec3<f32> = u_xlat3;
  let x_1326 : vec4<f32> = u_xlat1;
  let x_1329 : vec4<f32> = u_xlat4;
  let x_1331 : vec3<f32> = ((x_1325 * vec3<f32>(x_1326.y, x_1326.z, x_1326.w)) + vec3<f32>(x_1329.x, x_1329.y, x_1329.z));
  let x_1332 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1331.x, x_1331.y, x_1331.z, x_1332.w);
  let x_1334 : vec3<f32> = u_xlat6;
  let x_1335 : vec4<f32> = u_xlat1;
  let x_1337 : vec3<f32> = (x_1334 + vec3<f32>(x_1335.x, x_1335.y, x_1335.z));
  let x_1338 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1337.x, x_1337.y, x_1337.z, x_1338.w);
  let x_1340 : f32 = u_xlat11;
  let x_1341 : f32 = u_xlat11;
  u_xlat11 = (x_1340 * -(x_1341));
  let x_1344 : f32 = u_xlat11;
  u_xlat11 = exp2(x_1344);
  let x_1346 : vec4<f32> = u_xlat1;
  let x_1349 : vec4<f32> = x_28.unity_FogColor;
  let x_1352 : vec3<f32> = (vec3<f32>(x_1346.x, x_1346.y, x_1346.z) + -(vec3<f32>(x_1349.x, x_1349.y, x_1349.z)));
  let x_1353 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1352.x, x_1352.y, x_1352.z, x_1353.w);
  let x_1357 : f32 = u_xlat11;
  let x_1359 : vec4<f32> = u_xlat1;
  let x_1363 : vec4<f32> = x_28.unity_FogColor;
  let x_1365 : vec3<f32> = ((vec3<f32>(x_1357, x_1357, x_1357) * vec3<f32>(x_1359.x, x_1359.y, x_1359.z)) + vec3<f32>(x_1363.x, x_1363.y, x_1363.z));
  let x_1366 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1365.x, x_1365.y, x_1365.z, x_1366.w);
  let x_1369 : f32 = x_42.x_Surface;
  u_xlatb11 = (x_1369 == 1.0f);
  let x_1371 : bool = u_xlatb11;
  let x_1372 : bool = u_xlatb22;
  u_xlatb11 = (x_1371 | x_1372);
  let x_1374 : bool = u_xlatb11;
  if (x_1374) {
    let x_1379 : f32 = u_xlat0.x;
    x_1375 = x_1379;
  } else {
    x_1375 = 1.0f;
  }
  let x_1381 : f32 = x_1375;
  SV_Target0.w = x_1381;
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


