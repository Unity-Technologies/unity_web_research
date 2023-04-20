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
}

struct UnityPerMaterial {
  /* @offset(0) */
  x_BaseMap_ST : vec4<f32>,
  /* @offset(16) */
  x_DetailAlbedoMap_ST : vec4<f32>,
  /* @offset(32) */
  x_BaseColor : vec4<f32>,
  /* @offset(48) */
  x_SpecColor : vec4<f32>,
  /* @offset(64) */
  x_EmissionColor : vec4<f32>,
  /* @offset(80) */
  x_Cutoff : f32,
  /* @offset(84) */
  x_Smoothness : f32,
  /* @offset(88) */
  x_Metallic : f32,
  /* @offset(92) */
  x_BumpScale : f32,
  /* @offset(96) */
  x_Parallax : f32,
  /* @offset(100) */
  x_OcclusionStrength : f32,
  /* @offset(104) */
  x_ClearCoatMask : f32,
  /* @offset(108) */
  x_ClearCoatSmoothness : f32,
  /* @offset(112) */
  x_DetailAlbedoMapScale : f32,
  /* @offset(116) */
  x_DetailNormalMapScale : f32,
  /* @offset(120) */
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

@group(0) @binding(3) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(13) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_28 : PGlobals;

var<private> u_xlat1 : vec2<f32>;

@group(0) @binding(6) var x_MetallicGlossMap : texture_2d<f32>;

@group(0) @binding(16) var sampler_MetallicGlossMap : sampler;

var<private> u_xlat2 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_54 : UnityPerMaterial;

var<private> u_xlat3 : vec3<f32>;

@group(0) @binding(4) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(14) var sampler_BumpMap : sampler;

var<private> u_xlat29 : vec2<f32>;

var<private> u_xlat42 : f32;

@group(0) @binding(5) var x_OcclusionMap : texture_2d<f32>;

@group(0) @binding(15) var sampler_OcclusionMap : sampler;

var<private> u_xlat17 : vec3<f32>;

var<private> u_xlatb17 : bool;

var<private> u_xlat4 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat31 : f32;

var<private> u_xlat5 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

@group(1) @binding(4) var<uniform> x_271 : LightShadows;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlatb4 : vec4<bool>;

var<private> u_xlatu42 : u32;

var<private> u_xlati42 : i32;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(12) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD8 : vec2<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat16 : vec3<f32>;

var<private> u_xlat15 : f32;

var<private> u_xlat43 : f32;

@group(0) @binding(7) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(18) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat18 : vec3<f32>;

var<private> u_xlatb18 : bool;

var<private> u_xlatb32 : vec2<bool>;

var<private> u_xlat32 : vec2<f32>;

var<private> u_xlat46 : f32;

@group(1) @binding(5) var<uniform> x_692 : LightCookies;

@group(0) @binding(9) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(19) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(11) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_870 : UnityPerDraw;

var<private> u_xlat9 : vec2<f32>;

var<private> u_xlat23 : vec3<f32>;

var<private> u_xlatb7 : vec2<bool>;

var<private> u_xlatu18 : u32;

var<private> u_xlati47 : i32;

var<private> u_xlati18 : i32;

@group(1) @binding(1) var<uniform> x_1153 : AdditionalLights;

var<private> u_xlat47 : f32;

var<private> u_xlat48 : f32;

var<private> u_xlat10 : vec3<f32>;

var<private> u_xlat35 : f32;

var<private> u_xlati35 : i32;

var<private> u_xlatb49 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat50 : f32;

var<private> u_xlat49 : f32;

@group(0) @binding(8) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb50 : bool;

var<private> u_xlati49 : i32;

var<private> u_xlati50 : i32;

var<private> u_xlati52 : i32;

var<private> u_xlat39 : vec2<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec3<f32>;

var<private> u_xlatb39 : vec2<bool>;

@group(0) @binding(10) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(17) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatb0 : bool;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu29 : u32;

fn main_1() {
  var x_183 : f32;
  var x_195 : f32;
  var x_207 : f32;
  var txVec0 : vec3<f32>;
  var x_643 : f32;
  var x_760 : f32;
  var x_771 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1285 : f32;
  var x_1295 : f32;
  var txVec1 : vec3<f32>;
  var x_1718 : f32;
  var x_1731 : f32;
  var x_1779 : f32;
  var x_1790 : vec3<f32>;
  var x_1951 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_35 : f32 = x_28.x_GlobalMipBias.x;
  let x_36 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_23, x_35);
  u_xlat0 = x_36;
  let x_44 : vec2<f32> = vs_TEXCOORD0;
  let x_46 : f32 = x_28.x_GlobalMipBias.x;
  let x_47 : vec4<f32> = textureSampleBias(x_MetallicGlossMap, sampler_MetallicGlossMap, x_44, x_46);
  u_xlat1 = vec2<f32>(x_47.x, x_47.w);
  let x_50 : vec4<f32> = u_xlat0;
  let x_58 : vec4<f32> = x_54.x_BaseColor;
  u_xlat2 = (vec4<f32>(x_50.w, x_50.x, x_50.y, x_50.z) * vec4<f32>(x_58.w, x_58.x, x_58.y, x_58.z));
  let x_68 : vec2<f32> = vs_TEXCOORD0;
  let x_70 : f32 = x_28.x_GlobalMipBias.x;
  let x_71 : vec4<f32> = textureSampleBias(x_BumpMap, sampler_BumpMap, x_68, x_70);
  u_xlat3 = vec3<f32>(x_71.x, x_71.y, x_71.w);
  let x_75 : f32 = u_xlat3.x;
  let x_78 : f32 = u_xlat3.z;
  u_xlat3.x = (x_75 * x_78);
  let x_82 : vec3<f32> = u_xlat3;
  u_xlat29 = ((vec2<f32>(x_82.x, x_82.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_91 : vec2<f32> = u_xlat29;
  let x_92 : vec2<f32> = u_xlat29;
  u_xlat42 = dot(x_91, x_92);
  let x_94 : f32 = u_xlat42;
  u_xlat42 = min(x_94, 1.0f);
  let x_97 : f32 = u_xlat42;
  u_xlat42 = (-(x_97) + 1.0f);
  let x_100 : f32 = u_xlat42;
  u_xlat42 = sqrt(x_100);
  let x_102 : f32 = u_xlat42;
  u_xlat42 = max(x_102, 0.0000000000000001f);
  let x_105 : vec2<f32> = u_xlat29;
  let x_108 : f32 = x_54.x_BumpScale;
  let x_110 : f32 = x_54.x_BumpScale;
  let x_111 : vec2<f32> = vec2<f32>(x_108, x_110);
  u_xlat29 = (x_105 * vec2<f32>(x_111.x, x_111.y));
  let x_121 : vec2<f32> = vs_TEXCOORD0;
  let x_123 : f32 = x_28.x_GlobalMipBias.x;
  let x_124 : vec4<f32> = textureSampleBias(x_OcclusionMap, sampler_OcclusionMap, x_121, x_123);
  u_xlat3.x = x_124.y;
  let x_131 : f32 = x_54.x_OcclusionStrength;
  u_xlat17.x = (-(x_131) + 1.0f);
  let x_136 : f32 = u_xlat3.x;
  let x_138 : f32 = x_54.x_OcclusionStrength;
  let x_141 : f32 = u_xlat17.x;
  u_xlat3.x = ((x_136 * x_138) + x_141);
  let x_150 : f32 = x_28.unity_OrthoParams.w;
  u_xlatb17 = (x_150 == 0.0f);
  let x_156 : vec3<f32> = vs_TEXCOORD1;
  let x_161 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  let x_162 : vec3<f32> = (-(x_156) + x_161);
  let x_163 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_162.x, x_162.y, x_162.z, x_163.w);
  let x_166 : vec4<f32> = u_xlat4;
  let x_168 : vec4<f32> = u_xlat4;
  u_xlat31 = dot(vec3<f32>(x_166.x, x_166.y, x_166.z), vec3<f32>(x_168.x, x_168.y, x_168.z));
  let x_171 : f32 = u_xlat31;
  u_xlat31 = inverseSqrt(x_171);
  let x_173 : f32 = u_xlat31;
  let x_175 : vec4<f32> = u_xlat4;
  let x_177 : vec3<f32> = (vec3<f32>(x_173, x_173, x_173) * vec3<f32>(x_175.x, x_175.y, x_175.z));
  let x_178 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_177.x, x_177.y, x_177.z, x_178.w);
  let x_181 : bool = u_xlatb17;
  if (x_181) {
    let x_187 : f32 = u_xlat4.x;
    x_183 = x_187;
  } else {
    let x_191 : f32 = x_28.unity_MatrixV[0i].z;
    x_183 = x_191;
  }
  let x_192 : f32 = x_183;
  u_xlat5.x = x_192;
  let x_194 : bool = u_xlatb17;
  if (x_194) {
    let x_199 : f32 = u_xlat4.y;
    x_195 = x_199;
  } else {
    let x_203 : f32 = x_28.unity_MatrixV[1i].z;
    x_195 = x_203;
  }
  let x_204 : f32 = x_195;
  u_xlat5.y = x_204;
  let x_206 : bool = u_xlatb17;
  if (x_206) {
    let x_211 : f32 = u_xlat4.z;
    x_207 = x_211;
  } else {
    let x_214 : f32 = x_28.unity_MatrixV[2i].z;
    x_207 = x_214;
  }
  let x_215 : f32 = x_207;
  u_xlat5.z = x_215;
  let x_218 : vec3<f32> = vs_TEXCOORD2;
  let x_222 : vec4<f32> = vs_TEXCOORD3;
  u_xlat17 = (vec3<f32>(x_218.z, x_218.x, x_218.y) * vec3<f32>(x_222.y, x_222.z, x_222.x));
  let x_225 : vec3<f32> = vs_TEXCOORD2;
  let x_227 : vec4<f32> = vs_TEXCOORD3;
  let x_230 : vec3<f32> = u_xlat17;
  u_xlat17 = ((vec3<f32>(x_225.y, x_225.z, x_225.x) * vec3<f32>(x_227.z, x_227.x, x_227.y)) + -(x_230));
  let x_233 : vec3<f32> = u_xlat17;
  let x_234 : vec4<f32> = vs_TEXCOORD3;
  u_xlat17 = (x_233 * vec3<f32>(x_234.w, x_234.w, x_234.w));
  let x_237 : vec2<f32> = u_xlat29;
  let x_239 : vec3<f32> = u_xlat17;
  u_xlat17 = (vec3<f32>(x_237.y, x_237.y, x_237.y) * x_239);
  let x_241 : vec2<f32> = u_xlat29;
  let x_243 : vec4<f32> = vs_TEXCOORD3;
  let x_246 : vec3<f32> = u_xlat17;
  u_xlat17 = ((vec3<f32>(x_241.x, x_241.x, x_241.x) * vec3<f32>(x_243.x, x_243.y, x_243.z)) + x_246);
  let x_248 : f32 = u_xlat42;
  let x_250 : vec3<f32> = vs_TEXCOORD2;
  let x_252 : vec3<f32> = u_xlat17;
  u_xlat17 = ((vec3<f32>(x_248, x_248, x_248) * x_250) + x_252);
  let x_254 : vec3<f32> = u_xlat17;
  let x_255 : vec3<f32> = u_xlat17;
  u_xlat42 = dot(x_254, x_255);
  let x_257 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_257);
  let x_259 : f32 = u_xlat42;
  let x_261 : vec3<f32> = u_xlat17;
  u_xlat17 = (vec3<f32>(x_259, x_259, x_259) * x_261);
  let x_263 : vec3<f32> = vs_TEXCOORD1;
  let x_273 : vec4<f32> = x_271.x_CascadeShadowSplitSpheres0;
  let x_276 : vec3<f32> = (x_263 + -(vec3<f32>(x_273.x, x_273.y, x_273.z)));
  let x_277 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_276.x, x_276.y, x_276.z, x_277.w);
  let x_280 : vec3<f32> = vs_TEXCOORD1;
  let x_282 : vec4<f32> = x_271.x_CascadeShadowSplitSpheres1;
  let x_285 : vec3<f32> = (x_280 + -(vec3<f32>(x_282.x, x_282.y, x_282.z)));
  let x_286 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_285.x, x_285.y, x_285.z, x_286.w);
  let x_289 : vec3<f32> = vs_TEXCOORD1;
  let x_292 : vec4<f32> = x_271.x_CascadeShadowSplitSpheres2;
  let x_295 : vec3<f32> = (x_289 + -(vec3<f32>(x_292.x, x_292.y, x_292.z)));
  let x_296 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_295.x, x_295.y, x_295.z, x_296.w);
  let x_299 : vec3<f32> = vs_TEXCOORD1;
  let x_301 : vec4<f32> = x_271.x_CascadeShadowSplitSpheres3;
  let x_304 : vec3<f32> = (x_299 + -(vec3<f32>(x_301.x, x_301.y, x_301.z)));
  let x_305 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_304.x, x_304.y, x_304.z, x_305.w);
  let x_307 : vec4<f32> = u_xlat4;
  let x_309 : vec4<f32> = u_xlat4;
  u_xlat4.x = dot(vec3<f32>(x_307.x, x_307.y, x_307.z), vec3<f32>(x_309.x, x_309.y, x_309.z));
  let x_313 : vec4<f32> = u_xlat6;
  let x_315 : vec4<f32> = u_xlat6;
  u_xlat4.y = dot(vec3<f32>(x_313.x, x_313.y, x_313.z), vec3<f32>(x_315.x, x_315.y, x_315.z));
  let x_319 : vec4<f32> = u_xlat7;
  let x_321 : vec4<f32> = u_xlat7;
  u_xlat4.z = dot(vec3<f32>(x_319.x, x_319.y, x_319.z), vec3<f32>(x_321.x, x_321.y, x_321.z));
  let x_325 : vec4<f32> = u_xlat8;
  let x_327 : vec4<f32> = u_xlat8;
  u_xlat4.w = dot(vec3<f32>(x_325.x, x_325.y, x_325.z), vec3<f32>(x_327.x, x_327.y, x_327.z));
  let x_334 : vec4<f32> = u_xlat4;
  let x_336 : vec4<f32> = x_271.x_CascadeShadowSplitSphereRadii;
  u_xlatb4 = (x_334 < x_336);
  let x_339 : bool = u_xlatb4.x;
  u_xlat6.x = select(0.0f, 1.0f, x_339);
  let x_343 : bool = u_xlatb4.y;
  u_xlat6.y = select(0.0f, 1.0f, x_343);
  let x_347 : bool = u_xlatb4.z;
  u_xlat6.z = select(0.0f, 1.0f, x_347);
  let x_351 : bool = u_xlatb4.w;
  u_xlat6.w = select(0.0f, 1.0f, x_351);
  let x_355 : bool = u_xlatb4.x;
  u_xlat4.x = select(-0.0f, -1.0f, x_355);
  let x_360 : bool = u_xlatb4.y;
  u_xlat4.y = select(-0.0f, -1.0f, x_360);
  let x_364 : bool = u_xlatb4.z;
  u_xlat4.z = select(-0.0f, -1.0f, x_364);
  let x_367 : vec4<f32> = u_xlat4;
  let x_369 : vec4<f32> = u_xlat6;
  let x_371 : vec3<f32> = (vec3<f32>(x_367.x, x_367.y, x_367.z) + vec3<f32>(x_369.y, x_369.z, x_369.w));
  let x_372 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_371.x, x_371.y, x_371.z, x_372.w);
  let x_374 : vec4<f32> = u_xlat4;
  let x_377 : vec3<f32> = max(vec3<f32>(x_374.x, x_374.y, x_374.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_378 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_378.x, x_377.x, x_377.y, x_377.z);
  let x_380 : vec4<f32> = u_xlat6;
  u_xlat42 = dot(x_380, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_385 : f32 = u_xlat42;
  u_xlat42 = (-(x_385) + 4.0f);
  let x_390 : f32 = u_xlat42;
  u_xlatu42 = u32(x_390);
  let x_394 : u32 = u_xlatu42;
  u_xlati42 = (bitcast<i32>(x_394) << bitcast<u32>(2i));
  let x_397 : vec3<f32> = vs_TEXCOORD1;
  let x_399 : i32 = u_xlati42;
  let x_402 : i32 = u_xlati42;
  let x_406 : vec4<f32> = x_271.x_MainLightWorldToShadow[((x_399 + 1i) / 4i)][((x_402 + 1i) % 4i)];
  let x_408 : vec3<f32> = (vec3<f32>(x_397.y, x_397.y, x_397.y) * vec3<f32>(x_406.x, x_406.y, x_406.z));
  let x_409 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_408.x, x_408.y, x_408.z, x_409.w);
  let x_411 : i32 = u_xlati42;
  let x_413 : i32 = u_xlati42;
  let x_416 : vec4<f32> = x_271.x_MainLightWorldToShadow[(x_411 / 4i)][(x_413 % 4i)];
  let x_418 : vec3<f32> = vs_TEXCOORD1;
  let x_421 : vec4<f32> = u_xlat4;
  let x_423 : vec3<f32> = ((vec3<f32>(x_416.x, x_416.y, x_416.z) * vec3<f32>(x_418.x, x_418.x, x_418.x)) + vec3<f32>(x_421.x, x_421.y, x_421.z));
  let x_424 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_423.x, x_423.y, x_423.z, x_424.w);
  let x_426 : i32 = u_xlati42;
  let x_429 : i32 = u_xlati42;
  let x_433 : vec4<f32> = x_271.x_MainLightWorldToShadow[((x_426 + 2i) / 4i)][((x_429 + 2i) % 4i)];
  let x_435 : vec3<f32> = vs_TEXCOORD1;
  let x_438 : vec4<f32> = u_xlat4;
  let x_440 : vec3<f32> = ((vec3<f32>(x_433.x, x_433.y, x_433.z) * vec3<f32>(x_435.z, x_435.z, x_435.z)) + vec3<f32>(x_438.x, x_438.y, x_438.z));
  let x_441 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_440.x, x_440.y, x_440.z, x_441.w);
  let x_443 : vec4<f32> = u_xlat4;
  let x_445 : i32 = u_xlati42;
  let x_448 : i32 = u_xlati42;
  let x_452 : vec4<f32> = x_271.x_MainLightWorldToShadow[((x_445 + 3i) / 4i)][((x_448 + 3i) % 4i)];
  let x_454 : vec3<f32> = (vec3<f32>(x_443.x, x_443.y, x_443.z) + vec3<f32>(x_452.x, x_452.y, x_452.z));
  let x_455 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_454.x, x_454.y, x_454.z, x_455.w);
  let x_463 : vec2<f32> = vs_TEXCOORD8;
  let x_465 : f32 = x_28.x_GlobalMipBias.x;
  let x_466 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_463, x_465);
  u_xlat6 = x_466;
  let x_471 : vec2<f32> = vs_TEXCOORD8;
  let x_473 : f32 = x_28.x_GlobalMipBias.x;
  let x_474 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_471, x_473);
  let x_475 : vec3<f32> = vec3<f32>(x_474.x, x_474.y, x_474.z);
  let x_476 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_475.x, x_475.y, x_475.z, x_476.w);
  let x_478 : vec4<f32> = u_xlat6;
  let x_482 : vec3<f32> = (vec3<f32>(x_478.x, x_478.y, x_478.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_483 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_482.x, x_482.y, x_482.z, x_483.w);
  let x_485 : vec3<f32> = u_xlat17;
  let x_486 : vec4<f32> = u_xlat6;
  u_xlat42 = dot(x_485, vec3<f32>(x_486.x, x_486.y, x_486.z));
  let x_489 : f32 = u_xlat42;
  u_xlat42 = (x_489 + 0.5f);
  let x_492 : f32 = u_xlat42;
  let x_494 : vec4<f32> = u_xlat7;
  let x_496 : vec3<f32> = (vec3<f32>(x_492, x_492, x_492) * vec3<f32>(x_494.x, x_494.y, x_494.z));
  let x_497 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_496.x, x_496.y, x_496.z, x_497.w);
  let x_500 : f32 = u_xlat6.w;
  u_xlat42 = max(x_500, 0.00009999999747378752f);
  let x_503 : vec4<f32> = u_xlat6;
  let x_505 : f32 = u_xlat42;
  let x_507 : vec3<f32> = (vec3<f32>(x_503.x, x_503.y, x_503.z) / vec3<f32>(x_505, x_505, x_505));
  let x_508 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_507.x, x_507.y, x_507.z, x_508.w);
  let x_511 : f32 = u_xlat1.x;
  u_xlat42 = ((-(x_511) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_517 : f32 = u_xlat1.y;
  let x_519 : f32 = x_54.x_Smoothness;
  let x_521 : f32 = u_xlat42;
  u_xlat29.x = ((x_517 * x_519) + -(x_521));
  let x_526 : f32 = u_xlat42;
  let x_528 : vec4<f32> = u_xlat2;
  u_xlat16 = (vec3<f32>(x_526, x_526, x_526) * vec3<f32>(x_528.y, x_528.z, x_528.w));
  let x_531 : vec4<f32> = u_xlat0;
  let x_534 : vec4<f32> = x_54.x_BaseColor;
  let x_539 : vec3<f32> = ((vec3<f32>(x_531.x, x_531.y, x_531.z) * vec3<f32>(x_534.x, x_534.y, x_534.z)) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_540 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_539.x, x_539.y, x_539.z, x_540.w);
  let x_542 : vec2<f32> = u_xlat1;
  let x_544 : vec4<f32> = u_xlat0;
  let x_549 : vec3<f32> = ((vec3<f32>(x_542.x, x_542.x, x_542.x) * vec3<f32>(x_544.x, x_544.y, x_544.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_550 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_549.x, x_549.y, x_549.z, x_550.w);
  let x_553 : f32 = u_xlat1.y;
  let x_556 : f32 = x_54.x_Smoothness;
  u_xlat42 = ((-(x_553) * x_556) + 1.0f);
  let x_559 : f32 = u_xlat42;
  let x_560 : f32 = u_xlat42;
  u_xlat1.x = (x_559 * x_560);
  let x_564 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_564, 0.0078125f);
  let x_570 : f32 = u_xlat1.x;
  let x_572 : f32 = u_xlat1.x;
  u_xlat15 = (x_570 * x_572);
  let x_575 : f32 = u_xlat29.x;
  u_xlat29.x = (x_575 + 1.0f);
  let x_579 : f32 = u_xlat29.x;
  u_xlat29.x = clamp(x_579, 0.0f, 1.0f);
  let x_584 : f32 = u_xlat1.x;
  u_xlat43 = ((x_584 * 4.0f) + 2.0f);
  let x_588 : f32 = u_xlat3.x;
  u_xlat3.x = min(x_588, 1.0f);
  let x_593 : vec4<f32> = u_xlat4;
  let x_594 : vec2<f32> = vec2<f32>(x_593.x, x_593.y);
  let x_596 : f32 = u_xlat4.z;
  txVec0 = vec3<f32>(x_594.x, x_594.y, x_596);
  let x_608 : vec3<f32> = txVec0;
  let x_610 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_608.xy, x_608.z);
  u_xlat4.x = x_610;
  let x_614 : f32 = x_271.x_MainLightShadowParams.x;
  u_xlat18.x = (-(x_614) + 1.0f);
  let x_619 : f32 = u_xlat4.x;
  let x_621 : f32 = x_271.x_MainLightShadowParams.x;
  let x_624 : f32 = u_xlat18.x;
  u_xlat4.x = ((x_619 * x_621) + x_624);
  let x_629 : f32 = u_xlat4.z;
  u_xlatb18 = (0.0f >= x_629);
  let x_635 : f32 = u_xlat4.z;
  u_xlatb32.x = (x_635 >= 1.0f);
  let x_639 : bool = u_xlatb32.x;
  let x_640 : bool = u_xlatb18;
  u_xlatb18 = (x_639 | x_640);
  let x_642 : bool = u_xlatb18;
  if (x_642) {
    x_643 = 1.0f;
  } else {
    let x_648 : f32 = u_xlat4.x;
    x_643 = x_648;
  }
  let x_649 : f32 = x_643;
  u_xlat4.x = x_649;
  let x_651 : vec3<f32> = vs_TEXCOORD1;
  let x_653 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  u_xlat18 = (x_651 + -(x_653));
  let x_656 : vec3<f32> = u_xlat18;
  let x_657 : vec3<f32> = u_xlat18;
  u_xlat18.x = dot(x_656, x_657);
  let x_662 : f32 = u_xlat18.x;
  let x_664 : f32 = x_271.x_MainLightShadowParams.z;
  let x_667 : f32 = x_271.x_MainLightShadowParams.w;
  u_xlat32.x = ((x_662 * x_664) + x_667);
  let x_671 : f32 = u_xlat32.x;
  u_xlat32.x = clamp(x_671, 0.0f, 1.0f);
  let x_676 : f32 = u_xlat4.x;
  u_xlat46 = (-(x_676) + 1.0f);
  let x_680 : f32 = u_xlat32.x;
  let x_681 : f32 = u_xlat46;
  let x_684 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_680 * x_681) + x_684);
  let x_694 : f32 = x_692.x_MainLightCookieTextureFormat;
  u_xlatb32.x = !((x_694 == -1.0f));
  let x_698 : bool = u_xlatb32.x;
  if (x_698) {
    let x_701 : vec3<f32> = vs_TEXCOORD1;
    let x_704 : vec4<f32> = x_692.x_MainLightWorldToLight[1i];
    u_xlat32 = (vec2<f32>(x_701.y, x_701.y) * vec2<f32>(x_704.x, x_704.y));
    let x_708 : vec4<f32> = x_692.x_MainLightWorldToLight[0i];
    let x_710 : vec3<f32> = vs_TEXCOORD1;
    let x_713 : vec2<f32> = u_xlat32;
    u_xlat32 = ((vec2<f32>(x_708.x, x_708.y) * vec2<f32>(x_710.x, x_710.x)) + x_713);
    let x_716 : vec4<f32> = x_692.x_MainLightWorldToLight[2i];
    let x_718 : vec3<f32> = vs_TEXCOORD1;
    let x_721 : vec2<f32> = u_xlat32;
    u_xlat32 = ((vec2<f32>(x_716.x, x_716.y) * vec2<f32>(x_718.z, x_718.z)) + x_721);
    let x_723 : vec2<f32> = u_xlat32;
    let x_725 : vec4<f32> = x_692.x_MainLightWorldToLight[3i];
    u_xlat32 = (x_723 + vec2<f32>(x_725.x, x_725.y));
    let x_728 : vec2<f32> = u_xlat32;
    u_xlat32 = ((x_728 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_737 : vec2<f32> = u_xlat32;
    let x_739 : f32 = x_28.x_GlobalMipBias.x;
    let x_740 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, x_737, x_739);
    u_xlat7 = x_740;
    let x_742 : f32 = x_692.x_MainLightCookieTextureFormat;
    let x_744 : f32 = x_692.x_MainLightCookieTextureFormat;
    let x_746 : f32 = x_692.x_MainLightCookieTextureFormat;
    let x_748 : f32 = x_692.x_MainLightCookieTextureFormat;
    let x_749 : vec4<f32> = vec4<f32>(x_742, x_744, x_746, x_748);
    let x_756 : vec4<bool> = (vec4<f32>(x_749.x, x_749.y, x_749.z, x_749.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 1.0f));
    u_xlatb32 = vec2<bool>(x_756.x, x_756.y);
    let x_759 : bool = u_xlatb32.y;
    if (x_759) {
      let x_764 : f32 = u_xlat7.w;
      x_760 = x_764;
    } else {
      let x_767 : f32 = u_xlat7.x;
      x_760 = x_767;
    }
    let x_768 : f32 = x_760;
    u_xlat46 = x_768;
    let x_770 : bool = u_xlatb32.x;
    if (x_770) {
      let x_774 : vec4<f32> = u_xlat7;
      x_771 = vec3<f32>(x_774.x, x_774.y, x_774.z);
    } else {
      let x_777 : f32 = u_xlat46;
      x_771 = vec3<f32>(x_777, x_777, x_777);
    }
    let x_779 : vec3<f32> = x_771;
    let x_780 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_779.x, x_779.y, x_779.z, x_780.w);
  } else {
    u_xlat7.x = 1.0f;
    u_xlat7.y = 1.0f;
    u_xlat7.z = 1.0f;
  }
  let x_786 : vec4<f32> = u_xlat7;
  let x_789 : vec4<f32> = x_28.x_MainLightColor;
  let x_791 : vec3<f32> = (vec3<f32>(x_786.x, x_786.y, x_786.z) * vec3<f32>(x_789.x, x_789.y, x_789.z));
  let x_792 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_791.x, x_791.y, x_791.z, x_792.w);
  let x_794 : vec3<f32> = u_xlat5;
  let x_796 : vec3<f32> = u_xlat17;
  u_xlat32.x = dot(-(x_794), x_796);
  let x_800 : f32 = u_xlat32.x;
  let x_802 : f32 = u_xlat32.x;
  u_xlat32.x = (x_800 + x_802);
  let x_805 : vec3<f32> = u_xlat17;
  let x_806 : vec2<f32> = u_xlat32;
  let x_810 : vec3<f32> = u_xlat5;
  let x_812 : vec3<f32> = ((x_805 * -(vec3<f32>(x_806.x, x_806.x, x_806.x))) + -(x_810));
  let x_813 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_812.x, x_812.y, x_812.z, x_813.w);
  let x_815 : vec3<f32> = u_xlat17;
  let x_816 : vec3<f32> = u_xlat5;
  u_xlat32.x = dot(x_815, x_816);
  let x_820 : f32 = u_xlat32.x;
  u_xlat32.x = clamp(x_820, 0.0f, 1.0f);
  let x_824 : f32 = u_xlat32.x;
  u_xlat32.x = (-(x_824) + 1.0f);
  let x_829 : f32 = u_xlat32.x;
  let x_831 : f32 = u_xlat32.x;
  u_xlat32.x = (x_829 * x_831);
  let x_835 : f32 = u_xlat32.x;
  let x_837 : f32 = u_xlat32.x;
  u_xlat32.x = (x_835 * x_837);
  let x_840 : f32 = u_xlat42;
  u_xlat46 = ((-(x_840) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_846 : f32 = u_xlat42;
  let x_847 : f32 = u_xlat46;
  u_xlat42 = (x_846 * x_847);
  let x_849 : f32 = u_xlat42;
  u_xlat42 = (x_849 * 6.0f);
  let x_860 : vec4<f32> = u_xlat8;
  let x_862 : f32 = u_xlat42;
  let x_863 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_860.x, x_860.y, x_860.z), x_862);
  u_xlat8 = x_863;
  let x_865 : f32 = u_xlat8.w;
  u_xlat42 = (x_865 + -1.0f);
  let x_872 : f32 = x_870.unity_SpecCube0_HDR.w;
  let x_873 : f32 = u_xlat42;
  u_xlat42 = ((x_872 * x_873) + 1.0f);
  let x_876 : f32 = u_xlat42;
  u_xlat42 = max(x_876, 0.0f);
  let x_878 : f32 = u_xlat42;
  u_xlat42 = log2(x_878);
  let x_880 : f32 = u_xlat42;
  let x_882 : f32 = x_870.unity_SpecCube0_HDR.y;
  u_xlat42 = (x_880 * x_882);
  let x_884 : f32 = u_xlat42;
  u_xlat42 = exp2(x_884);
  let x_886 : f32 = u_xlat42;
  let x_888 : f32 = x_870.unity_SpecCube0_HDR.x;
  u_xlat42 = (x_886 * x_888);
  let x_890 : vec4<f32> = u_xlat8;
  let x_892 : f32 = u_xlat42;
  let x_894 : vec3<f32> = (vec3<f32>(x_890.x, x_890.y, x_890.z) * vec3<f32>(x_892, x_892, x_892));
  let x_895 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_894.x, x_894.y, x_894.z, x_895.w);
  let x_898 : vec2<f32> = u_xlat1;
  let x_900 : vec2<f32> = u_xlat1;
  u_xlat9 = ((vec2<f32>(x_898.x, x_898.x) * vec2<f32>(x_900.x, x_900.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_906 : f32 = u_xlat9.y;
  u_xlat42 = (1.0f / x_906);
  let x_909 : vec4<f32> = u_xlat0;
  let x_912 : vec2<f32> = u_xlat29;
  u_xlat23 = (-(vec3<f32>(x_909.x, x_909.y, x_909.z)) + vec3<f32>(x_912.x, x_912.x, x_912.x));
  let x_915 : vec2<f32> = u_xlat32;
  let x_917 : vec3<f32> = u_xlat23;
  let x_919 : vec4<f32> = u_xlat0;
  u_xlat23 = ((vec3<f32>(x_915.x, x_915.x, x_915.x) * x_917) + vec3<f32>(x_919.x, x_919.y, x_919.z));
  let x_922 : f32 = u_xlat42;
  let x_924 : vec3<f32> = u_xlat23;
  u_xlat23 = (vec3<f32>(x_922, x_922, x_922) * x_924);
  let x_926 : vec4<f32> = u_xlat8;
  let x_928 : vec3<f32> = u_xlat23;
  let x_929 : vec3<f32> = (vec3<f32>(x_926.x, x_926.y, x_926.z) * x_928);
  let x_930 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_929.x, x_929.y, x_929.z, x_930.w);
  let x_932 : vec4<f32> = u_xlat6;
  let x_934 : vec3<f32> = u_xlat16;
  let x_936 : vec4<f32> = u_xlat8;
  let x_938 : vec3<f32> = ((vec3<f32>(x_932.x, x_932.y, x_932.z) * x_934) + vec3<f32>(x_936.x, x_936.y, x_936.z));
  let x_939 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_938.x, x_938.y, x_938.z, x_939.w);
  let x_942 : f32 = u_xlat4.x;
  let x_944 : f32 = x_870.unity_LightData.z;
  u_xlat42 = (x_942 * x_944);
  let x_946 : vec3<f32> = u_xlat17;
  let x_948 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat1.x = dot(x_946, vec3<f32>(x_948.x, x_948.y, x_948.z));
  let x_953 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_953, 0.0f, 1.0f);
  let x_956 : f32 = u_xlat42;
  let x_958 : f32 = u_xlat1.x;
  u_xlat42 = (x_956 * x_958);
  let x_960 : f32 = u_xlat42;
  let x_962 : vec4<f32> = u_xlat7;
  let x_964 : vec3<f32> = (vec3<f32>(x_960, x_960, x_960) * vec3<f32>(x_962.x, x_962.y, x_962.z));
  let x_965 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_964.x, x_965.y, x_964.y, x_964.z);
  let x_967 : vec3<f32> = u_xlat5;
  let x_969 : vec4<f32> = x_28.x_MainLightPosition;
  let x_971 : vec3<f32> = (x_967 + vec3<f32>(x_969.x, x_969.y, x_969.z));
  let x_972 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_971.x, x_971.y, x_971.z, x_972.w);
  let x_974 : vec4<f32> = u_xlat7;
  let x_976 : vec4<f32> = u_xlat7;
  u_xlat42 = dot(vec3<f32>(x_974.x, x_974.y, x_974.z), vec3<f32>(x_976.x, x_976.y, x_976.z));
  let x_979 : f32 = u_xlat42;
  u_xlat42 = max(x_979, 1.17549435e-38f);
  let x_982 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_982);
  let x_984 : f32 = u_xlat42;
  let x_986 : vec4<f32> = u_xlat7;
  let x_988 : vec3<f32> = (vec3<f32>(x_984, x_984, x_984) * vec3<f32>(x_986.x, x_986.y, x_986.z));
  let x_989 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_988.x, x_988.y, x_988.z, x_989.w);
  let x_991 : vec3<f32> = u_xlat17;
  let x_992 : vec4<f32> = u_xlat7;
  u_xlat42 = dot(x_991, vec3<f32>(x_992.x, x_992.y, x_992.z));
  let x_995 : f32 = u_xlat42;
  u_xlat42 = clamp(x_995, 0.0f, 1.0f);
  let x_998 : vec4<f32> = x_28.x_MainLightPosition;
  let x_1000 : vec4<f32> = u_xlat7;
  u_xlat1.x = dot(vec3<f32>(x_998.x, x_998.y, x_998.z), vec3<f32>(x_1000.x, x_1000.y, x_1000.z));
  let x_1005 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1005, 0.0f, 1.0f);
  let x_1008 : f32 = u_xlat42;
  let x_1009 : f32 = u_xlat42;
  u_xlat42 = (x_1008 * x_1009);
  let x_1011 : f32 = u_xlat42;
  let x_1013 : f32 = u_xlat9.x;
  u_xlat42 = ((x_1011 * x_1013) + 1.00001001358032226562f);
  let x_1018 : f32 = u_xlat1.x;
  let x_1020 : f32 = u_xlat1.x;
  u_xlat1.x = (x_1018 * x_1020);
  let x_1023 : f32 = u_xlat42;
  let x_1024 : f32 = u_xlat42;
  u_xlat42 = (x_1023 * x_1024);
  let x_1027 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_1027, 0.10000000149011611938f);
  let x_1031 : f32 = u_xlat42;
  let x_1033 : f32 = u_xlat1.x;
  u_xlat42 = (x_1031 * x_1033);
  let x_1035 : f32 = u_xlat43;
  let x_1036 : f32 = u_xlat42;
  u_xlat42 = (x_1035 * x_1036);
  let x_1038 : f32 = u_xlat15;
  let x_1039 : f32 = u_xlat42;
  u_xlat42 = (x_1038 / x_1039);
  let x_1041 : vec4<f32> = u_xlat0;
  let x_1043 : f32 = u_xlat42;
  let x_1046 : vec3<f32> = u_xlat16;
  let x_1047 : vec3<f32> = ((vec3<f32>(x_1041.x, x_1041.y, x_1041.z) * vec3<f32>(x_1043, x_1043, x_1043)) + x_1046);
  let x_1048 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1047.x, x_1047.y, x_1047.z, x_1048.w);
  let x_1050 : vec4<f32> = u_xlat4;
  let x_1052 : vec4<f32> = u_xlat7;
  let x_1054 : vec3<f32> = (vec3<f32>(x_1050.x, x_1050.z, x_1050.w) * vec3<f32>(x_1052.x, x_1052.y, x_1052.z));
  let x_1055 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1054.x, x_1055.y, x_1054.y, x_1054.z);
  let x_1058 : f32 = x_28.x_AdditionalLightsCount.x;
  let x_1060 : f32 = x_870.unity_LightData.y;
  u_xlat42 = min(x_1058, x_1060);
  let x_1062 : f32 = u_xlat42;
  u_xlatu42 = bitcast<u32>(i32(x_1062));
  let x_1066 : f32 = u_xlat18.x;
  let x_1069 : f32 = x_271.x_AdditionalShadowFadeParams.x;
  let x_1072 : f32 = x_271.x_AdditionalShadowFadeParams.y;
  u_xlat1.x = ((x_1066 * x_1069) + x_1072);
  let x_1076 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1076, 0.0f, 1.0f);
  let x_1081 : f32 = x_692.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1083 : f32 = x_692.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1085 : f32 = x_692.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1087 : f32 = x_692.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1088 : vec4<f32> = vec4<f32>(x_1081, x_1083, x_1085, x_1087);
  let x_1095 : vec4<bool> = (vec4<f32>(x_1088.x, x_1088.y, x_1088.z, x_1088.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_1095.x, x_1095.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1107 : u32 = u_xlatu_loop_1;
    let x_1108 : u32 = u_xlatu42;
    if ((x_1107 < x_1108)) {
    } else {
      break;
    }
    let x_1111 : u32 = u_xlatu_loop_1;
    u_xlatu18 = (x_1111 >> 2u);
    let x_1114 : u32 = u_xlatu_loop_1;
    u_xlati47 = bitcast<i32>((x_1114 & 3u));
    let x_1117 : u32 = u_xlatu18;
    let x_1120 : vec4<f32> = x_870.unity_LightIndices[bitcast<i32>(x_1117)];
    let x_1130 : i32 = u_xlati47;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1135 : vec4<u32> = indexable[x_1130];
    u_xlat18.x = dot(x_1120, bitcast<vec4<f32>>(x_1135));
    let x_1141 : f32 = u_xlat18.x;
    u_xlati18 = i32(x_1141);
    let x_1143 : vec3<f32> = vs_TEXCOORD1;
    let x_1154 : i32 = u_xlati18;
    let x_1156 : vec4<f32> = x_1153.x_AdditionalLightsPosition[x_1154];
    let x_1159 : i32 = u_xlati18;
    let x_1161 : vec4<f32> = x_1153.x_AdditionalLightsPosition[x_1159];
    u_xlat23 = ((-(x_1143) * vec3<f32>(x_1156.w, x_1156.w, x_1156.w)) + vec3<f32>(x_1161.x, x_1161.y, x_1161.z));
    let x_1165 : vec3<f32> = u_xlat23;
    let x_1166 : vec3<f32> = u_xlat23;
    u_xlat47 = dot(x_1165, x_1166);
    let x_1168 : f32 = u_xlat47;
    u_xlat47 = max(x_1168, 0.00006103515625f);
    let x_1172 : f32 = u_xlat47;
    u_xlat48 = inverseSqrt(x_1172);
    let x_1175 : f32 = u_xlat48;
    let x_1177 : vec3<f32> = u_xlat23;
    u_xlat10 = (vec3<f32>(x_1175, x_1175, x_1175) * x_1177);
    let x_1180 : f32 = u_xlat47;
    u_xlat35 = (1.0f / x_1180);
    let x_1182 : f32 = u_xlat47;
    let x_1183 : i32 = u_xlati18;
    let x_1185 : f32 = x_1153.x_AdditionalLightsAttenuation[x_1183].x;
    u_xlat47 = (x_1182 * x_1185);
    let x_1187 : f32 = u_xlat47;
    let x_1189 : f32 = u_xlat47;
    u_xlat47 = ((-(x_1187) * x_1189) + 1.0f);
    let x_1192 : f32 = u_xlat47;
    u_xlat47 = max(x_1192, 0.0f);
    let x_1194 : f32 = u_xlat47;
    let x_1195 : f32 = u_xlat47;
    u_xlat47 = (x_1194 * x_1195);
    let x_1197 : f32 = u_xlat47;
    let x_1198 : f32 = u_xlat35;
    u_xlat47 = (x_1197 * x_1198);
    let x_1200 : i32 = u_xlati18;
    let x_1202 : vec4<f32> = x_1153.x_AdditionalLightsSpotDir[x_1200];
    let x_1204 : vec3<f32> = u_xlat10;
    u_xlat35 = dot(vec3<f32>(x_1202.x, x_1202.y, x_1202.z), x_1204);
    let x_1206 : f32 = u_xlat35;
    let x_1207 : i32 = u_xlati18;
    let x_1209 : f32 = x_1153.x_AdditionalLightsAttenuation[x_1207].z;
    let x_1211 : i32 = u_xlati18;
    let x_1213 : f32 = x_1153.x_AdditionalLightsAttenuation[x_1211].w;
    u_xlat35 = ((x_1206 * x_1209) + x_1213);
    let x_1215 : f32 = u_xlat35;
    u_xlat35 = clamp(x_1215, 0.0f, 1.0f);
    let x_1217 : f32 = u_xlat35;
    let x_1218 : f32 = u_xlat35;
    u_xlat35 = (x_1217 * x_1218);
    let x_1220 : f32 = u_xlat47;
    let x_1221 : f32 = u_xlat35;
    u_xlat47 = (x_1220 * x_1221);
    let x_1225 : i32 = u_xlati18;
    let x_1227 : f32 = x_271.x_AdditionalShadowParams[x_1225].w;
    u_xlati35 = i32(x_1227);
    let x_1230 : i32 = u_xlati35;
    u_xlatb49 = (x_1230 >= 0i);
    let x_1232 : bool = u_xlatb49;
    if (x_1232) {
      let x_1236 : i32 = u_xlati18;
      let x_1238 : f32 = x_271.x_AdditionalShadowParams[x_1236].z;
      u_xlatb49 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1238, x_1238, x_1238, x_1238))));
      let x_1242 : bool = u_xlatb49;
      if (x_1242) {
        let x_1246 : vec3<f32> = u_xlat10;
        let x_1249 : vec3<f32> = u_xlat10;
        let x_1252 : vec4<bool> = (abs(vec4<f32>(x_1246.z, x_1246.z, x_1246.y, x_1246.z)) >= abs(vec4<f32>(x_1249.x, x_1249.y, x_1249.x, x_1249.x)));
        let x_1254 : vec3<bool> = vec3<bool>(x_1252.x, x_1252.y, x_1252.z);
        let x_1255 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1254.x, x_1254.y, x_1254.z, x_1255.w);
        let x_1258 : bool = u_xlatb11.y;
        let x_1260 : bool = u_xlatb11.x;
        u_xlatb49 = (x_1258 & x_1260);
        let x_1262 : vec3<f32> = u_xlat10;
        let x_1265 : vec4<bool> = (-(vec4<f32>(x_1262.z, x_1262.y, x_1262.z, x_1262.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1266 : vec3<bool> = vec3<bool>(x_1265.x, x_1265.y, x_1265.w);
        let x_1267 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1266.x, x_1266.y, x_1267.z, x_1266.z);
        let x_1271 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_1271);
        let x_1276 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_1276);
        let x_1281 : bool = u_xlatb11.w;
        u_xlat50 = select(0.0f, 1.0f, x_1281);
        let x_1284 : bool = u_xlatb11.z;
        if (x_1284) {
          let x_1289 : f32 = u_xlat11.y;
          x_1285 = x_1289;
        } else {
          let x_1291 : f32 = u_xlat50;
          x_1285 = x_1291;
        }
        let x_1292 : f32 = x_1285;
        u_xlat50 = x_1292;
        let x_1294 : bool = u_xlatb49;
        if (x_1294) {
          let x_1299 : f32 = u_xlat11.x;
          x_1295 = x_1299;
        } else {
          let x_1301 : f32 = u_xlat50;
          x_1295 = x_1301;
        }
        let x_1302 : f32 = x_1295;
        u_xlat49 = x_1302;
        let x_1303 : i32 = u_xlati18;
        let x_1305 : f32 = x_271.x_AdditionalShadowParams[x_1303].w;
        u_xlat50 = trunc(x_1305);
        let x_1307 : f32 = u_xlat49;
        let x_1308 : f32 = u_xlat50;
        u_xlat49 = (x_1307 + x_1308);
        let x_1310 : f32 = u_xlat49;
        u_xlati35 = i32(x_1310);
      }
      let x_1312 : i32 = u_xlati35;
      u_xlati35 = (x_1312 << bitcast<u32>(2i));
      let x_1314 : vec3<f32> = vs_TEXCOORD1;
      let x_1317 : i32 = u_xlati35;
      let x_1320 : i32 = u_xlati35;
      let x_1324 : vec4<f32> = x_271.x_AdditionalLightsWorldToShadow[((x_1317 + 1i) / 4i)][((x_1320 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_1314.y, x_1314.y, x_1314.y, x_1314.y) * x_1324);
      let x_1326 : i32 = u_xlati35;
      let x_1328 : i32 = u_xlati35;
      let x_1331 : vec4<f32> = x_271.x_AdditionalLightsWorldToShadow[(x_1326 / 4i)][(x_1328 % 4i)];
      let x_1332 : vec3<f32> = vs_TEXCOORD1;
      let x_1335 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1331 * vec4<f32>(x_1332.x, x_1332.x, x_1332.x, x_1332.x)) + x_1335);
      let x_1337 : i32 = u_xlati35;
      let x_1340 : i32 = u_xlati35;
      let x_1344 : vec4<f32> = x_271.x_AdditionalLightsWorldToShadow[((x_1337 + 2i) / 4i)][((x_1340 + 2i) % 4i)];
      let x_1345 : vec3<f32> = vs_TEXCOORD1;
      let x_1348 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1344 * vec4<f32>(x_1345.z, x_1345.z, x_1345.z, x_1345.z)) + x_1348);
      let x_1350 : vec4<f32> = u_xlat11;
      let x_1351 : i32 = u_xlati35;
      let x_1354 : i32 = u_xlati35;
      let x_1358 : vec4<f32> = x_271.x_AdditionalLightsWorldToShadow[((x_1351 + 3i) / 4i)][((x_1354 + 3i) % 4i)];
      u_xlat11 = (x_1350 + x_1358);
      let x_1360 : vec4<f32> = u_xlat11;
      let x_1362 : vec4<f32> = u_xlat11;
      let x_1364 : vec3<f32> = (vec3<f32>(x_1360.x, x_1360.y, x_1360.z) / vec3<f32>(x_1362.w, x_1362.w, x_1362.w));
      let x_1365 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1364.x, x_1364.y, x_1364.z, x_1365.w);
      let x_1368 : vec4<f32> = u_xlat11;
      let x_1369 : vec2<f32> = vec2<f32>(x_1368.x, x_1368.y);
      let x_1371 : f32 = u_xlat11.z;
      txVec1 = vec3<f32>(x_1369.x, x_1369.y, x_1371);
      let x_1379 : vec3<f32> = txVec1;
      let x_1381 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1379.xy, x_1379.z);
      u_xlat35 = x_1381;
      let x_1382 : i32 = u_xlati18;
      let x_1384 : f32 = x_271.x_AdditionalShadowParams[x_1382].x;
      u_xlat49 = (1.0f + -(x_1384));
      let x_1387 : f32 = u_xlat35;
      let x_1388 : i32 = u_xlati18;
      let x_1390 : f32 = x_271.x_AdditionalShadowParams[x_1388].x;
      let x_1392 : f32 = u_xlat49;
      u_xlat35 = ((x_1387 * x_1390) + x_1392);
      let x_1395 : f32 = u_xlat11.z;
      u_xlatb49 = (0.0f >= x_1395);
      let x_1399 : f32 = u_xlat11.z;
      u_xlatb50 = (x_1399 >= 1.0f);
      let x_1401 : bool = u_xlatb49;
      let x_1402 : bool = u_xlatb50;
      u_xlatb49 = (x_1401 | x_1402);
      let x_1404 : bool = u_xlatb49;
      let x_1405 : f32 = u_xlat35;
      u_xlat35 = select(x_1405, 1.0f, x_1404);
    } else {
      u_xlat35 = 1.0f;
    }
    let x_1408 : f32 = u_xlat35;
    u_xlat49 = (-(x_1408) + 1.0f);
    let x_1412 : f32 = u_xlat1.x;
    let x_1413 : f32 = u_xlat49;
    let x_1415 : f32 = u_xlat35;
    u_xlat35 = ((x_1412 * x_1413) + x_1415);
    let x_1418 : i32 = u_xlati18;
    u_xlati49 = (1i << bitcast<u32>((x_1418 & 31i)));
    let x_1422 : i32 = u_xlati49;
    let x_1425 : f32 = x_692.x_AdditionalLightsCookieEnableBits;
    u_xlati49 = bitcast<i32>((bitcast<u32>(x_1422) & bitcast<u32>(x_1425)));
    let x_1429 : i32 = u_xlati49;
    if ((x_1429 != 0i)) {
      let x_1433 : i32 = u_xlati18;
      let x_1435 : f32 = x_692.x_AdditionalLightsLightTypes[x_1433].el;
      u_xlati49 = i32(x_1435);
      let x_1438 : i32 = u_xlati49;
      u_xlati50 = select(1i, 0i, (x_1438 != 0i));
      let x_1442 : i32 = u_xlati18;
      u_xlati52 = (x_1442 << bitcast<u32>(2i));
      let x_1444 : i32 = u_xlati50;
      if ((x_1444 != 0i)) {
        let x_1448 : vec3<f32> = vs_TEXCOORD1;
        let x_1450 : i32 = u_xlati52;
        let x_1453 : i32 = u_xlati52;
        let x_1457 : vec4<f32> = x_692.x_AdditionalLightsWorldToLights[((x_1450 + 1i) / 4i)][((x_1453 + 1i) % 4i)];
        let x_1459 : vec3<f32> = (vec3<f32>(x_1448.y, x_1448.y, x_1448.y) * vec3<f32>(x_1457.x, x_1457.y, x_1457.w));
        let x_1460 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1459.x, x_1459.y, x_1459.z, x_1460.w);
        let x_1462 : i32 = u_xlati52;
        let x_1464 : i32 = u_xlati52;
        let x_1467 : vec4<f32> = x_692.x_AdditionalLightsWorldToLights[(x_1462 / 4i)][(x_1464 % 4i)];
        let x_1469 : vec3<f32> = vs_TEXCOORD1;
        let x_1472 : vec4<f32> = u_xlat11;
        let x_1474 : vec3<f32> = ((vec3<f32>(x_1467.x, x_1467.y, x_1467.w) * vec3<f32>(x_1469.x, x_1469.x, x_1469.x)) + vec3<f32>(x_1472.x, x_1472.y, x_1472.z));
        let x_1475 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1474.x, x_1474.y, x_1474.z, x_1475.w);
        let x_1477 : i32 = u_xlati52;
        let x_1480 : i32 = u_xlati52;
        let x_1484 : vec4<f32> = x_692.x_AdditionalLightsWorldToLights[((x_1477 + 2i) / 4i)][((x_1480 + 2i) % 4i)];
        let x_1486 : vec3<f32> = vs_TEXCOORD1;
        let x_1489 : vec4<f32> = u_xlat11;
        let x_1491 : vec3<f32> = ((vec3<f32>(x_1484.x, x_1484.y, x_1484.w) * vec3<f32>(x_1486.z, x_1486.z, x_1486.z)) + vec3<f32>(x_1489.x, x_1489.y, x_1489.z));
        let x_1492 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1491.x, x_1491.y, x_1491.z, x_1492.w);
        let x_1494 : vec4<f32> = u_xlat11;
        let x_1496 : i32 = u_xlati52;
        let x_1499 : i32 = u_xlati52;
        let x_1503 : vec4<f32> = x_692.x_AdditionalLightsWorldToLights[((x_1496 + 3i) / 4i)][((x_1499 + 3i) % 4i)];
        let x_1505 : vec3<f32> = (vec3<f32>(x_1494.x, x_1494.y, x_1494.z) + vec3<f32>(x_1503.x, x_1503.y, x_1503.w));
        let x_1506 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1505.x, x_1505.y, x_1505.z, x_1506.w);
        let x_1508 : vec4<f32> = u_xlat11;
        let x_1510 : vec4<f32> = u_xlat11;
        let x_1512 : vec2<f32> = (vec2<f32>(x_1508.x, x_1508.y) / vec2<f32>(x_1510.z, x_1510.z));
        let x_1513 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1512.x, x_1512.y, x_1513.z, x_1513.w);
        let x_1515 : vec4<f32> = u_xlat11;
        let x_1518 : vec2<f32> = ((vec2<f32>(x_1515.x, x_1515.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1519 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1518.x, x_1518.y, x_1519.z, x_1519.w);
        let x_1521 : vec4<f32> = u_xlat11;
        let x_1525 : vec2<f32> = clamp(vec2<f32>(x_1521.x, x_1521.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1526 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1525.x, x_1525.y, x_1526.z, x_1526.w);
        let x_1528 : i32 = u_xlati18;
        let x_1530 : vec4<f32> = x_692.x_AdditionalLightsCookieAtlasUVRects[x_1528];
        let x_1532 : vec4<f32> = u_xlat11;
        let x_1535 : i32 = u_xlati18;
        let x_1537 : vec4<f32> = x_692.x_AdditionalLightsCookieAtlasUVRects[x_1535];
        let x_1539 : vec2<f32> = ((vec2<f32>(x_1530.x, x_1530.y) * vec2<f32>(x_1532.x, x_1532.y)) + vec2<f32>(x_1537.z, x_1537.w));
        let x_1540 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1539.x, x_1539.y, x_1540.z, x_1540.w);
      } else {
        let x_1543 : i32 = u_xlati49;
        u_xlatb49 = (x_1543 == 1i);
        let x_1545 : bool = u_xlatb49;
        u_xlati49 = select(0i, 1i, x_1545);
        let x_1547 : i32 = u_xlati49;
        if ((x_1547 != 0i)) {
          let x_1552 : vec3<f32> = vs_TEXCOORD1;
          let x_1554 : i32 = u_xlati52;
          let x_1557 : i32 = u_xlati52;
          let x_1561 : vec4<f32> = x_692.x_AdditionalLightsWorldToLights[((x_1554 + 1i) / 4i)][((x_1557 + 1i) % 4i)];
          u_xlat39 = (vec2<f32>(x_1552.y, x_1552.y) * vec2<f32>(x_1561.x, x_1561.y));
          let x_1564 : i32 = u_xlati52;
          let x_1566 : i32 = u_xlati52;
          let x_1569 : vec4<f32> = x_692.x_AdditionalLightsWorldToLights[(x_1564 / 4i)][(x_1566 % 4i)];
          let x_1571 : vec3<f32> = vs_TEXCOORD1;
          let x_1574 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1569.x, x_1569.y) * vec2<f32>(x_1571.x, x_1571.x)) + x_1574);
          let x_1576 : i32 = u_xlati52;
          let x_1579 : i32 = u_xlati52;
          let x_1583 : vec4<f32> = x_692.x_AdditionalLightsWorldToLights[((x_1576 + 2i) / 4i)][((x_1579 + 2i) % 4i)];
          let x_1585 : vec3<f32> = vs_TEXCOORD1;
          let x_1588 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1583.x, x_1583.y) * vec2<f32>(x_1585.z, x_1585.z)) + x_1588);
          let x_1590 : vec2<f32> = u_xlat39;
          let x_1591 : i32 = u_xlati52;
          let x_1594 : i32 = u_xlati52;
          let x_1598 : vec4<f32> = x_692.x_AdditionalLightsWorldToLights[((x_1591 + 3i) / 4i)][((x_1594 + 3i) % 4i)];
          u_xlat39 = (x_1590 + vec2<f32>(x_1598.x, x_1598.y));
          let x_1601 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1601 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1604 : vec2<f32> = u_xlat39;
          u_xlat39 = fract(x_1604);
          let x_1606 : i32 = u_xlati18;
          let x_1608 : vec4<f32> = x_692.x_AdditionalLightsCookieAtlasUVRects[x_1606];
          let x_1610 : vec2<f32> = u_xlat39;
          let x_1612 : i32 = u_xlati18;
          let x_1614 : vec4<f32> = x_692.x_AdditionalLightsCookieAtlasUVRects[x_1612];
          let x_1616 : vec2<f32> = ((vec2<f32>(x_1608.x, x_1608.y) * x_1610) + vec2<f32>(x_1614.z, x_1614.w));
          let x_1617 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1616.x, x_1616.y, x_1617.z, x_1617.w);
        } else {
          let x_1621 : vec3<f32> = vs_TEXCOORD1;
          let x_1623 : i32 = u_xlati52;
          let x_1626 : i32 = u_xlati52;
          let x_1630 : vec4<f32> = x_692.x_AdditionalLightsWorldToLights[((x_1623 + 1i) / 4i)][((x_1626 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1621.y, x_1621.y, x_1621.y, x_1621.y) * x_1630);
          let x_1632 : i32 = u_xlati52;
          let x_1634 : i32 = u_xlati52;
          let x_1637 : vec4<f32> = x_692.x_AdditionalLightsWorldToLights[(x_1632 / 4i)][(x_1634 % 4i)];
          let x_1638 : vec3<f32> = vs_TEXCOORD1;
          let x_1641 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1637 * vec4<f32>(x_1638.x, x_1638.x, x_1638.x, x_1638.x)) + x_1641);
          let x_1643 : i32 = u_xlati52;
          let x_1646 : i32 = u_xlati52;
          let x_1650 : vec4<f32> = x_692.x_AdditionalLightsWorldToLights[((x_1643 + 2i) / 4i)][((x_1646 + 2i) % 4i)];
          let x_1651 : vec3<f32> = vs_TEXCOORD1;
          let x_1654 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1650 * vec4<f32>(x_1651.z, x_1651.z, x_1651.z, x_1651.z)) + x_1654);
          let x_1656 : vec4<f32> = u_xlat12;
          let x_1657 : i32 = u_xlati52;
          let x_1660 : i32 = u_xlati52;
          let x_1664 : vec4<f32> = x_692.x_AdditionalLightsWorldToLights[((x_1657 + 3i) / 4i)][((x_1660 + 3i) % 4i)];
          u_xlat12 = (x_1656 + x_1664);
          let x_1666 : vec4<f32> = u_xlat12;
          let x_1668 : vec4<f32> = u_xlat12;
          let x_1670 : vec3<f32> = (vec3<f32>(x_1666.x, x_1666.y, x_1666.z) / vec3<f32>(x_1668.w, x_1668.w, x_1668.w));
          let x_1671 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1670.x, x_1670.y, x_1670.z, x_1671.w);
          let x_1673 : vec4<f32> = u_xlat12;
          let x_1675 : vec4<f32> = u_xlat12;
          u_xlat49 = dot(vec3<f32>(x_1673.x, x_1673.y, x_1673.z), vec3<f32>(x_1675.x, x_1675.y, x_1675.z));
          let x_1678 : f32 = u_xlat49;
          u_xlat49 = inverseSqrt(x_1678);
          let x_1680 : f32 = u_xlat49;
          let x_1682 : vec4<f32> = u_xlat12;
          let x_1684 : vec3<f32> = (vec3<f32>(x_1680, x_1680, x_1680) * vec3<f32>(x_1682.x, x_1682.y, x_1682.z));
          let x_1685 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1684.x, x_1684.y, x_1684.z, x_1685.w);
          let x_1687 : vec4<f32> = u_xlat12;
          u_xlat49 = dot(abs(vec3<f32>(x_1687.x, x_1687.y, x_1687.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1692 : f32 = u_xlat49;
          u_xlat49 = max(x_1692, 0.00000099999999747524f);
          let x_1695 : f32 = u_xlat49;
          u_xlat49 = (1.0f / x_1695);
          let x_1698 : f32 = u_xlat49;
          let x_1700 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1698, x_1698, x_1698) * vec3<f32>(x_1700.z, x_1700.x, x_1700.y));
          let x_1704 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1704);
          let x_1708 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1708, 0.0f, 1.0f);
          let x_1712 : vec3<f32> = u_xlat13;
          let x_1714 : vec4<bool> = (vec4<f32>(x_1712.y, x_1712.z, x_1712.y, x_1712.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb39 = vec2<bool>(x_1714.x, x_1714.y);
          let x_1717 : bool = u_xlatb39.x;
          if (x_1717) {
            let x_1722 : f32 = u_xlat13.x;
            x_1718 = x_1722;
          } else {
            let x_1725 : f32 = u_xlat13.x;
            x_1718 = -(x_1725);
          }
          let x_1727 : f32 = x_1718;
          u_xlat39.x = x_1727;
          let x_1730 : bool = u_xlatb39.y;
          if (x_1730) {
            let x_1735 : f32 = u_xlat13.x;
            x_1731 = x_1735;
          } else {
            let x_1738 : f32 = u_xlat13.x;
            x_1731 = -(x_1738);
          }
          let x_1740 : f32 = x_1731;
          u_xlat39.y = x_1740;
          let x_1742 : vec4<f32> = u_xlat12;
          let x_1744 : f32 = u_xlat49;
          let x_1747 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1742.x, x_1742.y) * vec2<f32>(x_1744, x_1744)) + x_1747);
          let x_1749 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1749 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1752 : vec2<f32> = u_xlat39;
          u_xlat39 = clamp(x_1752, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1756 : i32 = u_xlati18;
          let x_1758 : vec4<f32> = x_692.x_AdditionalLightsCookieAtlasUVRects[x_1756];
          let x_1760 : vec2<f32> = u_xlat39;
          let x_1762 : i32 = u_xlati18;
          let x_1764 : vec4<f32> = x_692.x_AdditionalLightsCookieAtlasUVRects[x_1762];
          let x_1766 : vec2<f32> = ((vec2<f32>(x_1758.x, x_1758.y) * x_1760) + vec2<f32>(x_1764.z, x_1764.w));
          let x_1767 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1766.x, x_1766.y, x_1767.z, x_1767.w);
        }
      }
      let x_1774 : vec4<f32> = u_xlat11;
      let x_1776 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_1774.x, x_1774.y), 0.0f);
      u_xlat11 = x_1776;
      let x_1778 : bool = u_xlatb7.y;
      if (x_1778) {
        let x_1783 : f32 = u_xlat11.w;
        x_1779 = x_1783;
      } else {
        let x_1786 : f32 = u_xlat11.x;
        x_1779 = x_1786;
      }
      let x_1787 : f32 = x_1779;
      u_xlat49 = x_1787;
      let x_1789 : bool = u_xlatb7.x;
      if (x_1789) {
        let x_1793 : vec4<f32> = u_xlat11;
        x_1790 = vec3<f32>(x_1793.x, x_1793.y, x_1793.z);
      } else {
        let x_1796 : f32 = u_xlat49;
        x_1790 = vec3<f32>(x_1796, x_1796, x_1796);
      }
      let x_1798 : vec3<f32> = x_1790;
      let x_1799 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1798.x, x_1798.y, x_1798.z, x_1799.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1805 : vec4<f32> = u_xlat11;
    let x_1807 : i32 = u_xlati18;
    let x_1809 : vec4<f32> = x_1153.x_AdditionalLightsColor[x_1807];
    let x_1811 : vec3<f32> = (vec3<f32>(x_1805.x, x_1805.y, x_1805.z) * vec3<f32>(x_1809.x, x_1809.y, x_1809.z));
    let x_1812 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1811.x, x_1811.y, x_1811.z, x_1812.w);
    let x_1814 : f32 = u_xlat47;
    let x_1815 : f32 = u_xlat35;
    u_xlat18.x = (x_1814 * x_1815);
    let x_1818 : vec3<f32> = u_xlat17;
    let x_1819 : vec3<f32> = u_xlat10;
    u_xlat47 = dot(x_1818, x_1819);
    let x_1821 : f32 = u_xlat47;
    u_xlat47 = clamp(x_1821, 0.0f, 1.0f);
    let x_1824 : f32 = u_xlat18.x;
    let x_1825 : f32 = u_xlat47;
    u_xlat18.x = (x_1824 * x_1825);
    let x_1828 : vec3<f32> = u_xlat18;
    let x_1830 : vec4<f32> = u_xlat11;
    let x_1832 : vec3<f32> = (vec3<f32>(x_1828.x, x_1828.x, x_1828.x) * vec3<f32>(x_1830.x, x_1830.y, x_1830.z));
    let x_1833 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1832.x, x_1832.y, x_1832.z, x_1833.w);
    let x_1835 : vec3<f32> = u_xlat23;
    let x_1836 : f32 = u_xlat48;
    let x_1839 : vec3<f32> = u_xlat5;
    u_xlat23 = ((x_1835 * vec3<f32>(x_1836, x_1836, x_1836)) + x_1839);
    let x_1841 : vec3<f32> = u_xlat23;
    let x_1842 : vec3<f32> = u_xlat23;
    u_xlat18.x = dot(x_1841, x_1842);
    let x_1846 : f32 = u_xlat18.x;
    u_xlat18.x = max(x_1846, 1.17549435e-38f);
    let x_1850 : f32 = u_xlat18.x;
    u_xlat18.x = inverseSqrt(x_1850);
    let x_1853 : vec3<f32> = u_xlat18;
    let x_1855 : vec3<f32> = u_xlat23;
    u_xlat23 = (vec3<f32>(x_1853.x, x_1853.x, x_1853.x) * x_1855);
    let x_1857 : vec3<f32> = u_xlat17;
    let x_1858 : vec3<f32> = u_xlat23;
    u_xlat18.x = dot(x_1857, x_1858);
    let x_1862 : f32 = u_xlat18.x;
    u_xlat18.x = clamp(x_1862, 0.0f, 1.0f);
    let x_1865 : vec3<f32> = u_xlat10;
    let x_1866 : vec3<f32> = u_xlat23;
    u_xlat47 = dot(x_1865, x_1866);
    let x_1868 : f32 = u_xlat47;
    u_xlat47 = clamp(x_1868, 0.0f, 1.0f);
    let x_1871 : f32 = u_xlat18.x;
    let x_1873 : f32 = u_xlat18.x;
    u_xlat18.x = (x_1871 * x_1873);
    let x_1877 : f32 = u_xlat18.x;
    let x_1879 : f32 = u_xlat9.x;
    u_xlat18.x = ((x_1877 * x_1879) + 1.00001001358032226562f);
    let x_1883 : f32 = u_xlat47;
    let x_1884 : f32 = u_xlat47;
    u_xlat47 = (x_1883 * x_1884);
    let x_1887 : f32 = u_xlat18.x;
    let x_1889 : f32 = u_xlat18.x;
    u_xlat18.x = (x_1887 * x_1889);
    let x_1892 : f32 = u_xlat47;
    u_xlat47 = max(x_1892, 0.10000000149011611938f);
    let x_1895 : f32 = u_xlat18.x;
    let x_1896 : f32 = u_xlat47;
    u_xlat18.x = (x_1895 * x_1896);
    let x_1899 : f32 = u_xlat43;
    let x_1901 : f32 = u_xlat18.x;
    u_xlat18.x = (x_1899 * x_1901);
    let x_1904 : f32 = u_xlat15;
    let x_1906 : f32 = u_xlat18.x;
    u_xlat18.x = (x_1904 / x_1906);
    let x_1909 : vec4<f32> = u_xlat0;
    let x_1911 : vec3<f32> = u_xlat18;
    let x_1914 : vec3<f32> = u_xlat16;
    u_xlat23 = ((vec3<f32>(x_1909.x, x_1909.y, x_1909.z) * vec3<f32>(x_1911.x, x_1911.x, x_1911.x)) + x_1914);
    let x_1916 : vec3<f32> = u_xlat23;
    let x_1917 : vec4<f32> = u_xlat11;
    let x_1920 : vec4<f32> = u_xlat8;
    let x_1922 : vec3<f32> = ((x_1916 * vec3<f32>(x_1917.x, x_1917.y, x_1917.z)) + vec3<f32>(x_1920.x, x_1920.y, x_1920.z));
    let x_1923 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1922.x, x_1922.y, x_1922.z, x_1923.w);

    continuing {
      let x_1925 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1925 + bitcast<u32>(1i));
    }
  }
  let x_1927 : vec4<f32> = u_xlat6;
  let x_1929 : vec3<f32> = u_xlat3;
  let x_1932 : vec4<f32> = u_xlat4;
  let x_1934 : vec3<f32> = ((vec3<f32>(x_1927.x, x_1927.y, x_1927.z) * vec3<f32>(x_1929.x, x_1929.x, x_1929.x)) + vec3<f32>(x_1932.x, x_1932.z, x_1932.w));
  let x_1935 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1934.x, x_1934.y, x_1934.z, x_1935.w);
  let x_1939 : vec4<f32> = u_xlat8;
  let x_1941 : vec4<f32> = u_xlat0;
  let x_1943 : vec3<f32> = (vec3<f32>(x_1939.x, x_1939.y, x_1939.z) + vec3<f32>(x_1941.x, x_1941.y, x_1941.z));
  let x_1944 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1943.x, x_1943.y, x_1943.z, x_1944.w);
  let x_1948 : f32 = x_54.x_Surface;
  u_xlatb0 = (x_1948 == 1.0f);
  let x_1950 : bool = u_xlatb0;
  if (x_1950) {
    let x_1955 : f32 = u_xlat2.x;
    x_1951 = x_1955;
  } else {
    x_1951 = 1.0f;
  }
  let x_1957 : f32 = x_1951;
  SV_Target0.w = x_1957;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(4) vs_TEXCOORD8_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD8 = vs_TEXCOORD8_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


