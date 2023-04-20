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

@group(1) @binding(3) var<uniform> x_41 : UnityPerMaterial;

var<private> u_xlat1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> u_xlat31 : f32;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat2 : vec4<f32>;

@group(0) @binding(1) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(7) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

var<private> u_xlat3 : vec3<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat32 : f32;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(10) var sampler_LinearClampCompare : sampler_comparison;

@group(1) @binding(4) var<uniform> x_197 : LightShadows;

var<private> u_xlatb3 : bool;

var<private> u_xlatb13 : vec2<bool>;

var<private> u_xlat13 : vec3<f32>;

var<private> u_xlat23 : f32;

@group(1) @binding(5) var<uniform> x_271 : LightCookies;

var<private> u_xlat4 : vec4<f32>;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_MainLightCookieTexture : sampler;

@group(1) @binding(2) var<uniform> x_391 : UnityPerDraw;

var<private> u_xlatu32 : u32;

var<private> u_xlatb4 : vec2<bool>;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlatu34 : u32;

var<private> u_xlati35 : i32;

var<private> u_xlat34 : f32;

var<private> u_xlati34 : i32;

var<private> u_xlat6 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_513 : AdditionalLights;

var<private> u_xlat35 : f32;

var<private> u_xlat36 : f32;

var<private> u_xlati36 : i32;

var<private> u_xlatb7 : vec3<bool>;

var<private> u_xlatb8 : vec3<bool>;

var<private> u_xlat17 : vec3<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat27 : f32;

var<private> u_xlat7 : vec4<f32>;

@group(0) @binding(4) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb17 : bool;

var<private> u_xlati7 : i32;

var<private> u_xlati17 : i32;

var<private> u_xlati27 : i32;

var<private> u_xlat9 : vec3<f32>;

var<private> u_xlatb28 : vec2<bool>;

var<private> u_xlat28 : vec2<f32>;

@group(0) @binding(6) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_LinearClamp : sampler;

var<private> u_xlat37 : f32;

var<private> u_xlat10 : vec3<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatb10 : bool;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu24 : u32;

var<private> u_xlatb34 : bool;

