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

@group(1) @binding(0) var<uniform> x_27 : PGlobals;

@group(1) @binding(3) var<uniform> x_40 : UnityPerMaterial;

var<private> u_xlat1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> u_xlat2 : vec4<f32>;

@group(0) @binding(1) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(7) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

var<private> u_xlat3 : vec4<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat31 : f32;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(10) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat32 : f32;

@group(1) @binding(4) var<uniform> x_155 : LightShadows;

var<private> u_xlatb32 : bool;

var<private> u_xlatb3 : bool;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat13 : f32;

@group(1) @binding(5) var<uniform> x_226 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb4 : vec2<bool>;

var<private> u_xlat33 : f32;

@group(1) @binding(2) var<uniform> x_355 : UnityPerDraw;

var<private> u_xlatu31 : u32;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlatu24 : u32;

var<private> u_xlati34 : i32;

var<private> u_xlat24 : f32;

var<private> u_xlati24 : i32;

var<private> u_xlat6 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_483 : AdditionalLights;

var<private> u_xlat34 : f32;

var<private> u_xlat35 : f32;

var<private> u_xlati35 : i32;

var<private> u_xlatb36 : bool;

var<private> u_xlatb7 : vec4<bool>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat37 : f32;

var<private> u_xlat17 : vec3<f32>;

var<private> u_xlat36 : f32;

@group(0) @binding(4) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlati36 : i32;

var<private> u_xlati7 : i32;

var<private> u_xlati17 : i32;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat9 : vec3<f32>;

var<private> u_xlatb17 : vec3<bool>;

@group(0) @binding(6) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_LinearClamp : sampler;

var<private> u_xlat10 : vec3<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatb10 : bool;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatb24 : bool;

var<private> u_xlatu33 : u32;

