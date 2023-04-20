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

alias Arr = array<mat4x4<f32>, 5u>;

alias Arr_1 = array<vec4<f32>, 32u>;

alias Arr_2 = array<mat4x4<f32>, 32u>;

alias Arr_3 = array<vec4<f32>, 32u>;

alias Arr_4 = array<mat4x4<f32>, 32u>;

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
  x_AdditionalLightsWorldToShadow : Arr_4,
}

alias Arr_5 = array<vec4<f32>, 32u>;

struct strided_arr {
  @size(16)
  el : f32,
}

alias Arr_6 = array<strided_arr, 32u>;

alias Arr_7 = array<strided_arr, 32u>;

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
  x_AdditionalLightsWorldToLights : Arr_4,
  /* @offset(2128) */
  x_AdditionalLightsCookieAtlasUVRects : Arr_3,
  /* @offset(2640) */
  x_AdditionalLightsLightTypes : Arr_7,
}

alias Arr_8 = array<vec4<f32>, 2u>;

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
  unity_LightIndices : Arr_8,
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

alias Arr_9 = array<vec4<f32>, 32u>;

alias Arr_10 = array<vec4<f32>, 32u>;

alias Arr_11 = array<vec4<f32>, 32u>;

alias Arr_12 = array<vec4<f32>, 32u>;

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
  x_AdditionalLightsLayerMasks : Arr_7,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(2) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(8) var sampler_BaseMap : sampler;

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

var<private> u_xlat2 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat3 : vec4<f32>;

@group(0) @binding(1) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(7) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

var<private> u_xlat4 : vec4<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(10) var sampler_LinearClampCompare : sampler_comparison;

@group(1) @binding(4) var<uniform> x_274 : LightShadows;

var<private> u_xlatb1 : bool;

var<private> u_xlatb35 : bool;

var<private> u_xlat35 : f32;

var<private> u_xlat36 : f32;

@group(1) @binding(5) var<uniform> x_342 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb5 : vec2<bool>;

@group(1) @binding(2) var<uniform> x_466 : UnityPerDraw;

var<private> u_xlatu33 : u32;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlatu36 : u32;

var<private> u_xlati37 : i32;

var<private> u_xlati36 : i32;

var<private> u_xlat7 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_602 : AdditionalLights;

var<private> u_xlat37 : f32;

var<private> u_xlat27 : f32;

var<private> u_xlati27 : i32;

var<private> u_xlatb38 : bool;

var<private> u_xlatb8 : vec4<bool>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat39 : f32;

var<private> u_xlat38 : f32;

@group(0) @binding(4) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb39 : bool;

var<private> u_xlati38 : i32;

var<private> u_xlati39 : i32;

var<private> u_xlati40 : i32;

var<private> u_xlat30 : vec2<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat10 : vec3<f32>;

var<private> u_xlatb30 : vec2<bool>;

@group(0) @binding(6) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu35 : u32;

var<private> u_xlatb36 : bool;