fn main_1() {
  var txVec0 : vec3<f32>;
  var x_358 : f32;
  var x_369 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_650 : f32;
  var x_662 : f32;
  var txVec1 : vec3<f32>;
  var x_1127 : f32;
  var x_1140 : f32;
  var x_1198 : f32;
  var x_1209 : vec3<f32>;
  var x_1305 : f32;
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
  let x_52 : vec3<f32> = vs_TEXCOORD2;
  let x_53 : vec3<f32> = vs_TEXCOORD2;
  u_xlat1.x = dot(x_52, x_53);
  let x_58 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_58);
  let x_61 : vec3<f32> = u_xlat1;
  let x_63 : vec3<f32> = vs_TEXCOORD2;
  u_xlat1 = (vec3<f32>(x_61.x, x_61.x, x_61.x) * x_63);
  let x_70 : f32 = vs_TEXCOORD1.y;
  let x_74 : f32 = x_28.unity_MatrixV[1i].z;
  u_xlat31 = (x_70 * x_74);
  let x_77 : f32 = x_28.unity_MatrixV[0i].z;
  let x_79 : f32 = vs_TEXCOORD1.x;
  let x_81 : f32 = u_xlat31;
  u_xlat31 = ((x_77 * x_79) + x_81);
  let x_85 : f32 = x_28.unity_MatrixV[2i].z;
  let x_87 : f32 = vs_TEXCOORD1.z;
  let x_89 : f32 = u_xlat31;
  u_xlat31 = ((x_85 * x_87) + x_89);
  let x_91 : f32 = u_xlat31;
  let x_94 : f32 = x_28.unity_MatrixV[3i].z;
  u_xlat31 = (x_91 + x_94);
  let x_96 : f32 = u_xlat31;
  let x_100 : f32 = x_28.x_ProjectionParams.y;
  u_xlat31 = (-(x_96) + -(x_100));
  let x_103 : f32 = u_xlat31;
  u_xlat31 = max(x_103, 0.0f);
  let x_106 : f32 = u_xlat31;
  let x_109 : f32 = x_28.unity_FogParams.x;
  u_xlat31 = (x_106 * x_109);
  let x_118 : vec2<f32> = vs_TEXCOORD7;
  let x_120 : f32 = x_28.x_GlobalMipBias.x;
  let x_121 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_118, x_120);
  u_xlat2 = x_121;
  let x_127 : vec2<f32> = vs_TEXCOORD7;
  let x_129 : f32 = x_28.x_GlobalMipBias.x;
  let x_130 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_127, x_129);
  u_xlat3 = vec3<f32>(x_130.x, x_130.y, x_130.z);
  let x_132 : vec4<f32> = u_xlat2;
  let x_136 : vec3<f32> = (vec3<f32>(x_132.x, x_132.y, x_132.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_137 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_136.x, x_136.y, x_136.z, x_137.w);
  let x_139 : vec3<f32> = u_xlat1;
  let x_140 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(x_139, vec3<f32>(x_140.x, x_140.y, x_140.z));
  let x_145 : f32 = u_xlat2.x;
  u_xlat2.x = (x_145 + 0.5f);
  let x_149 : vec4<f32> = u_xlat2;
  let x_151 : vec3<f32> = u_xlat3;
  let x_152 : vec3<f32> = (vec3<f32>(x_149.x, x_149.x, x_149.x) * x_151);
  let x_153 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_152.x, x_152.y, x_152.z, x_153.w);
  let x_158 : f32 = u_xlat2.w;
  u_xlat32 = max(x_158, 0.00009999999747378752f);
  let x_161 : vec4<f32> = u_xlat2;
  let x_163 : f32 = u_xlat32;
  let x_165 : vec3<f32> = (vec3<f32>(x_161.x, x_161.y, x_161.z) / vec3<f32>(x_163, x_163, x_163));
  let x_166 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_165.x, x_165.y, x_165.z, x_166.w);
  let x_172 : vec4<f32> = vs_TEXCOORD6;
  let x_173 : vec2<f32> = vec2<f32>(x_172.x, x_172.y);
  let x_175 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_173.x, x_173.y, x_175);
  let x_187 : vec3<f32> = txVec0;
  let x_189 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_187.xy, x_187.z);
  u_xlat32 = x_189;
  let x_199 : f32 = x_197.x_MainLightShadowParams.x;
  u_xlat3.x = (-(x_199) + 1.0f);
  let x_204 : f32 = u_xlat32;
  let x_206 : f32 = x_197.x_MainLightShadowParams.x;
  let x_209 : f32 = u_xlat3.x;
  u_xlat32 = ((x_204 * x_206) + x_209);
  let x_215 : f32 = vs_TEXCOORD6.z;
  u_xlatb3 = (0.0f >= x_215);
  let x_221 : f32 = vs_TEXCOORD6.z;
  u_xlatb13.x = (x_221 >= 1.0f);
  let x_225 : bool = u_xlatb13.x;
  let x_226 : bool = u_xlatb3;
  u_xlatb3 = (x_225 | x_226);
  let x_228 : bool = u_xlatb3;
  let x_229 : f32 = u_xlat32;
  u_xlat32 = select(x_229, 1.0f, x_228);
  let x_231 : vec3<f32> = vs_TEXCOORD1;
  let x_235 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  u_xlat3 = (x_231 + -(x_235));
  let x_238 : vec3<f32> = u_xlat3;
  let x_239 : vec3<f32> = u_xlat3;
  u_xlat3.x = dot(x_238, x_239);
  let x_244 : f32 = u_xlat3.x;
  let x_246 : f32 = x_197.x_MainLightShadowParams.z;
  let x_249 : f32 = x_197.x_MainLightShadowParams.w;
  u_xlat13.x = ((x_244 * x_246) + x_249);
  let x_253 : f32 = u_xlat13.x;
  u_xlat13.x = clamp(x_253, 0.0f, 1.0f);
  let x_257 : f32 = u_xlat32;
  u_xlat23 = (-(x_257) + 1.0f);
  let x_261 : f32 = u_xlat13.x;
  let x_262 : f32 = u_xlat23;
  let x_264 : f32 = u_xlat32;
  u_xlat32 = ((x_261 * x_262) + x_264);
  let x_273 : f32 = x_271.x_MainLightCookieTextureFormat;
  u_xlatb13.x = !((x_273 == -1.0f));
  let x_278 : bool = u_xlatb13.x;
  if (x_278) {
    let x_281 : vec3<f32> = vs_TEXCOORD1;
    let x_284 : vec4<f32> = x_271.x_MainLightWorldToLight[1i];
    let x_286 : vec2<f32> = (vec2<f32>(x_281.y, x_281.y) * vec2<f32>(x_284.x, x_284.y));
    let x_287 : vec3<f32> = u_xlat13;
    u_xlat13 = vec3<f32>(x_286.x, x_286.y, x_287.z);
    let x_290 : vec4<f32> = x_271.x_MainLightWorldToLight[0i];
    let x_292 : vec3<f32> = vs_TEXCOORD1;
    let x_295 : vec3<f32> = u_xlat13;
    let x_297 : vec2<f32> = ((vec2<f32>(x_290.x, x_290.y) * vec2<f32>(x_292.x, x_292.x)) + vec2<f32>(x_295.x, x_295.y));
    let x_298 : vec3<f32> = u_xlat13;
    u_xlat13 = vec3<f32>(x_297.x, x_297.y, x_298.z);
    let x_301 : vec4<f32> = x_271.x_MainLightWorldToLight[2i];
    let x_303 : vec3<f32> = vs_TEXCOORD1;
    let x_306 : vec3<f32> = u_xlat13;
    let x_308 : vec2<f32> = ((vec2<f32>(x_301.x, x_301.y) * vec2<f32>(x_303.z, x_303.z)) + vec2<f32>(x_306.x, x_306.y));
    let x_309 : vec3<f32> = u_xlat13;
    u_xlat13 = vec3<f32>(x_308.x, x_308.y, x_309.z);
    let x_311 : vec3<f32> = u_xlat13;
    let x_314 : vec4<f32> = x_271.x_MainLightWorldToLight[3i];
    let x_316 : vec2<f32> = (vec2<f32>(x_311.x, x_311.y) + vec2<f32>(x_314.x, x_314.y));
    let x_317 : vec3<f32> = u_xlat13;
    u_xlat13 = vec3<f32>(x_316.x, x_316.y, x_317.z);
    let x_319 : vec3<f32> = u_xlat13;
    let x_323 : vec2<f32> = ((vec2<f32>(x_319.x, x_319.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_324 : vec3<f32> = u_xlat13;
    u_xlat13 = vec3<f32>(x_323.x, x_323.y, x_324.z);
    let x_332 : vec3<f32> = u_xlat13;
    let x_335 : f32 = x_28.x_GlobalMipBias.x;
    let x_336 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_332.x, x_332.y), x_335);
    u_xlat4 = x_336;
    let x_338 : f32 = x_271.x_MainLightCookieTextureFormat;
    let x_340 : f32 = x_271.x_MainLightCookieTextureFormat;
    let x_342 : f32 = x_271.x_MainLightCookieTextureFormat;
    let x_344 : f32 = x_271.x_MainLightCookieTextureFormat;
    let x_345 : vec4<f32> = vec4<f32>(x_338, x_340, x_342, x_344);
    let x_353 : vec4<bool> = (vec4<f32>(x_345.x, x_345.y, x_345.z, x_345.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb13 = vec2<bool>(x_353.x, x_353.y);
    let x_356 : bool = u_xlatb13.y;
    if (x_356) {
      let x_362 : f32 = u_xlat4.w;
      x_358 = x_362;
    } else {
      let x_365 : f32 = u_xlat4.x;
      x_358 = x_365;
    }
    let x_366 : f32 = x_358;
    u_xlat23 = x_366;
    let x_368 : bool = u_xlatb13.x;
    if (x_368) {
      let x_372 : vec4<f32> = u_xlat4;
      x_369 = vec3<f32>(x_372.x, x_372.y, x_372.z);
    } else {
      let x_375 : f32 = u_xlat23;
      x_369 = vec3<f32>(x_375, x_375, x_375);
    }
    let x_377 : vec3<f32> = x_369;
    u_xlat13 = x_377;
  } else {
    u_xlat13.x = 1.0f;
    u_xlat13.y = 1.0f;
    u_xlat13.z = 1.0f;
  }
  let x_382 : vec3<f32> = u_xlat13;
  let x_384 : vec4<f32> = x_28.x_MainLightColor;
  u_xlat13 = (x_382 * vec3<f32>(x_384.x, x_384.y, x_384.z));
  let x_387 : f32 = u_xlat32;
  let x_393 : f32 = x_391.unity_LightData.z;
  u_xlat32 = (x_387 * x_393);
  let x_395 : f32 = u_xlat32;
  let x_397 : vec3<f32> = u_xlat13;
  u_xlat13 = (vec3<f32>(x_395, x_395, x_395) * x_397);
  let x_399 : vec3<f32> = u_xlat1;
  let x_401 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat32 = dot(x_399, vec3<f32>(x_401.x, x_401.y, x_401.z));
  let x_404 : f32 = u_xlat32;
  u_xlat32 = clamp(x_404, 0.0f, 1.0f);
  let x_406 : f32 = u_xlat32;
  let x_408 : vec3<f32> = u_xlat13;
  u_xlat13 = (vec3<f32>(x_406, x_406, x_406) * x_408);
  let x_410 : vec4<f32> = u_xlat0;
  let x_412 : vec3<f32> = u_xlat13;
  u_xlat13 = (vec3<f32>(x_410.y, x_410.z, x_410.w) * x_412);
  let x_415 : f32 = x_28.x_AdditionalLightsCount.x;
  let x_417 : f32 = x_391.unity_LightData.y;
  u_xlat32 = min(x_415, x_417);
  let x_421 : f32 = u_xlat32;
  u_xlatu32 = bitcast<u32>(i32(x_421));
  let x_425 : f32 = u_xlat3.x;
  let x_428 : f32 = x_197.x_AdditionalShadowFadeParams.x;
  let x_431 : f32 = x_197.x_AdditionalShadowFadeParams.y;
  u_xlat3.x = ((x_425 * x_428) + x_431);
  let x_435 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_435, 0.0f, 1.0f);
  let x_440 : f32 = x_271.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_442 : f32 = x_271.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_444 : f32 = x_271.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_446 : f32 = x_271.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_447 : vec4<f32> = vec4<f32>(x_440, x_442, x_444, x_446);
  let x_453 : vec4<bool> = (vec4<f32>(x_447.x, x_447.y, x_447.z, x_447.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb4 = vec2<bool>(x_453.x, x_453.y);
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_466 : u32 = u_xlatu_loop_1;
    let x_467 : u32 = u_xlatu32;
    if ((x_466 < x_467)) {
    } else {
      break;
    }
    let x_470 : u32 = u_xlatu_loop_1;
    u_xlatu34 = (x_470 >> 2u);
    let x_474 : u32 = u_xlatu_loop_1;
    u_xlati35 = bitcast<i32>((x_474 & 3u));
    let x_478 : u32 = u_xlatu34;
    let x_481 : vec4<f32> = x_391.unity_LightIndices[bitcast<i32>(x_478)];
    let x_491 : i32 = u_xlati35;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_496 : vec4<u32> = indexable[x_491];
    u_xlat34 = dot(x_481, bitcast<vec4<f32>>(x_496));
    let x_500 : f32 = u_xlat34;
    u_xlati34 = i32(x_500);
    let x_503 : vec3<f32> = vs_TEXCOORD1;
    let x_514 : i32 = u_xlati34;
    let x_516 : vec4<f32> = x_513.x_AdditionalLightsPosition[x_514];
    let x_519 : i32 = u_xlati34;
    let x_521 : vec4<f32> = x_513.x_AdditionalLightsPosition[x_519];
    u_xlat6 = ((-(x_503) * vec3<f32>(x_516.w, x_516.w, x_516.w)) + vec3<f32>(x_521.x, x_521.y, x_521.z));
    let x_525 : vec3<f32> = u_xlat6;
    let x_526 : vec3<f32> = u_xlat6;
    u_xlat35 = dot(x_525, x_526);
    let x_528 : f32 = u_xlat35;
    u_xlat35 = max(x_528, 0.00006103515625f);
    let x_532 : f32 = u_xlat35;
    u_xlat36 = inverseSqrt(x_532);
    let x_534 : f32 = u_xlat36;
    let x_536 : vec3<f32> = u_xlat6;
    u_xlat6 = (vec3<f32>(x_534, x_534, x_534) * x_536);
    let x_538 : f32 = u_xlat35;
    u_xlat36 = (1.0f / x_538);
    let x_540 : f32 = u_xlat35;
    let x_541 : i32 = u_xlati34;
    let x_543 : f32 = x_513.x_AdditionalLightsAttenuation[x_541].x;
    u_xlat35 = (x_540 * x_543);
    let x_545 : f32 = u_xlat35;
    let x_547 : f32 = u_xlat35;
    u_xlat35 = ((-(x_545) * x_547) + 1.0f);
    let x_550 : f32 = u_xlat35;
    u_xlat35 = max(x_550, 0.0f);
    let x_552 : f32 = u_xlat35;
    let x_553 : f32 = u_xlat35;
    u_xlat35 = (x_552 * x_553);
    let x_555 : f32 = u_xlat35;
    let x_556 : f32 = u_xlat36;
    u_xlat35 = (x_555 * x_556);
    let x_558 : i32 = u_xlati34;
    let x_560 : vec4<f32> = x_513.x_AdditionalLightsSpotDir[x_558];
    let x_562 : vec3<f32> = u_xlat6;
    u_xlat36 = dot(vec3<f32>(x_560.x, x_560.y, x_560.z), x_562);
    let x_564 : f32 = u_xlat36;
    let x_565 : i32 = u_xlati34;
    let x_567 : f32 = x_513.x_AdditionalLightsAttenuation[x_565].z;
    let x_569 : i32 = u_xlati34;
    let x_571 : f32 = x_513.x_AdditionalLightsAttenuation[x_569].w;
    u_xlat36 = ((x_564 * x_567) + x_571);
    let x_573 : f32 = u_xlat36;
    u_xlat36 = clamp(x_573, 0.0f, 1.0f);
    let x_575 : f32 = u_xlat36;
    let x_576 : f32 = u_xlat36;
    u_xlat36 = (x_575 * x_576);
    let x_578 : f32 = u_xlat35;
    let x_579 : f32 = u_xlat36;
    u_xlat35 = (x_578 * x_579);
    let x_583 : i32 = u_xlati34;
    let x_585 : f32 = x_197.x_AdditionalShadowParams[x_583].w;
    u_xlati36 = i32(x_585);
    let x_590 : i32 = u_xlati36;
    u_xlatb7.x = (x_590 >= 0i);
    let x_594 : bool = u_xlatb7.x;
    if (x_594) {
      let x_598 : i32 = u_xlati34;
      let x_600 : f32 = x_197.x_AdditionalShadowParams[x_598].z;
      u_xlatb7.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_600, x_600, x_600, x_600))));
      let x_606 : bool = u_xlatb7.x;
      if (x_606) {
        let x_609 : vec3<f32> = u_xlat6;
        let x_612 : vec3<f32> = u_xlat6;
        let x_615 : vec4<bool> = (abs(vec4<f32>(x_609.z, x_609.z, x_609.y, x_609.z)) >= abs(vec4<f32>(x_612.x, x_612.y, x_612.x, x_612.x)));
        u_xlatb7 = vec3<bool>(x_615.x, x_615.y, x_615.z);
        let x_618 : bool = u_xlatb7.y;
        let x_620 : bool = u_xlatb7.x;
        u_xlatb7.x = (x_618 & x_620);
        let x_624 : vec3<f32> = u_xlat6;
        let x_627 : vec4<bool> = (-(vec4<f32>(x_624.z, x_624.y, x_624.x, x_624.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb8 = vec3<bool>(x_627.x, x_627.y, x_627.z);
        let x_631 : bool = u_xlatb8.x;
        u_xlat17.x = select(4.0f, 5.0f, x_631);
        let x_637 : bool = u_xlatb8.y;
        u_xlat17.z = select(2.0f, 3.0f, x_637);
        let x_644 : bool = u_xlatb8.z;
        u_xlat8.x = select(0.0f, 1.0f, x_644);
        let x_649 : bool = u_xlatb7.z;
        if (x_649) {
          let x_654 : f32 = u_xlat17.z;
          x_650 = x_654;
        } else {
          let x_657 : f32 = u_xlat8.x;
          x_650 = x_657;
        }
        let x_658 : f32 = x_650;
        u_xlat27 = x_658;
        let x_661 : bool = u_xlatb7.x;
        if (x_661) {
          let x_666 : f32 = u_xlat17.x;
          x_662 = x_666;
        } else {
          let x_668 : f32 = u_xlat27;
          x_662 = x_668;
        }
        let x_669 : f32 = x_662;
        u_xlat7.x = x_669;
        let x_671 : i32 = u_xlati34;
        let x_673 : f32 = x_197.x_AdditionalShadowParams[x_671].w;
        u_xlat17.x = trunc(x_673);
        let x_677 : f32 = u_xlat7.x;
        let x_679 : f32 = u_xlat17.x;
        u_xlat7.x = (x_677 + x_679);
        let x_683 : f32 = u_xlat7.x;
        u_xlati36 = i32(x_683);
      }
      let x_685 : i32 = u_xlati36;
      u_xlati36 = (x_685 << bitcast<u32>(2i));
      let x_687 : vec3<f32> = vs_TEXCOORD1;
      let x_690 : i32 = u_xlati36;
      let x_693 : i32 = u_xlati36;
      let x_697 : vec4<f32> = x_197.x_AdditionalLightsWorldToShadow[((x_690 + 1i) / 4i)][((x_693 + 1i) % 4i)];
      u_xlat7 = (vec4<f32>(x_687.y, x_687.y, x_687.y, x_687.y) * x_697);
      let x_699 : i32 = u_xlati36;
      let x_701 : i32 = u_xlati36;
      let x_704 : vec4<f32> = x_197.x_AdditionalLightsWorldToShadow[(x_699 / 4i)][(x_701 % 4i)];
      let x_705 : vec3<f32> = vs_TEXCOORD1;
      let x_708 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_704 * vec4<f32>(x_705.x, x_705.x, x_705.x, x_705.x)) + x_708);
      let x_710 : i32 = u_xlati36;
      let x_713 : i32 = u_xlati36;
      let x_717 : vec4<f32> = x_197.x_AdditionalLightsWorldToShadow[((x_710 + 2i) / 4i)][((x_713 + 2i) % 4i)];
      let x_718 : vec3<f32> = vs_TEXCOORD1;
      let x_721 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_717 * vec4<f32>(x_718.z, x_718.z, x_718.z, x_718.z)) + x_721);
      let x_723 : vec4<f32> = u_xlat7;
      let x_724 : i32 = u_xlati36;
      let x_727 : i32 = u_xlati36;
      let x_731 : vec4<f32> = x_197.x_AdditionalLightsWorldToShadow[((x_724 + 3i) / 4i)][((x_727 + 3i) % 4i)];
      u_xlat7 = (x_723 + x_731);
      let x_733 : vec4<f32> = u_xlat7;
      let x_735 : vec4<f32> = u_xlat7;
      let x_737 : vec3<f32> = (vec3<f32>(x_733.x, x_733.y, x_733.z) / vec3<f32>(x_735.w, x_735.w, x_735.w));
      let x_738 : vec4<f32> = u_xlat7;
      u_xlat7 = vec4<f32>(x_737.x, x_737.y, x_737.z, x_738.w);
      let x_741 : vec4<f32> = u_xlat7;
      let x_742 : vec2<f32> = vec2<f32>(x_741.x, x_741.y);
      let x_744 : f32 = u_xlat7.z;
      txVec1 = vec3<f32>(x_742.x, x_742.y, x_744);
      let x_752 : vec3<f32> = txVec1;
      let x_754 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_752.xy, x_752.z);
      u_xlat36 = x_754;
      let x_755 : i32 = u_xlati34;
      let x_757 : f32 = x_197.x_AdditionalShadowParams[x_755].x;
      u_xlat7.x = (1.0f + -(x_757));
      let x_761 : f32 = u_xlat36;
      let x_762 : i32 = u_xlati34;
      let x_764 : f32 = x_197.x_AdditionalShadowParams[x_762].x;
      let x_767 : f32 = u_xlat7.x;
      u_xlat36 = ((x_761 * x_764) + x_767);
      let x_770 : f32 = u_xlat7.z;
      u_xlatb7.x = (0.0f >= x_770);
      let x_775 : f32 = u_xlat7.z;
      u_xlatb17 = (x_775 >= 1.0f);
      let x_777 : bool = u_xlatb17;
      let x_779 : bool = u_xlatb7.x;
      u_xlatb7.x = (x_777 | x_779);
      let x_783 : bool = u_xlatb7.x;
      let x_784 : f32 = u_xlat36;
      u_xlat36 = select(x_784, 1.0f, x_783);
    } else {
      u_xlat36 = 1.0f;
    }
    let x_787 : f32 = u_xlat36;
    u_xlat7.x = (-(x_787) + 1.0f);
    let x_792 : f32 = u_xlat3.x;
    let x_794 : f32 = u_xlat7.x;
    let x_796 : f32 = u_xlat36;
    u_xlat36 = ((x_792 * x_794) + x_796);
    let x_799 : i32 = u_xlati34;
    u_xlati7 = (1i << bitcast<u32>((x_799 & 31i)));
    let x_803 : i32 = u_xlati7;
    let x_806 : f32 = x_271.x_AdditionalLightsCookieEnableBits;
    u_xlati7 = bitcast<i32>((bitcast<u32>(x_803) & bitcast<u32>(x_806)));
    let x_810 : i32 = u_xlati7;
    if ((x_810 != 0i)) {
      let x_814 : i32 = u_xlati34;
      let x_816 : f32 = x_271.x_AdditionalLightsLightTypes[x_814].el;
      u_xlati7 = i32(x_816);
      let x_819 : i32 = u_xlati7;
      u_xlati17 = select(1i, 0i, (x_819 != 0i));
      let x_823 : i32 = u_xlati34;
      u_xlati27 = (x_823 << bitcast<u32>(2i));
      let x_825 : i32 = u_xlati17;
      if ((x_825 != 0i)) {
        let x_829 : vec3<f32> = vs_TEXCOORD1;
        let x_831 : i32 = u_xlati27;
        let x_834 : i32 = u_xlati27;
        let x_838 : vec4<f32> = x_271.x_AdditionalLightsWorldToLights[((x_831 + 1i) / 4i)][((x_834 + 1i) % 4i)];
        let x_840 : vec3<f32> = (vec3<f32>(x_829.y, x_829.y, x_829.y) * vec3<f32>(x_838.x, x_838.y, x_838.w));
        let x_841 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_840.x, x_840.y, x_840.z, x_841.w);
        let x_843 : i32 = u_xlati27;
        let x_845 : i32 = u_xlati27;
        let x_848 : vec4<f32> = x_271.x_AdditionalLightsWorldToLights[(x_843 / 4i)][(x_845 % 4i)];
        let x_850 : vec3<f32> = vs_TEXCOORD1;
        let x_853 : vec4<f32> = u_xlat8;
        let x_855 : vec3<f32> = ((vec3<f32>(x_848.x, x_848.y, x_848.w) * vec3<f32>(x_850.x, x_850.x, x_850.x)) + vec3<f32>(x_853.x, x_853.y, x_853.z));
        let x_856 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_855.x, x_855.y, x_855.z, x_856.w);
        let x_858 : i32 = u_xlati27;
        let x_861 : i32 = u_xlati27;
        let x_865 : vec4<f32> = x_271.x_AdditionalLightsWorldToLights[((x_858 + 2i) / 4i)][((x_861 + 2i) % 4i)];
        let x_867 : vec3<f32> = vs_TEXCOORD1;
        let x_870 : vec4<f32> = u_xlat8;
        let x_872 : vec3<f32> = ((vec3<f32>(x_865.x, x_865.y, x_865.w) * vec3<f32>(x_867.z, x_867.z, x_867.z)) + vec3<f32>(x_870.x, x_870.y, x_870.z));
        let x_873 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_872.x, x_872.y, x_872.z, x_873.w);
        let x_875 : vec4<f32> = u_xlat8;
        let x_877 : i32 = u_xlati27;
        let x_880 : i32 = u_xlati27;
        let x_884 : vec4<f32> = x_271.x_AdditionalLightsWorldToLights[((x_877 + 3i) / 4i)][((x_880 + 3i) % 4i)];
        let x_886 : vec3<f32> = (vec3<f32>(x_875.x, x_875.y, x_875.z) + vec3<f32>(x_884.x, x_884.y, x_884.w));
        let x_887 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_886.x, x_886.y, x_886.z, x_887.w);
        let x_889 : vec4<f32> = u_xlat8;
        let x_891 : vec4<f32> = u_xlat8;
        let x_893 : vec2<f32> = (vec2<f32>(x_889.x, x_889.y) / vec2<f32>(x_891.z, x_891.z));
        let x_894 : vec3<f32> = u_xlat17;
        u_xlat17 = vec3<f32>(x_893.x, x_894.y, x_893.y);
        let x_896 : vec3<f32> = u_xlat17;
        let x_899 : vec2<f32> = ((vec2<f32>(x_896.x, x_896.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_900 : vec3<f32> = u_xlat17;
        u_xlat17 = vec3<f32>(x_899.x, x_900.y, x_899.y);
        let x_902 : vec3<f32> = u_xlat17;
        let x_906 : vec2<f32> = clamp(vec2<f32>(x_902.x, x_902.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_907 : vec3<f32> = u_xlat17;
        u_xlat17 = vec3<f32>(x_906.x, x_907.y, x_906.y);
        let x_909 : i32 = u_xlati34;
        let x_911 : vec4<f32> = x_271.x_AdditionalLightsCookieAtlasUVRects[x_909];
        let x_913 : vec3<f32> = u_xlat17;
        let x_916 : i32 = u_xlati34;
        let x_918 : vec4<f32> = x_271.x_AdditionalLightsCookieAtlasUVRects[x_916];
        let x_920 : vec2<f32> = ((vec2<f32>(x_911.x, x_911.y) * vec2<f32>(x_913.x, x_913.z)) + vec2<f32>(x_918.z, x_918.w));
        let x_921 : vec3<f32> = u_xlat17;
        u_xlat17 = vec3<f32>(x_920.x, x_921.y, x_920.y);
      } else {
        let x_924 : i32 = u_xlati7;
        u_xlatb7.x = (x_924 == 1i);
        let x_928 : bool = u_xlatb7.x;
        u_xlati7 = select(0i, 1i, x_928);
        let x_930 : i32 = u_xlati7;
        if ((x_930 != 0i)) {
          let x_934 : vec3<f32> = vs_TEXCOORD1;
          let x_936 : i32 = u_xlati27;
          let x_939 : i32 = u_xlati27;
          let x_943 : vec4<f32> = x_271.x_AdditionalLightsWorldToLights[((x_936 + 1i) / 4i)][((x_939 + 1i) % 4i)];
          let x_945 : vec2<f32> = (vec2<f32>(x_934.y, x_934.y) * vec2<f32>(x_943.x, x_943.y));
          let x_946 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_945.x, x_945.y, x_946.z, x_946.w);
          let x_948 : i32 = u_xlati27;
          let x_950 : i32 = u_xlati27;
          let x_953 : vec4<f32> = x_271.x_AdditionalLightsWorldToLights[(x_948 / 4i)][(x_950 % 4i)];
          let x_955 : vec3<f32> = vs_TEXCOORD1;
          let x_958 : vec4<f32> = u_xlat8;
          let x_960 : vec2<f32> = ((vec2<f32>(x_953.x, x_953.y) * vec2<f32>(x_955.x, x_955.x)) + vec2<f32>(x_958.x, x_958.y));
          let x_961 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_960.x, x_960.y, x_961.z, x_961.w);
          let x_963 : i32 = u_xlati27;
          let x_966 : i32 = u_xlati27;
          let x_970 : vec4<f32> = x_271.x_AdditionalLightsWorldToLights[((x_963 + 2i) / 4i)][((x_966 + 2i) % 4i)];
          let x_972 : vec3<f32> = vs_TEXCOORD1;
          let x_975 : vec4<f32> = u_xlat8;
          let x_977 : vec2<f32> = ((vec2<f32>(x_970.x, x_970.y) * vec2<f32>(x_972.z, x_972.z)) + vec2<f32>(x_975.x, x_975.y));
          let x_978 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_977.x, x_977.y, x_978.z, x_978.w);
          let x_980 : vec4<f32> = u_xlat8;
          let x_982 : i32 = u_xlati27;
          let x_985 : i32 = u_xlati27;
          let x_989 : vec4<f32> = x_271.x_AdditionalLightsWorldToLights[((x_982 + 3i) / 4i)][((x_985 + 3i) % 4i)];
          let x_991 : vec2<f32> = (vec2<f32>(x_980.x, x_980.y) + vec2<f32>(x_989.x, x_989.y));
          let x_992 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_991.x, x_991.y, x_992.z, x_992.w);
          let x_994 : vec4<f32> = u_xlat8;
          let x_997 : vec2<f32> = ((vec2<f32>(x_994.x, x_994.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_998 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_997.x, x_997.y, x_998.z, x_998.w);
          let x_1000 : vec4<f32> = u_xlat8;
          let x_1002 : vec2<f32> = fract(vec2<f32>(x_1000.x, x_1000.y));
          let x_1003 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1002.x, x_1002.y, x_1003.z, x_1003.w);
          let x_1005 : i32 = u_xlati34;
          let x_1007 : vec4<f32> = x_271.x_AdditionalLightsCookieAtlasUVRects[x_1005];
          let x_1009 : vec4<f32> = u_xlat8;
          let x_1012 : i32 = u_xlati34;
          let x_1014 : vec4<f32> = x_271.x_AdditionalLightsCookieAtlasUVRects[x_1012];
          let x_1016 : vec2<f32> = ((vec2<f32>(x_1007.x, x_1007.y) * vec2<f32>(x_1009.x, x_1009.y)) + vec2<f32>(x_1014.z, x_1014.w));
          let x_1017 : vec3<f32> = u_xlat17;
          u_xlat17 = vec3<f32>(x_1016.x, x_1017.y, x_1016.y);
        } else {
          let x_1020 : vec3<f32> = vs_TEXCOORD1;
          let x_1022 : i32 = u_xlati27;
          let x_1025 : i32 = u_xlati27;
          let x_1029 : vec4<f32> = x_271.x_AdditionalLightsWorldToLights[((x_1022 + 1i) / 4i)][((x_1025 + 1i) % 4i)];
          u_xlat8 = (vec4<f32>(x_1020.y, x_1020.y, x_1020.y, x_1020.y) * x_1029);
          let x_1031 : i32 = u_xlati27;
          let x_1033 : i32 = u_xlati27;
          let x_1036 : vec4<f32> = x_271.x_AdditionalLightsWorldToLights[(x_1031 / 4i)][(x_1033 % 4i)];
          let x_1037 : vec3<f32> = vs_TEXCOORD1;
          let x_1040 : vec4<f32> = u_xlat8;
          u_xlat8 = ((x_1036 * vec4<f32>(x_1037.x, x_1037.x, x_1037.x, x_1037.x)) + x_1040);
          let x_1042 : i32 = u_xlati27;
          let x_1045 : i32 = u_xlati27;
          let x_1049 : vec4<f32> = x_271.x_AdditionalLightsWorldToLights[((x_1042 + 2i) / 4i)][((x_1045 + 2i) % 4i)];
          let x_1050 : vec3<f32> = vs_TEXCOORD1;
          let x_1053 : vec4<f32> = u_xlat8;
          u_xlat8 = ((x_1049 * vec4<f32>(x_1050.z, x_1050.z, x_1050.z, x_1050.z)) + x_1053);
          let x_1055 : vec4<f32> = u_xlat8;
          let x_1056 : i32 = u_xlati27;
          let x_1059 : i32 = u_xlati27;
          let x_1063 : vec4<f32> = x_271.x_AdditionalLightsWorldToLights[((x_1056 + 3i) / 4i)][((x_1059 + 3i) % 4i)];
          u_xlat8 = (x_1055 + x_1063);
          let x_1065 : vec4<f32> = u_xlat8;
          let x_1067 : vec4<f32> = u_xlat8;
          let x_1069 : vec3<f32> = (vec3<f32>(x_1065.x, x_1065.y, x_1065.z) / vec3<f32>(x_1067.w, x_1067.w, x_1067.w));
          let x_1070 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1069.x, x_1069.y, x_1069.z, x_1070.w);
          let x_1072 : vec4<f32> = u_xlat8;
          let x_1074 : vec4<f32> = u_xlat8;
          u_xlat7.x = dot(vec3<f32>(x_1072.x, x_1072.y, x_1072.z), vec3<f32>(x_1074.x, x_1074.y, x_1074.z));
          let x_1079 : f32 = u_xlat7.x;
          u_xlat7.x = inverseSqrt(x_1079);
          let x_1082 : vec4<f32> = u_xlat7;
          let x_1084 : vec4<f32> = u_xlat8;
          let x_1086 : vec3<f32> = (vec3<f32>(x_1082.x, x_1082.x, x_1082.x) * vec3<f32>(x_1084.x, x_1084.y, x_1084.z));
          let x_1087 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1086.x, x_1086.y, x_1086.z, x_1087.w);
          let x_1089 : vec4<f32> = u_xlat8;
          u_xlat7.x = dot(abs(vec3<f32>(x_1089.x, x_1089.y, x_1089.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1096 : f32 = u_xlat7.x;
          u_xlat7.x = max(x_1096, 0.00000099999999747524f);
          let x_1101 : f32 = u_xlat7.x;
          u_xlat7.x = (1.0f / x_1101);
          let x_1105 : vec4<f32> = u_xlat7;
          let x_1107 : vec4<f32> = u_xlat8;
          u_xlat9 = (vec3<f32>(x_1105.x, x_1105.x, x_1105.x) * vec3<f32>(x_1107.z, x_1107.x, x_1107.y));
          let x_1111 : f32 = u_xlat9.x;
          u_xlat9.x = -(x_1111);
          let x_1115 : f32 = u_xlat9.x;
          u_xlat9.x = clamp(x_1115, 0.0f, 1.0f);
          let x_1119 : vec3<f32> = u_xlat9;
          let x_1121 : vec4<bool> = (vec4<f32>(x_1119.y, x_1119.z, x_1119.y, x_1119.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb28 = vec2<bool>(x_1121.x, x_1121.y);
          let x_1126 : bool = u_xlatb28.x;
          if (x_1126) {
            let x_1131 : f32 = u_xlat9.x;
            x_1127 = x_1131;
          } else {
            let x_1134 : f32 = u_xlat9.x;
            x_1127 = -(x_1134);
          }
          let x_1136 : f32 = x_1127;
          u_xlat28.x = x_1136;
          let x_1139 : bool = u_xlatb28.y;
          if (x_1139) {
            let x_1144 : f32 = u_xlat9.x;
            x_1140 = x_1144;
          } else {
            let x_1147 : f32 = u_xlat9.x;
            x_1140 = -(x_1147);
          }
          let x_1149 : f32 = x_1140;
          u_xlat28.y = x_1149;
          let x_1151 : vec4<f32> = u_xlat8;
          let x_1153 : vec4<f32> = u_xlat7;
          let x_1156 : vec2<f32> = u_xlat28;
          let x_1157 : vec2<f32> = ((vec2<f32>(x_1151.x, x_1151.y) * vec2<f32>(x_1153.x, x_1153.x)) + x_1156);
          let x_1158 : vec4<f32> = u_xlat7;
          u_xlat7 = vec4<f32>(x_1157.x, x_1158.y, x_1157.y, x_1158.w);
          let x_1160 : vec4<f32> = u_xlat7;
          let x_1163 : vec2<f32> = ((vec2<f32>(x_1160.x, x_1160.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1164 : vec4<f32> = u_xlat7;
          u_xlat7 = vec4<f32>(x_1163.x, x_1164.y, x_1163.y, x_1164.w);
          let x_1166 : vec4<f32> = u_xlat7;
          let x_1170 : vec2<f32> = clamp(vec2<f32>(x_1166.x, x_1166.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1171 : vec4<f32> = u_xlat7;
          u_xlat7 = vec4<f32>(x_1170.x, x_1171.y, x_1170.y, x_1171.w);
          let x_1173 : i32 = u_xlati34;
          let x_1175 : vec4<f32> = x_271.x_AdditionalLightsCookieAtlasUVRects[x_1173];
          let x_1177 : vec4<f32> = u_xlat7;
          let x_1180 : i32 = u_xlati34;
          let x_1182 : vec4<f32> = x_271.x_AdditionalLightsCookieAtlasUVRects[x_1180];
          let x_1184 : vec2<f32> = ((vec2<f32>(x_1175.x, x_1175.y) * vec2<f32>(x_1177.x, x_1177.z)) + vec2<f32>(x_1182.z, x_1182.w));
          let x_1185 : vec3<f32> = u_xlat17;
          u_xlat17 = vec3<f32>(x_1184.x, x_1185.y, x_1184.y);
        }
      }
      let x_1192 : vec3<f32> = u_xlat17;
      let x_1194 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_1192.x, x_1192.z), 0.0f);
      u_xlat7 = x_1194;
      let x_1197 : bool = u_xlatb4.y;
      if (x_1197) {
        let x_1202 : f32 = u_xlat7.w;
        x_1198 = x_1202;
      } else {
        let x_1205 : f32 = u_xlat7.x;
        x_1198 = x_1205;
      }
      let x_1206 : f32 = x_1198;
      u_xlat37 = x_1206;
      let x_1208 : bool = u_xlatb4.x;
      if (x_1208) {
        let x_1212 : vec4<f32> = u_xlat7;
        x_1209 = vec3<f32>(x_1212.x, x_1212.y, x_1212.z);
      } else {
        let x_1215 : f32 = u_xlat37;
        x_1209 = vec3<f32>(x_1215, x_1215, x_1215);
      }
      let x_1217 : vec3<f32> = x_1209;
      let x_1218 : vec4<f32> = u_xlat7;
      u_xlat7 = vec4<f32>(x_1217.x, x_1217.y, x_1217.z, x_1218.w);
    } else {
      u_xlat7.x = 1.0f;
      u_xlat7.y = 1.0f;
      u_xlat7.z = 1.0f;
    }
    let x_1224 : vec4<f32> = u_xlat7;
    let x_1226 : i32 = u_xlati34;
    let x_1228 : vec4<f32> = x_513.x_AdditionalLightsColor[x_1226];
    let x_1230 : vec3<f32> = (vec3<f32>(x_1224.x, x_1224.y, x_1224.z) * vec3<f32>(x_1228.x, x_1228.y, x_1228.z));
    let x_1231 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1230.x, x_1230.y, x_1230.z, x_1231.w);
    let x_1233 : f32 = u_xlat35;
    let x_1234 : f32 = u_xlat36;
    u_xlat34 = (x_1233 * x_1234);
    let x_1236 : f32 = u_xlat34;
    let x_1238 : vec4<f32> = u_xlat7;
    let x_1240 : vec3<f32> = (vec3<f32>(x_1236, x_1236, x_1236) * vec3<f32>(x_1238.x, x_1238.y, x_1238.z));
    let x_1241 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1240.x, x_1240.y, x_1240.z, x_1241.w);
    let x_1243 : vec3<f32> = u_xlat1;
    let x_1244 : vec3<f32> = u_xlat6;
    u_xlat34 = dot(x_1243, x_1244);
    let x_1246 : f32 = u_xlat34;
    u_xlat34 = clamp(x_1246, 0.0f, 1.0f);
    let x_1248 : f32 = u_xlat34;
    let x_1250 : vec4<f32> = u_xlat7;
    u_xlat6 = (vec3<f32>(x_1248, x_1248, x_1248) * vec3<f32>(x_1250.x, x_1250.y, x_1250.z));
    let x_1253 : vec3<f32> = u_xlat6;
    let x_1254 : vec4<f32> = u_xlat0;
    let x_1257 : vec3<f32> = u_xlat5;
    u_xlat5 = ((x_1253 * vec3<f32>(x_1254.y, x_1254.z, x_1254.w)) + x_1257);

    continuing {
      let x_1259 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1259 + bitcast<u32>(1i));
    }
  }
  let x_1262 : vec4<f32> = u_xlat2;
  let x_1264 : vec4<f32> = u_xlat0;
  let x_1267 : vec3<f32> = u_xlat13;
  u_xlat10 = ((vec3<f32>(x_1262.x, x_1262.y, x_1262.z) * vec3<f32>(x_1264.y, x_1264.z, x_1264.w)) + x_1267);
  let x_1269 : vec3<f32> = u_xlat5;
  let x_1270 : vec3<f32> = u_xlat10;
  u_xlat10 = (x_1269 + x_1270);
  let x_1272 : f32 = u_xlat31;
  let x_1273 : f32 = u_xlat31;
  u_xlat1.x = (x_1272 * -(x_1273));
  let x_1278 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_1278);
  let x_1281 : vec3<f32> = u_xlat10;
  let x_1284 : vec4<f32> = x_28.unity_FogColor;
  u_xlat10 = (x_1281 + -(vec3<f32>(x_1284.x, x_1284.y, x_1284.z)));
  let x_1290 : vec3<f32> = u_xlat1;
  let x_1292 : vec3<f32> = u_xlat10;
  let x_1295 : vec4<f32> = x_28.unity_FogColor;
  let x_1297 : vec3<f32> = ((vec3<f32>(x_1290.x, x_1290.x, x_1290.x) * x_1292) + vec3<f32>(x_1295.x, x_1295.y, x_1295.z));
  let x_1298 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1297.x, x_1297.y, x_1297.z, x_1298.w);
  let x_1302 : f32 = x_41.x_Surface;
  u_xlatb10 = (x_1302 == 1.0f);
  let x_1304 : bool = u_xlatb10;
  if (x_1304) {
    let x_1309 : f32 = u_xlat0.x;
    x_1305 = x_1309;
  } else {
    x_1305 = 1.0f;
  }
  let x_1311 : f32 = x_1305;
  SV_Target0.w = x_1311;
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


