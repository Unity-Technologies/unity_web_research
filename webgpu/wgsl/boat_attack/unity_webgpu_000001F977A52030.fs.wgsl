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
  unity_OrthoParams : vec4<f32>,
  /* @offset(96) */
  unity_MatrixV : mat4x4<f32>,
  /* @offset(160) */
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

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(2) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(9) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_45 : PGlobals;

@group(1) @binding(3) var<uniform> x_57 : UnityPerMaterial;

var<private> u_xlat1 : vec3<f32>;

@group(0) @binding(7) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_PointRepeat : sampler;

var<private> u_xlatb12 : bool;

@group(1) @binding(2) var<uniform> x_95 : UnityPerDraw;

var<private> u_xlatb1 : bool;

var<private> u_xlat12 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> u_xlat34 : f32;

var<private> u_xlat3 : vec4<f32>;

@group(0) @binding(1) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(8) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

var<private> u_xlat4 : vec4<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat35 : f32;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(12) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat36 : f32;

@group(1) @binding(4) var<uniform> x_304 : LightShadows;

var<private> u_xlatb36 : bool;

var<private> u_xlatb4 : bool;

var<private> u_xlat15 : f32;

@group(1) @binding(5) var<uniform> x_369 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb5 : vec2<bool>;

var<private> u_xlat37 : f32;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlatu37 : u32;

var<private> u_xlatu38 : u32;

var<private> u_xlati39 : i32;

var<private> u_xlat38 : f32;

var<private> u_xlati38 : i32;

var<private> u_xlat7 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_669 : AdditionalLights;

var<private> u_xlat39 : f32;

var<private> u_xlat40 : f32;

var<private> u_xlati40 : i32;

var<private> u_xlatb8 : vec3<bool>;

var<private> u_xlatb9 : vec3<bool>;

var<private> u_xlat19 : vec3<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat30 : f32;

var<private> u_xlat8 : vec4<f32>;

@group(0) @binding(4) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb19 : bool;

var<private> u_xlati8 : i32;

var<private> u_xlati19 : i32;

var<private> u_xlati30 : i32;

var<private> u_xlat10 : vec3<f32>;

var<private> u_xlatb31 : vec2<bool>;

var<private> u_xlat31 : vec2<f32>;

@group(0) @binding(6) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_LinearClamp : sampler;

var<private> u_xlat41 : f32;

var<private> u_xlat11 : vec3<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatb11 : bool;

var<private> u_xlatu27 : u32;