fn main_1() {
  var txVec0 : vec3<f32>;
  var x_317 : f32;
  var x_328 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_618 : f32;
  var x_629 : f32;
  var txVec1 : vec3<f32>;
  var x_1075 : f32;
  var x_1088 : f32;
  var x_1146 : f32;
  var x_1157 : vec3<f32>;
  var x_1230 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_34 : f32 = x_27.x_GlobalMipBias.x;
  let x_35 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_23, x_34);
  u_xlat0 = x_35;
  let x_36 : vec4<f32> = u_xlat0;
  let x_44 : vec4<f32> = x_40.x_BaseColor;
  u_xlat0 = (vec4<f32>(x_36.w, x_36.x, x_36.y, x_36.z) * vec4<f32>(x_44.w, x_44.x, x_44.y, x_44.z));
  let x_51 : vec3<f32> = vs_TEXCOORD2;
  let x_52 : vec3<f32> = vs_TEXCOORD2;
  u_xlat1.x = dot(x_51, x_52);
  let x_57 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_57);
  let x_60 : vec3<f32> = u_xlat1;
  let x_62 : vec3<f32> = vs_TEXCOORD2;
  u_xlat1 = (vec3<f32>(x_60.x, x_60.x, x_60.x) * x_62);
  let x_71 : vec2<f32> = vs_TEXCOORD7;
  let x_73 : f32 = x_27.x_GlobalMipBias.x;
  let x_74 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_71, x_73);
  u_xlat2 = x_74;
  let x_80 : vec2<f32> = vs_TEXCOORD7;
  let x_82 : f32 = x_27.x_GlobalMipBias.x;
  let x_83 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_80, x_82);
  let x_84 : vec3<f32> = vec3<f32>(x_83.x, x_83.y, x_83.z);
  let x_85 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_84.x, x_84.y, x_84.z, x_85.w);
  let x_87 : vec4<f32> = u_xlat2;
  let x_91 : vec3<f32> = (vec3<f32>(x_87.x, x_87.y, x_87.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_92 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_91.x, x_91.y, x_91.z, x_92.w);
  let x_95 : vec3<f32> = u_xlat1;
  let x_96 : vec4<f32> = u_xlat2;
  u_xlat31 = dot(x_95, vec3<f32>(x_96.x, x_96.y, x_96.z));
  let x_99 : f32 = u_xlat31;
  u_xlat31 = (x_99 + 0.5f);
  let x_102 : f32 = u_xlat31;
  let x_104 : vec4<f32> = u_xlat3;
  let x_106 : vec3<f32> = (vec3<f32>(x_102, x_102, x_102) * vec3<f32>(x_104.x, x_104.y, x_104.z));
  let x_107 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_106.x, x_106.y, x_106.z, x_107.w);
  let x_111 : f32 = u_xlat2.w;
  u_xlat31 = max(x_111, 0.00009999999747378752f);
  let x_114 : vec4<f32> = u_xlat2;
  let x_116 : f32 = u_xlat31;
  let x_118 : vec3<f32> = (vec3<f32>(x_114.x, x_114.y, x_114.z) / vec3<f32>(x_116, x_116, x_116));
  let x_119 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_118.x, x_118.y, x_118.z, x_119.w);
  let x_125 : vec4<f32> = vs_TEXCOORD6;
  let x_126 : vec2<f32> = vec2<f32>(x_125.x, x_125.y);
  let x_130 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_126.x, x_126.y, x_130);
  let x_142 : vec3<f32> = txVec0;
  let x_145 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_142.xy, x_142.z);
  u_xlat31 = x_145;
  let x_158 : f32 = x_155.x_MainLightShadowParams.x;
  u_xlat32 = (-(x_158) + 1.0f);
  let x_162 : f32 = u_xlat31;
  let x_164 : f32 = x_155.x_MainLightShadowParams.x;
  let x_166 : f32 = u_xlat32;
  u_xlat31 = ((x_162 * x_164) + x_166);
  let x_172 : f32 = vs_TEXCOORD6.z;
  u_xlatb32 = (0.0f >= x_172);
  let x_176 : f32 = vs_TEXCOORD6.z;
  u_xlatb3 = (x_176 >= 1.0f);
  let x_178 : bool = u_xlatb32;
  let x_179 : bool = u_xlatb3;
  u_xlatb32 = (x_178 | x_179);
  let x_181 : bool = u_xlatb32;
  let x_182 : f32 = u_xlat31;
  u_xlat31 = select(x_182, 1.0f, x_181);
  let x_185 : vec3<f32> = vs_TEXCOORD1;
  let x_189 : vec3<f32> = x_27.x_WorldSpaceCameraPos;
  let x_191 : vec3<f32> = (x_185 + -(x_189));
  let x_192 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_191.x, x_191.y, x_191.z, x_192.w);
  let x_194 : vec4<f32> = u_xlat3;
  let x_196 : vec4<f32> = u_xlat3;
  u_xlat32 = dot(vec3<f32>(x_194.x, x_194.y, x_194.z), vec3<f32>(x_196.x, x_196.y, x_196.z));
  let x_199 : f32 = u_xlat32;
  let x_201 : f32 = x_155.x_MainLightShadowParams.z;
  let x_204 : f32 = x_155.x_MainLightShadowParams.w;
  u_xlat3.x = ((x_199 * x_201) + x_204);
  let x_208 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_208, 0.0f, 1.0f);
  let x_212 : f32 = u_xlat31;
  u_xlat13 = (-(x_212) + 1.0f);
  let x_216 : f32 = u_xlat3.x;
  let x_217 : f32 = u_xlat13;
  let x_219 : f32 = u_xlat31;
  u_xlat31 = ((x_216 * x_217) + x_219);
  let x_229 : f32 = x_226.x_MainLightCookieTextureFormat;
  u_xlatb3 = !((x_229 == -1.0f));
  let x_232 : bool = u_xlatb3;
  if (x_232) {
    let x_235 : vec3<f32> = vs_TEXCOORD1;
    let x_238 : vec4<f32> = x_226.x_MainLightWorldToLight[1i];
    let x_240 : vec2<f32> = (vec2<f32>(x_235.y, x_235.y) * vec2<f32>(x_238.x, x_238.y));
    let x_241 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_240.x, x_240.y, x_241.z, x_241.w);
    let x_244 : vec4<f32> = x_226.x_MainLightWorldToLight[0i];
    let x_246 : vec3<f32> = vs_TEXCOORD1;
    let x_249 : vec4<f32> = u_xlat3;
    let x_251 : vec2<f32> = ((vec2<f32>(x_244.x, x_244.y) * vec2<f32>(x_246.x, x_246.x)) + vec2<f32>(x_249.x, x_249.y));
    let x_252 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_251.x, x_251.y, x_252.z, x_252.w);
    let x_255 : vec4<f32> = x_226.x_MainLightWorldToLight[2i];
    let x_257 : vec3<f32> = vs_TEXCOORD1;
    let x_260 : vec4<f32> = u_xlat3;
    let x_262 : vec2<f32> = ((vec2<f32>(x_255.x, x_255.y) * vec2<f32>(x_257.z, x_257.z)) + vec2<f32>(x_260.x, x_260.y));
    let x_263 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_262.x, x_262.y, x_263.z, x_263.w);
    let x_265 : vec4<f32> = u_xlat3;
    let x_269 : vec4<f32> = x_226.x_MainLightWorldToLight[3i];
    let x_271 : vec2<f32> = (vec2<f32>(x_265.x, x_265.y) + vec2<f32>(x_269.x, x_269.y));
    let x_272 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_271.x, x_271.y, x_272.z, x_272.w);
    let x_274 : vec4<f32> = u_xlat3;
    let x_278 : vec2<f32> = ((vec2<f32>(x_274.x, x_274.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_279 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_278.x, x_278.y, x_279.z, x_279.w);
    let x_286 : vec4<f32> = u_xlat3;
    let x_289 : f32 = x_27.x_GlobalMipBias.x;
    let x_290 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_286.x, x_286.y), x_289);
    u_xlat3 = x_290;
    let x_295 : f32 = x_226.x_MainLightCookieTextureFormat;
    let x_297 : f32 = x_226.x_MainLightCookieTextureFormat;
    let x_299 : f32 = x_226.x_MainLightCookieTextureFormat;
    let x_301 : f32 = x_226.x_MainLightCookieTextureFormat;
    let x_302 : vec4<f32> = vec4<f32>(x_295, x_297, x_299, x_301);
    let x_310 : vec4<bool> = (vec4<f32>(x_302.x, x_302.y, x_302.z, x_302.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb4 = vec2<bool>(x_310.x, x_310.y);
    let x_315 : bool = u_xlatb4.y;
    if (x_315) {
      let x_321 : f32 = u_xlat3.w;
      x_317 = x_321;
    } else {
      let x_324 : f32 = u_xlat3.x;
      x_317 = x_324;
    }
    let x_325 : f32 = x_317;
    u_xlat33 = x_325;
    let x_327 : bool = u_xlatb4.x;
    if (x_327) {
      let x_331 : vec4<f32> = u_xlat3;
      x_328 = vec3<f32>(x_331.x, x_331.y, x_331.z);
    } else {
      let x_334 : f32 = u_xlat33;
      x_328 = vec3<f32>(x_334, x_334, x_334);
    }
    let x_336 : vec3<f32> = x_328;
    let x_337 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_336.x, x_336.y, x_336.z, x_337.w);
  } else {
    u_xlat3.x = 1.0f;
    u_xlat3.y = 1.0f;
    u_xlat3.z = 1.0f;
  }
  let x_343 : vec4<f32> = u_xlat3;
  let x_346 : vec4<f32> = x_27.x_MainLightColor;
  let x_348 : vec3<f32> = (vec3<f32>(x_343.x, x_343.y, x_343.z) * vec3<f32>(x_346.x, x_346.y, x_346.z));
  let x_349 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_348.x, x_348.y, x_348.z, x_349.w);
  let x_351 : f32 = u_xlat31;
  let x_358 : f32 = x_355.unity_LightData.z;
  u_xlat31 = (x_351 * x_358);
  let x_360 : f32 = u_xlat31;
  let x_362 : vec4<f32> = u_xlat3;
  let x_364 : vec3<f32> = (vec3<f32>(x_360, x_360, x_360) * vec3<f32>(x_362.x, x_362.y, x_362.z));
  let x_365 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_364.x, x_364.y, x_364.z, x_365.w);
  let x_367 : vec3<f32> = u_xlat1;
  let x_369 : vec4<f32> = x_27.x_MainLightPosition;
  u_xlat31 = dot(x_367, vec3<f32>(x_369.x, x_369.y, x_369.z));
  let x_372 : f32 = u_xlat31;
  u_xlat31 = clamp(x_372, 0.0f, 1.0f);
  let x_374 : f32 = u_xlat31;
  let x_376 : vec4<f32> = u_xlat3;
  let x_378 : vec3<f32> = (vec3<f32>(x_374, x_374, x_374) * vec3<f32>(x_376.x, x_376.y, x_376.z));
  let x_379 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_378.x, x_378.y, x_378.z, x_379.w);
  let x_381 : vec4<f32> = u_xlat0;
  let x_383 : vec4<f32> = u_xlat3;
  let x_385 : vec3<f32> = (vec3<f32>(x_381.y, x_381.z, x_381.w) * vec3<f32>(x_383.x, x_383.y, x_383.z));
  let x_386 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_385.x, x_385.y, x_385.z, x_386.w);
  let x_389 : f32 = x_27.x_AdditionalLightsCount.x;
  let x_391 : f32 = x_355.unity_LightData.y;
  u_xlat31 = min(x_389, x_391);
  let x_395 : f32 = u_xlat31;
  u_xlatu31 = bitcast<u32>(i32(x_395));
  let x_398 : f32 = u_xlat32;
  let x_401 : f32 = x_155.x_AdditionalShadowFadeParams.x;
  let x_404 : f32 = x_155.x_AdditionalShadowFadeParams.y;
  u_xlat32 = ((x_398 * x_401) + x_404);
  let x_406 : f32 = u_xlat32;
  u_xlat32 = clamp(x_406, 0.0f, 1.0f);
  let x_409 : f32 = x_226.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_411 : f32 = x_226.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_413 : f32 = x_226.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_415 : f32 = x_226.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_416 : vec4<f32> = vec4<f32>(x_409, x_411, x_413, x_415);
  let x_422 : vec4<bool> = (vec4<f32>(x_416.x, x_416.y, x_416.z, x_416.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb4 = vec2<bool>(x_422.x, x_422.y);
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_435 : u32 = u_xlatu_loop_1;
    let x_436 : u32 = u_xlatu31;
    if ((x_435 < x_436)) {
    } else {
      break;
    }
    let x_439 : u32 = u_xlatu_loop_1;
    u_xlatu24 = (x_439 >> 2u);
    let x_443 : u32 = u_xlatu_loop_1;
    u_xlati34 = bitcast<i32>((x_443 & 3u));
    let x_448 : u32 = u_xlatu24;
    let x_451 : vec4<f32> = x_355.unity_LightIndices[bitcast<i32>(x_448)];
    let x_461 : i32 = u_xlati34;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_466 : vec4<u32> = indexable[x_461];
    u_xlat24 = dot(x_451, bitcast<vec4<f32>>(x_466));
    let x_470 : f32 = u_xlat24;
    u_xlati24 = i32(x_470);
    let x_473 : vec3<f32> = vs_TEXCOORD1;
    let x_484 : i32 = u_xlati24;
    let x_486 : vec4<f32> = x_483.x_AdditionalLightsPosition[x_484];
    let x_489 : i32 = u_xlati24;
    let x_491 : vec4<f32> = x_483.x_AdditionalLightsPosition[x_489];
    u_xlat6 = ((-(x_473) * vec3<f32>(x_486.w, x_486.w, x_486.w)) + vec3<f32>(x_491.x, x_491.y, x_491.z));
    let x_495 : vec3<f32> = u_xlat6;
    let x_496 : vec3<f32> = u_xlat6;
    u_xlat34 = dot(x_495, x_496);
    let x_498 : f32 = u_xlat34;
    u_xlat34 = max(x_498, 0.00006103515625f);
    let x_502 : f32 = u_xlat34;
    u_xlat35 = inverseSqrt(x_502);
    let x_504 : f32 = u_xlat35;
    let x_506 : vec3<f32> = u_xlat6;
    u_xlat6 = (vec3<f32>(x_504, x_504, x_504) * x_506);
    let x_508 : f32 = u_xlat34;
    u_xlat35 = (1.0f / x_508);
    let x_510 : f32 = u_xlat34;
    let x_511 : i32 = u_xlati24;
    let x_513 : f32 = x_483.x_AdditionalLightsAttenuation[x_511].x;
    u_xlat34 = (x_510 * x_513);
    let x_515 : f32 = u_xlat34;
    let x_517 : f32 = u_xlat34;
    u_xlat34 = ((-(x_515) * x_517) + 1.0f);
    let x_520 : f32 = u_xlat34;
    u_xlat34 = max(x_520, 0.0f);
    let x_522 : f32 = u_xlat34;
    let x_523 : f32 = u_xlat34;
    u_xlat34 = (x_522 * x_523);
    let x_525 : f32 = u_xlat34;
    let x_526 : f32 = u_xlat35;
    u_xlat34 = (x_525 * x_526);
    let x_528 : i32 = u_xlati24;
    let x_530 : vec4<f32> = x_483.x_AdditionalLightsSpotDir[x_528];
    let x_532 : vec3<f32> = u_xlat6;
    u_xlat35 = dot(vec3<f32>(x_530.x, x_530.y, x_530.z), x_532);
    let x_534 : f32 = u_xlat35;
    let x_535 : i32 = u_xlati24;
    let x_537 : f32 = x_483.x_AdditionalLightsAttenuation[x_535].z;
    let x_539 : i32 = u_xlati24;
    let x_541 : f32 = x_483.x_AdditionalLightsAttenuation[x_539].w;
    u_xlat35 = ((x_534 * x_537) + x_541);
    let x_543 : f32 = u_xlat35;
    u_xlat35 = clamp(x_543, 0.0f, 1.0f);
    let x_545 : f32 = u_xlat35;
    let x_546 : f32 = u_xlat35;
    u_xlat35 = (x_545 * x_546);
    let x_548 : f32 = u_xlat34;
    let x_549 : f32 = u_xlat35;
    u_xlat34 = (x_548 * x_549);
    let x_553 : i32 = u_xlati24;
    let x_555 : f32 = x_155.x_AdditionalShadowParams[x_553].w;
    u_xlati35 = i32(x_555);
    let x_558 : i32 = u_xlati35;
    u_xlatb36 = (x_558 >= 0i);
    let x_560 : bool = u_xlatb36;
    if (x_560) {
      let x_564 : i32 = u_xlati24;
      let x_566 : f32 = x_155.x_AdditionalShadowParams[x_564].z;
      u_xlatb36 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_566, x_566, x_566, x_566))));
      let x_570 : bool = u_xlatb36;
      if (x_570) {
        let x_575 : vec3<f32> = u_xlat6;
        let x_578 : vec3<f32> = u_xlat6;
        let x_581 : vec4<bool> = (abs(vec4<f32>(x_575.z, x_575.z, x_575.y, x_575.z)) >= abs(vec4<f32>(x_578.x, x_578.y, x_578.x, x_578.x)));
        let x_583 : vec3<bool> = vec3<bool>(x_581.x, x_581.y, x_581.z);
        let x_584 : vec4<bool> = u_xlatb7;
        u_xlatb7 = vec4<bool>(x_583.x, x_583.y, x_583.z, x_584.w);
        let x_587 : bool = u_xlatb7.y;
        let x_589 : bool = u_xlatb7.x;
        u_xlatb36 = (x_587 & x_589);
        let x_591 : vec3<f32> = u_xlat6;
        let x_594 : vec4<bool> = (-(vec4<f32>(x_591.z, x_591.y, x_591.z, x_591.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_595 : vec3<bool> = vec3<bool>(x_594.x, x_594.y, x_594.w);
        let x_596 : vec4<bool> = u_xlatb7;
        u_xlatb7 = vec4<bool>(x_595.x, x_595.y, x_596.z, x_595.z);
        let x_600 : bool = u_xlatb7.x;
        u_xlat7.x = select(4.0f, 5.0f, x_600);
        let x_606 : bool = u_xlatb7.y;
        u_xlat7.y = select(2.0f, 3.0f, x_606);
        let x_613 : bool = u_xlatb7.w;
        u_xlat37 = select(0.0f, 1.0f, x_613);
        let x_617 : bool = u_xlatb7.z;
        if (x_617) {
          let x_622 : f32 = u_xlat7.y;
          x_618 = x_622;
        } else {
          let x_624 : f32 = u_xlat37;
          x_618 = x_624;
        }
        let x_625 : f32 = x_618;
        u_xlat17.x = x_625;
        let x_628 : bool = u_xlatb36;
        if (x_628) {
          let x_633 : f32 = u_xlat7.x;
          x_629 = x_633;
        } else {
          let x_636 : f32 = u_xlat17.x;
          x_629 = x_636;
        }
        let x_637 : f32 = x_629;
        u_xlat36 = x_637;
        let x_638 : i32 = u_xlati24;
        let x_640 : f32 = x_155.x_AdditionalShadowParams[x_638].w;
        u_xlat7.x = trunc(x_640);
        let x_643 : f32 = u_xlat36;
        let x_645 : f32 = u_xlat7.x;
        u_xlat36 = (x_643 + x_645);
        let x_647 : f32 = u_xlat36;
        u_xlati35 = i32(x_647);
      }
      let x_649 : i32 = u_xlati35;
      u_xlati35 = (x_649 << bitcast<u32>(2i));
      let x_651 : vec3<f32> = vs_TEXCOORD1;
      let x_654 : i32 = u_xlati35;
      let x_657 : i32 = u_xlati35;
      let x_661 : vec4<f32> = x_155.x_AdditionalLightsWorldToShadow[((x_654 + 1i) / 4i)][((x_657 + 1i) % 4i)];
      u_xlat7 = (vec4<f32>(x_651.y, x_651.y, x_651.y, x_651.y) * x_661);
      let x_663 : i32 = u_xlati35;
      let x_665 : i32 = u_xlati35;
      let x_668 : vec4<f32> = x_155.x_AdditionalLightsWorldToShadow[(x_663 / 4i)][(x_665 % 4i)];
      let x_669 : vec3<f32> = vs_TEXCOORD1;
      let x_672 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_668 * vec4<f32>(x_669.x, x_669.x, x_669.x, x_669.x)) + x_672);
      let x_674 : i32 = u_xlati35;
      let x_677 : i32 = u_xlati35;
      let x_681 : vec4<f32> = x_155.x_AdditionalLightsWorldToShadow[((x_674 + 2i) / 4i)][((x_677 + 2i) % 4i)];
      let x_682 : vec3<f32> = vs_TEXCOORD1;
      let x_685 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_681 * vec4<f32>(x_682.z, x_682.z, x_682.z, x_682.z)) + x_685);
      let x_687 : vec4<f32> = u_xlat7;
      let x_688 : i32 = u_xlati35;
      let x_691 : i32 = u_xlati35;
      let x_695 : vec4<f32> = x_155.x_AdditionalLightsWorldToShadow[((x_688 + 3i) / 4i)][((x_691 + 3i) % 4i)];
      u_xlat7 = (x_687 + x_695);
      let x_697 : vec4<f32> = u_xlat7;
      let x_699 : vec4<f32> = u_xlat7;
      let x_701 : vec3<f32> = (vec3<f32>(x_697.x, x_697.y, x_697.z) / vec3<f32>(x_699.w, x_699.w, x_699.w));
      let x_702 : vec4<f32> = u_xlat7;
      u_xlat7 = vec4<f32>(x_701.x, x_701.y, x_701.z, x_702.w);
      let x_705 : vec4<f32> = u_xlat7;
      let x_706 : vec2<f32> = vec2<f32>(x_705.x, x_705.y);
      let x_708 : f32 = u_xlat7.z;
      txVec1 = vec3<f32>(x_706.x, x_706.y, x_708);
      let x_716 : vec3<f32> = txVec1;
      let x_718 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_716.xy, x_716.z);
      u_xlat35 = x_718;
      let x_719 : i32 = u_xlati24;
      let x_721 : f32 = x_155.x_AdditionalShadowParams[x_719].x;
      u_xlat36 = (1.0f + -(x_721));
      let x_724 : f32 = u_xlat35;
      let x_725 : i32 = u_xlati24;
      let x_727 : f32 = x_155.x_AdditionalShadowParams[x_725].x;
      let x_729 : f32 = u_xlat36;
      u_xlat35 = ((x_724 * x_727) + x_729);
      let x_732 : f32 = u_xlat7.z;
      u_xlatb36 = (0.0f >= x_732);
      let x_735 : f32 = u_xlat7.z;
      u_xlatb7.x = (x_735 >= 1.0f);
      let x_738 : bool = u_xlatb36;
      let x_740 : bool = u_xlatb7.x;
      u_xlatb36 = (x_738 | x_740);
      let x_742 : bool = u_xlatb36;
      let x_743 : f32 = u_xlat35;
      u_xlat35 = select(x_743, 1.0f, x_742);
    } else {
      u_xlat35 = 1.0f;
    }
    let x_746 : f32 = u_xlat35;
    u_xlat36 = (-(x_746) + 1.0f);
    let x_749 : f32 = u_xlat32;
    let x_750 : f32 = u_xlat36;
    let x_752 : f32 = u_xlat35;
    u_xlat35 = ((x_749 * x_750) + x_752);
    let x_755 : i32 = u_xlati24;
    u_xlati36 = (1i << bitcast<u32>((x_755 & 31i)));
    let x_759 : i32 = u_xlati36;
    let x_762 : f32 = x_226.x_AdditionalLightsCookieEnableBits;
    u_xlati36 = bitcast<i32>((bitcast<u32>(x_759) & bitcast<u32>(x_762)));
    let x_766 : i32 = u_xlati36;
    if ((x_766 != 0i)) {
      let x_770 : i32 = u_xlati24;
      let x_772 : f32 = x_226.x_AdditionalLightsLightTypes[x_770].el;
      u_xlati36 = i32(x_772);
      let x_775 : i32 = u_xlati36;
      u_xlati7 = select(1i, 0i, (x_775 != 0i));
      let x_779 : i32 = u_xlati24;
      u_xlati17 = (x_779 << bitcast<u32>(2i));
      let x_781 : i32 = u_xlati7;
      if ((x_781 != 0i)) {
        let x_785 : vec3<f32> = vs_TEXCOORD1;
        let x_787 : i32 = u_xlati17;
        let x_790 : i32 = u_xlati17;
        let x_794 : vec4<f32> = x_226.x_AdditionalLightsWorldToLights[((x_787 + 1i) / 4i)][((x_790 + 1i) % 4i)];
        let x_796 : vec3<f32> = (vec3<f32>(x_785.y, x_785.y, x_785.y) * vec3<f32>(x_794.x, x_794.y, x_794.w));
        let x_797 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_796.x, x_797.y, x_796.y, x_796.z);
        let x_799 : i32 = u_xlati17;
        let x_801 : i32 = u_xlati17;
        let x_804 : vec4<f32> = x_226.x_AdditionalLightsWorldToLights[(x_799 / 4i)][(x_801 % 4i)];
        let x_806 : vec3<f32> = vs_TEXCOORD1;
        let x_809 : vec4<f32> = u_xlat7;
        let x_811 : vec3<f32> = ((vec3<f32>(x_804.x, x_804.y, x_804.w) * vec3<f32>(x_806.x, x_806.x, x_806.x)) + vec3<f32>(x_809.x, x_809.z, x_809.w));
        let x_812 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_811.x, x_812.y, x_811.y, x_811.z);
        let x_814 : i32 = u_xlati17;
        let x_817 : i32 = u_xlati17;
        let x_821 : vec4<f32> = x_226.x_AdditionalLightsWorldToLights[((x_814 + 2i) / 4i)][((x_817 + 2i) % 4i)];
        let x_823 : vec3<f32> = vs_TEXCOORD1;
        let x_826 : vec4<f32> = u_xlat7;
        let x_828 : vec3<f32> = ((vec3<f32>(x_821.x, x_821.y, x_821.w) * vec3<f32>(x_823.z, x_823.z, x_823.z)) + vec3<f32>(x_826.x, x_826.z, x_826.w));
        let x_829 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_828.x, x_829.y, x_828.y, x_828.z);
        let x_831 : vec4<f32> = u_xlat7;
        let x_833 : i32 = u_xlati17;
        let x_836 : i32 = u_xlati17;
        let x_840 : vec4<f32> = x_226.x_AdditionalLightsWorldToLights[((x_833 + 3i) / 4i)][((x_836 + 3i) % 4i)];
        let x_842 : vec3<f32> = (vec3<f32>(x_831.x, x_831.z, x_831.w) + vec3<f32>(x_840.x, x_840.y, x_840.w));
        let x_843 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_842.x, x_843.y, x_842.y, x_842.z);
        let x_845 : vec4<f32> = u_xlat7;
        let x_847 : vec4<f32> = u_xlat7;
        let x_849 : vec2<f32> = (vec2<f32>(x_845.x, x_845.z) / vec2<f32>(x_847.w, x_847.w));
        let x_850 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_849.x, x_850.y, x_849.y, x_850.w);
        let x_852 : vec4<f32> = u_xlat7;
        let x_855 : vec2<f32> = ((vec2<f32>(x_852.x, x_852.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_856 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_855.x, x_856.y, x_855.y, x_856.w);
        let x_858 : vec4<f32> = u_xlat7;
        let x_862 : vec2<f32> = clamp(vec2<f32>(x_858.x, x_858.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_863 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_862.x, x_863.y, x_862.y, x_863.w);
        let x_865 : i32 = u_xlati24;
        let x_867 : vec4<f32> = x_226.x_AdditionalLightsCookieAtlasUVRects[x_865];
        let x_869 : vec4<f32> = u_xlat7;
        let x_872 : i32 = u_xlati24;
        let x_874 : vec4<f32> = x_226.x_AdditionalLightsCookieAtlasUVRects[x_872];
        let x_876 : vec2<f32> = ((vec2<f32>(x_867.x, x_867.y) * vec2<f32>(x_869.x, x_869.z)) + vec2<f32>(x_874.z, x_874.w));
        let x_877 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_876.x, x_877.y, x_876.y, x_877.w);
      } else {
        let x_880 : i32 = u_xlati36;
        u_xlatb36 = (x_880 == 1i);
        let x_882 : bool = u_xlatb36;
        u_xlati36 = select(0i, 1i, x_882);
        let x_884 : i32 = u_xlati36;
        if ((x_884 != 0i)) {
          let x_889 : vec3<f32> = vs_TEXCOORD1;
          let x_891 : i32 = u_xlati17;
          let x_894 : i32 = u_xlati17;
          let x_898 : vec4<f32> = x_226.x_AdditionalLightsWorldToLights[((x_891 + 1i) / 4i)][((x_894 + 1i) % 4i)];
          let x_900 : vec2<f32> = (vec2<f32>(x_889.y, x_889.y) * vec2<f32>(x_898.x, x_898.y));
          let x_901 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_900.x, x_900.y, x_901.z, x_901.w);
          let x_903 : i32 = u_xlati17;
          let x_905 : i32 = u_xlati17;
          let x_908 : vec4<f32> = x_226.x_AdditionalLightsWorldToLights[(x_903 / 4i)][(x_905 % 4i)];
          let x_910 : vec3<f32> = vs_TEXCOORD1;
          let x_913 : vec4<f32> = u_xlat8;
          let x_915 : vec2<f32> = ((vec2<f32>(x_908.x, x_908.y) * vec2<f32>(x_910.x, x_910.x)) + vec2<f32>(x_913.x, x_913.y));
          let x_916 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_915.x, x_915.y, x_916.z, x_916.w);
          let x_918 : i32 = u_xlati17;
          let x_921 : i32 = u_xlati17;
          let x_925 : vec4<f32> = x_226.x_AdditionalLightsWorldToLights[((x_918 + 2i) / 4i)][((x_921 + 2i) % 4i)];
          let x_927 : vec3<f32> = vs_TEXCOORD1;
          let x_930 : vec4<f32> = u_xlat8;
          let x_932 : vec2<f32> = ((vec2<f32>(x_925.x, x_925.y) * vec2<f32>(x_927.z, x_927.z)) + vec2<f32>(x_930.x, x_930.y));
          let x_933 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_932.x, x_932.y, x_933.z, x_933.w);
          let x_935 : vec4<f32> = u_xlat8;
          let x_937 : i32 = u_xlati17;
          let x_940 : i32 = u_xlati17;
          let x_944 : vec4<f32> = x_226.x_AdditionalLightsWorldToLights[((x_937 + 3i) / 4i)][((x_940 + 3i) % 4i)];
          let x_946 : vec2<f32> = (vec2<f32>(x_935.x, x_935.y) + vec2<f32>(x_944.x, x_944.y));
          let x_947 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_946.x, x_946.y, x_947.z, x_947.w);
          let x_949 : vec4<f32> = u_xlat8;
          let x_952 : vec2<f32> = ((vec2<f32>(x_949.x, x_949.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_953 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_952.x, x_952.y, x_953.z, x_953.w);
          let x_955 : vec4<f32> = u_xlat8;
          let x_957 : vec2<f32> = fract(vec2<f32>(x_955.x, x_955.y));
          let x_958 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_957.x, x_957.y, x_958.z, x_958.w);
          let x_960 : i32 = u_xlati24;
          let x_962 : vec4<f32> = x_226.x_AdditionalLightsCookieAtlasUVRects[x_960];
          let x_964 : vec4<f32> = u_xlat8;
          let x_967 : i32 = u_xlati24;
          let x_969 : vec4<f32> = x_226.x_AdditionalLightsCookieAtlasUVRects[x_967];
          let x_971 : vec2<f32> = ((vec2<f32>(x_962.x, x_962.y) * vec2<f32>(x_964.x, x_964.y)) + vec2<f32>(x_969.z, x_969.w));
          let x_972 : vec4<f32> = u_xlat7;
          u_xlat7 = vec4<f32>(x_971.x, x_972.y, x_971.y, x_972.w);
        } else {
          let x_975 : vec3<f32> = vs_TEXCOORD1;
          let x_977 : i32 = u_xlati17;
          let x_980 : i32 = u_xlati17;
          let x_984 : vec4<f32> = x_226.x_AdditionalLightsWorldToLights[((x_977 + 1i) / 4i)][((x_980 + 1i) % 4i)];
          u_xlat8 = (vec4<f32>(x_975.y, x_975.y, x_975.y, x_975.y) * x_984);
          let x_986 : i32 = u_xlati17;
          let x_988 : i32 = u_xlati17;
          let x_991 : vec4<f32> = x_226.x_AdditionalLightsWorldToLights[(x_986 / 4i)][(x_988 % 4i)];
          let x_992 : vec3<f32> = vs_TEXCOORD1;
          let x_995 : vec4<f32> = u_xlat8;
          u_xlat8 = ((x_991 * vec4<f32>(x_992.x, x_992.x, x_992.x, x_992.x)) + x_995);
          let x_997 : i32 = u_xlati17;
          let x_1000 : i32 = u_xlati17;
          let x_1004 : vec4<f32> = x_226.x_AdditionalLightsWorldToLights[((x_997 + 2i) / 4i)][((x_1000 + 2i) % 4i)];
          let x_1005 : vec3<f32> = vs_TEXCOORD1;
          let x_1008 : vec4<f32> = u_xlat8;
          u_xlat8 = ((x_1004 * vec4<f32>(x_1005.z, x_1005.z, x_1005.z, x_1005.z)) + x_1008);
          let x_1010 : vec4<f32> = u_xlat8;
          let x_1011 : i32 = u_xlati17;
          let x_1014 : i32 = u_xlati17;
          let x_1018 : vec4<f32> = x_226.x_AdditionalLightsWorldToLights[((x_1011 + 3i) / 4i)][((x_1014 + 3i) % 4i)];
          u_xlat8 = (x_1010 + x_1018);
          let x_1020 : vec4<f32> = u_xlat8;
          let x_1022 : vec4<f32> = u_xlat8;
          let x_1024 : vec3<f32> = (vec3<f32>(x_1020.x, x_1020.y, x_1020.z) / vec3<f32>(x_1022.w, x_1022.w, x_1022.w));
          let x_1025 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1024.x, x_1024.y, x_1024.z, x_1025.w);
          let x_1027 : vec4<f32> = u_xlat8;
          let x_1029 : vec4<f32> = u_xlat8;
          u_xlat36 = dot(vec3<f32>(x_1027.x, x_1027.y, x_1027.z), vec3<f32>(x_1029.x, x_1029.y, x_1029.z));
          let x_1032 : f32 = u_xlat36;
          u_xlat36 = inverseSqrt(x_1032);
          let x_1034 : f32 = u_xlat36;
          let x_1036 : vec4<f32> = u_xlat8;
          let x_1038 : vec3<f32> = (vec3<f32>(x_1034, x_1034, x_1034) * vec3<f32>(x_1036.x, x_1036.y, x_1036.z));
          let x_1039 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1038.x, x_1038.y, x_1038.z, x_1039.w);
          let x_1041 : vec4<f32> = u_xlat8;
          u_xlat36 = dot(abs(vec3<f32>(x_1041.x, x_1041.y, x_1041.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1046 : f32 = u_xlat36;
          u_xlat36 = max(x_1046, 0.00000099999999747524f);
          let x_1049 : f32 = u_xlat36;
          u_xlat36 = (1.0f / x_1049);
          let x_1052 : f32 = u_xlat36;
          let x_1054 : vec4<f32> = u_xlat8;
          u_xlat9 = (vec3<f32>(x_1052, x_1052, x_1052) * vec3<f32>(x_1054.z, x_1054.x, x_1054.y));
          let x_1058 : f32 = u_xlat9.x;
          u_xlat9.x = -(x_1058);
          let x_1062 : f32 = u_xlat9.x;
          u_xlat9.x = clamp(x_1062, 0.0f, 1.0f);
          let x_1067 : vec3<f32> = u_xlat9;
          let x_1069 : vec4<bool> = (vec4<f32>(x_1067.y, x_1067.y, x_1067.z, x_1067.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_1070 : vec2<bool> = vec2<bool>(x_1069.x, x_1069.z);
          let x_1071 : vec3<bool> = u_xlatb17;
          u_xlatb17 = vec3<bool>(x_1070.x, x_1071.y, x_1070.y);
          let x_1074 : bool = u_xlatb17.x;
          if (x_1074) {
            let x_1079 : f32 = u_xlat9.x;
            x_1075 = x_1079;
          } else {
            let x_1082 : f32 = u_xlat9.x;
            x_1075 = -(x_1082);
          }
          let x_1084 : f32 = x_1075;
          u_xlat17.x = x_1084;
          let x_1087 : bool = u_xlatb17.z;
          if (x_1087) {
            let x_1092 : f32 = u_xlat9.x;
            x_1088 = x_1092;
          } else {
            let x_1095 : f32 = u_xlat9.x;
            x_1088 = -(x_1095);
          }
          let x_1097 : f32 = x_1088;
          u_xlat17.z = x_1097;
          let x_1099 : vec4<f32> = u_xlat8;
          let x_1101 : f32 = u_xlat36;
          let x_1104 : vec3<f32> = u_xlat17;
          let x_1106 : vec2<f32> = ((vec2<f32>(x_1099.x, x_1099.y) * vec2<f32>(x_1101, x_1101)) + vec2<f32>(x_1104.x, x_1104.z));
          let x_1107 : vec3<f32> = u_xlat17;
          u_xlat17 = vec3<f32>(x_1106.x, x_1107.y, x_1106.y);
          let x_1109 : vec3<f32> = u_xlat17;
          let x_1112 : vec2<f32> = ((vec2<f32>(x_1109.x, x_1109.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1113 : vec3<f32> = u_xlat17;
          u_xlat17 = vec3<f32>(x_1112.x, x_1113.y, x_1112.y);
          let x_1115 : vec3<f32> = u_xlat17;
          let x_1119 : vec2<f32> = clamp(vec2<f32>(x_1115.x, x_1115.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1120 : vec3<f32> = u_xlat17;
          u_xlat17 = vec3<f32>(x_1119.x, x_1120.y, x_1119.y);
          let x_1122 : i32 = u_xlati24;
          let x_1124 : vec4<f32> = x_226.x_AdditionalLightsCookieAtlasUVRects[x_1122];
          let x_1126 : vec3<f32> = u_xlat17;
          let x_1129 : i32 = u_xlati24;
          let x_1131 : vec4<f32> = x_226.x_AdditionalLightsCookieAtlasUVRects[x_1129];
          let x_1133 : vec2<f32> = ((vec2<f32>(x_1124.x, x_1124.y) * vec2<f32>(x_1126.x, x_1126.z)) + vec2<f32>(x_1131.z, x_1131.w));
          let x_1134 : vec4<f32> = u_xlat7;
          u_xlat7 = vec4<f32>(x_1133.x, x_1134.y, x_1133.y, x_1134.w);
        }
      }
      let x_1141 : vec4<f32> = u_xlat7;
      let x_1143 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_1141.x, x_1141.z), 0.0f);
      u_xlat7 = x_1143;
      let x_1145 : bool = u_xlatb4.y;
      if (x_1145) {
        let x_1150 : f32 = u_xlat7.w;
        x_1146 = x_1150;
      } else {
        let x_1153 : f32 = u_xlat7.x;
        x_1146 = x_1153;
      }
      let x_1154 : f32 = x_1146;
      u_xlat36 = x_1154;
      let x_1156 : bool = u_xlatb4.x;
      if (x_1156) {
        let x_1160 : vec4<f32> = u_xlat7;
        x_1157 = vec3<f32>(x_1160.x, x_1160.y, x_1160.z);
      } else {
        let x_1163 : f32 = u_xlat36;
        x_1157 = vec3<f32>(x_1163, x_1163, x_1163);
      }
      let x_1165 : vec3<f32> = x_1157;
      let x_1166 : vec4<f32> = u_xlat7;
      u_xlat7 = vec4<f32>(x_1165.x, x_1165.y, x_1165.z, x_1166.w);
    } else {
      u_xlat7.x = 1.0f;
      u_xlat7.y = 1.0f;
      u_xlat7.z = 1.0f;
    }
    let x_1172 : vec4<f32> = u_xlat7;
    let x_1174 : i32 = u_xlati24;
    let x_1176 : vec4<f32> = x_483.x_AdditionalLightsColor[x_1174];
    let x_1178 : vec3<f32> = (vec3<f32>(x_1172.x, x_1172.y, x_1172.z) * vec3<f32>(x_1176.x, x_1176.y, x_1176.z));
    let x_1179 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1178.x, x_1178.y, x_1178.z, x_1179.w);
    let x_1181 : f32 = u_xlat34;
    let x_1182 : f32 = u_xlat35;
    u_xlat24 = (x_1181 * x_1182);
    let x_1184 : f32 = u_xlat24;
    let x_1186 : vec4<f32> = u_xlat7;
    let x_1188 : vec3<f32> = (vec3<f32>(x_1184, x_1184, x_1184) * vec3<f32>(x_1186.x, x_1186.y, x_1186.z));
    let x_1189 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1188.x, x_1188.y, x_1188.z, x_1189.w);
    let x_1191 : vec3<f32> = u_xlat1;
    let x_1192 : vec3<f32> = u_xlat6;
    u_xlat24 = dot(x_1191, x_1192);
    let x_1194 : f32 = u_xlat24;
    u_xlat24 = clamp(x_1194, 0.0f, 1.0f);
    let x_1196 : f32 = u_xlat24;
    let x_1198 : vec4<f32> = u_xlat7;
    u_xlat6 = (vec3<f32>(x_1196, x_1196, x_1196) * vec3<f32>(x_1198.x, x_1198.y, x_1198.z));
    let x_1201 : vec3<f32> = u_xlat6;
    let x_1202 : vec4<f32> = u_xlat0;
    let x_1205 : vec3<f32> = u_xlat5;
    u_xlat5 = ((x_1201 * vec3<f32>(x_1202.y, x_1202.z, x_1202.w)) + x_1205);

    continuing {
      let x_1207 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1207 + bitcast<u32>(1i));
    }
  }
  let x_1210 : vec4<f32> = u_xlat2;
  let x_1212 : vec4<f32> = u_xlat0;
  let x_1215 : vec4<f32> = u_xlat3;
  u_xlat10 = ((vec3<f32>(x_1210.x, x_1210.y, x_1210.z) * vec3<f32>(x_1212.y, x_1212.z, x_1212.w)) + vec3<f32>(x_1215.x, x_1215.y, x_1215.z));
  let x_1220 : vec3<f32> = u_xlat5;
  let x_1221 : vec3<f32> = u_xlat10;
  let x_1222 : vec3<f32> = (x_1220 + x_1221);
  let x_1223 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1222.x, x_1222.y, x_1222.z, x_1223.w);
  let x_1227 : f32 = x_40.x_Surface;
  u_xlatb10 = (x_1227 == 1.0f);
  let x_1229 : bool = u_xlatb10;
  if (x_1229) {
    let x_1234 : f32 = u_xlat0.x;
    x_1230 = x_1234;
  } else {
    x_1230 = 1.0f;
  }
  let x_1236 : f32 = x_1230;
  SV_Target0.w = x_1236;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(4) vs_TEXCOORD7_param : vec2<f32>, @location(3) vs_TEXCOORD6_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