fn main_1() {
  var x_61 : f32;
  var x_111 : f32;
  var txVec0 : vec3<f32>;
  var x_428 : f32;
  var x_439 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_736 : f32;
  var x_746 : f32;
  var txVec1 : vec3<f32>;
  var x_1170 : f32;
  var x_1183 : f32;
  var x_1231 : f32;
  var x_1242 : vec3<f32>;
  var x_1349 : f32;
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
  let x_144 : f32 = u_xlat11;
  let x_146 : vec3<f32> = vs_TEXCOORD2;
  u_xlat2 = (vec3<f32>(x_144, x_144, x_144) * x_146);
  let x_152 : f32 = vs_TEXCOORD1.y;
  let x_156 : f32 = x_28.unity_MatrixV[1i].z;
  u_xlat11 = (x_152 * x_156);
  let x_159 : f32 = x_28.unity_MatrixV[0i].z;
  let x_161 : f32 = vs_TEXCOORD1.x;
  let x_163 : f32 = u_xlat11;
  u_xlat11 = ((x_159 * x_161) + x_163);
  let x_167 : f32 = x_28.unity_MatrixV[2i].z;
  let x_169 : f32 = vs_TEXCOORD1.z;
  let x_171 : f32 = u_xlat11;
  u_xlat11 = ((x_167 * x_169) + x_171);
  let x_173 : f32 = u_xlat11;
  let x_176 : f32 = x_28.unity_MatrixV[3i].z;
  u_xlat11 = (x_173 + x_176);
  let x_178 : f32 = u_xlat11;
  let x_182 : f32 = x_28.x_ProjectionParams.y;
  u_xlat11 = (-(x_178) + -(x_182));
  let x_185 : f32 = u_xlat11;
  u_xlat11 = max(x_185, 0.0f);
  let x_187 : f32 = u_xlat11;
  let x_190 : f32 = x_28.unity_FogParams.x;
  u_xlat11 = (x_187 * x_190);
  let x_199 : vec2<f32> = vs_TEXCOORD7;
  let x_201 : f32 = x_28.x_GlobalMipBias.x;
  let x_202 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_199, x_201);
  u_xlat3 = x_202;
  let x_208 : vec2<f32> = vs_TEXCOORD7;
  let x_210 : f32 = x_28.x_GlobalMipBias.x;
  let x_211 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_208, x_210);
  let x_212 : vec3<f32> = vec3<f32>(x_211.x, x_211.y, x_211.z);
  let x_213 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_212.x, x_212.y, x_212.z, x_213.w);
  let x_215 : vec4<f32> = u_xlat3;
  let x_219 : vec3<f32> = (vec3<f32>(x_215.x, x_215.y, x_215.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_220 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_219.x, x_219.y, x_219.z, x_220.w);
  let x_222 : vec3<f32> = u_xlat2;
  let x_223 : vec4<f32> = u_xlat3;
  u_xlat33 = dot(x_222, vec3<f32>(x_223.x, x_223.y, x_223.z));
  let x_226 : f32 = u_xlat33;
  u_xlat33 = (x_226 + 0.5f);
  let x_228 : f32 = u_xlat33;
  let x_230 : vec4<f32> = u_xlat4;
  let x_232 : vec3<f32> = (vec3<f32>(x_228, x_228, x_228) * vec3<f32>(x_230.x, x_230.y, x_230.z));
  let x_233 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_232.x, x_232.y, x_232.z, x_233.w);
  let x_236 : f32 = u_xlat3.w;
  u_xlat33 = max(x_236, 0.00009999999747378752f);
  let x_238 : vec4<f32> = u_xlat3;
  let x_240 : f32 = u_xlat33;
  let x_242 : vec3<f32> = (vec3<f32>(x_238.x, x_238.y, x_238.z) / vec3<f32>(x_240, x_240, x_240));
  let x_243 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_242.x, x_242.y, x_242.z, x_243.w);
  let x_249 : vec4<f32> = vs_TEXCOORD6;
  let x_250 : vec2<f32> = vec2<f32>(x_249.x, x_249.y);
  let x_252 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_250.x, x_250.y, x_252);
  let x_264 : vec3<f32> = txVec0;
  let x_266 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_264.xy, x_264.z);
  u_xlat33 = x_266;
  let x_277 : f32 = x_274.x_MainLightShadowParams.x;
  u_xlat1.x = (-(x_277) + 1.0f);
  let x_281 : f32 = u_xlat33;
  let x_283 : f32 = x_274.x_MainLightShadowParams.x;
  let x_286 : f32 = u_xlat1.x;
  u_xlat33 = ((x_281 * x_283) + x_286);
  let x_290 : f32 = vs_TEXCOORD6.z;
  u_xlatb1 = (0.0f >= x_290);
  let x_294 : f32 = vs_TEXCOORD6.z;
  u_xlatb35 = (x_294 >= 1.0f);
  let x_296 : bool = u_xlatb1;
  let x_297 : bool = u_xlatb35;
  u_xlatb1 = (x_296 | x_297);
  let x_299 : bool = u_xlatb1;
  let x_300 : f32 = u_xlat33;
  u_xlat33 = select(x_300, 1.0f, x_299);
  let x_302 : vec3<f32> = vs_TEXCOORD1;
  let x_306 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  let x_308 : vec3<f32> = (x_302 + -(x_306));
  let x_309 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_308.x, x_308.y, x_308.z, x_309.w);
  let x_311 : vec4<f32> = u_xlat4;
  let x_313 : vec4<f32> = u_xlat4;
  u_xlat1.x = dot(vec3<f32>(x_311.x, x_311.y, x_311.z), vec3<f32>(x_313.x, x_313.y, x_313.z));
  let x_319 : f32 = u_xlat1.x;
  let x_321 : f32 = x_274.x_MainLightShadowParams.z;
  let x_324 : f32 = x_274.x_MainLightShadowParams.w;
  u_xlat35 = ((x_319 * x_321) + x_324);
  let x_326 : f32 = u_xlat35;
  u_xlat35 = clamp(x_326, 0.0f, 1.0f);
  let x_329 : f32 = u_xlat33;
  u_xlat36 = (-(x_329) + 1.0f);
  let x_332 : f32 = u_xlat35;
  let x_333 : f32 = u_xlat36;
  let x_335 : f32 = u_xlat33;
  u_xlat33 = ((x_332 * x_333) + x_335);
  let x_344 : f32 = x_342.x_MainLightCookieTextureFormat;
  u_xlatb35 = !((x_344 == -1.0f));
  let x_347 : bool = u_xlatb35;
  if (x_347) {
    let x_350 : vec3<f32> = vs_TEXCOORD1;
    let x_353 : vec4<f32> = x_342.x_MainLightWorldToLight[1i];
    let x_355 : vec2<f32> = (vec2<f32>(x_350.y, x_350.y) * vec2<f32>(x_353.x, x_353.y));
    let x_356 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_355.x, x_355.y, x_356.z, x_356.w);
    let x_359 : vec4<f32> = x_342.x_MainLightWorldToLight[0i];
    let x_361 : vec3<f32> = vs_TEXCOORD1;
    let x_364 : vec4<f32> = u_xlat4;
    let x_366 : vec2<f32> = ((vec2<f32>(x_359.x, x_359.y) * vec2<f32>(x_361.x, x_361.x)) + vec2<f32>(x_364.x, x_364.y));
    let x_367 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_366.x, x_366.y, x_367.z, x_367.w);
    let x_370 : vec4<f32> = x_342.x_MainLightWorldToLight[2i];
    let x_372 : vec3<f32> = vs_TEXCOORD1;
    let x_375 : vec4<f32> = u_xlat4;
    let x_377 : vec2<f32> = ((vec2<f32>(x_370.x, x_370.y) * vec2<f32>(x_372.z, x_372.z)) + vec2<f32>(x_375.x, x_375.y));
    let x_378 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_377.x, x_377.y, x_378.z, x_378.w);
    let x_380 : vec4<f32> = u_xlat4;
    let x_383 : vec4<f32> = x_342.x_MainLightWorldToLight[3i];
    let x_385 : vec2<f32> = (vec2<f32>(x_380.x, x_380.y) + vec2<f32>(x_383.x, x_383.y));
    let x_386 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_385.x, x_385.y, x_386.z, x_386.w);
    let x_388 : vec4<f32> = u_xlat4;
    let x_392 : vec2<f32> = ((vec2<f32>(x_388.x, x_388.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_393 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_392.x, x_392.y, x_393.z, x_393.w);
    let x_400 : vec4<f32> = u_xlat4;
    let x_403 : f32 = x_28.x_GlobalMipBias.x;
    let x_404 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_400.x, x_400.y), x_403);
    u_xlat4 = x_404;
    let x_409 : f32 = x_342.x_MainLightCookieTextureFormat;
    let x_411 : f32 = x_342.x_MainLightCookieTextureFormat;
    let x_413 : f32 = x_342.x_MainLightCookieTextureFormat;
    let x_415 : f32 = x_342.x_MainLightCookieTextureFormat;
    let x_416 : vec4<f32> = vec4<f32>(x_409, x_411, x_413, x_415);
    let x_424 : vec4<bool> = (vec4<f32>(x_416.x, x_416.y, x_416.z, x_416.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb5 = vec2<bool>(x_424.x, x_424.y);
    let x_427 : bool = u_xlatb5.y;
    if (x_427) {
      let x_432 : f32 = u_xlat4.w;
      x_428 = x_432;
    } else {
      let x_435 : f32 = u_xlat4.x;
      x_428 = x_435;
    }
    let x_436 : f32 = x_428;
    u_xlat35 = x_436;
    let x_438 : bool = u_xlatb5.x;
    if (x_438) {
      let x_442 : vec4<f32> = u_xlat4;
      x_439 = vec3<f32>(x_442.x, x_442.y, x_442.z);
    } else {
      let x_445 : f32 = u_xlat35;
      x_439 = vec3<f32>(x_445, x_445, x_445);
    }
    let x_447 : vec3<f32> = x_439;
    let x_448 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_447.x, x_447.y, x_447.z, x_448.w);
  } else {
    u_xlat4.x = 1.0f;
    u_xlat4.y = 1.0f;
    u_xlat4.z = 1.0f;
  }
  let x_454 : vec4<f32> = u_xlat4;
  let x_457 : vec4<f32> = x_28.x_MainLightColor;
  let x_459 : vec3<f32> = (vec3<f32>(x_454.x, x_454.y, x_454.z) * vec3<f32>(x_457.x, x_457.y, x_457.z));
  let x_460 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_459.x, x_459.y, x_459.z, x_460.w);
  let x_462 : f32 = u_xlat33;
  let x_468 : f32 = x_466.unity_LightData.z;
  u_xlat33 = (x_462 * x_468);
  let x_470 : f32 = u_xlat33;
  let x_472 : vec4<f32> = u_xlat4;
  let x_474 : vec3<f32> = (vec3<f32>(x_470, x_470, x_470) * vec3<f32>(x_472.x, x_472.y, x_472.z));
  let x_475 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_474.x, x_474.y, x_474.z, x_475.w);
  let x_477 : vec3<f32> = u_xlat2;
  let x_479 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat33 = dot(x_477, vec3<f32>(x_479.x, x_479.y, x_479.z));
  let x_482 : f32 = u_xlat33;
  u_xlat33 = clamp(x_482, 0.0f, 1.0f);
  let x_484 : f32 = u_xlat33;
  let x_486 : vec4<f32> = u_xlat4;
  let x_488 : vec3<f32> = (vec3<f32>(x_484, x_484, x_484) * vec3<f32>(x_486.x, x_486.y, x_486.z));
  let x_489 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_488.x, x_488.y, x_488.z, x_489.w);
  let x_491 : vec4<f32> = u_xlat1;
  let x_493 : vec4<f32> = u_xlat4;
  let x_495 : vec3<f32> = (vec3<f32>(x_491.y, x_491.z, x_491.w) * vec3<f32>(x_493.x, x_493.y, x_493.z));
  let x_496 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_495.x, x_495.y, x_495.z, x_496.w);
  let x_498 : vec4<f32> = u_xlat0;
  let x_500 : vec4<f32> = u_xlat4;
  let x_502 : vec3<f32> = (vec3<f32>(x_498.x, x_498.x, x_498.x) * vec3<f32>(x_500.x, x_500.y, x_500.z));
  let x_503 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_502.x, x_502.y, x_502.z, x_503.w);
  let x_506 : f32 = x_28.x_AdditionalLightsCount.x;
  let x_508 : f32 = x_466.unity_LightData.y;
  u_xlat33 = min(x_506, x_508);
  let x_512 : f32 = u_xlat33;
  u_xlatu33 = bitcast<u32>(i32(x_512));
  let x_516 : f32 = u_xlat1.x;
  let x_519 : f32 = x_274.x_AdditionalShadowFadeParams.x;
  let x_522 : f32 = x_274.x_AdditionalShadowFadeParams.y;
  u_xlat1.x = ((x_516 * x_519) + x_522);
  let x_526 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_526, 0.0f, 1.0f);
  let x_530 : f32 = x_342.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_532 : f32 = x_342.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_534 : f32 = x_342.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_536 : f32 = x_342.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_537 : vec4<f32> = vec4<f32>(x_530, x_532, x_534, x_536);
  let x_543 : vec4<bool> = (vec4<f32>(x_537.x, x_537.y, x_537.z, x_537.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb5 = vec2<bool>(x_543.x, x_543.y);
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_556 : u32 = u_xlatu_loop_1;
    let x_557 : u32 = u_xlatu33;
    if ((x_556 < x_557)) {
    } else {
      break;
    }
    let x_560 : u32 = u_xlatu_loop_1;
    u_xlatu36 = (x_560 >> 2u);
    let x_564 : u32 = u_xlatu_loop_1;
    u_xlati37 = bitcast<i32>((x_564 & 3u));
    let x_567 : u32 = u_xlatu36;
    let x_570 : vec4<f32> = x_466.unity_LightIndices[bitcast<i32>(x_567)];
    let x_580 : i32 = u_xlati37;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_585 : vec4<u32> = indexable[x_580];
    u_xlat36 = dot(x_570, bitcast<vec4<f32>>(x_585));
    let x_589 : f32 = u_xlat36;
    u_xlati36 = i32(x_589);
    let x_592 : vec3<f32> = vs_TEXCOORD1;
    let x_603 : i32 = u_xlati36;
    let x_605 : vec4<f32> = x_602.x_AdditionalLightsPosition[x_603];
    let x_608 : i32 = u_xlati36;
    let x_610 : vec4<f32> = x_602.x_AdditionalLightsPosition[x_608];
    u_xlat7 = ((-(x_592) * vec3<f32>(x_605.w, x_605.w, x_605.w)) + vec3<f32>(x_610.x, x_610.y, x_610.z));
    let x_614 : vec3<f32> = u_xlat7;
    let x_615 : vec3<f32> = u_xlat7;
    u_xlat37 = dot(x_614, x_615);
    let x_617 : f32 = u_xlat37;
    u_xlat37 = max(x_617, 0.00006103515625f);
    let x_621 : f32 = u_xlat37;
    u_xlat27 = inverseSqrt(x_621);
    let x_623 : f32 = u_xlat27;
    let x_625 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_623, x_623, x_623) * x_625);
    let x_627 : f32 = u_xlat37;
    u_xlat27 = (1.0f / x_627);
    let x_629 : f32 = u_xlat37;
    let x_630 : i32 = u_xlati36;
    let x_632 : f32 = x_602.x_AdditionalLightsAttenuation[x_630].x;
    u_xlat37 = (x_629 * x_632);
    let x_634 : f32 = u_xlat37;
    let x_636 : f32 = u_xlat37;
    u_xlat37 = ((-(x_634) * x_636) + 1.0f);
    let x_639 : f32 = u_xlat37;
    u_xlat37 = max(x_639, 0.0f);
    let x_641 : f32 = u_xlat37;
    let x_642 : f32 = u_xlat37;
    u_xlat37 = (x_641 * x_642);
    let x_644 : f32 = u_xlat37;
    let x_645 : f32 = u_xlat27;
    u_xlat37 = (x_644 * x_645);
    let x_647 : i32 = u_xlati36;
    let x_649 : vec4<f32> = x_602.x_AdditionalLightsSpotDir[x_647];
    let x_651 : vec3<f32> = u_xlat7;
    u_xlat27 = dot(vec3<f32>(x_649.x, x_649.y, x_649.z), x_651);
    let x_653 : f32 = u_xlat27;
    let x_654 : i32 = u_xlati36;
    let x_656 : f32 = x_602.x_AdditionalLightsAttenuation[x_654].z;
    let x_658 : i32 = u_xlati36;
    let x_660 : f32 = x_602.x_AdditionalLightsAttenuation[x_658].w;
    u_xlat27 = ((x_653 * x_656) + x_660);
    let x_662 : f32 = u_xlat27;
    u_xlat27 = clamp(x_662, 0.0f, 1.0f);
    let x_664 : f32 = u_xlat27;
    let x_665 : f32 = u_xlat27;
    u_xlat27 = (x_664 * x_665);
    let x_667 : f32 = u_xlat37;
    let x_668 : f32 = u_xlat27;
    u_xlat37 = (x_667 * x_668);
    let x_672 : i32 = u_xlati36;
    let x_674 : f32 = x_274.x_AdditionalShadowParams[x_672].w;
    u_xlati27 = i32(x_674);
    let x_677 : i32 = u_xlati27;
    u_xlatb38 = (x_677 >= 0i);
    let x_679 : bool = u_xlatb38;
    if (x_679) {
      let x_683 : i32 = u_xlati36;
      let x_685 : f32 = x_274.x_AdditionalShadowParams[x_683].z;
      u_xlatb38 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_685, x_685, x_685, x_685))));
      let x_689 : bool = u_xlatb38;
      if (x_689) {
        let x_694 : vec3<f32> = u_xlat7;
        let x_697 : vec3<f32> = u_xlat7;
        let x_700 : vec4<bool> = (abs(vec4<f32>(x_694.z, x_694.z, x_694.y, x_694.z)) >= abs(vec4<f32>(x_697.x, x_697.y, x_697.x, x_697.x)));
        let x_702 : vec3<bool> = vec3<bool>(x_700.x, x_700.y, x_700.z);
        let x_703 : vec4<bool> = u_xlatb8;
        u_xlatb8 = vec4<bool>(x_702.x, x_702.y, x_702.z, x_703.w);
        let x_706 : bool = u_xlatb8.y;
        let x_708 : bool = u_xlatb8.x;
        u_xlatb38 = (x_706 & x_708);
        let x_710 : vec3<f32> = u_xlat7;
        let x_713 : vec4<bool> = (-(vec4<f32>(x_710.z, x_710.y, x_710.z, x_710.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_714 : vec3<bool> = vec3<bool>(x_713.x, x_713.y, x_713.w);
        let x_715 : vec4<bool> = u_xlatb8;
        u_xlatb8 = vec4<bool>(x_714.x, x_714.y, x_715.z, x_714.z);
        let x_719 : bool = u_xlatb8.x;
        u_xlat8.x = select(4.0f, 5.0f, x_719);
        let x_725 : bool = u_xlatb8.y;
        u_xlat8.y = select(2.0f, 3.0f, x_725);
        let x_732 : bool = u_xlatb8.w;
        u_xlat39 = select(0.0f, 1.0f, x_732);
        let x_735 : bool = u_xlatb8.z;
        if (x_735) {
          let x_740 : f32 = u_xlat8.y;
          x_736 = x_740;
        } else {
          let x_742 : f32 = u_xlat39;
          x_736 = x_742;
        }
        let x_743 : f32 = x_736;
        u_xlat39 = x_743;
        let x_745 : bool = u_xlatb38;
        if (x_745) {
          let x_750 : f32 = u_xlat8.x;
          x_746 = x_750;
        } else {
          let x_752 : f32 = u_xlat39;
          x_746 = x_752;
        }
        let x_753 : f32 = x_746;
        u_xlat38 = x_753;
        let x_754 : i32 = u_xlati36;
        let x_756 : f32 = x_274.x_AdditionalShadowParams[x_754].w;
        u_xlat39 = trunc(x_756);
        let x_758 : f32 = u_xlat38;
        let x_759 : f32 = u_xlat39;
        u_xlat38 = (x_758 + x_759);
        let x_761 : f32 = u_xlat38;
        u_xlati27 = i32(x_761);
      }
      let x_763 : i32 = u_xlati27;
      u_xlati27 = (x_763 << bitcast<u32>(2i));
      let x_765 : vec3<f32> = vs_TEXCOORD1;
      let x_768 : i32 = u_xlati27;
      let x_771 : i32 = u_xlati27;
      let x_775 : vec4<f32> = x_274.x_AdditionalLightsWorldToShadow[((x_768 + 1i) / 4i)][((x_771 + 1i) % 4i)];
      u_xlat8 = (vec4<f32>(x_765.y, x_765.y, x_765.y, x_765.y) * x_775);
      let x_777 : i32 = u_xlati27;
      let x_779 : i32 = u_xlati27;
      let x_782 : vec4<f32> = x_274.x_AdditionalLightsWorldToShadow[(x_777 / 4i)][(x_779 % 4i)];
      let x_783 : vec3<f32> = vs_TEXCOORD1;
      let x_786 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_782 * vec4<f32>(x_783.x, x_783.x, x_783.x, x_783.x)) + x_786);
      let x_788 : i32 = u_xlati27;
      let x_791 : i32 = u_xlati27;
      let x_795 : vec4<f32> = x_274.x_AdditionalLightsWorldToShadow[((x_788 + 2i) / 4i)][((x_791 + 2i) % 4i)];
      let x_796 : vec3<f32> = vs_TEXCOORD1;
      let x_799 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_795 * vec4<f32>(x_796.z, x_796.z, x_796.z, x_796.z)) + x_799);
      let x_801 : vec4<f32> = u_xlat8;
      let x_802 : i32 = u_xlati27;
      let x_805 : i32 = u_xlati27;
      let x_809 : vec4<f32> = x_274.x_AdditionalLightsWorldToShadow[((x_802 + 3i) / 4i)][((x_805 + 3i) % 4i)];
      u_xlat8 = (x_801 + x_809);
      let x_811 : vec4<f32> = u_xlat8;
      let x_813 : vec4<f32> = u_xlat8;
      let x_815 : vec3<f32> = (vec3<f32>(x_811.x, x_811.y, x_811.z) / vec3<f32>(x_813.w, x_813.w, x_813.w));
      let x_816 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_815.x, x_815.y, x_815.z, x_816.w);
      let x_819 : vec4<f32> = u_xlat8;
      let x_820 : vec2<f32> = vec2<f32>(x_819.x, x_819.y);
      let x_822 : f32 = u_xlat8.z;
      txVec1 = vec3<f32>(x_820.x, x_820.y, x_822);
      let x_830 : vec3<f32> = txVec1;
      let x_832 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_830.xy, x_830.z);
      u_xlat27 = x_832;
      let x_833 : i32 = u_xlati36;
      let x_835 : f32 = x_274.x_AdditionalShadowParams[x_833].x;
      u_xlat38 = (1.0f + -(x_835));
      let x_838 : f32 = u_xlat27;
      let x_839 : i32 = u_xlati36;
      let x_841 : f32 = x_274.x_AdditionalShadowParams[x_839].x;
      let x_843 : f32 = u_xlat38;
      u_xlat27 = ((x_838 * x_841) + x_843);
      let x_846 : f32 = u_xlat8.z;
      u_xlatb38 = (0.0f >= x_846);
      let x_850 : f32 = u_xlat8.z;
      u_xlatb39 = (x_850 >= 1.0f);
      let x_852 : bool = u_xlatb38;
      let x_853 : bool = u_xlatb39;
      u_xlatb38 = (x_852 | x_853);
      let x_855 : bool = u_xlatb38;
      let x_856 : f32 = u_xlat27;
      u_xlat27 = select(x_856, 1.0f, x_855);
    } else {
      u_xlat27 = 1.0f;
    }
    let x_859 : f32 = u_xlat27;
    u_xlat38 = (-(x_859) + 1.0f);
    let x_863 : f32 = u_xlat1.x;
    let x_864 : f32 = u_xlat38;
    let x_866 : f32 = u_xlat27;
    u_xlat27 = ((x_863 * x_864) + x_866);
    let x_869 : i32 = u_xlati36;
    u_xlati38 = (1i << bitcast<u32>((x_869 & 31i)));
    let x_873 : i32 = u_xlati38;
    let x_876 : f32 = x_342.x_AdditionalLightsCookieEnableBits;
    u_xlati38 = bitcast<i32>((bitcast<u32>(x_873) & bitcast<u32>(x_876)));
    let x_880 : i32 = u_xlati38;
    if ((x_880 != 0i)) {
      let x_884 : i32 = u_xlati36;
      let x_886 : f32 = x_342.x_AdditionalLightsLightTypes[x_884].el;
      u_xlati38 = i32(x_886);
      let x_889 : i32 = u_xlati38;
      u_xlati39 = select(1i, 0i, (x_889 != 0i));
      let x_893 : i32 = u_xlati36;
      u_xlati40 = (x_893 << bitcast<u32>(2i));
      let x_895 : i32 = u_xlati39;
      if ((x_895 != 0i)) {
        let x_899 : vec3<f32> = vs_TEXCOORD1;
        let x_901 : i32 = u_xlati40;
        let x_904 : i32 = u_xlati40;
        let x_908 : vec4<f32> = x_342.x_AdditionalLightsWorldToLights[((x_901 + 1i) / 4i)][((x_904 + 1i) % 4i)];
        let x_910 : vec3<f32> = (vec3<f32>(x_899.y, x_899.y, x_899.y) * vec3<f32>(x_908.x, x_908.y, x_908.w));
        let x_911 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_910.x, x_910.y, x_910.z, x_911.w);
        let x_913 : i32 = u_xlati40;
        let x_915 : i32 = u_xlati40;
        let x_918 : vec4<f32> = x_342.x_AdditionalLightsWorldToLights[(x_913 / 4i)][(x_915 % 4i)];
        let x_920 : vec3<f32> = vs_TEXCOORD1;
        let x_923 : vec4<f32> = u_xlat8;
        let x_925 : vec3<f32> = ((vec3<f32>(x_918.x, x_918.y, x_918.w) * vec3<f32>(x_920.x, x_920.x, x_920.x)) + vec3<f32>(x_923.x, x_923.y, x_923.z));
        let x_926 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_925.x, x_925.y, x_925.z, x_926.w);
        let x_928 : i32 = u_xlati40;
        let x_931 : i32 = u_xlati40;
        let x_935 : vec4<f32> = x_342.x_AdditionalLightsWorldToLights[((x_928 + 2i) / 4i)][((x_931 + 2i) % 4i)];
        let x_937 : vec3<f32> = vs_TEXCOORD1;
        let x_940 : vec4<f32> = u_xlat8;
        let x_942 : vec3<f32> = ((vec3<f32>(x_935.x, x_935.y, x_935.w) * vec3<f32>(x_937.z, x_937.z, x_937.z)) + vec3<f32>(x_940.x, x_940.y, x_940.z));
        let x_943 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_942.x, x_942.y, x_942.z, x_943.w);
        let x_945 : vec4<f32> = u_xlat8;
        let x_947 : i32 = u_xlati40;
        let x_950 : i32 = u_xlati40;
        let x_954 : vec4<f32> = x_342.x_AdditionalLightsWorldToLights[((x_947 + 3i) / 4i)][((x_950 + 3i) % 4i)];
        let x_956 : vec3<f32> = (vec3<f32>(x_945.x, x_945.y, x_945.z) + vec3<f32>(x_954.x, x_954.y, x_954.w));
        let x_957 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_956.x, x_956.y, x_956.z, x_957.w);
        let x_959 : vec4<f32> = u_xlat8;
        let x_961 : vec4<f32> = u_xlat8;
        let x_963 : vec2<f32> = (vec2<f32>(x_959.x, x_959.y) / vec2<f32>(x_961.z, x_961.z));
        let x_964 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_963.x, x_963.y, x_964.z, x_964.w);
        let x_966 : vec4<f32> = u_xlat8;
        let x_969 : vec2<f32> = ((vec2<f32>(x_966.x, x_966.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_970 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_969.x, x_969.y, x_970.z, x_970.w);
        let x_972 : vec4<f32> = u_xlat8;
        let x_976 : vec2<f32> = clamp(vec2<f32>(x_972.x, x_972.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_977 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_976.x, x_976.y, x_977.z, x_977.w);
        let x_979 : i32 = u_xlati36;
        let x_981 : vec4<f32> = x_342.x_AdditionalLightsCookieAtlasUVRects[x_979];
        let x_983 : vec4<f32> = u_xlat8;
        let x_986 : i32 = u_xlati36;
        let x_988 : vec4<f32> = x_342.x_AdditionalLightsCookieAtlasUVRects[x_986];
        let x_990 : vec2<f32> = ((vec2<f32>(x_981.x, x_981.y) * vec2<f32>(x_983.x, x_983.y)) + vec2<f32>(x_988.z, x_988.w));
        let x_991 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_990.x, x_990.y, x_991.z, x_991.w);
      } else {
        let x_994 : i32 = u_xlati38;
        u_xlatb38 = (x_994 == 1i);
        let x_996 : bool = u_xlatb38;
        u_xlati38 = select(0i, 1i, x_996);
        let x_998 : i32 = u_xlati38;
        if ((x_998 != 0i)) {
          let x_1004 : vec3<f32> = vs_TEXCOORD1;
          let x_1006 : i32 = u_xlati40;
          let x_1009 : i32 = u_xlati40;
          let x_1013 : vec4<f32> = x_342.x_AdditionalLightsWorldToLights[((x_1006 + 1i) / 4i)][((x_1009 + 1i) % 4i)];
          u_xlat30 = (vec2<f32>(x_1004.y, x_1004.y) * vec2<f32>(x_1013.x, x_1013.y));
          let x_1016 : i32 = u_xlati40;
          let x_1018 : i32 = u_xlati40;
          let x_1021 : vec4<f32> = x_342.x_AdditionalLightsWorldToLights[(x_1016 / 4i)][(x_1018 % 4i)];
          let x_1023 : vec3<f32> = vs_TEXCOORD1;
          let x_1026 : vec2<f32> = u_xlat30;
          u_xlat30 = ((vec2<f32>(x_1021.x, x_1021.y) * vec2<f32>(x_1023.x, x_1023.x)) + x_1026);
          let x_1028 : i32 = u_xlati40;
          let x_1031 : i32 = u_xlati40;
          let x_1035 : vec4<f32> = x_342.x_AdditionalLightsWorldToLights[((x_1028 + 2i) / 4i)][((x_1031 + 2i) % 4i)];
          let x_1037 : vec3<f32> = vs_TEXCOORD1;
          let x_1040 : vec2<f32> = u_xlat30;
          u_xlat30 = ((vec2<f32>(x_1035.x, x_1035.y) * vec2<f32>(x_1037.z, x_1037.z)) + x_1040);
          let x_1042 : vec2<f32> = u_xlat30;
          let x_1043 : i32 = u_xlati40;
          let x_1046 : i32 = u_xlati40;
          let x_1050 : vec4<f32> = x_342.x_AdditionalLightsWorldToLights[((x_1043 + 3i) / 4i)][((x_1046 + 3i) % 4i)];
          u_xlat30 = (x_1042 + vec2<f32>(x_1050.x, x_1050.y));
          let x_1053 : vec2<f32> = u_xlat30;
          u_xlat30 = ((x_1053 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1056 : vec2<f32> = u_xlat30;
          u_xlat30 = fract(x_1056);
          let x_1058 : i32 = u_xlati36;
          let x_1060 : vec4<f32> = x_342.x_AdditionalLightsCookieAtlasUVRects[x_1058];
          let x_1062 : vec2<f32> = u_xlat30;
          let x_1064 : i32 = u_xlati36;
          let x_1066 : vec4<f32> = x_342.x_AdditionalLightsCookieAtlasUVRects[x_1064];
          let x_1068 : vec2<f32> = ((vec2<f32>(x_1060.x, x_1060.y) * x_1062) + vec2<f32>(x_1066.z, x_1066.w));
          let x_1069 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1068.x, x_1068.y, x_1069.z, x_1069.w);
        } else {
          let x_1073 : vec3<f32> = vs_TEXCOORD1;
          let x_1075 : i32 = u_xlati40;
          let x_1078 : i32 = u_xlati40;
          let x_1082 : vec4<f32> = x_342.x_AdditionalLightsWorldToLights[((x_1075 + 1i) / 4i)][((x_1078 + 1i) % 4i)];
          u_xlat9 = (vec4<f32>(x_1073.y, x_1073.y, x_1073.y, x_1073.y) * x_1082);
          let x_1084 : i32 = u_xlati40;
          let x_1086 : i32 = u_xlati40;
          let x_1089 : vec4<f32> = x_342.x_AdditionalLightsWorldToLights[(x_1084 / 4i)][(x_1086 % 4i)];
          let x_1090 : vec3<f32> = vs_TEXCOORD1;
          let x_1093 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_1089 * vec4<f32>(x_1090.x, x_1090.x, x_1090.x, x_1090.x)) + x_1093);
          let x_1095 : i32 = u_xlati40;
          let x_1098 : i32 = u_xlati40;
          let x_1102 : vec4<f32> = x_342.x_AdditionalLightsWorldToLights[((x_1095 + 2i) / 4i)][((x_1098 + 2i) % 4i)];
          let x_1103 : vec3<f32> = vs_TEXCOORD1;
          let x_1106 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_1102 * vec4<f32>(x_1103.z, x_1103.z, x_1103.z, x_1103.z)) + x_1106);
          let x_1108 : vec4<f32> = u_xlat9;
          let x_1109 : i32 = u_xlati40;
          let x_1112 : i32 = u_xlati40;
          let x_1116 : vec4<f32> = x_342.x_AdditionalLightsWorldToLights[((x_1109 + 3i) / 4i)][((x_1112 + 3i) % 4i)];
          u_xlat9 = (x_1108 + x_1116);
          let x_1118 : vec4<f32> = u_xlat9;
          let x_1120 : vec4<f32> = u_xlat9;
          let x_1122 : vec3<f32> = (vec3<f32>(x_1118.x, x_1118.y, x_1118.z) / vec3<f32>(x_1120.w, x_1120.w, x_1120.w));
          let x_1123 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1122.x, x_1122.y, x_1122.z, x_1123.w);
          let x_1125 : vec4<f32> = u_xlat9;
          let x_1127 : vec4<f32> = u_xlat9;
          u_xlat38 = dot(vec3<f32>(x_1125.x, x_1125.y, x_1125.z), vec3<f32>(x_1127.x, x_1127.y, x_1127.z));
          let x_1130 : f32 = u_xlat38;
          u_xlat38 = inverseSqrt(x_1130);
          let x_1132 : f32 = u_xlat38;
          let x_1134 : vec4<f32> = u_xlat9;
          let x_1136 : vec3<f32> = (vec3<f32>(x_1132, x_1132, x_1132) * vec3<f32>(x_1134.x, x_1134.y, x_1134.z));
          let x_1137 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1136.x, x_1136.y, x_1136.z, x_1137.w);
          let x_1139 : vec4<f32> = u_xlat9;
          u_xlat38 = dot(abs(vec3<f32>(x_1139.x, x_1139.y, x_1139.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1144 : f32 = u_xlat38;
          u_xlat38 = max(x_1144, 0.00000099999999747524f);
          let x_1147 : f32 = u_xlat38;
          u_xlat38 = (1.0f / x_1147);
          let x_1150 : f32 = u_xlat38;
          let x_1152 : vec4<f32> = u_xlat9;
          u_xlat10 = (vec3<f32>(x_1150, x_1150, x_1150) * vec3<f32>(x_1152.z, x_1152.x, x_1152.y));
          let x_1156 : f32 = u_xlat10.x;
          u_xlat10.x = -(x_1156);
          let x_1160 : f32 = u_xlat10.x;
          u_xlat10.x = clamp(x_1160, 0.0f, 1.0f);
          let x_1164 : vec3<f32> = u_xlat10;
          let x_1166 : vec4<bool> = (vec4<f32>(x_1164.y, x_1164.z, x_1164.y, x_1164.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb30 = vec2<bool>(x_1166.x, x_1166.y);
          let x_1169 : bool = u_xlatb30.x;
          if (x_1169) {
            let x_1174 : f32 = u_xlat10.x;
            x_1170 = x_1174;
          } else {
            let x_1177 : f32 = u_xlat10.x;
            x_1170 = -(x_1177);
          }
          let x_1179 : f32 = x_1170;
          u_xlat30.x = x_1179;
          let x_1182 : bool = u_xlatb30.y;
          if (x_1182) {
            let x_1187 : f32 = u_xlat10.x;
            x_1183 = x_1187;
          } else {
            let x_1190 : f32 = u_xlat10.x;
            x_1183 = -(x_1190);
          }
          let x_1192 : f32 = x_1183;
          u_xlat30.y = x_1192;
          let x_1194 : vec4<f32> = u_xlat9;
          let x_1196 : f32 = u_xlat38;
          let x_1199 : vec2<f32> = u_xlat30;
          u_xlat30 = ((vec2<f32>(x_1194.x, x_1194.y) * vec2<f32>(x_1196, x_1196)) + x_1199);
          let x_1201 : vec2<f32> = u_xlat30;
          u_xlat30 = ((x_1201 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1204 : vec2<f32> = u_xlat30;
          u_xlat30 = clamp(x_1204, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1208 : i32 = u_xlati36;
          let x_1210 : vec4<f32> = x_342.x_AdditionalLightsCookieAtlasUVRects[x_1208];
          let x_1212 : vec2<f32> = u_xlat30;
          let x_1214 : i32 = u_xlati36;
          let x_1216 : vec4<f32> = x_342.x_AdditionalLightsCookieAtlasUVRects[x_1214];
          let x_1218 : vec2<f32> = ((vec2<f32>(x_1210.x, x_1210.y) * x_1212) + vec2<f32>(x_1216.z, x_1216.w));
          let x_1219 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1218.x, x_1218.y, x_1219.z, x_1219.w);
        }
      }
      let x_1226 : vec4<f32> = u_xlat8;
      let x_1228 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_1226.x, x_1226.y), 0.0f);
      u_xlat8 = x_1228;
      let x_1230 : bool = u_xlatb5.y;
      if (x_1230) {
        let x_1235 : f32 = u_xlat8.w;
        x_1231 = x_1235;
      } else {
        let x_1238 : f32 = u_xlat8.x;
        x_1231 = x_1238;
      }
      let x_1239 : f32 = x_1231;
      u_xlat38 = x_1239;
      let x_1241 : bool = u_xlatb5.x;
      if (x_1241) {
        let x_1245 : vec4<f32> = u_xlat8;
        x_1242 = vec3<f32>(x_1245.x, x_1245.y, x_1245.z);
      } else {
        let x_1248 : f32 = u_xlat38;
        x_1242 = vec3<f32>(x_1248, x_1248, x_1248);
      }
      let x_1250 : vec3<f32> = x_1242;
      let x_1251 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_1250.x, x_1250.y, x_1250.z, x_1251.w);
    } else {
      u_xlat8.x = 1.0f;
      u_xlat8.y = 1.0f;
      u_xlat8.z = 1.0f;
    }
    let x_1257 : vec4<f32> = u_xlat8;
    let x_1259 : i32 = u_xlati36;
    let x_1261 : vec4<f32> = x_602.x_AdditionalLightsColor[x_1259];
    let x_1263 : vec3<f32> = (vec3<f32>(x_1257.x, x_1257.y, x_1257.z) * vec3<f32>(x_1261.x, x_1261.y, x_1261.z));
    let x_1264 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1263.x, x_1263.y, x_1263.z, x_1264.w);
    let x_1266 : f32 = u_xlat37;
    let x_1267 : f32 = u_xlat27;
    u_xlat36 = (x_1266 * x_1267);
    let x_1269 : f32 = u_xlat36;
    let x_1271 : vec4<f32> = u_xlat8;
    let x_1273 : vec3<f32> = (vec3<f32>(x_1269, x_1269, x_1269) * vec3<f32>(x_1271.x, x_1271.y, x_1271.z));
    let x_1274 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1273.x, x_1273.y, x_1273.z, x_1274.w);
    let x_1276 : vec3<f32> = u_xlat2;
    let x_1277 : vec3<f32> = u_xlat7;
    u_xlat36 = dot(x_1276, x_1277);
    let x_1279 : f32 = u_xlat36;
    u_xlat36 = clamp(x_1279, 0.0f, 1.0f);
    let x_1281 : f32 = u_xlat36;
    let x_1283 : vec4<f32> = u_xlat8;
    u_xlat7 = (vec3<f32>(x_1281, x_1281, x_1281) * vec3<f32>(x_1283.x, x_1283.y, x_1283.z));
    let x_1286 : vec4<f32> = u_xlat1;
    let x_1288 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_1286.y, x_1286.z, x_1286.w) * x_1288);
    let x_1290 : vec3<f32> = u_xlat7;
    let x_1291 : vec4<f32> = u_xlat0;
    let x_1294 : vec3<f32> = u_xlat6;
    u_xlat6 = ((x_1290 * vec3<f32>(x_1291.x, x_1291.x, x_1291.x)) + x_1294);

    continuing {
      let x_1296 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1296 + bitcast<u32>(1i));
    }
  }
  let x_1298 : vec4<f32> = u_xlat3;
  let x_1300 : vec4<f32> = u_xlat1;
  let x_1303 : vec4<f32> = u_xlat4;
  let x_1305 : vec3<f32> = ((vec3<f32>(x_1298.x, x_1298.y, x_1298.z) * vec3<f32>(x_1300.y, x_1300.z, x_1300.w)) + vec3<f32>(x_1303.x, x_1303.y, x_1303.z));
  let x_1306 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1305.x, x_1305.y, x_1305.z, x_1306.w);
  let x_1308 : vec3<f32> = u_xlat6;
  let x_1309 : vec4<f32> = u_xlat1;
  let x_1311 : vec3<f32> = (x_1308 + vec3<f32>(x_1309.x, x_1309.y, x_1309.z));
  let x_1312 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1311.x, x_1311.y, x_1311.z, x_1312.w);
  let x_1314 : f32 = u_xlat11;
  let x_1315 : f32 = u_xlat11;
  u_xlat11 = (x_1314 * -(x_1315));
  let x_1318 : f32 = u_xlat11;
  u_xlat11 = exp2(x_1318);
  let x_1320 : vec4<f32> = u_xlat1;
  let x_1323 : vec4<f32> = x_28.unity_FogColor;
  let x_1326 : vec3<f32> = (vec3<f32>(x_1320.x, x_1320.y, x_1320.z) + -(vec3<f32>(x_1323.x, x_1323.y, x_1323.z)));
  let x_1327 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1326.x, x_1326.y, x_1326.z, x_1327.w);
  let x_1331 : f32 = u_xlat11;
  let x_1333 : vec4<f32> = u_xlat1;
  let x_1337 : vec4<f32> = x_28.unity_FogColor;
  let x_1339 : vec3<f32> = ((vec3<f32>(x_1331, x_1331, x_1331) * vec3<f32>(x_1333.x, x_1333.y, x_1333.z)) + vec3<f32>(x_1337.x, x_1337.y, x_1337.z));
  let x_1340 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1339.x, x_1339.y, x_1339.z, x_1340.w);
  let x_1343 : f32 = x_42.x_Surface;
  u_xlatb11 = (x_1343 == 1.0f);
  let x_1345 : bool = u_xlatb11;
  let x_1346 : bool = u_xlatb22;
  u_xlatb11 = (x_1345 | x_1346);
  let x_1348 : bool = u_xlatb11;
  if (x_1348) {
    let x_1353 : f32 = u_xlat0.x;
    x_1349 = x_1353;
  } else {
    x_1349 = 1.0f;
  }
  let x_1355 : f32 = x_1349;
  SV_Target0.w = x_1355;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(4) vs_TEXCOORD7_param : vec2<f32>, @location(3) vs_TEXCOORD6_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


