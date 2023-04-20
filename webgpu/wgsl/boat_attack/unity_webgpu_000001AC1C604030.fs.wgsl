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

@group(0) @binding(1) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(8) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_28 : PGlobals;

var<private> u_xlat1 : vec2<f32>;

@group(0) @binding(4) var x_MetallicGlossMap : texture_2d<f32>;

@group(0) @binding(11) var sampler_MetallicGlossMap : sampler;

var<private> u_xlat2 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_54 : UnityPerMaterial;

var<private> u_xlat3 : vec3<f32>;

@group(0) @binding(2) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(9) var sampler_BumpMap : sampler;

var<private> u_xlat23 : vec2<f32>;

var<private> u_xlat33 : f32;

@group(0) @binding(3) var x_OcclusionMap : texture_2d<f32>;

@group(0) @binding(10) var sampler_OcclusionMap : sampler;

var<private> u_xlat14 : vec3<f32>;

var<private> u_xlatb14 : bool;

var<private> u_xlat4 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat25 : f32;

var<private> u_xlat5 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

@group(1) @binding(4) var<uniform> x_273 : LightShadows;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat8 : vec3<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlatb6 : vec4<bool>;

var<private> u_xlatu33 : u32;

var<private> u_xlati33 : i32;

@group(1) @binding(2) var<uniform> x_437 : UnityPerDraw;

var<private> u_xlat13 : vec3<f32>;

var<private> u_xlat34 : f32;

var<private> u_xlat12 : f32;

@group(0) @binding(5) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(12) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb25 : bool;

var<private> u_xlatb36 : bool;

var<private> u_xlat36 : f32;

var<private> u_xlat37 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

var<private> u_xlat19 : vec3<f32>;

var<private> u_xlatu37 : u32;

var<private> u_xlati38 : i32;

var<private> u_xlati37 : i32;

@group(1) @binding(1) var<uniform> x_987 : AdditionalLights;

var<private> u_xlat38 : f32;

var<private> u_xlat39 : f32;

var<private> u_xlat40 : f32;

var<private> u_xlati40 : i32;

var<private> u_xlatb42 : bool;

var<private> u_xlatb10 : vec4<bool>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat43 : f32;

var<private> u_xlat21 : f32;

var<private> u_xlat42 : f32;

@group(0) @binding(6) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatb0 : bool;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu12 : u32;

var<private> u_xlatb37 : bool;