var<private> u_xlatb38 : bool;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var x_103 : f32;
  var x_163 : f32;
  var x_175 : f32;
  var x_187 : f32;
  var txVec0 : vec3<f32>;
  var x_457 : f32;
  var x_468 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_805 : f32;
  var x_817 : f32;
  var txVec1 : vec3<f32>;
  var x_1281 : f32;
  var x_1294 : f32;
  var x_1352 : f32;
  var x_1363 : vec3<f32>;
  var x_1481 : f32;
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
  u_xlatb12 = (x_98 >= 0.0f);
  let x_101 : bool = u_xlatb12;
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
  u_xlat12 = (-(x_142) + x_147);
  let x_150 : vec3<f32> = u_xlat12;
  let x_151 : vec3<f32> = u_xlat12;
  u_xlat2.x = dot(x_150, x_151);
  let x_155 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_155);
  let x_158 : vec3<f32> = u_xlat12;
  let x_159 : vec3<f32> = u_xlat2;
  u_xlat12 = (x_158 * vec3<f32>(x_159.x, x_159.x, x_159.x));
  let x_162 : bool = u_xlatb1;
  if (x_162) {
    let x_167 : f32 = u_xlat12.x;
    x_163 = x_167;
  } else {
    let x_171 : f32 = x_45.unity_MatrixV[0i].z;
    x_163 = x_171;
  }
  let x_172 : f32 = x_163;
  u_xlat2.x = x_172;
  let x_174 : bool = u_xlatb1;
  if (x_174) {
    let x_180 : f32 = u_xlat12.y;
    x_175 = x_180;
  } else {
    let x_183 : f32 = x_45.unity_MatrixV[1i].z;
    x_175 = x_183;
  }
  let x_184 : f32 = x_175;
  u_xlat2.y = x_184;
  let x_186 : bool = u_xlatb1;
  if (x_186) {
    let x_191 : f32 = u_xlat12.z;
    x_187 = x_191;
  } else {
    let x_194 : f32 = x_45.unity_MatrixV[2i].z;
    x_187 = x_194;
  }
  let x_195 : f32 = x_187;
  u_xlat2.z = x_195;
  let x_198 : vec3<f32> = vs_TEXCOORD2;
  let x_199 : vec3<f32> = vs_TEXCOORD2;
  u_xlat1.x = dot(x_198, x_199);
  let x_203 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_203);
  let x_206 : vec3<f32> = u_xlat1;
  let x_208 : vec3<f32> = vs_TEXCOORD2;
  u_xlat1 = (vec3<f32>(x_206.x, x_206.x, x_206.x) * x_208);
  let x_211 : vec3<f32> = u_xlat2;
  let x_212 : vec3<f32> = u_xlat2;
  u_xlat34 = dot(x_211, x_212);
  let x_214 : f32 = u_xlat34;
  u_xlat34 = max(x_214, 0.00006103515625f);
  let x_217 : f32 = u_xlat34;
  u_xlat34 = inverseSqrt(x_217);
  let x_226 : vec2<f32> = vs_TEXCOORD7;
  let x_228 : f32 = x_45.x_GlobalMipBias.x;
  let x_229 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_226, x_228);
  u_xlat3 = x_229;
  let x_235 : vec2<f32> = vs_TEXCOORD7;
  let x_237 : f32 = x_45.x_GlobalMipBias.x;
  let x_238 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_235, x_237);
  let x_239 : vec3<f32> = vec3<f32>(x_238.x, x_238.y, x_238.z);
  let x_240 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_239.x, x_239.y, x_239.z, x_240.w);
  let x_242 : vec4<f32> = u_xlat3;
  let x_246 : vec3<f32> = (vec3<f32>(x_242.x, x_242.y, x_242.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_247 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_246.x, x_246.y, x_246.z, x_247.w);
  let x_250 : vec3<f32> = u_xlat1;
  let x_251 : vec4<f32> = u_xlat3;
  u_xlat35 = dot(x_250, vec3<f32>(x_251.x, x_251.y, x_251.z));
  let x_254 : f32 = u_xlat35;
  u_xlat35 = (x_254 + 0.5f);
  let x_257 : f32 = u_xlat35;
  let x_259 : vec4<f32> = u_xlat4;
  let x_261 : vec3<f32> = (vec3<f32>(x_257, x_257, x_257) * vec3<f32>(x_259.x, x_259.y, x_259.z));
  let x_262 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_261.x, x_261.y, x_261.z, x_262.w);
  let x_265 : f32 = u_xlat3.w;
  u_xlat35 = max(x_265, 0.00009999999747378752f);
  let x_268 : vec4<f32> = u_xlat3;
  let x_270 : f32 = u_xlat35;
  let x_272 : vec3<f32> = (vec3<f32>(x_268.x, x_268.y, x_268.z) / vec3<f32>(x_270, x_270, x_270));
  let x_273 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_272.x, x_272.y, x_272.z, x_273.w);
  let x_278 : vec4<f32> = vs_TEXCOORD6;
  let x_279 : vec2<f32> = vec2<f32>(x_278.x, x_278.y);
  let x_281 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_279.x, x_279.y, x_281);
  let x_293 : vec3<f32> = txVec0;
  let x_295 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_293.xy, x_293.z);
  u_xlat35 = x_295;
  let x_307 : f32 = x_304.x_MainLightShadowParams.x;
  u_xlat36 = (-(x_307) + 1.0f);
  let x_310 : f32 = u_xlat35;
  let x_312 : f32 = x_304.x_MainLightShadowParams.x;
  let x_314 : f32 = u_xlat36;
  u_xlat35 = ((x_310 * x_312) + x_314);
  let x_318 : f32 = vs_TEXCOORD6.z;
  u_xlatb36 = (0.0f >= x_318);
  let x_322 : f32 = vs_TEXCOORD6.z;
  u_xlatb4 = (x_322 >= 1.0f);
  let x_324 : bool = u_xlatb36;
  let x_325 : bool = u_xlatb4;
  u_xlatb36 = (x_324 | x_325);
  let x_327 : bool = u_xlatb36;
  let x_328 : f32 = u_xlat35;
  u_xlat35 = select(x_328, 1.0f, x_327);
  let x_330 : vec3<f32> = vs_TEXCOORD1;
  let x_332 : vec3<f32> = x_45.x_WorldSpaceCameraPos;
  let x_334 : vec3<f32> = (x_330 + -(x_332));
  let x_335 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_334.x, x_334.y, x_334.z, x_335.w);
  let x_337 : vec4<f32> = u_xlat4;
  let x_339 : vec4<f32> = u_xlat4;
  u_xlat36 = dot(vec3<f32>(x_337.x, x_337.y, x_337.z), vec3<f32>(x_339.x, x_339.y, x_339.z));
  let x_342 : f32 = u_xlat36;
  let x_344 : f32 = x_304.x_MainLightShadowParams.z;
  let x_347 : f32 = x_304.x_MainLightShadowParams.w;
  u_xlat4.x = ((x_342 * x_344) + x_347);
  let x_351 : f32 = u_xlat4.x;
  u_xlat4.x = clamp(x_351, 0.0f, 1.0f);
  let x_355 : f32 = u_xlat35;
  u_xlat15 = (-(x_355) + 1.0f);
  let x_359 : f32 = u_xlat4.x;
  let x_360 : f32 = u_xlat15;
  let x_362 : f32 = u_xlat35;
  u_xlat35 = ((x_359 * x_360) + x_362);
  let x_371 : f32 = x_369.x_MainLightCookieTextureFormat;
  u_xlatb4 = !((x_371 == -1.0f));
  let x_374 : bool = u_xlatb4;
  if (x_374) {
    let x_377 : vec3<f32> = vs_TEXCOORD1;
    let x_380 : vec4<f32> = x_369.x_MainLightWorldToLight[1i];
    let x_382 : vec2<f32> = (vec2<f32>(x_377.y, x_377.y) * vec2<f32>(x_380.x, x_380.y));
    let x_383 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_382.x, x_382.y, x_383.z, x_383.w);
    let x_386 : vec4<f32> = x_369.x_MainLightWorldToLight[0i];
    let x_388 : vec3<f32> = vs_TEXCOORD1;
    let x_391 : vec4<f32> = u_xlat4;
    let x_393 : vec2<f32> = ((vec2<f32>(x_386.x, x_386.y) * vec2<f32>(x_388.x, x_388.x)) + vec2<f32>(x_391.x, x_391.y));
    let x_394 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_393.x, x_393.y, x_394.z, x_394.w);
    let x_397 : vec4<f32> = x_369.x_MainLightWorldToLight[2i];
    let x_399 : vec3<f32> = vs_TEXCOORD1;
    let x_402 : vec4<f32> = u_xlat4;
    let x_404 : vec2<f32> = ((vec2<f32>(x_397.x, x_397.y) * vec2<f32>(x_399.z, x_399.z)) + vec2<f32>(x_402.x, x_402.y));
    let x_405 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_404.x, x_404.y, x_405.z, x_405.w);
    let x_407 : vec4<f32> = u_xlat4;
    let x_411 : vec4<f32> = x_369.x_MainLightWorldToLight[3i];
    let x_413 : vec2<f32> = (vec2<f32>(x_407.x, x_407.y) + vec2<f32>(x_411.x, x_411.y));
    let x_414 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_413.x, x_413.y, x_414.z, x_414.w);
    let x_416 : vec4<f32> = u_xlat4;
    let x_420 : vec2<f32> = ((vec2<f32>(x_416.x, x_416.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_421 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_420.x, x_420.y, x_421.z, x_421.w);
    let x_428 : vec4<f32> = u_xlat4;
    let x_431 : f32 = x_45.x_GlobalMipBias.x;
    let x_432 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_428.x, x_428.y), x_431);
    u_xlat4 = x_432;
    let x_437 : f32 = x_369.x_MainLightCookieTextureFormat;
    let x_439 : f32 = x_369.x_MainLightCookieTextureFormat;
    let x_441 : f32 = x_369.x_MainLightCookieTextureFormat;
    let x_443 : f32 = x_369.x_MainLightCookieTextureFormat;
    let x_444 : vec4<f32> = vec4<f32>(x_437, x_439, x_441, x_443);
    let x_452 : vec4<bool> = (vec4<f32>(x_444.x, x_444.y, x_444.z, x_444.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb5 = vec2<bool>(x_452.x, x_452.y);
    let x_456 : bool = u_xlatb5.y;
    if (x_456) {
      let x_461 : f32 = u_xlat4.w;
      x_457 = x_461;
    } else {
      let x_464 : f32 = u_xlat4.x;
      x_457 = x_464;
    }
    let x_465 : f32 = x_457;
    u_xlat37 = x_465;
    let x_467 : bool = u_xlatb5.x;
    if (x_467) {
      let x_471 : vec4<f32> = u_xlat4;
      x_468 = vec3<f32>(x_471.x, x_471.y, x_471.z);
    } else {
      let x_474 : f32 = u_xlat37;
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
  let x_486 : vec4<f32> = x_45.x_MainLightColor;
  let x_488 : vec3<f32> = (vec3<f32>(x_483.x, x_483.y, x_483.z) * vec3<f32>(x_486.x, x_486.y, x_486.z));
  let x_489 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_488.x, x_488.y, x_488.z, x_489.w);
  let x_491 : f32 = u_xlat35;
  let x_493 : f32 = x_95.unity_LightData.z;
  u_xlat35 = (x_491 * x_493);
  let x_495 : f32 = u_xlat35;
  let x_497 : vec4<f32> = u_xlat4;
  let x_499 : vec3<f32> = (vec3<f32>(x_495, x_495, x_495) * vec3<f32>(x_497.x, x_497.y, x_497.z));
  let x_500 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_499.x, x_499.y, x_499.z, x_500.w);
  let x_502 : vec3<f32> = u_xlat1;
  let x_504 : vec4<f32> = x_45.x_MainLightPosition;
  u_xlat35 = dot(x_502, vec3<f32>(x_504.x, x_504.y, x_504.z));
  let x_507 : f32 = u_xlat35;
  u_xlat35 = clamp(x_507, 0.0f, 1.0f);
  let x_510 : f32 = u_xlat35;
  let x_512 : vec4<f32> = u_xlat4;
  u_xlat5 = (vec3<f32>(x_510, x_510, x_510) * vec3<f32>(x_512.x, x_512.y, x_512.z));
  let x_516 : f32 = u_xlat0.x;
  u_xlat35 = ((x_516 * 10.0f) + 1.0f);
  let x_520 : f32 = u_xlat35;
  u_xlat35 = exp2(x_520);
  let x_523 : vec3<f32> = u_xlat2;
  let x_524 : f32 = u_xlat34;
  let x_528 : vec4<f32> = x_45.x_MainLightPosition;
  u_xlat6 = ((x_523 * vec3<f32>(x_524, x_524, x_524)) + vec3<f32>(x_528.x, x_528.y, x_528.z));
  let x_531 : vec3<f32> = u_xlat6;
  let x_532 : vec3<f32> = u_xlat6;
  u_xlat37 = dot(x_531, x_532);
  let x_534 : f32 = u_xlat37;
  u_xlat37 = max(x_534, 1.17549435e-38f);
  let x_537 : f32 = u_xlat37;
  u_xlat37 = inverseSqrt(x_537);
  let x_539 : f32 = u_xlat37;
  let x_541 : vec3<f32> = u_xlat6;
  u_xlat6 = (vec3<f32>(x_539, x_539, x_539) * x_541);
  let x_543 : vec3<f32> = u_xlat1;
  let x_544 : vec3<f32> = u_xlat6;
  u_xlat37 = dot(x_543, x_544);
  let x_546 : f32 = u_xlat37;
  u_xlat37 = clamp(x_546, 0.0f, 1.0f);
  let x_548 : f32 = u_xlat37;
  u_xlat37 = log2(x_548);
  let x_550 : f32 = u_xlat35;
  let x_551 : f32 = u_xlat37;
  u_xlat37 = (x_550 * x_551);
  let x_553 : f32 = u_xlat37;
  u_xlat37 = exp2(x_553);
  let x_555 : f32 = u_xlat37;
  let x_558 : vec4<f32> = x_57.x_SpecColor;
  u_xlat6 = (vec3<f32>(x_555, x_555, x_555) * vec3<f32>(x_558.x, x_558.y, x_558.z));
  let x_561 : vec4<f32> = u_xlat4;
  let x_563 : vec3<f32> = u_xlat6;
  let x_564 : vec3<f32> = (vec3<f32>(x_561.x, x_561.y, x_561.z) * x_563);
  let x_565 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_564.x, x_564.y, x_564.z, x_565.w);
  let x_567 : vec3<f32> = u_xlat5;
  let x_568 : vec4<f32> = u_xlat0;
  let x_571 : vec4<f32> = u_xlat4;
  let x_573 : vec3<f32> = ((x_567 * vec3<f32>(x_568.y, x_568.z, x_568.w)) + vec3<f32>(x_571.x, x_571.y, x_571.z));
  let x_574 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_573.x, x_573.y, x_573.z, x_574.w);
  let x_577 : f32 = x_45.x_AdditionalLightsCount.x;
  let x_579 : f32 = x_95.unity_LightData.y;
  u_xlat37 = min(x_577, x_579);
  let x_583 : f32 = u_xlat37;
  u_xlatu37 = bitcast<u32>(i32(x_583));
  let x_586 : f32 = u_xlat36;
  let x_589 : f32 = x_304.x_AdditionalShadowFadeParams.x;
  let x_592 : f32 = x_304.x_AdditionalShadowFadeParams.y;
  u_xlat36 = ((x_586 * x_589) + x_592);
  let x_594 : f32 = u_xlat36;
  u_xlat36 = clamp(x_594, 0.0f, 1.0f);
  let x_597 : f32 = x_369.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_599 : f32 = x_369.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_601 : f32 = x_369.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_603 : f32 = x_369.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_604 : vec4<f32> = vec4<f32>(x_597, x_599, x_601, x_603);
  let x_610 : vec4<bool> = (vec4<f32>(x_604.x, x_604.y, x_604.z, x_604.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb5 = vec2<bool>(x_610.x, x_610.y);
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_622 : u32 = u_xlatu_loop_1;
    let x_623 : u32 = u_xlatu37;
    if ((x_622 < x_623)) {
    } else {
      break;
    }
    let x_626 : u32 = u_xlatu_loop_1;
    u_xlatu38 = (x_626 >> 2u);
    let x_630 : u32 = u_xlatu_loop_1;
    u_xlati39 = bitcast<i32>((x_630 & 3u));
    let x_634 : u32 = u_xlatu38;
    let x_637 : vec4<f32> = x_95.unity_LightIndices[bitcast<i32>(x_634)];
    let x_647 : i32 = u_xlati39;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_652 : vec4<u32> = indexable[x_647];
    u_xlat38 = dot(x_637, bitcast<vec4<f32>>(x_652));
    let x_656 : f32 = u_xlat38;
    u_xlati38 = i32(x_656);
    let x_659 : vec3<f32> = vs_TEXCOORD1;
    let x_670 : i32 = u_xlati38;
    let x_672 : vec4<f32> = x_669.x_AdditionalLightsPosition[x_670];
    let x_675 : i32 = u_xlati38;
    let x_677 : vec4<f32> = x_669.x_AdditionalLightsPosition[x_675];
    u_xlat7 = ((-(x_659) * vec3<f32>(x_672.w, x_672.w, x_672.w)) + vec3<f32>(x_677.x, x_677.y, x_677.z));
    let x_681 : vec3<f32> = u_xlat7;
    let x_682 : vec3<f32> = u_xlat7;
    u_xlat39 = dot(x_681, x_682);
    let x_684 : f32 = u_xlat39;
    u_xlat39 = max(x_684, 0.00006103515625f);
    let x_687 : f32 = u_xlat39;
    u_xlat40 = inverseSqrt(x_687);
    let x_689 : f32 = u_xlat40;
    let x_691 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_689, x_689, x_689) * x_691);
    let x_693 : f32 = u_xlat39;
    u_xlat40 = (1.0f / x_693);
    let x_695 : f32 = u_xlat39;
    let x_696 : i32 = u_xlati38;
    let x_698 : f32 = x_669.x_AdditionalLightsAttenuation[x_696].x;
    u_xlat39 = (x_695 * x_698);
    let x_700 : f32 = u_xlat39;
    let x_702 : f32 = u_xlat39;
    u_xlat39 = ((-(x_700) * x_702) + 1.0f);
    let x_705 : f32 = u_xlat39;
    u_xlat39 = max(x_705, 0.0f);
    let x_707 : f32 = u_xlat39;
    let x_708 : f32 = u_xlat39;
    u_xlat39 = (x_707 * x_708);
    let x_710 : f32 = u_xlat39;
    let x_711 : f32 = u_xlat40;
    u_xlat39 = (x_710 * x_711);
    let x_713 : i32 = u_xlati38;
    let x_715 : vec4<f32> = x_669.x_AdditionalLightsSpotDir[x_713];
    let x_717 : vec3<f32> = u_xlat7;
    u_xlat40 = dot(vec3<f32>(x_715.x, x_715.y, x_715.z), x_717);
    let x_719 : f32 = u_xlat40;
    let x_720 : i32 = u_xlati38;
    let x_722 : f32 = x_669.x_AdditionalLightsAttenuation[x_720].z;
    let x_724 : i32 = u_xlati38;
    let x_726 : f32 = x_669.x_AdditionalLightsAttenuation[x_724].w;
    u_xlat40 = ((x_719 * x_722) + x_726);
    let x_728 : f32 = u_xlat40;
    u_xlat40 = clamp(x_728, 0.0f, 1.0f);
    let x_730 : f32 = u_xlat40;
    let x_731 : f32 = u_xlat40;
    u_xlat40 = (x_730 * x_731);
    let x_733 : f32 = u_xlat39;
    let x_734 : f32 = u_xlat40;
    u_xlat39 = (x_733 * x_734);
    let x_738 : i32 = u_xlati38;
    let x_740 : f32 = x_304.x_AdditionalShadowParams[x_738].w;
    u_xlati40 = i32(x_740);
    let x_745 : i32 = u_xlati40;
    u_xlatb8.x = (x_745 >= 0i);
    let x_749 : bool = u_xlatb8.x;
    if (x_749) {
      let x_753 : i32 = u_xlati38;
      let x_755 : f32 = x_304.x_AdditionalShadowParams[x_753].z;
      u_xlatb8.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_755, x_755, x_755, x_755))));
      let x_761 : bool = u_xlatb8.x;
      if (x_761) {
        let x_764 : vec3<f32> = u_xlat7;
        let x_767 : vec3<f32> = u_xlat7;
        let x_770 : vec4<bool> = (abs(vec4<f32>(x_764.z, x_764.z, x_764.y, x_764.z)) >= abs(vec4<f32>(x_767.x, x_767.y, x_767.x, x_767.x)));
        u_xlatb8 = vec3<bool>(x_770.x, x_770.y, x_770.z);
        let x_773 : bool = u_xlatb8.y;
        let x_775 : bool = u_xlatb8.x;
        u_xlatb8.x = (x_773 & x_775);
        let x_779 : vec3<f32> = u_xlat7;
        let x_782 : vec4<bool> = (-(vec4<f32>(x_779.z, x_779.y, x_779.x, x_779.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb9 = vec3<bool>(x_782.x, x_782.y, x_782.z);
        let x_786 : bool = u_xlatb9.x;
        u_xlat19.x = select(4.0f, 5.0f, x_786);
        let x_792 : bool = u_xlatb9.y;
        u_xlat19.z = select(2.0f, 3.0f, x_792);
        let x_799 : bool = u_xlatb9.z;
        u_xlat9.x = select(0.0f, 1.0f, x_799);
        let x_804 : bool = u_xlatb8.z;
        if (x_804) {
          let x_809 : f32 = u_xlat19.z;
          x_805 = x_809;
        } else {
          let x_812 : f32 = u_xlat9.x;
          x_805 = x_812;
        }
        let x_813 : f32 = x_805;
        u_xlat30 = x_813;
        let x_816 : bool = u_xlatb8.x;
        if (x_816) {
          let x_821 : f32 = u_xlat19.x;
          x_817 = x_821;
        } else {
          let x_823 : f32 = u_xlat30;
          x_817 = x_823;
        }
        let x_824 : f32 = x_817;
        u_xlat8.x = x_824;
        let x_826 : i32 = u_xlati38;
        let x_828 : f32 = x_304.x_AdditionalShadowParams[x_826].w;
        u_xlat19.x = trunc(x_828);
        let x_832 : f32 = u_xlat8.x;
        let x_834 : f32 = u_xlat19.x;
        u_xlat8.x = (x_832 + x_834);
        let x_838 : f32 = u_xlat8.x;
        u_xlati40 = i32(x_838);
      }
      let x_840 : i32 = u_xlati40;
      u_xlati40 = (x_840 << bitcast<u32>(2i));
      let x_842 : vec3<f32> = vs_TEXCOORD1;
      let x_845 : i32 = u_xlati40;
      let x_848 : i32 = u_xlati40;
      let x_852 : vec4<f32> = x_304.x_AdditionalLightsWorldToShadow[((x_845 + 1i) / 4i)][((x_848 + 1i) % 4i)];
      u_xlat8 = (vec4<f32>(x_842.y, x_842.y, x_842.y, x_842.y) * x_852);
      let x_854 : i32 = u_xlati40;
      let x_856 : i32 = u_xlati40;
      let x_859 : vec4<f32> = x_304.x_AdditionalLightsWorldToShadow[(x_854 / 4i)][(x_856 % 4i)];
      let x_860 : vec3<f32> = vs_TEXCOORD1;
      let x_863 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_859 * vec4<f32>(x_860.x, x_860.x, x_860.x, x_860.x)) + x_863);
      let x_865 : i32 = u_xlati40;
      let x_868 : i32 = u_xlati40;
      let x_872 : vec4<f32> = x_304.x_AdditionalLightsWorldToShadow[((x_865 + 2i) / 4i)][((x_868 + 2i) % 4i)];
      let x_873 : vec3<f32> = vs_TEXCOORD1;
      let x_876 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_872 * vec4<f32>(x_873.z, x_873.z, x_873.z, x_873.z)) + x_876);
      let x_878 : vec4<f32> = u_xlat8;
      let x_879 : i32 = u_xlati40;
      let x_882 : i32 = u_xlati40;
      let x_886 : vec4<f32> = x_304.x_AdditionalLightsWorldToShadow[((x_879 + 3i) / 4i)][((x_882 + 3i) % 4i)];
      u_xlat8 = (x_878 + x_886);
      let x_888 : vec4<f32> = u_xlat8;
      let x_890 : vec4<f32> = u_xlat8;
      let x_892 : vec3<f32> = (vec3<f32>(x_888.x, x_888.y, x_888.z) / vec3<f32>(x_890.w, x_890.w, x_890.w));
      let x_893 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_892.x, x_892.y, x_892.z, x_893.w);
      let x_896 : vec4<f32> = u_xlat8;
      let x_897 : vec2<f32> = vec2<f32>(x_896.x, x_896.y);
      let x_899 : f32 = u_xlat8.z;
      txVec1 = vec3<f32>(x_897.x, x_897.y, x_899);
      let x_907 : vec3<f32> = txVec1;
      let x_909 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_907.xy, x_907.z);
      u_xlat40 = x_909;
      let x_910 : i32 = u_xlati38;
      let x_912 : f32 = x_304.x_AdditionalShadowParams[x_910].x;
      u_xlat8.x = (1.0f + -(x_912));
      let x_916 : f32 = u_xlat40;
      let x_917 : i32 = u_xlati38;
      let x_919 : f32 = x_304.x_AdditionalShadowParams[x_917].x;
      let x_922 : f32 = u_xlat8.x;
      u_xlat40 = ((x_916 * x_919) + x_922);
      let x_925 : f32 = u_xlat8.z;
      u_xlatb8.x = (0.0f >= x_925);
      let x_930 : f32 = u_xlat8.z;
      u_xlatb19 = (x_930 >= 1.0f);
      let x_932 : bool = u_xlatb19;
      let x_934 : bool = u_xlatb8.x;
      u_xlatb8.x = (x_932 | x_934);
      let x_938 : bool = u_xlatb8.x;
      let x_939 : f32 = u_xlat40;
      u_xlat40 = select(x_939, 1.0f, x_938);
    } else {
      u_xlat40 = 1.0f;
    }
    let x_942 : f32 = u_xlat40;
    u_xlat8.x = (-(x_942) + 1.0f);
    let x_946 : f32 = u_xlat36;
    let x_948 : f32 = u_xlat8.x;
    let x_950 : f32 = u_xlat40;
    u_xlat40 = ((x_946 * x_948) + x_950);
    let x_953 : i32 = u_xlati38;
    u_xlati8 = (1i << bitcast<u32>((x_953 & 31i)));
    let x_957 : i32 = u_xlati8;
    let x_960 : f32 = x_369.x_AdditionalLightsCookieEnableBits;
    u_xlati8 = bitcast<i32>((bitcast<u32>(x_957) & bitcast<u32>(x_960)));
    let x_964 : i32 = u_xlati8;
    if ((x_964 != 0i)) {
      let x_968 : i32 = u_xlati38;
      let x_970 : f32 = x_369.x_AdditionalLightsLightTypes[x_968].el;
      u_xlati8 = i32(x_970);
      let x_973 : i32 = u_xlati8;
      u_xlati19 = select(1i, 0i, (x_973 != 0i));
      let x_977 : i32 = u_xlati38;
      u_xlati30 = (x_977 << bitcast<u32>(2i));
      let x_979 : i32 = u_xlati19;
      if ((x_979 != 0i)) {
        let x_983 : vec3<f32> = vs_TEXCOORD1;
        let x_985 : i32 = u_xlati30;
        let x_988 : i32 = u_xlati30;
        let x_992 : vec4<f32> = x_369.x_AdditionalLightsWorldToLights[((x_985 + 1i) / 4i)][((x_988 + 1i) % 4i)];
        let x_994 : vec3<f32> = (vec3<f32>(x_983.y, x_983.y, x_983.y) * vec3<f32>(x_992.x, x_992.y, x_992.w));
        let x_995 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_994.x, x_994.y, x_994.z, x_995.w);
        let x_997 : i32 = u_xlati30;
        let x_999 : i32 = u_xlati30;
        let x_1002 : vec4<f32> = x_369.x_AdditionalLightsWorldToLights[(x_997 / 4i)][(x_999 % 4i)];
        let x_1004 : vec3<f32> = vs_TEXCOORD1;
        let x_1007 : vec4<f32> = u_xlat9;
        let x_1009 : vec3<f32> = ((vec3<f32>(x_1002.x, x_1002.y, x_1002.w) * vec3<f32>(x_1004.x, x_1004.x, x_1004.x)) + vec3<f32>(x_1007.x, x_1007.y, x_1007.z));
        let x_1010 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1009.x, x_1009.y, x_1009.z, x_1010.w);
        let x_1012 : i32 = u_xlati30;
        let x_1015 : i32 = u_xlati30;
        let x_1019 : vec4<f32> = x_369.x_AdditionalLightsWorldToLights[((x_1012 + 2i) / 4i)][((x_1015 + 2i) % 4i)];
        let x_1021 : vec3<f32> = vs_TEXCOORD1;
        let x_1024 : vec4<f32> = u_xlat9;
        let x_1026 : vec3<f32> = ((vec3<f32>(x_1019.x, x_1019.y, x_1019.w) * vec3<f32>(x_1021.z, x_1021.z, x_1021.z)) + vec3<f32>(x_1024.x, x_1024.y, x_1024.z));
        let x_1027 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1026.x, x_1026.y, x_1026.z, x_1027.w);
        let x_1029 : vec4<f32> = u_xlat9;
        let x_1031 : i32 = u_xlati30;
        let x_1034 : i32 = u_xlati30;
        let x_1038 : vec4<f32> = x_369.x_AdditionalLightsWorldToLights[((x_1031 + 3i) / 4i)][((x_1034 + 3i) % 4i)];
        let x_1040 : vec3<f32> = (vec3<f32>(x_1029.x, x_1029.y, x_1029.z) + vec3<f32>(x_1038.x, x_1038.y, x_1038.w));
        let x_1041 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1040.x, x_1040.y, x_1040.z, x_1041.w);
        let x_1043 : vec4<f32> = u_xlat9;
        let x_1045 : vec4<f32> = u_xlat9;
        let x_1047 : vec2<f32> = (vec2<f32>(x_1043.x, x_1043.y) / vec2<f32>(x_1045.z, x_1045.z));
        let x_1048 : vec3<f32> = u_xlat19;
        u_xlat19 = vec3<f32>(x_1047.x, x_1048.y, x_1047.y);
        let x_1050 : vec3<f32> = u_xlat19;
        let x_1053 : vec2<f32> = ((vec2<f32>(x_1050.x, x_1050.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1054 : vec3<f32> = u_xlat19;
        u_xlat19 = vec3<f32>(x_1053.x, x_1054.y, x_1053.y);
        let x_1056 : vec3<f32> = u_xlat19;
        let x_1060 : vec2<f32> = clamp(vec2<f32>(x_1056.x, x_1056.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1061 : vec3<f32> = u_xlat19;
        u_xlat19 = vec3<f32>(x_1060.x, x_1061.y, x_1060.y);
        let x_1063 : i32 = u_xlati38;
        let x_1065 : vec4<f32> = x_369.x_AdditionalLightsCookieAtlasUVRects[x_1063];
        let x_1067 : vec3<f32> = u_xlat19;
        let x_1070 : i32 = u_xlati38;
        let x_1072 : vec4<f32> = x_369.x_AdditionalLightsCookieAtlasUVRects[x_1070];
        let x_1074 : vec2<f32> = ((vec2<f32>(x_1065.x, x_1065.y) * vec2<f32>(x_1067.x, x_1067.z)) + vec2<f32>(x_1072.z, x_1072.w));
        let x_1075 : vec3<f32> = u_xlat19;
        u_xlat19 = vec3<f32>(x_1074.x, x_1075.y, x_1074.y);
      } else {
        let x_1078 : i32 = u_xlati8;
        u_xlatb8.x = (x_1078 == 1i);
        let x_1082 : bool = u_xlatb8.x;
        u_xlati8 = select(0i, 1i, x_1082);
        let x_1084 : i32 = u_xlati8;
        if ((x_1084 != 0i)) {
          let x_1088 : vec3<f32> = vs_TEXCOORD1;
          let x_1090 : i32 = u_xlati30;
          let x_1093 : i32 = u_xlati30;
          let x_1097 : vec4<f32> = x_369.x_AdditionalLightsWorldToLights[((x_1090 + 1i) / 4i)][((x_1093 + 1i) % 4i)];
          let x_1099 : vec2<f32> = (vec2<f32>(x_1088.y, x_1088.y) * vec2<f32>(x_1097.x, x_1097.y));
          let x_1100 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1099.x, x_1099.y, x_1100.z, x_1100.w);
          let x_1102 : i32 = u_xlati30;
          let x_1104 : i32 = u_xlati30;
          let x_1107 : vec4<f32> = x_369.x_AdditionalLightsWorldToLights[(x_1102 / 4i)][(x_1104 % 4i)];
          let x_1109 : vec3<f32> = vs_TEXCOORD1;
          let x_1112 : vec4<f32> = u_xlat9;
          let x_1114 : vec2<f32> = ((vec2<f32>(x_1107.x, x_1107.y) * vec2<f32>(x_1109.x, x_1109.x)) + vec2<f32>(x_1112.x, x_1112.y));
          let x_1115 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1114.x, x_1114.y, x_1115.z, x_1115.w);
          let x_1117 : i32 = u_xlati30;
          let x_1120 : i32 = u_xlati30;
          let x_1124 : vec4<f32> = x_369.x_AdditionalLightsWorldToLights[((x_1117 + 2i) / 4i)][((x_1120 + 2i) % 4i)];
          let x_1126 : vec3<f32> = vs_TEXCOORD1;
          let x_1129 : vec4<f32> = u_xlat9;
          let x_1131 : vec2<f32> = ((vec2<f32>(x_1124.x, x_1124.y) * vec2<f32>(x_1126.z, x_1126.z)) + vec2<f32>(x_1129.x, x_1129.y));
          let x_1132 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1131.x, x_1131.y, x_1132.z, x_1132.w);
          let x_1134 : vec4<f32> = u_xlat9;
          let x_1136 : i32 = u_xlati30;
          let x_1139 : i32 = u_xlati30;
          let x_1143 : vec4<f32> = x_369.x_AdditionalLightsWorldToLights[((x_1136 + 3i) / 4i)][((x_1139 + 3i) % 4i)];
          let x_1145 : vec2<f32> = (vec2<f32>(x_1134.x, x_1134.y) + vec2<f32>(x_1143.x, x_1143.y));
          let x_1146 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1145.x, x_1145.y, x_1146.z, x_1146.w);
          let x_1148 : vec4<f32> = u_xlat9;
          let x_1151 : vec2<f32> = ((vec2<f32>(x_1148.x, x_1148.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1152 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1151.x, x_1151.y, x_1152.z, x_1152.w);
          let x_1154 : vec4<f32> = u_xlat9;
          let x_1156 : vec2<f32> = fract(vec2<f32>(x_1154.x, x_1154.y));
          let x_1157 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1156.x, x_1156.y, x_1157.z, x_1157.w);
          let x_1159 : i32 = u_xlati38;
          let x_1161 : vec4<f32> = x_369.x_AdditionalLightsCookieAtlasUVRects[x_1159];
          let x_1163 : vec4<f32> = u_xlat9;
          let x_1166 : i32 = u_xlati38;
          let x_1168 : vec4<f32> = x_369.x_AdditionalLightsCookieAtlasUVRects[x_1166];
          let x_1170 : vec2<f32> = ((vec2<f32>(x_1161.x, x_1161.y) * vec2<f32>(x_1163.x, x_1163.y)) + vec2<f32>(x_1168.z, x_1168.w));
          let x_1171 : vec3<f32> = u_xlat19;
          u_xlat19 = vec3<f32>(x_1170.x, x_1171.y, x_1170.y);
        } else {
          let x_1174 : vec3<f32> = vs_TEXCOORD1;
          let x_1176 : i32 = u_xlati30;
          let x_1179 : i32 = u_xlati30;
          let x_1183 : vec4<f32> = x_369.x_AdditionalLightsWorldToLights[((x_1176 + 1i) / 4i)][((x_1179 + 1i) % 4i)];
          u_xlat9 = (vec4<f32>(x_1174.y, x_1174.y, x_1174.y, x_1174.y) * x_1183);
          let x_1185 : i32 = u_xlati30;
          let x_1187 : i32 = u_xlati30;
          let x_1190 : vec4<f32> = x_369.x_AdditionalLightsWorldToLights[(x_1185 / 4i)][(x_1187 % 4i)];
          let x_1191 : vec3<f32> = vs_TEXCOORD1;
          let x_1194 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_1190 * vec4<f32>(x_1191.x, x_1191.x, x_1191.x, x_1191.x)) + x_1194);
          let x_1196 : i32 = u_xlati30;
          let x_1199 : i32 = u_xlati30;
          let x_1203 : vec4<f32> = x_369.x_AdditionalLightsWorldToLights[((x_1196 + 2i) / 4i)][((x_1199 + 2i) % 4i)];
          let x_1204 : vec3<f32> = vs_TEXCOORD1;
          let x_1207 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_1203 * vec4<f32>(x_1204.z, x_1204.z, x_1204.z, x_1204.z)) + x_1207);
          let x_1209 : vec4<f32> = u_xlat9;
          let x_1210 : i32 = u_xlati30;
          let x_1213 : i32 = u_xlati30;
          let x_1217 : vec4<f32> = x_369.x_AdditionalLightsWorldToLights[((x_1210 + 3i) / 4i)][((x_1213 + 3i) % 4i)];
          u_xlat9 = (x_1209 + x_1217);
          let x_1219 : vec4<f32> = u_xlat9;
          let x_1221 : vec4<f32> = u_xlat9;
          let x_1223 : vec3<f32> = (vec3<f32>(x_1219.x, x_1219.y, x_1219.z) / vec3<f32>(x_1221.w, x_1221.w, x_1221.w));
          let x_1224 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1223.x, x_1223.y, x_1223.z, x_1224.w);
          let x_1226 : vec4<f32> = u_xlat9;
          let x_1228 : vec4<f32> = u_xlat9;
          u_xlat8.x = dot(vec3<f32>(x_1226.x, x_1226.y, x_1226.z), vec3<f32>(x_1228.x, x_1228.y, x_1228.z));
          let x_1233 : f32 = u_xlat8.x;
          u_xlat8.x = inverseSqrt(x_1233);
          let x_1236 : vec4<f32> = u_xlat8;
          let x_1238 : vec4<f32> = u_xlat9;
          let x_1240 : vec3<f32> = (vec3<f32>(x_1236.x, x_1236.x, x_1236.x) * vec3<f32>(x_1238.x, x_1238.y, x_1238.z));
          let x_1241 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1240.x, x_1240.y, x_1240.z, x_1241.w);
          let x_1243 : vec4<f32> = u_xlat9;
          u_xlat8.x = dot(abs(vec3<f32>(x_1243.x, x_1243.y, x_1243.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1250 : f32 = u_xlat8.x;
          u_xlat8.x = max(x_1250, 0.00000099999999747524f);
          let x_1255 : f32 = u_xlat8.x;
          u_xlat8.x = (1.0f / x_1255);
          let x_1259 : vec4<f32> = u_xlat8;
          let x_1261 : vec4<f32> = u_xlat9;
          u_xlat10 = (vec3<f32>(x_1259.x, x_1259.x, x_1259.x) * vec3<f32>(x_1261.z, x_1261.x, x_1261.y));
          let x_1265 : f32 = u_xlat10.x;
          u_xlat10.x = -(x_1265);
          let x_1269 : f32 = u_xlat10.x;
          u_xlat10.x = clamp(x_1269, 0.0f, 1.0f);
          let x_1273 : vec3<f32> = u_xlat10;
          let x_1275 : vec4<bool> = (vec4<f32>(x_1273.y, x_1273.z, x_1273.y, x_1273.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb31 = vec2<bool>(x_1275.x, x_1275.y);
          let x_1280 : bool = u_xlatb31.x;
          if (x_1280) {
            let x_1285 : f32 = u_xlat10.x;
            x_1281 = x_1285;
          } else {
            let x_1288 : f32 = u_xlat10.x;
            x_1281 = -(x_1288);
          }
          let x_1290 : f32 = x_1281;
          u_xlat31.x = x_1290;
          let x_1293 : bool = u_xlatb31.y;
          if (x_1293) {
            let x_1298 : f32 = u_xlat10.x;
            x_1294 = x_1298;
          } else {
            let x_1301 : f32 = u_xlat10.x;
            x_1294 = -(x_1301);
          }
          let x_1303 : f32 = x_1294;
          u_xlat31.y = x_1303;
          let x_1305 : vec4<f32> = u_xlat9;
          let x_1307 : vec4<f32> = u_xlat8;
          let x_1310 : vec2<f32> = u_xlat31;
          let x_1311 : vec2<f32> = ((vec2<f32>(x_1305.x, x_1305.y) * vec2<f32>(x_1307.x, x_1307.x)) + x_1310);
          let x_1312 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1311.x, x_1312.y, x_1311.y, x_1312.w);
          let x_1314 : vec4<f32> = u_xlat8;
          let x_1317 : vec2<f32> = ((vec2<f32>(x_1314.x, x_1314.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1318 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1317.x, x_1318.y, x_1317.y, x_1318.w);
          let x_1320 : vec4<f32> = u_xlat8;
          let x_1324 : vec2<f32> = clamp(vec2<f32>(x_1320.x, x_1320.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1325 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1324.x, x_1325.y, x_1324.y, x_1325.w);
          let x_1327 : i32 = u_xlati38;
          let x_1329 : vec4<f32> = x_369.x_AdditionalLightsCookieAtlasUVRects[x_1327];
          let x_1331 : vec4<f32> = u_xlat8;
          let x_1334 : i32 = u_xlati38;
          let x_1336 : vec4<f32> = x_369.x_AdditionalLightsCookieAtlasUVRects[x_1334];
          let x_1338 : vec2<f32> = ((vec2<f32>(x_1329.x, x_1329.y) * vec2<f32>(x_1331.x, x_1331.z)) + vec2<f32>(x_1336.z, x_1336.w));
          let x_1339 : vec3<f32> = u_xlat19;
          u_xlat19 = vec3<f32>(x_1338.x, x_1339.y, x_1338.y);
        }
      }
      let x_1346 : vec3<f32> = u_xlat19;
      let x_1348 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_1346.x, x_1346.z), 0.0f);
      u_xlat8 = x_1348;
      let x_1351 : bool = u_xlatb5.y;
      if (x_1351) {
        let x_1356 : f32 = u_xlat8.w;
        x_1352 = x_1356;
      } else {
        let x_1359 : f32 = u_xlat8.x;
        x_1352 = x_1359;
      }
      let x_1360 : f32 = x_1352;
      u_xlat41 = x_1360;
      let x_1362 : bool = u_xlatb5.x;
      if (x_1362) {
        let x_1366 : vec4<f32> = u_xlat8;
        x_1363 = vec3<f32>(x_1366.x, x_1366.y, x_1366.z);
      } else {
        let x_1369 : f32 = u_xlat41;
        x_1363 = vec3<f32>(x_1369, x_1369, x_1369);
      }
      let x_1371 : vec3<f32> = x_1363;
      let x_1372 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_1371.x, x_1371.y, x_1371.z, x_1372.w);
    } else {
      u_xlat8.x = 1.0f;
      u_xlat8.y = 1.0f;
      u_xlat8.z = 1.0f;
    }
    let x_1378 : vec4<f32> = u_xlat8;
    let x_1380 : i32 = u_xlati38;
    let x_1382 : vec4<f32> = x_669.x_AdditionalLightsColor[x_1380];
    let x_1384 : vec3<f32> = (vec3<f32>(x_1378.x, x_1378.y, x_1378.z) * vec3<f32>(x_1382.x, x_1382.y, x_1382.z));
    let x_1385 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1384.x, x_1384.y, x_1384.z, x_1385.w);
    let x_1387 : f32 = u_xlat39;
    let x_1388 : f32 = u_xlat40;
    u_xlat38 = (x_1387 * x_1388);
    let x_1390 : f32 = u_xlat38;
    let x_1392 : vec4<f32> = u_xlat8;
    let x_1394 : vec3<f32> = (vec3<f32>(x_1390, x_1390, x_1390) * vec3<f32>(x_1392.x, x_1392.y, x_1392.z));
    let x_1395 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1394.x, x_1394.y, x_1394.z, x_1395.w);
    let x_1397 : vec3<f32> = u_xlat1;
    let x_1398 : vec3<f32> = u_xlat7;
    u_xlat38 = dot(x_1397, x_1398);
    let x_1400 : f32 = u_xlat38;
    u_xlat38 = clamp(x_1400, 0.0f, 1.0f);
    let x_1402 : f32 = u_xlat38;
    let x_1404 : vec4<f32> = u_xlat8;
    let x_1406 : vec3<f32> = (vec3<f32>(x_1402, x_1402, x_1402) * vec3<f32>(x_1404.x, x_1404.y, x_1404.z));
    let x_1407 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1406.x, x_1406.y, x_1406.z, x_1407.w);
    let x_1409 : vec3<f32> = u_xlat2;
    let x_1410 : f32 = u_xlat34;
    let x_1413 : vec3<f32> = u_xlat7;
    u_xlat7 = ((x_1409 * vec3<f32>(x_1410, x_1410, x_1410)) + x_1413);
    let x_1415 : vec3<f32> = u_xlat7;
    let x_1416 : vec3<f32> = u_xlat7;
    u_xlat38 = dot(x_1415, x_1416);
    let x_1418 : f32 = u_xlat38;
    u_xlat38 = max(x_1418, 1.17549435e-38f);
    let x_1420 : f32 = u_xlat38;
    u_xlat38 = inverseSqrt(x_1420);
    let x_1422 : f32 = u_xlat38;
    let x_1424 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_1422, x_1422, x_1422) * x_1424);
    let x_1426 : vec3<f32> = u_xlat1;
    let x_1427 : vec3<f32> = u_xlat7;
    u_xlat38 = dot(x_1426, x_1427);
    let x_1429 : f32 = u_xlat38;
    u_xlat38 = clamp(x_1429, 0.0f, 1.0f);
    let x_1431 : f32 = u_xlat38;
    u_xlat38 = log2(x_1431);
    let x_1433 : f32 = u_xlat35;
    let x_1434 : f32 = u_xlat38;
    u_xlat38 = (x_1433 * x_1434);
    let x_1436 : f32 = u_xlat38;
    u_xlat38 = exp2(x_1436);
    let x_1438 : f32 = u_xlat38;
    let x_1441 : vec4<f32> = x_57.x_SpecColor;
    u_xlat7 = (vec3<f32>(x_1438, x_1438, x_1438) * vec3<f32>(x_1441.x, x_1441.y, x_1441.z));
    let x_1444 : vec3<f32> = u_xlat7;
    let x_1445 : vec4<f32> = u_xlat8;
    u_xlat7 = (x_1444 * vec3<f32>(x_1445.x, x_1445.y, x_1445.z));
    let x_1448 : vec4<f32> = u_xlat9;
    let x_1450 : vec4<f32> = u_xlat0;
    let x_1453 : vec3<f32> = u_xlat7;
    u_xlat7 = ((vec3<f32>(x_1448.x, x_1448.y, x_1448.z) * vec3<f32>(x_1450.y, x_1450.z, x_1450.w)) + x_1453);
    let x_1455 : vec3<f32> = u_xlat6;
    let x_1456 : vec3<f32> = u_xlat7;
    u_xlat6 = (x_1455 + x_1456);

    continuing {
      let x_1458 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1458 + bitcast<u32>(1i));
    }
  }
  let x_1461 : vec4<f32> = u_xlat3;
  let x_1463 : vec4<f32> = u_xlat0;
  let x_1466 : vec4<f32> = u_xlat4;
  u_xlat11 = ((vec3<f32>(x_1461.x, x_1461.y, x_1461.z) * vec3<f32>(x_1463.y, x_1463.z, x_1463.w)) + vec3<f32>(x_1466.x, x_1466.y, x_1466.z));
  let x_1471 : vec3<f32> = u_xlat6;
  let x_1472 : vec3<f32> = u_xlat11;
  let x_1473 : vec3<f32> = (x_1471 + x_1472);
  let x_1474 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1473.x, x_1473.y, x_1473.z, x_1474.w);
  let x_1478 : f32 = x_57.x_Surface;
  u_xlatb11 = (x_1478 == 1.0f);
  let x_1480 : bool = u_xlatb11;
  if (x_1480) {
    let x_1485 : f32 = u_xlat0.x;
    x_1481 = x_1485;
  } else {
    x_1481 = 1.0f;
  }
  let x_1487 : f32 = x_1481;
  SV_Target0.w = x_1487;
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


