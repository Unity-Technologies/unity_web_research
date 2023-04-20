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

@group(1) @binding(1) var<uniform> x_595 : AdditionalLights;

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
  var x_729 : f32;
  var x_739 : f32;
  var txVec1 : vec3<f32>;
  var x_1163 : f32;
  var x_1176 : f32;
  var x_1224 : f32;
  var x_1235 : vec3<f32>;
  var x_1338 : f32;
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
  let x_499 : f32 = x_28.x_AdditionalLightsCount.x;
  let x_501 : f32 = x_466.unity_LightData.y;
  u_xlat33 = min(x_499, x_501);
  let x_505 : f32 = u_xlat33;
  u_xlatu33 = bitcast<u32>(i32(x_505));
  let x_509 : f32 = u_xlat1.x;
  let x_512 : f32 = x_274.x_AdditionalShadowFadeParams.x;
  let x_515 : f32 = x_274.x_AdditionalShadowFadeParams.y;
  u_xlat1.x = ((x_509 * x_512) + x_515);
  let x_519 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_519, 0.0f, 1.0f);
  let x_523 : f32 = x_342.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_525 : f32 = x_342.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_527 : f32 = x_342.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_529 : f32 = x_342.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_530 : vec4<f32> = vec4<f32>(x_523, x_525, x_527, x_529);
  let x_536 : vec4<bool> = (vec4<f32>(x_530.x, x_530.y, x_530.z, x_530.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb5 = vec2<bool>(x_536.x, x_536.y);
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_549 : u32 = u_xlatu_loop_1;
    let x_550 : u32 = u_xlatu33;
    if ((x_549 < x_550)) {
    } else {
      break;
    }
    let x_553 : u32 = u_xlatu_loop_1;
    u_xlatu36 = (x_553 >> 2u);
    let x_557 : u32 = u_xlatu_loop_1;
    u_xlati37 = bitcast<i32>((x_557 & 3u));
    let x_560 : u32 = u_xlatu36;
    let x_563 : vec4<f32> = x_466.unity_LightIndices[bitcast<i32>(x_560)];
    let x_573 : i32 = u_xlati37;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_578 : vec4<u32> = indexable[x_573];
    u_xlat36 = dot(x_563, bitcast<vec4<f32>>(x_578));
    let x_582 : f32 = u_xlat36;
    u_xlati36 = i32(x_582);
    let x_585 : vec3<f32> = vs_TEXCOORD1;
    let x_596 : i32 = u_xlati36;
    let x_598 : vec4<f32> = x_595.x_AdditionalLightsPosition[x_596];
    let x_601 : i32 = u_xlati36;
    let x_603 : vec4<f32> = x_595.x_AdditionalLightsPosition[x_601];
    u_xlat7 = ((-(x_585) * vec3<f32>(x_598.w, x_598.w, x_598.w)) + vec3<f32>(x_603.x, x_603.y, x_603.z));
    let x_607 : vec3<f32> = u_xlat7;
    let x_608 : vec3<f32> = u_xlat7;
    u_xlat37 = dot(x_607, x_608);
    let x_610 : f32 = u_xlat37;
    u_xlat37 = max(x_610, 0.00006103515625f);
    let x_614 : f32 = u_xlat37;
    u_xlat27 = inverseSqrt(x_614);
    let x_616 : f32 = u_xlat27;
    let x_618 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_616, x_616, x_616) * x_618);
    let x_620 : f32 = u_xlat37;
    u_xlat27 = (1.0f / x_620);
    let x_622 : f32 = u_xlat37;
    let x_623 : i32 = u_xlati36;
    let x_625 : f32 = x_595.x_AdditionalLightsAttenuation[x_623].x;
    u_xlat37 = (x_622 * x_625);
    let x_627 : f32 = u_xlat37;
    let x_629 : f32 = u_xlat37;
    u_xlat37 = ((-(x_627) * x_629) + 1.0f);
    let x_632 : f32 = u_xlat37;
    u_xlat37 = max(x_632, 0.0f);
    let x_634 : f32 = u_xlat37;
    let x_635 : f32 = u_xlat37;
    u_xlat37 = (x_634 * x_635);
    let x_637 : f32 = u_xlat37;
    let x_638 : f32 = u_xlat27;
    u_xlat37 = (x_637 * x_638);
    let x_640 : i32 = u_xlati36;
    let x_642 : vec4<f32> = x_595.x_AdditionalLightsSpotDir[x_640];
    let x_644 : vec3<f32> = u_xlat7;
    u_xlat27 = dot(vec3<f32>(x_642.x, x_642.y, x_642.z), x_644);
    let x_646 : f32 = u_xlat27;
    let x_647 : i32 = u_xlati36;
    let x_649 : f32 = x_595.x_AdditionalLightsAttenuation[x_647].z;
    let x_651 : i32 = u_xlati36;
    let x_653 : f32 = x_595.x_AdditionalLightsAttenuation[x_651].w;
    u_xlat27 = ((x_646 * x_649) + x_653);
    let x_655 : f32 = u_xlat27;
    u_xlat27 = clamp(x_655, 0.0f, 1.0f);
    let x_657 : f32 = u_xlat27;
    let x_658 : f32 = u_xlat27;
    u_xlat27 = (x_657 * x_658);
    let x_660 : f32 = u_xlat37;
    let x_661 : f32 = u_xlat27;
    u_xlat37 = (x_660 * x_661);
    let x_665 : i32 = u_xlati36;
    let x_667 : f32 = x_274.x_AdditionalShadowParams[x_665].w;
    u_xlati27 = i32(x_667);
    let x_670 : i32 = u_xlati27;
    u_xlatb38 = (x_670 >= 0i);
    let x_672 : bool = u_xlatb38;
    if (x_672) {
      let x_676 : i32 = u_xlati36;
      let x_678 : f32 = x_274.x_AdditionalShadowParams[x_676].z;
      u_xlatb38 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_678, x_678, x_678, x_678))));
      let x_682 : bool = u_xlatb38;
      if (x_682) {
        let x_687 : vec3<f32> = u_xlat7;
        let x_690 : vec3<f32> = u_xlat7;
        let x_693 : vec4<bool> = (abs(vec4<f32>(x_687.z, x_687.z, x_687.y, x_687.z)) >= abs(vec4<f32>(x_690.x, x_690.y, x_690.x, x_690.x)));
        let x_695 : vec3<bool> = vec3<bool>(x_693.x, x_693.y, x_693.z);
        let x_696 : vec4<bool> = u_xlatb8;
        u_xlatb8 = vec4<bool>(x_695.x, x_695.y, x_695.z, x_696.w);
        let x_699 : bool = u_xlatb8.y;
        let x_701 : bool = u_xlatb8.x;
        u_xlatb38 = (x_699 & x_701);
        let x_703 : vec3<f32> = u_xlat7;
        let x_706 : vec4<bool> = (-(vec4<f32>(x_703.z, x_703.y, x_703.z, x_703.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_707 : vec3<bool> = vec3<bool>(x_706.x, x_706.y, x_706.w);
        let x_708 : vec4<bool> = u_xlatb8;
        u_xlatb8 = vec4<bool>(x_707.x, x_707.y, x_708.z, x_707.z);
        let x_712 : bool = u_xlatb8.x;
        u_xlat8.x = select(4.0f, 5.0f, x_712);
        let x_718 : bool = u_xlatb8.y;
        u_xlat8.y = select(2.0f, 3.0f, x_718);
        let x_725 : bool = u_xlatb8.w;
        u_xlat39 = select(0.0f, 1.0f, x_725);
        let x_728 : bool = u_xlatb8.z;
        if (x_728) {
          let x_733 : f32 = u_xlat8.y;
          x_729 = x_733;
        } else {
          let x_735 : f32 = u_xlat39;
          x_729 = x_735;
        }
        let x_736 : f32 = x_729;
        u_xlat39 = x_736;
        let x_738 : bool = u_xlatb38;
        if (x_738) {
          let x_743 : f32 = u_xlat8.x;
          x_739 = x_743;
        } else {
          let x_745 : f32 = u_xlat39;
          x_739 = x_745;
        }
        let x_746 : f32 = x_739;
        u_xlat38 = x_746;
        let x_747 : i32 = u_xlati36;
        let x_749 : f32 = x_274.x_AdditionalShadowParams[x_747].w;
        u_xlat39 = trunc(x_749);
        let x_751 : f32 = u_xlat38;
        let x_752 : f32 = u_xlat39;
        u_xlat38 = (x_751 + x_752);
        let x_754 : f32 = u_xlat38;
        u_xlati27 = i32(x_754);
      }
      let x_756 : i32 = u_xlati27;
      u_xlati27 = (x_756 << bitcast<u32>(2i));
      let x_758 : vec3<f32> = vs_TEXCOORD1;
      let x_761 : i32 = u_xlati27;
      let x_764 : i32 = u_xlati27;
      let x_768 : vec4<f32> = x_274.x_AdditionalLightsWorldToShadow[((x_761 + 1i) / 4i)][((x_764 + 1i) % 4i)];
      u_xlat8 = (vec4<f32>(x_758.y, x_758.y, x_758.y, x_758.y) * x_768);
      let x_770 : i32 = u_xlati27;
      let x_772 : i32 = u_xlati27;
      let x_775 : vec4<f32> = x_274.x_AdditionalLightsWorldToShadow[(x_770 / 4i)][(x_772 % 4i)];
      let x_776 : vec3<f32> = vs_TEXCOORD1;
      let x_779 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_775 * vec4<f32>(x_776.x, x_776.x, x_776.x, x_776.x)) + x_779);
      let x_781 : i32 = u_xlati27;
      let x_784 : i32 = u_xlati27;
      let x_788 : vec4<f32> = x_274.x_AdditionalLightsWorldToShadow[((x_781 + 2i) / 4i)][((x_784 + 2i) % 4i)];
      let x_789 : vec3<f32> = vs_TEXCOORD1;
      let x_792 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_788 * vec4<f32>(x_789.z, x_789.z, x_789.z, x_789.z)) + x_792);
      let x_794 : vec4<f32> = u_xlat8;
      let x_795 : i32 = u_xlati27;
      let x_798 : i32 = u_xlati27;
      let x_802 : vec4<f32> = x_274.x_AdditionalLightsWorldToShadow[((x_795 + 3i) / 4i)][((x_798 + 3i) % 4i)];
      u_xlat8 = (x_794 + x_802);
      let x_804 : vec4<f32> = u_xlat8;
      let x_806 : vec4<f32> = u_xlat8;
      let x_808 : vec3<f32> = (vec3<f32>(x_804.x, x_804.y, x_804.z) / vec3<f32>(x_806.w, x_806.w, x_806.w));
      let x_809 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_808.x, x_808.y, x_808.z, x_809.w);
      let x_812 : vec4<f32> = u_xlat8;
      let x_813 : vec2<f32> = vec2<f32>(x_812.x, x_812.y);
      let x_815 : f32 = u_xlat8.z;
      txVec1 = vec3<f32>(x_813.x, x_813.y, x_815);
      let x_823 : vec3<f32> = txVec1;
      let x_825 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_823.xy, x_823.z);
      u_xlat27 = x_825;
      let x_826 : i32 = u_xlati36;
      let x_828 : f32 = x_274.x_AdditionalShadowParams[x_826].x;
      u_xlat38 = (1.0f + -(x_828));
      let x_831 : f32 = u_xlat27;
      let x_832 : i32 = u_xlati36;
      let x_834 : f32 = x_274.x_AdditionalShadowParams[x_832].x;
      let x_836 : f32 = u_xlat38;
      u_xlat27 = ((x_831 * x_834) + x_836);
      let x_839 : f32 = u_xlat8.z;
      u_xlatb38 = (0.0f >= x_839);
      let x_843 : f32 = u_xlat8.z;
      u_xlatb39 = (x_843 >= 1.0f);
      let x_845 : bool = u_xlatb38;
      let x_846 : bool = u_xlatb39;
      u_xlatb38 = (x_845 | x_846);
      let x_848 : bool = u_xlatb38;
      let x_849 : f32 = u_xlat27;
      u_xlat27 = select(x_849, 1.0f, x_848);
    } else {
      u_xlat27 = 1.0f;
    }
    let x_852 : f32 = u_xlat27;
    u_xlat38 = (-(x_852) + 1.0f);
    let x_856 : f32 = u_xlat1.x;
    let x_857 : f32 = u_xlat38;
    let x_859 : f32 = u_xlat27;
    u_xlat27 = ((x_856 * x_857) + x_859);
    let x_862 : i32 = u_xlati36;
    u_xlati38 = (1i << bitcast<u32>((x_862 & 31i)));
    let x_866 : i32 = u_xlati38;
    let x_869 : f32 = x_342.x_AdditionalLightsCookieEnableBits;
    u_xlati38 = bitcast<i32>((bitcast<u32>(x_866) & bitcast<u32>(x_869)));
    let x_873 : i32 = u_xlati38;
    if ((x_873 != 0i)) {
      let x_877 : i32 = u_xlati36;
      let x_879 : f32 = x_342.x_AdditionalLightsLightTypes[x_877].el;
      u_xlati38 = i32(x_879);
      let x_882 : i32 = u_xlati38;
      u_xlati39 = select(1i, 0i, (x_882 != 0i));
      let x_886 : i32 = u_xlati36;
      u_xlati40 = (x_886 << bitcast<u32>(2i));
      let x_888 : i32 = u_xlati39;
      if ((x_888 != 0i)) {
        let x_892 : vec3<f32> = vs_TEXCOORD1;
        let x_894 : i32 = u_xlati40;
        let x_897 : i32 = u_xlati40;
        let x_901 : vec4<f32> = x_342.x_AdditionalLightsWorldToLights[((x_894 + 1i) / 4i)][((x_897 + 1i) % 4i)];
        let x_903 : vec3<f32> = (vec3<f32>(x_892.y, x_892.y, x_892.y) * vec3<f32>(x_901.x, x_901.y, x_901.w));
        let x_904 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_903.x, x_903.y, x_903.z, x_904.w);
        let x_906 : i32 = u_xlati40;
        let x_908 : i32 = u_xlati40;
        let x_911 : vec4<f32> = x_342.x_AdditionalLightsWorldToLights[(x_906 / 4i)][(x_908 % 4i)];
        let x_913 : vec3<f32> = vs_TEXCOORD1;
        let x_916 : vec4<f32> = u_xlat8;
        let x_918 : vec3<f32> = ((vec3<f32>(x_911.x, x_911.y, x_911.w) * vec3<f32>(x_913.x, x_913.x, x_913.x)) + vec3<f32>(x_916.x, x_916.y, x_916.z));
        let x_919 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_918.x, x_918.y, x_918.z, x_919.w);
        let x_921 : i32 = u_xlati40;
        let x_924 : i32 = u_xlati40;
        let x_928 : vec4<f32> = x_342.x_AdditionalLightsWorldToLights[((x_921 + 2i) / 4i)][((x_924 + 2i) % 4i)];
        let x_930 : vec3<f32> = vs_TEXCOORD1;
        let x_933 : vec4<f32> = u_xlat8;
        let x_935 : vec3<f32> = ((vec3<f32>(x_928.x, x_928.y, x_928.w) * vec3<f32>(x_930.z, x_930.z, x_930.z)) + vec3<f32>(x_933.x, x_933.y, x_933.z));
        let x_936 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_935.x, x_935.y, x_935.z, x_936.w);
        let x_938 : vec4<f32> = u_xlat8;
        let x_940 : i32 = u_xlati40;
        let x_943 : i32 = u_xlati40;
        let x_947 : vec4<f32> = x_342.x_AdditionalLightsWorldToLights[((x_940 + 3i) / 4i)][((x_943 + 3i) % 4i)];
        let x_949 : vec3<f32> = (vec3<f32>(x_938.x, x_938.y, x_938.z) + vec3<f32>(x_947.x, x_947.y, x_947.w));
        let x_950 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_949.x, x_949.y, x_949.z, x_950.w);
        let x_952 : vec4<f32> = u_xlat8;
        let x_954 : vec4<f32> = u_xlat8;
        let x_956 : vec2<f32> = (vec2<f32>(x_952.x, x_952.y) / vec2<f32>(x_954.z, x_954.z));
        let x_957 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_956.x, x_956.y, x_957.z, x_957.w);
        let x_959 : vec4<f32> = u_xlat8;
        let x_962 : vec2<f32> = ((vec2<f32>(x_959.x, x_959.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_963 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_962.x, x_962.y, x_963.z, x_963.w);
        let x_965 : vec4<f32> = u_xlat8;
        let x_969 : vec2<f32> = clamp(vec2<f32>(x_965.x, x_965.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_970 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_969.x, x_969.y, x_970.z, x_970.w);
        let x_972 : i32 = u_xlati36;
        let x_974 : vec4<f32> = x_342.x_AdditionalLightsCookieAtlasUVRects[x_972];
        let x_976 : vec4<f32> = u_xlat8;
        let x_979 : i32 = u_xlati36;
        let x_981 : vec4<f32> = x_342.x_AdditionalLightsCookieAtlasUVRects[x_979];
        let x_983 : vec2<f32> = ((vec2<f32>(x_974.x, x_974.y) * vec2<f32>(x_976.x, x_976.y)) + vec2<f32>(x_981.z, x_981.w));
        let x_984 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_983.x, x_983.y, x_984.z, x_984.w);
      } else {
        let x_987 : i32 = u_xlati38;
        u_xlatb38 = (x_987 == 1i);
        let x_989 : bool = u_xlatb38;
        u_xlati38 = select(0i, 1i, x_989);
        let x_991 : i32 = u_xlati38;
        if ((x_991 != 0i)) {
          let x_997 : vec3<f32> = vs_TEXCOORD1;
          let x_999 : i32 = u_xlati40;
          let x_1002 : i32 = u_xlati40;
          let x_1006 : vec4<f32> = x_342.x_AdditionalLightsWorldToLights[((x_999 + 1i) / 4i)][((x_1002 + 1i) % 4i)];
          u_xlat30 = (vec2<f32>(x_997.y, x_997.y) * vec2<f32>(x_1006.x, x_1006.y));
          let x_1009 : i32 = u_xlati40;
          let x_1011 : i32 = u_xlati40;
          let x_1014 : vec4<f32> = x_342.x_AdditionalLightsWorldToLights[(x_1009 / 4i)][(x_1011 % 4i)];
          let x_1016 : vec3<f32> = vs_TEXCOORD1;
          let x_1019 : vec2<f32> = u_xlat30;
          u_xlat30 = ((vec2<f32>(x_1014.x, x_1014.y) * vec2<f32>(x_1016.x, x_1016.x)) + x_1019);
          let x_1021 : i32 = u_xlati40;
          let x_1024 : i32 = u_xlati40;
          let x_1028 : vec4<f32> = x_342.x_AdditionalLightsWorldToLights[((x_1021 + 2i) / 4i)][((x_1024 + 2i) % 4i)];
          let x_1030 : vec3<f32> = vs_TEXCOORD1;
          let x_1033 : vec2<f32> = u_xlat30;
          u_xlat30 = ((vec2<f32>(x_1028.x, x_1028.y) * vec2<f32>(x_1030.z, x_1030.z)) + x_1033);
          let x_1035 : vec2<f32> = u_xlat30;
          let x_1036 : i32 = u_xlati40;
          let x_1039 : i32 = u_xlati40;
          let x_1043 : vec4<f32> = x_342.x_AdditionalLightsWorldToLights[((x_1036 + 3i) / 4i)][((x_1039 + 3i) % 4i)];
          u_xlat30 = (x_1035 + vec2<f32>(x_1043.x, x_1043.y));
          let x_1046 : vec2<f32> = u_xlat30;
          u_xlat30 = ((x_1046 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1049 : vec2<f32> = u_xlat30;
          u_xlat30 = fract(x_1049);
          let x_1051 : i32 = u_xlati36;
          let x_1053 : vec4<f32> = x_342.x_AdditionalLightsCookieAtlasUVRects[x_1051];
          let x_1055 : vec2<f32> = u_xlat30;
          let x_1057 : i32 = u_xlati36;
          let x_1059 : vec4<f32> = x_342.x_AdditionalLightsCookieAtlasUVRects[x_1057];
          let x_1061 : vec2<f32> = ((vec2<f32>(x_1053.x, x_1053.y) * x_1055) + vec2<f32>(x_1059.z, x_1059.w));
          let x_1062 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1061.x, x_1061.y, x_1062.z, x_1062.w);
        } else {
          let x_1066 : vec3<f32> = vs_TEXCOORD1;
          let x_1068 : i32 = u_xlati40;
          let x_1071 : i32 = u_xlati40;
          let x_1075 : vec4<f32> = x_342.x_AdditionalLightsWorldToLights[((x_1068 + 1i) / 4i)][((x_1071 + 1i) % 4i)];
          u_xlat9 = (vec4<f32>(x_1066.y, x_1066.y, x_1066.y, x_1066.y) * x_1075);
          let x_1077 : i32 = u_xlati40;
          let x_1079 : i32 = u_xlati40;
          let x_1082 : vec4<f32> = x_342.x_AdditionalLightsWorldToLights[(x_1077 / 4i)][(x_1079 % 4i)];
          let x_1083 : vec3<f32> = vs_TEXCOORD1;
          let x_1086 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_1082 * vec4<f32>(x_1083.x, x_1083.x, x_1083.x, x_1083.x)) + x_1086);
          let x_1088 : i32 = u_xlati40;
          let x_1091 : i32 = u_xlati40;
          let x_1095 : vec4<f32> = x_342.x_AdditionalLightsWorldToLights[((x_1088 + 2i) / 4i)][((x_1091 + 2i) % 4i)];
          let x_1096 : vec3<f32> = vs_TEXCOORD1;
          let x_1099 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_1095 * vec4<f32>(x_1096.z, x_1096.z, x_1096.z, x_1096.z)) + x_1099);
          let x_1101 : vec4<f32> = u_xlat9;
          let x_1102 : i32 = u_xlati40;
          let x_1105 : i32 = u_xlati40;
          let x_1109 : vec4<f32> = x_342.x_AdditionalLightsWorldToLights[((x_1102 + 3i) / 4i)][((x_1105 + 3i) % 4i)];
          u_xlat9 = (x_1101 + x_1109);
          let x_1111 : vec4<f32> = u_xlat9;
          let x_1113 : vec4<f32> = u_xlat9;
          let x_1115 : vec3<f32> = (vec3<f32>(x_1111.x, x_1111.y, x_1111.z) / vec3<f32>(x_1113.w, x_1113.w, x_1113.w));
          let x_1116 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1115.x, x_1115.y, x_1115.z, x_1116.w);
          let x_1118 : vec4<f32> = u_xlat9;
          let x_1120 : vec4<f32> = u_xlat9;
          u_xlat38 = dot(vec3<f32>(x_1118.x, x_1118.y, x_1118.z), vec3<f32>(x_1120.x, x_1120.y, x_1120.z));
          let x_1123 : f32 = u_xlat38;
          u_xlat38 = inverseSqrt(x_1123);
          let x_1125 : f32 = u_xlat38;
          let x_1127 : vec4<f32> = u_xlat9;
          let x_1129 : vec3<f32> = (vec3<f32>(x_1125, x_1125, x_1125) * vec3<f32>(x_1127.x, x_1127.y, x_1127.z));
          let x_1130 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1129.x, x_1129.y, x_1129.z, x_1130.w);
          let x_1132 : vec4<f32> = u_xlat9;
          u_xlat38 = dot(abs(vec3<f32>(x_1132.x, x_1132.y, x_1132.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1137 : f32 = u_xlat38;
          u_xlat38 = max(x_1137, 0.00000099999999747524f);
          let x_1140 : f32 = u_xlat38;
          u_xlat38 = (1.0f / x_1140);
          let x_1143 : f32 = u_xlat38;
          let x_1145 : vec4<f32> = u_xlat9;
          u_xlat10 = (vec3<f32>(x_1143, x_1143, x_1143) * vec3<f32>(x_1145.z, x_1145.x, x_1145.y));
          let x_1149 : f32 = u_xlat10.x;
          u_xlat10.x = -(x_1149);
          let x_1153 : f32 = u_xlat10.x;
          u_xlat10.x = clamp(x_1153, 0.0f, 1.0f);
          let x_1157 : vec3<f32> = u_xlat10;
          let x_1159 : vec4<bool> = (vec4<f32>(x_1157.y, x_1157.z, x_1157.y, x_1157.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb30 = vec2<bool>(x_1159.x, x_1159.y);
          let x_1162 : bool = u_xlatb30.x;
          if (x_1162) {
            let x_1167 : f32 = u_xlat10.x;
            x_1163 = x_1167;
          } else {
            let x_1170 : f32 = u_xlat10.x;
            x_1163 = -(x_1170);
          }
          let x_1172 : f32 = x_1163;
          u_xlat30.x = x_1172;
          let x_1175 : bool = u_xlatb30.y;
          if (x_1175) {
            let x_1180 : f32 = u_xlat10.x;
            x_1176 = x_1180;
          } else {
            let x_1183 : f32 = u_xlat10.x;
            x_1176 = -(x_1183);
          }
          let x_1185 : f32 = x_1176;
          u_xlat30.y = x_1185;
          let x_1187 : vec4<f32> = u_xlat9;
          let x_1189 : f32 = u_xlat38;
          let x_1192 : vec2<f32> = u_xlat30;
          u_xlat30 = ((vec2<f32>(x_1187.x, x_1187.y) * vec2<f32>(x_1189, x_1189)) + x_1192);
          let x_1194 : vec2<f32> = u_xlat30;
          u_xlat30 = ((x_1194 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1197 : vec2<f32> = u_xlat30;
          u_xlat30 = clamp(x_1197, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1201 : i32 = u_xlati36;
          let x_1203 : vec4<f32> = x_342.x_AdditionalLightsCookieAtlasUVRects[x_1201];
          let x_1205 : vec2<f32> = u_xlat30;
          let x_1207 : i32 = u_xlati36;
          let x_1209 : vec4<f32> = x_342.x_AdditionalLightsCookieAtlasUVRects[x_1207];
          let x_1211 : vec2<f32> = ((vec2<f32>(x_1203.x, x_1203.y) * x_1205) + vec2<f32>(x_1209.z, x_1209.w));
          let x_1212 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1211.x, x_1211.y, x_1212.z, x_1212.w);
        }
      }
      let x_1219 : vec4<f32> = u_xlat8;
      let x_1221 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_1219.x, x_1219.y), 0.0f);
      u_xlat8 = x_1221;
      let x_1223 : bool = u_xlatb5.y;
      if (x_1223) {
        let x_1228 : f32 = u_xlat8.w;
        x_1224 = x_1228;
      } else {
        let x_1231 : f32 = u_xlat8.x;
        x_1224 = x_1231;
      }
      let x_1232 : f32 = x_1224;
      u_xlat38 = x_1232;
      let x_1234 : bool = u_xlatb5.x;
      if (x_1234) {
        let x_1238 : vec4<f32> = u_xlat8;
        x_1235 = vec3<f32>(x_1238.x, x_1238.y, x_1238.z);
      } else {
        let x_1241 : f32 = u_xlat38;
        x_1235 = vec3<f32>(x_1241, x_1241, x_1241);
      }
      let x_1243 : vec3<f32> = x_1235;
      let x_1244 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_1243.x, x_1243.y, x_1243.z, x_1244.w);
    } else {
      u_xlat8.x = 1.0f;
      u_xlat8.y = 1.0f;
      u_xlat8.z = 1.0f;
    }
    let x_1250 : vec4<f32> = u_xlat8;
    let x_1252 : i32 = u_xlati36;
    let x_1254 : vec4<f32> = x_595.x_AdditionalLightsColor[x_1252];
    let x_1256 : vec3<f32> = (vec3<f32>(x_1250.x, x_1250.y, x_1250.z) * vec3<f32>(x_1254.x, x_1254.y, x_1254.z));
    let x_1257 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1256.x, x_1256.y, x_1256.z, x_1257.w);
    let x_1259 : f32 = u_xlat37;
    let x_1260 : f32 = u_xlat27;
    u_xlat36 = (x_1259 * x_1260);
    let x_1262 : f32 = u_xlat36;
    let x_1264 : vec4<f32> = u_xlat8;
    let x_1266 : vec3<f32> = (vec3<f32>(x_1262, x_1262, x_1262) * vec3<f32>(x_1264.x, x_1264.y, x_1264.z));
    let x_1267 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1266.x, x_1266.y, x_1266.z, x_1267.w);
    let x_1269 : vec3<f32> = u_xlat2;
    let x_1270 : vec3<f32> = u_xlat7;
    u_xlat36 = dot(x_1269, x_1270);
    let x_1272 : f32 = u_xlat36;
    u_xlat36 = clamp(x_1272, 0.0f, 1.0f);
    let x_1274 : f32 = u_xlat36;
    let x_1276 : vec4<f32> = u_xlat8;
    u_xlat7 = (vec3<f32>(x_1274, x_1274, x_1274) * vec3<f32>(x_1276.x, x_1276.y, x_1276.z));
    let x_1279 : vec3<f32> = u_xlat7;
    let x_1280 : vec4<f32> = u_xlat1;
    let x_1283 : vec3<f32> = u_xlat6;
    u_xlat6 = ((x_1279 * vec3<f32>(x_1280.y, x_1280.z, x_1280.w)) + x_1283);

    continuing {
      let x_1285 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1285 + bitcast<u32>(1i));
    }
  }
  let x_1287 : vec4<f32> = u_xlat3;
  let x_1289 : vec4<f32> = u_xlat1;
  let x_1292 : vec4<f32> = u_xlat4;
  let x_1294 : vec3<f32> = ((vec3<f32>(x_1287.x, x_1287.y, x_1287.z) * vec3<f32>(x_1289.y, x_1289.z, x_1289.w)) + vec3<f32>(x_1292.x, x_1292.y, x_1292.z));
  let x_1295 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1294.x, x_1294.y, x_1294.z, x_1295.w);
  let x_1297 : vec3<f32> = u_xlat6;
  let x_1298 : vec4<f32> = u_xlat1;
  let x_1300 : vec3<f32> = (x_1297 + vec3<f32>(x_1298.x, x_1298.y, x_1298.z));
  let x_1301 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1300.x, x_1300.y, x_1300.z, x_1301.w);
  let x_1303 : f32 = u_xlat11;
  let x_1304 : f32 = u_xlat11;
  u_xlat11 = (x_1303 * -(x_1304));
  let x_1307 : f32 = u_xlat11;
  u_xlat11 = exp2(x_1307);
  let x_1309 : vec4<f32> = u_xlat1;
  let x_1312 : vec4<f32> = x_28.unity_FogColor;
  let x_1315 : vec3<f32> = (vec3<f32>(x_1309.x, x_1309.y, x_1309.z) + -(vec3<f32>(x_1312.x, x_1312.y, x_1312.z)));
  let x_1316 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1315.x, x_1315.y, x_1315.z, x_1316.w);
  let x_1320 : f32 = u_xlat11;
  let x_1322 : vec4<f32> = u_xlat1;
  let x_1326 : vec4<f32> = x_28.unity_FogColor;
  let x_1328 : vec3<f32> = ((vec3<f32>(x_1320, x_1320, x_1320) * vec3<f32>(x_1322.x, x_1322.y, x_1322.z)) + vec3<f32>(x_1326.x, x_1326.y, x_1326.z));
  let x_1329 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1328.x, x_1328.y, x_1328.z, x_1329.w);
  let x_1332 : f32 = x_42.x_Surface;
  u_xlatb11 = (x_1332 == 1.0f);
  let x_1334 : bool = u_xlatb11;
  let x_1335 : bool = u_xlatb22;
  u_xlatb11 = (x_1334 | x_1335);
  let x_1337 : bool = u_xlatb11;
  if (x_1337) {
    let x_1342 : f32 = u_xlat0.x;
    x_1338 = x_1342;
  } else {
    x_1338 = 1.0f;
  }
  let x_1344 : f32 = x_1338;
  SV_Target0.w = x_1344;
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