fn main_1() {
  var x_183 : f32;
  var x_195 : f32;
  var x_207 : f32;
  var txVec0 : vec3<f32>;
  var x_633 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1122 : f32;
  var x_1132 : f32;
  var txVec1 : vec3<f32>;
  var x_1371 : f32;
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
  u_xlat23 = ((vec2<f32>(x_82.x, x_82.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_91 : vec2<f32> = u_xlat23;
  let x_92 : vec2<f32> = u_xlat23;
  u_xlat33 = dot(x_91, x_92);
  let x_94 : f32 = u_xlat33;
  u_xlat33 = min(x_94, 1.0f);
  let x_97 : f32 = u_xlat33;
  u_xlat33 = (-(x_97) + 1.0f);
  let x_100 : f32 = u_xlat33;
  u_xlat33 = sqrt(x_100);
  let x_102 : f32 = u_xlat33;
  u_xlat33 = max(x_102, 0.0000000000000001f);
  let x_105 : vec2<f32> = u_xlat23;
  let x_108 : f32 = x_54.x_BumpScale;
  let x_110 : f32 = x_54.x_BumpScale;
  let x_111 : vec2<f32> = vec2<f32>(x_108, x_110);
  u_xlat23 = (x_105 * vec2<f32>(x_111.x, x_111.y));
  let x_121 : vec2<f32> = vs_TEXCOORD0;
  let x_123 : f32 = x_28.x_GlobalMipBias.x;
  let x_124 : vec4<f32> = textureSampleBias(x_OcclusionMap, sampler_OcclusionMap, x_121, x_123);
  u_xlat3.x = x_124.y;
  let x_131 : f32 = x_54.x_OcclusionStrength;
  u_xlat14.x = (-(x_131) + 1.0f);
  let x_136 : f32 = u_xlat3.x;
  let x_138 : f32 = x_54.x_OcclusionStrength;
  let x_141 : f32 = u_xlat14.x;
  u_xlat3.x = ((x_136 * x_138) + x_141);
  let x_150 : f32 = x_28.unity_OrthoParams.w;
  u_xlatb14 = (x_150 == 0.0f);
  let x_156 : vec3<f32> = vs_TEXCOORD1;
  let x_161 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  let x_162 : vec3<f32> = (-(x_156) + x_161);
  let x_163 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_162.x, x_162.y, x_162.z, x_163.w);
  let x_166 : vec4<f32> = u_xlat4;
  let x_168 : vec4<f32> = u_xlat4;
  u_xlat25 = dot(vec3<f32>(x_166.x, x_166.y, x_166.z), vec3<f32>(x_168.x, x_168.y, x_168.z));
  let x_171 : f32 = u_xlat25;
  u_xlat25 = inverseSqrt(x_171);
  let x_173 : f32 = u_xlat25;
  let x_175 : vec4<f32> = u_xlat4;
  let x_177 : vec3<f32> = (vec3<f32>(x_173, x_173, x_173) * vec3<f32>(x_175.x, x_175.y, x_175.z));
  let x_178 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_177.x, x_177.y, x_177.z, x_178.w);
  let x_181 : bool = u_xlatb14;
  if (x_181) {
    let x_187 : f32 = u_xlat4.x;
    x_183 = x_187;
  } else {
    let x_191 : f32 = x_28.unity_MatrixV[0i].z;
    x_183 = x_191;
  }
  let x_192 : f32 = x_183;
  u_xlat5.x = x_192;
  let x_194 : bool = u_xlatb14;
  if (x_194) {
    let x_199 : f32 = u_xlat4.y;
    x_195 = x_199;
  } else {
    let x_203 : f32 = x_28.unity_MatrixV[1i].z;
    x_195 = x_203;
  }
  let x_204 : f32 = x_195;
  u_xlat5.y = x_204;
  let x_206 : bool = u_xlatb14;
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
  u_xlat14 = (vec3<f32>(x_218.z, x_218.x, x_218.y) * vec3<f32>(x_222.y, x_222.z, x_222.x));
  let x_225 : vec3<f32> = vs_TEXCOORD2;
  let x_227 : vec4<f32> = vs_TEXCOORD3;
  let x_230 : vec3<f32> = u_xlat14;
  u_xlat14 = ((vec3<f32>(x_225.y, x_225.z, x_225.x) * vec3<f32>(x_227.z, x_227.x, x_227.y)) + -(x_230));
  let x_233 : vec3<f32> = u_xlat14;
  let x_234 : vec4<f32> = vs_TEXCOORD3;
  u_xlat14 = (x_233 * vec3<f32>(x_234.w, x_234.w, x_234.w));
  let x_237 : vec2<f32> = u_xlat23;
  let x_239 : vec3<f32> = u_xlat14;
  u_xlat14 = (vec3<f32>(x_237.y, x_237.y, x_237.y) * x_239);
  let x_241 : vec2<f32> = u_xlat23;
  let x_243 : vec4<f32> = vs_TEXCOORD3;
  let x_246 : vec3<f32> = u_xlat14;
  u_xlat14 = ((vec3<f32>(x_241.x, x_241.x, x_241.x) * vec3<f32>(x_243.x, x_243.y, x_243.z)) + x_246);
  let x_248 : f32 = u_xlat33;
  let x_250 : vec3<f32> = vs_TEXCOORD2;
  let x_252 : vec3<f32> = u_xlat14;
  u_xlat14 = ((vec3<f32>(x_248, x_248, x_248) * x_250) + x_252);
  let x_254 : vec3<f32> = u_xlat14;
  let x_255 : vec3<f32> = u_xlat14;
  u_xlat33 = dot(x_254, x_255);
  let x_257 : f32 = u_xlat33;
  u_xlat33 = inverseSqrt(x_257);
  let x_259 : f32 = u_xlat33;
  let x_261 : vec3<f32> = u_xlat14;
  let x_262 : vec3<f32> = (vec3<f32>(x_259, x_259, x_259) * x_261);
  let x_263 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_262.x, x_262.y, x_262.z, x_263.w);
  let x_265 : vec3<f32> = vs_TEXCOORD1;
  let x_275 : vec4<f32> = x_273.x_CascadeShadowSplitSpheres0;
  u_xlat14 = (x_265 + -(vec3<f32>(x_275.x, x_275.y, x_275.z)));
  let x_280 : vec3<f32> = vs_TEXCOORD1;
  let x_282 : vec4<f32> = x_273.x_CascadeShadowSplitSpheres1;
  u_xlat6 = (x_280 + -(vec3<f32>(x_282.x, x_282.y, x_282.z)));
  let x_287 : vec3<f32> = vs_TEXCOORD1;
  let x_290 : vec4<f32> = x_273.x_CascadeShadowSplitSpheres2;
  let x_293 : vec3<f32> = (x_287 + -(vec3<f32>(x_290.x, x_290.y, x_290.z)));
  let x_294 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_293.x, x_293.y, x_293.z, x_294.w);
  let x_297 : vec3<f32> = vs_TEXCOORD1;
  let x_299 : vec4<f32> = x_273.x_CascadeShadowSplitSpheres3;
  u_xlat8 = (x_297 + -(vec3<f32>(x_299.x, x_299.y, x_299.z)));
  let x_304 : vec3<f32> = u_xlat14;
  let x_305 : vec3<f32> = u_xlat14;
  u_xlat9.x = dot(x_304, x_305);
  let x_308 : vec3<f32> = u_xlat6;
  let x_309 : vec3<f32> = u_xlat6;
  u_xlat9.y = dot(x_308, x_309);
  let x_312 : vec4<f32> = u_xlat7;
  let x_314 : vec4<f32> = u_xlat7;
  u_xlat9.z = dot(vec3<f32>(x_312.x, x_312.y, x_312.z), vec3<f32>(x_314.x, x_314.y, x_314.z));
  let x_318 : vec3<f32> = u_xlat8;
  let x_319 : vec3<f32> = u_xlat8;
  u_xlat9.w = dot(x_318, x_319);
  let x_325 : vec4<f32> = u_xlat9;
  let x_327 : vec4<f32> = x_273.x_CascadeShadowSplitSphereRadii;
  u_xlatb6 = (x_325 < x_327);
  let x_330 : bool = u_xlatb6.x;
  u_xlat7.x = select(0.0f, 1.0f, x_330);
  let x_334 : bool = u_xlatb6.y;
  u_xlat7.y = select(0.0f, 1.0f, x_334);
  let x_338 : bool = u_xlatb6.z;
  u_xlat7.z = select(0.0f, 1.0f, x_338);
  let x_342 : bool = u_xlatb6.w;
  u_xlat7.w = select(0.0f, 1.0f, x_342);
  let x_346 : bool = u_xlatb6.x;
  u_xlat14.x = select(-0.0f, -1.0f, x_346);
  let x_351 : bool = u_xlatb6.y;
  u_xlat14.y = select(-0.0f, -1.0f, x_351);
  let x_355 : bool = u_xlatb6.z;
  u_xlat14.z = select(-0.0f, -1.0f, x_355);
  let x_358 : vec3<f32> = u_xlat14;
  let x_359 : vec4<f32> = u_xlat7;
  u_xlat14 = (x_358 + vec3<f32>(x_359.y, x_359.z, x_359.w));
  let x_362 : vec3<f32> = u_xlat14;
  let x_364 : vec3<f32> = max(x_362, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_365 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_365.x, x_364.x, x_364.y, x_364.z);
  let x_367 : vec4<f32> = u_xlat7;
  u_xlat33 = dot(x_367, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_372 : f32 = u_xlat33;
  u_xlat33 = (-(x_372) + 4.0f);
  let x_377 : f32 = u_xlat33;
  u_xlatu33 = u32(x_377);
  let x_381 : u32 = u_xlatu33;
  u_xlati33 = (bitcast<i32>(x_381) << bitcast<u32>(2i));
  let x_384 : vec3<f32> = vs_TEXCOORD1;
  let x_386 : i32 = u_xlati33;
  let x_389 : i32 = u_xlati33;
  let x_393 : vec4<f32> = x_273.x_MainLightWorldToShadow[((x_386 + 1i) / 4i)][((x_389 + 1i) % 4i)];
  u_xlat14 = (vec3<f32>(x_384.y, x_384.y, x_384.y) * vec3<f32>(x_393.x, x_393.y, x_393.z));
  let x_396 : i32 = u_xlati33;
  let x_398 : i32 = u_xlati33;
  let x_401 : vec4<f32> = x_273.x_MainLightWorldToShadow[(x_396 / 4i)][(x_398 % 4i)];
  let x_403 : vec3<f32> = vs_TEXCOORD1;
  let x_406 : vec3<f32> = u_xlat14;
  u_xlat14 = ((vec3<f32>(x_401.x, x_401.y, x_401.z) * vec3<f32>(x_403.x, x_403.x, x_403.x)) + x_406);
  let x_408 : i32 = u_xlati33;
  let x_411 : i32 = u_xlati33;
  let x_415 : vec4<f32> = x_273.x_MainLightWorldToShadow[((x_408 + 2i) / 4i)][((x_411 + 2i) % 4i)];
  let x_417 : vec3<f32> = vs_TEXCOORD1;
  let x_420 : vec3<f32> = u_xlat14;
  u_xlat14 = ((vec3<f32>(x_415.x, x_415.y, x_415.z) * vec3<f32>(x_417.z, x_417.z, x_417.z)) + x_420);
  let x_422 : vec3<f32> = u_xlat14;
  let x_423 : i32 = u_xlati33;
  let x_426 : i32 = u_xlati33;
  let x_430 : vec4<f32> = x_273.x_MainLightWorldToShadow[((x_423 + 3i) / 4i)][((x_426 + 3i) % 4i)];
  u_xlat14 = (x_422 + vec3<f32>(x_430.x, x_430.y, x_430.z));
  u_xlat4.w = 1.0f;
  let x_440 : vec4<f32> = x_437.unity_SHAr;
  let x_441 : vec4<f32> = u_xlat4;
  u_xlat6.x = dot(x_440, x_441);
  let x_446 : vec4<f32> = x_437.unity_SHAg;
  let x_447 : vec4<f32> = u_xlat4;
  u_xlat6.y = dot(x_446, x_447);
  let x_452 : vec4<f32> = x_437.unity_SHAb;
  let x_453 : vec4<f32> = u_xlat4;
  u_xlat6.z = dot(x_452, x_453);
  let x_456 : vec4<f32> = u_xlat4;
  let x_458 : vec4<f32> = u_xlat4;
  u_xlat7 = (vec4<f32>(x_456.y, x_456.z, x_456.z, x_456.x) * vec4<f32>(x_458.x, x_458.y, x_458.z, x_458.z));
  let x_463 : vec4<f32> = x_437.unity_SHBr;
  let x_464 : vec4<f32> = u_xlat7;
  u_xlat8.x = dot(x_463, x_464);
  let x_469 : vec4<f32> = x_437.unity_SHBg;
  let x_470 : vec4<f32> = u_xlat7;
  u_xlat8.y = dot(x_469, x_470);
  let x_475 : vec4<f32> = x_437.unity_SHBb;
  let x_476 : vec4<f32> = u_xlat7;
  u_xlat8.z = dot(x_475, x_476);
  let x_480 : f32 = u_xlat4.y;
  let x_482 : f32 = u_xlat4.y;
  u_xlat33 = (x_480 * x_482);
  let x_485 : f32 = u_xlat4.x;
  let x_487 : f32 = u_xlat4.x;
  let x_489 : f32 = u_xlat33;
  u_xlat33 = ((x_485 * x_487) + -(x_489));
  let x_494 : vec4<f32> = x_437.unity_SHC;
  let x_496 : f32 = u_xlat33;
  let x_499 : vec3<f32> = u_xlat8;
  let x_500 : vec3<f32> = ((vec3<f32>(x_494.x, x_494.y, x_494.z) * vec3<f32>(x_496, x_496, x_496)) + x_499);
  let x_501 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_500.x, x_500.y, x_500.z, x_501.w);
  let x_503 : vec3<f32> = u_xlat6;
  let x_504 : vec4<f32> = u_xlat7;
  u_xlat6 = (x_503 + vec3<f32>(x_504.x, x_504.y, x_504.z));
  let x_507 : vec3<f32> = u_xlat6;
  u_xlat6 = max(x_507, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_510 : f32 = u_xlat1.x;
  u_xlat33 = ((-(x_510) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_515 : f32 = u_xlat33;
  u_xlat23.x = (-(x_515) + 1.0f);
  let x_520 : f32 = u_xlat33;
  let x_522 : vec4<f32> = u_xlat2;
  u_xlat13 = (vec3<f32>(x_520, x_520, x_520) * vec3<f32>(x_522.y, x_522.z, x_522.w));
  let x_525 : vec4<f32> = u_xlat0;
  let x_528 : vec4<f32> = x_54.x_BaseColor;
  let x_533 : vec3<f32> = ((vec3<f32>(x_525.x, x_525.y, x_525.z) * vec3<f32>(x_528.x, x_528.y, x_528.z)) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_534 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_533.x, x_533.y, x_533.z, x_534.w);
  let x_536 : vec2<f32> = u_xlat1;
  let x_538 : vec4<f32> = u_xlat0;
  let x_543 : vec3<f32> = ((vec3<f32>(x_536.x, x_536.x, x_536.x) * vec3<f32>(x_538.x, x_538.y, x_538.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_544 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_543.x, x_543.y, x_543.z, x_544.w);
  let x_547 : f32 = u_xlat1.y;
  let x_550 : f32 = x_54.x_Smoothness;
  u_xlat33 = ((-(x_547) * x_550) + 1.0f);
  let x_553 : f32 = u_xlat33;
  let x_554 : f32 = u_xlat33;
  u_xlat1.x = (x_553 * x_554);
  let x_558 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_558, 0.0078125f);
  let x_564 : f32 = u_xlat1.x;
  let x_566 : f32 = u_xlat1.x;
  u_xlat34 = (x_564 * x_566);
  let x_570 : f32 = u_xlat1.y;
  let x_572 : f32 = x_54.x_Smoothness;
  let x_575 : f32 = u_xlat23.x;
  u_xlat12 = ((x_570 * x_572) + x_575);
  let x_577 : f32 = u_xlat12;
  u_xlat12 = clamp(x_577, 0.0f, 1.0f);
  let x_580 : f32 = u_xlat1.x;
  u_xlat23.x = ((x_580 * 4.0f) + 2.0f);
  let x_585 : f32 = u_xlat3.x;
  u_xlat3.x = min(x_585, 1.0f);
  let x_590 : vec3<f32> = u_xlat14;
  let x_591 : vec2<f32> = vec2<f32>(x_590.x, x_590.y);
  let x_593 : f32 = u_xlat14.z;
  txVec0 = vec3<f32>(x_591.x, x_591.y, x_593);
  let x_605 : vec3<f32> = txVec0;
  let x_607 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_605.xy, x_605.z);
  u_xlat14.x = x_607;
  let x_610 : f32 = x_273.x_MainLightShadowParams.x;
  u_xlat25 = (-(x_610) + 1.0f);
  let x_614 : f32 = u_xlat14.x;
  let x_616 : f32 = x_273.x_MainLightShadowParams.x;
  let x_618 : f32 = u_xlat25;
  u_xlat14.x = ((x_614 * x_616) + x_618);
  let x_623 : f32 = u_xlat14.z;
  u_xlatb25 = (0.0f >= x_623);
  let x_627 : f32 = u_xlat14.z;
  u_xlatb36 = (x_627 >= 1.0f);
  let x_629 : bool = u_xlatb36;
  let x_630 : bool = u_xlatb25;
  u_xlatb25 = (x_629 | x_630);
  let x_632 : bool = u_xlatb25;
  if (x_632) {
    x_633 = 1.0f;
  } else {
    let x_638 : f32 = u_xlat14.x;
    x_633 = x_638;
  }
  let x_639 : f32 = x_633;
  u_xlat14.x = x_639;
  let x_641 : vec3<f32> = vs_TEXCOORD1;
  let x_643 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  let x_645 : vec3<f32> = (x_641 + -(x_643));
  let x_646 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_645.x, x_645.y, x_645.z, x_646.w);
  let x_648 : vec4<f32> = u_xlat7;
  let x_650 : vec4<f32> = u_xlat7;
  u_xlat25 = dot(vec3<f32>(x_648.x, x_648.y, x_648.z), vec3<f32>(x_650.x, x_650.y, x_650.z));
  let x_654 : f32 = u_xlat25;
  let x_656 : f32 = x_273.x_MainLightShadowParams.z;
  let x_659 : f32 = x_273.x_MainLightShadowParams.w;
  u_xlat36 = ((x_654 * x_656) + x_659);
  let x_661 : f32 = u_xlat36;
  u_xlat36 = clamp(x_661, 0.0f, 1.0f);
  let x_665 : f32 = u_xlat14.x;
  u_xlat37 = (-(x_665) + 1.0f);
  let x_668 : f32 = u_xlat36;
  let x_669 : f32 = u_xlat37;
  let x_672 : f32 = u_xlat14.x;
  u_xlat14.x = ((x_668 * x_669) + x_672);
  let x_675 : vec3<f32> = u_xlat5;
  let x_677 : vec4<f32> = u_xlat4;
  u_xlat36 = dot(-(x_675), vec3<f32>(x_677.x, x_677.y, x_677.z));
  let x_680 : f32 = u_xlat36;
  let x_681 : f32 = u_xlat36;
  u_xlat36 = (x_680 + x_681);
  let x_683 : vec4<f32> = u_xlat4;
  let x_685 : f32 = u_xlat36;
  let x_689 : vec3<f32> = u_xlat5;
  let x_691 : vec3<f32> = ((vec3<f32>(x_683.x, x_683.y, x_683.z) * -(vec3<f32>(x_685, x_685, x_685))) + -(x_689));
  let x_692 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_691.x, x_691.y, x_691.z, x_692.w);
  let x_694 : vec4<f32> = u_xlat4;
  let x_696 : vec3<f32> = u_xlat5;
  u_xlat36 = dot(vec3<f32>(x_694.x, x_694.y, x_694.z), x_696);
  let x_698 : f32 = u_xlat36;
  u_xlat36 = clamp(x_698, 0.0f, 1.0f);
  let x_700 : f32 = u_xlat36;
  u_xlat36 = (-(x_700) + 1.0f);
  let x_703 : f32 = u_xlat36;
  let x_704 : f32 = u_xlat36;
  u_xlat36 = (x_703 * x_704);
  let x_706 : f32 = u_xlat36;
  let x_707 : f32 = u_xlat36;
  u_xlat36 = (x_706 * x_707);
  let x_709 : f32 = u_xlat33;
  u_xlat37 = ((-(x_709) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_715 : f32 = u_xlat33;
  let x_716 : f32 = u_xlat37;
  u_xlat33 = (x_715 * x_716);
  let x_718 : f32 = u_xlat33;
  u_xlat33 = (x_718 * 6.0f);
  let x_729 : vec4<f32> = u_xlat7;
  let x_731 : f32 = u_xlat33;
  let x_732 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_729.x, x_729.y, x_729.z), x_731);
  u_xlat7 = x_732;
  let x_734 : f32 = u_xlat7.w;
  u_xlat33 = (x_734 + -1.0f);
  let x_737 : f32 = x_437.unity_SpecCube0_HDR.w;
  let x_738 : f32 = u_xlat33;
  u_xlat33 = ((x_737 * x_738) + 1.0f);
  let x_741 : f32 = u_xlat33;
  u_xlat33 = max(x_741, 0.0f);
  let x_743 : f32 = u_xlat33;
  u_xlat33 = log2(x_743);
  let x_745 : f32 = u_xlat33;
  let x_747 : f32 = x_437.unity_SpecCube0_HDR.y;
  u_xlat33 = (x_745 * x_747);
  let x_749 : f32 = u_xlat33;
  u_xlat33 = exp2(x_749);
  let x_751 : f32 = u_xlat33;
  let x_753 : f32 = x_437.unity_SpecCube0_HDR.x;
  u_xlat33 = (x_751 * x_753);
  let x_755 : vec4<f32> = u_xlat7;
  let x_757 : f32 = u_xlat33;
  let x_759 : vec3<f32> = (vec3<f32>(x_755.x, x_755.y, x_755.z) * vec3<f32>(x_757, x_757, x_757));
  let x_760 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_759.x, x_759.y, x_759.z, x_760.w);
  let x_762 : vec2<f32> = u_xlat1;
  let x_764 : vec2<f32> = u_xlat1;
  let x_768 : vec2<f32> = ((vec2<f32>(x_762.x, x_762.x) * vec2<f32>(x_764.x, x_764.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_769 : vec3<f32> = u_xlat8;
  u_xlat8 = vec3<f32>(x_768.x, x_768.y, x_769.z);
  let x_772 : f32 = u_xlat8.y;
  u_xlat33 = (1.0f / x_772);
  let x_775 : vec4<f32> = u_xlat0;
  let x_778 : f32 = u_xlat12;
  u_xlat19 = (-(vec3<f32>(x_775.x, x_775.y, x_775.z)) + vec3<f32>(x_778, x_778, x_778));
  let x_781 : f32 = u_xlat36;
  let x_783 : vec3<f32> = u_xlat19;
  let x_785 : vec4<f32> = u_xlat0;
  u_xlat19 = ((vec3<f32>(x_781, x_781, x_781) * x_783) + vec3<f32>(x_785.x, x_785.y, x_785.z));
  let x_788 : f32 = u_xlat33;
  let x_790 : vec3<f32> = u_xlat19;
  u_xlat19 = (vec3<f32>(x_788, x_788, x_788) * x_790);
  let x_792 : vec4<f32> = u_xlat7;
  let x_794 : vec3<f32> = u_xlat19;
  let x_795 : vec3<f32> = (vec3<f32>(x_792.x, x_792.y, x_792.z) * x_794);
  let x_796 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_795.x, x_795.y, x_795.z, x_796.w);
  let x_798 : vec3<f32> = u_xlat6;
  let x_799 : vec3<f32> = u_xlat13;
  let x_801 : vec4<f32> = u_xlat7;
  u_xlat6 = ((x_798 * x_799) + vec3<f32>(x_801.x, x_801.y, x_801.z));
  let x_805 : f32 = u_xlat14.x;
  let x_807 : f32 = x_437.unity_LightData.z;
  u_xlat33 = (x_805 * x_807);
  let x_809 : vec4<f32> = u_xlat4;
  let x_812 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat1.x = dot(vec3<f32>(x_809.x, x_809.y, x_809.z), vec3<f32>(x_812.x, x_812.y, x_812.z));
  let x_817 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_817, 0.0f, 1.0f);
  let x_820 : f32 = u_xlat33;
  let x_822 : f32 = u_xlat1.x;
  u_xlat33 = (x_820 * x_822);
  let x_824 : f32 = u_xlat33;
  let x_827 : vec4<f32> = x_28.x_MainLightColor;
  let x_829 : vec3<f32> = (vec3<f32>(x_824, x_824, x_824) * vec3<f32>(x_827.x, x_827.y, x_827.z));
  let x_830 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_829.x, x_829.y, x_829.z, x_830.w);
  let x_832 : vec3<f32> = u_xlat5;
  let x_834 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat19 = (x_832 + vec3<f32>(x_834.x, x_834.y, x_834.z));
  let x_837 : vec3<f32> = u_xlat19;
  let x_838 : vec3<f32> = u_xlat19;
  u_xlat33 = dot(x_837, x_838);
  let x_840 : f32 = u_xlat33;
  u_xlat33 = max(x_840, 1.17549435e-38f);
  let x_843 : f32 = u_xlat33;
  u_xlat33 = inverseSqrt(x_843);
  let x_845 : f32 = u_xlat33;
  let x_847 : vec3<f32> = u_xlat19;
  u_xlat19 = (vec3<f32>(x_845, x_845, x_845) * x_847);
  let x_849 : vec4<f32> = u_xlat4;
  let x_851 : vec3<f32> = u_xlat19;
  u_xlat33 = dot(vec3<f32>(x_849.x, x_849.y, x_849.z), x_851);
  let x_853 : f32 = u_xlat33;
  u_xlat33 = clamp(x_853, 0.0f, 1.0f);
  let x_856 : vec4<f32> = x_28.x_MainLightPosition;
  let x_858 : vec3<f32> = u_xlat19;
  u_xlat1.x = dot(vec3<f32>(x_856.x, x_856.y, x_856.z), x_858);
  let x_862 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_862, 0.0f, 1.0f);
  let x_865 : f32 = u_xlat33;
  let x_866 : f32 = u_xlat33;
  u_xlat33 = (x_865 * x_866);
  let x_868 : f32 = u_xlat33;
  let x_870 : f32 = u_xlat8.x;
  u_xlat33 = ((x_868 * x_870) + 1.00001001358032226562f);
  let x_875 : f32 = u_xlat1.x;
  let x_877 : f32 = u_xlat1.x;
  u_xlat1.x = (x_875 * x_877);
  let x_880 : f32 = u_xlat33;
  let x_881 : f32 = u_xlat33;
  u_xlat33 = (x_880 * x_881);
  let x_884 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_884, 0.10000000149011611938f);
  let x_888 : f32 = u_xlat33;
  let x_890 : f32 = u_xlat1.x;
  u_xlat33 = (x_888 * x_890);
  let x_893 : f32 = u_xlat23.x;
  let x_894 : f32 = u_xlat33;
  u_xlat33 = (x_893 * x_894);
  let x_896 : f32 = u_xlat34;
  let x_897 : f32 = u_xlat33;
  u_xlat33 = (x_896 / x_897);
  let x_899 : vec4<f32> = u_xlat0;
  let x_901 : f32 = u_xlat33;
  let x_904 : vec3<f32> = u_xlat13;
  u_xlat19 = ((vec3<f32>(x_899.x, x_899.y, x_899.z) * vec3<f32>(x_901, x_901, x_901)) + x_904);
  let x_906 : vec4<f32> = u_xlat7;
  let x_908 : vec3<f32> = u_xlat19;
  let x_909 : vec3<f32> = (vec3<f32>(x_906.x, x_906.y, x_906.z) * x_908);
  let x_910 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_909.x, x_909.y, x_909.z, x_910.w);
  let x_913 : f32 = x_28.x_AdditionalLightsCount.x;
  let x_915 : f32 = x_437.unity_LightData.y;
  u_xlat33 = min(x_913, x_915);
  let x_917 : f32 = u_xlat33;
  u_xlatu33 = bitcast<u32>(i32(x_917));
  let x_920 : f32 = u_xlat25;
  let x_923 : f32 = x_273.x_AdditionalShadowFadeParams.x;
  let x_926 : f32 = x_273.x_AdditionalShadowFadeParams.y;
  u_xlat1.x = ((x_920 * x_923) + x_926);
  let x_930 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_930, 0.0f, 1.0f);
  u_xlat14.x = 0.0f;
  u_xlat14.y = 0.0f;
  u_xlat14.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_943 : u32 = u_xlatu_loop_1;
    let x_944 : u32 = u_xlatu33;
    if ((x_943 < x_944)) {
    } else {
      break;
    }
    let x_947 : u32 = u_xlatu_loop_1;
    u_xlatu37 = (x_947 >> 2u);
    let x_950 : u32 = u_xlatu_loop_1;
    u_xlati38 = bitcast<i32>((x_950 & 3u));
    let x_953 : u32 = u_xlatu37;
    let x_956 : vec4<f32> = x_437.unity_LightIndices[bitcast<i32>(x_953)];
    let x_966 : i32 = u_xlati38;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_971 : vec4<u32> = indexable[x_966];
    u_xlat37 = dot(x_956, bitcast<vec4<f32>>(x_971));
    let x_975 : f32 = u_xlat37;
    u_xlati37 = i32(x_975);
    let x_977 : vec3<f32> = vs_TEXCOORD1;
    let x_988 : i32 = u_xlati37;
    let x_990 : vec4<f32> = x_987.x_AdditionalLightsPosition[x_988];
    let x_993 : i32 = u_xlati37;
    let x_995 : vec4<f32> = x_987.x_AdditionalLightsPosition[x_993];
    u_xlat19 = ((-(x_977) * vec3<f32>(x_990.w, x_990.w, x_990.w)) + vec3<f32>(x_995.x, x_995.y, x_995.z));
    let x_999 : vec3<f32> = u_xlat19;
    let x_1000 : vec3<f32> = u_xlat19;
    u_xlat38 = dot(x_999, x_1000);
    let x_1002 : f32 = u_xlat38;
    u_xlat38 = max(x_1002, 0.00006103515625f);
    let x_1006 : f32 = u_xlat38;
    u_xlat39 = inverseSqrt(x_1006);
    let x_1008 : f32 = u_xlat39;
    let x_1010 : vec3<f32> = u_xlat19;
    let x_1011 : vec3<f32> = (vec3<f32>(x_1008, x_1008, x_1008) * x_1010);
    let x_1012 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1011.x, x_1011.y, x_1011.z, x_1012.w);
    let x_1015 : f32 = u_xlat38;
    u_xlat40 = (1.0f / x_1015);
    let x_1017 : f32 = u_xlat38;
    let x_1018 : i32 = u_xlati37;
    let x_1020 : f32 = x_987.x_AdditionalLightsAttenuation[x_1018].x;
    u_xlat38 = (x_1017 * x_1020);
    let x_1022 : f32 = u_xlat38;
    let x_1024 : f32 = u_xlat38;
    u_xlat38 = ((-(x_1022) * x_1024) + 1.0f);
    let x_1027 : f32 = u_xlat38;
    u_xlat38 = max(x_1027, 0.0f);
    let x_1029 : f32 = u_xlat38;
    let x_1030 : f32 = u_xlat38;
    u_xlat38 = (x_1029 * x_1030);
    let x_1032 : f32 = u_xlat38;
    let x_1033 : f32 = u_xlat40;
    u_xlat38 = (x_1032 * x_1033);
    let x_1035 : i32 = u_xlati37;
    let x_1037 : vec4<f32> = x_987.x_AdditionalLightsSpotDir[x_1035];
    let x_1039 : vec4<f32> = u_xlat9;
    u_xlat40 = dot(vec3<f32>(x_1037.x, x_1037.y, x_1037.z), vec3<f32>(x_1039.x, x_1039.y, x_1039.z));
    let x_1042 : f32 = u_xlat40;
    let x_1043 : i32 = u_xlati37;
    let x_1045 : f32 = x_987.x_AdditionalLightsAttenuation[x_1043].z;
    let x_1047 : i32 = u_xlati37;
    let x_1049 : f32 = x_987.x_AdditionalLightsAttenuation[x_1047].w;
    u_xlat40 = ((x_1042 * x_1045) + x_1049);
    let x_1051 : f32 = u_xlat40;
    u_xlat40 = clamp(x_1051, 0.0f, 1.0f);
    let x_1053 : f32 = u_xlat40;
    let x_1054 : f32 = u_xlat40;
    u_xlat40 = (x_1053 * x_1054);
    let x_1056 : f32 = u_xlat38;
    let x_1057 : f32 = u_xlat40;
    u_xlat38 = (x_1056 * x_1057);
    let x_1061 : i32 = u_xlati37;
    let x_1063 : f32 = x_273.x_AdditionalShadowParams[x_1061].w;
    u_xlati40 = i32(x_1063);
    let x_1066 : i32 = u_xlati40;
    u_xlatb42 = (x_1066 >= 0i);
    let x_1068 : bool = u_xlatb42;
    if (x_1068) {
      let x_1072 : i32 = u_xlati37;
      let x_1074 : f32 = x_273.x_AdditionalShadowParams[x_1072].z;
      u_xlatb42 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1074, x_1074, x_1074, x_1074))));
      let x_1078 : bool = u_xlatb42;
      if (x_1078) {
        let x_1082 : vec4<f32> = u_xlat9;
        let x_1085 : vec4<f32> = u_xlat9;
        let x_1088 : vec4<bool> = (abs(vec4<f32>(x_1082.z, x_1082.z, x_1082.y, x_1082.z)) >= abs(vec4<f32>(x_1085.x, x_1085.y, x_1085.x, x_1085.x)));
        let x_1090 : vec3<bool> = vec3<bool>(x_1088.x, x_1088.y, x_1088.z);
        let x_1091 : vec4<bool> = u_xlatb10;
        u_xlatb10 = vec4<bool>(x_1090.x, x_1090.y, x_1090.z, x_1091.w);
        let x_1094 : bool = u_xlatb10.y;
        let x_1096 : bool = u_xlatb10.x;
        u_xlatb42 = (x_1094 & x_1096);
        let x_1098 : vec4<f32> = u_xlat9;
        let x_1101 : vec4<bool> = (-(vec4<f32>(x_1098.z, x_1098.y, x_1098.z, x_1098.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1102 : vec3<bool> = vec3<bool>(x_1101.x, x_1101.y, x_1101.w);
        let x_1103 : vec4<bool> = u_xlatb10;
        u_xlatb10 = vec4<bool>(x_1102.x, x_1102.y, x_1103.z, x_1102.z);
        let x_1107 : bool = u_xlatb10.x;
        u_xlat10.x = select(4.0f, 5.0f, x_1107);
        let x_1112 : bool = u_xlatb10.y;
        u_xlat10.y = select(2.0f, 3.0f, x_1112);
        let x_1117 : bool = u_xlatb10.w;
        u_xlat43 = select(0.0f, 1.0f, x_1117);
        let x_1121 : bool = u_xlatb10.z;
        if (x_1121) {
          let x_1126 : f32 = u_xlat10.y;
          x_1122 = x_1126;
        } else {
          let x_1128 : f32 = u_xlat43;
          x_1122 = x_1128;
        }
        let x_1129 : f32 = x_1122;
        u_xlat21 = x_1129;
        let x_1131 : bool = u_xlatb42;
        if (x_1131) {
          let x_1136 : f32 = u_xlat10.x;
          x_1132 = x_1136;
        } else {
          let x_1138 : f32 = u_xlat21;
          x_1132 = x_1138;
        }
        let x_1139 : f32 = x_1132;
        u_xlat42 = x_1139;
        let x_1140 : i32 = u_xlati37;
        let x_1142 : f32 = x_273.x_AdditionalShadowParams[x_1140].w;
        u_xlat10.x = trunc(x_1142);
        let x_1145 : f32 = u_xlat42;
        let x_1147 : f32 = u_xlat10.x;
        u_xlat42 = (x_1145 + x_1147);
        let x_1149 : f32 = u_xlat42;
        u_xlati40 = i32(x_1149);
      }
      let x_1151 : i32 = u_xlati40;
      u_xlati40 = (x_1151 << bitcast<u32>(2i));
      let x_1153 : vec3<f32> = vs_TEXCOORD1;
      let x_1156 : i32 = u_xlati40;
      let x_1159 : i32 = u_xlati40;
      let x_1163 : vec4<f32> = x_273.x_AdditionalLightsWorldToShadow[((x_1156 + 1i) / 4i)][((x_1159 + 1i) % 4i)];
      u_xlat10 = (vec4<f32>(x_1153.y, x_1153.y, x_1153.y, x_1153.y) * x_1163);
      let x_1165 : i32 = u_xlati40;
      let x_1167 : i32 = u_xlati40;
      let x_1170 : vec4<f32> = x_273.x_AdditionalLightsWorldToShadow[(x_1165 / 4i)][(x_1167 % 4i)];
      let x_1171 : vec3<f32> = vs_TEXCOORD1;
      let x_1174 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_1170 * vec4<f32>(x_1171.x, x_1171.x, x_1171.x, x_1171.x)) + x_1174);
      let x_1176 : i32 = u_xlati40;
      let x_1179 : i32 = u_xlati40;
      let x_1183 : vec4<f32> = x_273.x_AdditionalLightsWorldToShadow[((x_1176 + 2i) / 4i)][((x_1179 + 2i) % 4i)];
      let x_1184 : vec3<f32> = vs_TEXCOORD1;
      let x_1187 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_1183 * vec4<f32>(x_1184.z, x_1184.z, x_1184.z, x_1184.z)) + x_1187);
      let x_1189 : vec4<f32> = u_xlat10;
      let x_1190 : i32 = u_xlati40;
      let x_1193 : i32 = u_xlati40;
      let x_1197 : vec4<f32> = x_273.x_AdditionalLightsWorldToShadow[((x_1190 + 3i) / 4i)][((x_1193 + 3i) % 4i)];
      u_xlat10 = (x_1189 + x_1197);
      let x_1199 : vec4<f32> = u_xlat10;
      let x_1201 : vec4<f32> = u_xlat10;
      let x_1203 : vec3<f32> = (vec3<f32>(x_1199.x, x_1199.y, x_1199.z) / vec3<f32>(x_1201.w, x_1201.w, x_1201.w));
      let x_1204 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_1203.x, x_1203.y, x_1203.z, x_1204.w);
      let x_1207 : vec4<f32> = u_xlat10;
      let x_1208 : vec2<f32> = vec2<f32>(x_1207.x, x_1207.y);
      let x_1210 : f32 = u_xlat10.z;
      txVec1 = vec3<f32>(x_1208.x, x_1208.y, x_1210);
      let x_1218 : vec3<f32> = txVec1;
      let x_1220 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1218.xy, x_1218.z);
      u_xlat40 = x_1220;
      let x_1221 : i32 = u_xlati37;
      let x_1223 : f32 = x_273.x_AdditionalShadowParams[x_1221].x;
      u_xlat42 = (1.0f + -(x_1223));
      let x_1226 : f32 = u_xlat40;
      let x_1227 : i32 = u_xlati37;
      let x_1229 : f32 = x_273.x_AdditionalShadowParams[x_1227].x;
      let x_1231 : f32 = u_xlat42;
      u_xlat40 = ((x_1226 * x_1229) + x_1231);
      let x_1234 : f32 = u_xlat10.z;
      u_xlatb42 = (0.0f >= x_1234);
      let x_1237 : f32 = u_xlat10.z;
      u_xlatb10.x = (x_1237 >= 1.0f);
      let x_1240 : bool = u_xlatb42;
      let x_1242 : bool = u_xlatb10.x;
      u_xlatb42 = (x_1240 | x_1242);
      let x_1244 : bool = u_xlatb42;
      let x_1245 : f32 = u_xlat40;
      u_xlat40 = select(x_1245, 1.0f, x_1244);
    } else {
      u_xlat40 = 1.0f;
    }
    let x_1248 : f32 = u_xlat40;
    u_xlat42 = (-(x_1248) + 1.0f);
    let x_1252 : f32 = u_xlat1.x;
    let x_1253 : f32 = u_xlat42;
    let x_1255 : f32 = u_xlat40;
    u_xlat40 = ((x_1252 * x_1253) + x_1255);
    let x_1257 : f32 = u_xlat38;
    let x_1258 : f32 = u_xlat40;
    u_xlat38 = (x_1257 * x_1258);
    let x_1260 : vec4<f32> = u_xlat4;
    let x_1262 : vec4<f32> = u_xlat9;
    u_xlat40 = dot(vec3<f32>(x_1260.x, x_1260.y, x_1260.z), vec3<f32>(x_1262.x, x_1262.y, x_1262.z));
    let x_1265 : f32 = u_xlat40;
    u_xlat40 = clamp(x_1265, 0.0f, 1.0f);
    let x_1267 : f32 = u_xlat38;
    let x_1268 : f32 = u_xlat40;
    u_xlat38 = (x_1267 * x_1268);
    let x_1270 : f32 = u_xlat38;
    let x_1272 : i32 = u_xlati37;
    let x_1274 : vec4<f32> = x_987.x_AdditionalLightsColor[x_1272];
    let x_1276 : vec3<f32> = (vec3<f32>(x_1270, x_1270, x_1270) * vec3<f32>(x_1274.x, x_1274.y, x_1274.z));
    let x_1277 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1276.x, x_1276.y, x_1276.z, x_1277.w);
    let x_1279 : vec3<f32> = u_xlat19;
    let x_1280 : f32 = u_xlat39;
    let x_1283 : vec3<f32> = u_xlat5;
    u_xlat19 = ((x_1279 * vec3<f32>(x_1280, x_1280, x_1280)) + x_1283);
    let x_1285 : vec3<f32> = u_xlat19;
    let x_1286 : vec3<f32> = u_xlat19;
    u_xlat37 = dot(x_1285, x_1286);
    let x_1288 : f32 = u_xlat37;
    u_xlat37 = max(x_1288, 1.17549435e-38f);
    let x_1290 : f32 = u_xlat37;
    u_xlat37 = inverseSqrt(x_1290);
    let x_1292 : f32 = u_xlat37;
    let x_1294 : vec3<f32> = u_xlat19;
    u_xlat19 = (vec3<f32>(x_1292, x_1292, x_1292) * x_1294);
    let x_1296 : vec4<f32> = u_xlat4;
    let x_1298 : vec3<f32> = u_xlat19;
    u_xlat37 = dot(vec3<f32>(x_1296.x, x_1296.y, x_1296.z), x_1298);
    let x_1300 : f32 = u_xlat37;
    u_xlat37 = clamp(x_1300, 0.0f, 1.0f);
    let x_1302 : vec4<f32> = u_xlat9;
    let x_1304 : vec3<f32> = u_xlat19;
    u_xlat38 = dot(vec3<f32>(x_1302.x, x_1302.y, x_1302.z), x_1304);
    let x_1306 : f32 = u_xlat38;
    u_xlat38 = clamp(x_1306, 0.0f, 1.0f);
    let x_1308 : f32 = u_xlat37;
    let x_1309 : f32 = u_xlat37;
    u_xlat37 = (x_1308 * x_1309);
    let x_1311 : f32 = u_xlat37;
    let x_1313 : f32 = u_xlat8.x;
    u_xlat37 = ((x_1311 * x_1313) + 1.00001001358032226562f);
    let x_1316 : f32 = u_xlat38;
    let x_1317 : f32 = u_xlat38;
    u_xlat38 = (x_1316 * x_1317);
    let x_1319 : f32 = u_xlat37;
    let x_1320 : f32 = u_xlat37;
    u_xlat37 = (x_1319 * x_1320);
    let x_1322 : f32 = u_xlat38;
    u_xlat38 = max(x_1322, 0.10000000149011611938f);
    let x_1324 : f32 = u_xlat37;
    let x_1325 : f32 = u_xlat38;
    u_xlat37 = (x_1324 * x_1325);
    let x_1328 : f32 = u_xlat23.x;
    let x_1329 : f32 = u_xlat37;
    u_xlat37 = (x_1328 * x_1329);
    let x_1331 : f32 = u_xlat34;
    let x_1332 : f32 = u_xlat37;
    u_xlat37 = (x_1331 / x_1332);
    let x_1334 : vec4<f32> = u_xlat0;
    let x_1336 : f32 = u_xlat37;
    let x_1339 : vec3<f32> = u_xlat13;
    u_xlat19 = ((vec3<f32>(x_1334.x, x_1334.y, x_1334.z) * vec3<f32>(x_1336, x_1336, x_1336)) + x_1339);
    let x_1341 : vec3<f32> = u_xlat19;
    let x_1342 : vec4<f32> = u_xlat10;
    let x_1345 : vec3<f32> = u_xlat14;
    u_xlat14 = ((x_1341 * vec3<f32>(x_1342.x, x_1342.y, x_1342.z)) + x_1345);

    continuing {
      let x_1347 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1347 + bitcast<u32>(1i));
    }
  }
  let x_1349 : vec3<f32> = u_xlat6;
  let x_1350 : vec3<f32> = u_xlat3;
  let x_1353 : vec4<f32> = u_xlat7;
  let x_1355 : vec3<f32> = ((x_1349 * vec3<f32>(x_1350.x, x_1350.x, x_1350.x)) + vec3<f32>(x_1353.x, x_1353.y, x_1353.z));
  let x_1356 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1355.x, x_1355.y, x_1355.z, x_1356.w);
  let x_1360 : vec3<f32> = u_xlat14;
  let x_1361 : vec4<f32> = u_xlat0;
  let x_1363 : vec3<f32> = (x_1360 + vec3<f32>(x_1361.x, x_1361.y, x_1361.z));
  let x_1364 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1363.x, x_1363.y, x_1363.z, x_1364.w);
  let x_1368 : f32 = x_54.x_Surface;
  u_xlatb0 = (x_1368 == 1.0f);
  let x_1370 : bool = u_xlatb0;
  if (x_1370) {
    let x_1375 : f32 = u_xlat2.x;
    x_1371 = x_1375;
  } else {
    x_1371 = 1.0f;
  }
  let x_1377 : f32 = x_1371;
  SV_Target0.w = x_1377;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


