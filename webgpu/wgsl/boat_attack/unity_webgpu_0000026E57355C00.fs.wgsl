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
  x_AdditionalLightsWorldToShadow : Arr_3,
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

var<private> u_xlat6 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_270 : UnityPerDraw;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat8 : vec3<f32>;

var<private> u_xlat13 : vec3<f32>;

var<private> u_xlat12 : f32;

var<private> u_xlat34 : f32;

var<private> vs_TEXCOORD6 : vec4<f32>;

var<private> u_xlat37 : f32;

@group(0) @binding(5) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(12) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat38 : f32;

@group(1) @binding(4) var<uniform> x_455 : LightShadows;

var<private> u_xlatb38 : bool;

var<private> u_xlatb6 : bool;

var<private> u_xlat17 : f32;

var<private> u_xlat39 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

var<private> u_xlat18 : vec3<f32>;

var<private> u_xlatu33 : u32;

var<private> u_xlatu37 : u32;

var<private> u_xlati38 : i32;

var<private> u_xlati37 : i32;

@group(1) @binding(1) var<uniform> x_817 : AdditionalLights;

var<private> u_xlat9 : vec3<f32>;

var<private> u_xlat41 : f32;

var<private> u_xlati41 : i32;

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

var<private> u_xlatu23 : u32;

var<private> u_xlatb37 : bool;

fn main_1() {
  var x_183 : f32;
  var x_195 : f32;
  var x_207 : f32;
  var txVec0 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_951 : f32;
  var x_961 : f32;
  var txVec1 : vec3<f32>;
  var x_1196 : f32;
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
  u_xlat4.w = 1.0f;
  let x_273 : vec4<f32> = x_270.unity_SHAr;
  let x_274 : vec4<f32> = u_xlat4;
  u_xlat6.x = dot(x_273, x_274);
  let x_279 : vec4<f32> = x_270.unity_SHAg;
  let x_280 : vec4<f32> = u_xlat4;
  u_xlat6.y = dot(x_279, x_280);
  let x_285 : vec4<f32> = x_270.unity_SHAb;
  let x_286 : vec4<f32> = u_xlat4;
  u_xlat6.z = dot(x_285, x_286);
  let x_290 : vec4<f32> = u_xlat4;
  let x_292 : vec4<f32> = u_xlat4;
  u_xlat7 = (vec4<f32>(x_290.y, x_290.z, x_290.z, x_290.x) * vec4<f32>(x_292.x, x_292.y, x_292.z, x_292.z));
  let x_298 : vec4<f32> = x_270.unity_SHBr;
  let x_299 : vec4<f32> = u_xlat7;
  u_xlat8.x = dot(x_298, x_299);
  let x_304 : vec4<f32> = x_270.unity_SHBg;
  let x_305 : vec4<f32> = u_xlat7;
  u_xlat8.y = dot(x_304, x_305);
  let x_310 : vec4<f32> = x_270.unity_SHBb;
  let x_311 : vec4<f32> = u_xlat7;
  u_xlat8.z = dot(x_310, x_311);
  let x_315 : f32 = u_xlat4.y;
  let x_317 : f32 = u_xlat4.y;
  u_xlat33 = (x_315 * x_317);
  let x_320 : f32 = u_xlat4.x;
  let x_322 : f32 = u_xlat4.x;
  let x_324 : f32 = u_xlat33;
  u_xlat33 = ((x_320 * x_322) + -(x_324));
  let x_329 : vec4<f32> = x_270.unity_SHC;
  let x_331 : f32 = u_xlat33;
  let x_334 : vec3<f32> = u_xlat8;
  u_xlat14 = ((vec3<f32>(x_329.x, x_329.y, x_329.z) * vec3<f32>(x_331, x_331, x_331)) + x_334);
  let x_336 : vec3<f32> = u_xlat14;
  let x_337 : vec3<f32> = u_xlat6;
  u_xlat14 = (x_336 + x_337);
  let x_339 : vec3<f32> = u_xlat14;
  u_xlat14 = max(x_339, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_343 : f32 = u_xlat1.x;
  u_xlat33 = ((-(x_343) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_349 : f32 = u_xlat1.y;
  let x_351 : f32 = x_54.x_Smoothness;
  let x_353 : f32 = u_xlat33;
  u_xlat23.x = ((x_349 * x_351) + -(x_353));
  let x_358 : f32 = u_xlat33;
  let x_360 : vec4<f32> = u_xlat2;
  u_xlat13 = (vec3<f32>(x_358, x_358, x_358) * vec3<f32>(x_360.y, x_360.z, x_360.w));
  let x_363 : vec4<f32> = u_xlat0;
  let x_366 : vec4<f32> = x_54.x_BaseColor;
  let x_371 : vec3<f32> = ((vec3<f32>(x_363.x, x_363.y, x_363.z) * vec3<f32>(x_366.x, x_366.y, x_366.z)) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_372 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_371.x, x_371.y, x_371.z, x_372.w);
  let x_374 : vec2<f32> = u_xlat1;
  let x_376 : vec4<f32> = u_xlat0;
  let x_381 : vec3<f32> = ((vec3<f32>(x_374.x, x_374.x, x_374.x) * vec3<f32>(x_376.x, x_376.y, x_376.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_382 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_381.x, x_381.y, x_381.z, x_382.w);
  let x_385 : f32 = u_xlat1.y;
  let x_388 : f32 = x_54.x_Smoothness;
  u_xlat33 = ((-(x_385) * x_388) + 1.0f);
  let x_391 : f32 = u_xlat33;
  let x_392 : f32 = u_xlat33;
  u_xlat1.x = (x_391 * x_392);
  let x_396 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_396, 0.0078125f);
  let x_402 : f32 = u_xlat1.x;
  let x_404 : f32 = u_xlat1.x;
  u_xlat12 = (x_402 * x_404);
  let x_407 : f32 = u_xlat23.x;
  u_xlat23.x = (x_407 + 1.0f);
  let x_411 : f32 = u_xlat23.x;
  u_xlat23.x = clamp(x_411, 0.0f, 1.0f);
  let x_416 : f32 = u_xlat1.x;
  u_xlat34 = ((x_416 * 4.0f) + 2.0f);
  let x_421 : f32 = u_xlat3.x;
  u_xlat3.x = min(x_421, 1.0f);
  let x_427 : vec4<f32> = vs_TEXCOORD6;
  let x_428 : vec2<f32> = vec2<f32>(x_427.x, x_427.y);
  let x_431 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_428.x, x_428.y, x_431);
  let x_444 : vec3<f32> = txVec0;
  let x_446 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_444.xy, x_444.z);
  u_xlat37 = x_446;
  let x_457 : f32 = x_455.x_MainLightShadowParams.x;
  u_xlat38 = (-(x_457) + 1.0f);
  let x_460 : f32 = u_xlat37;
  let x_462 : f32 = x_455.x_MainLightShadowParams.x;
  let x_464 : f32 = u_xlat38;
  u_xlat37 = ((x_460 * x_462) + x_464);
  let x_468 : f32 = vs_TEXCOORD6.z;
  u_xlatb38 = (0.0f >= x_468);
  let x_472 : f32 = vs_TEXCOORD6.z;
  u_xlatb6 = (x_472 >= 1.0f);
  let x_474 : bool = u_xlatb38;
  let x_475 : bool = u_xlatb6;
  u_xlatb38 = (x_474 | x_475);
  let x_477 : bool = u_xlatb38;
  let x_478 : f32 = u_xlat37;
  u_xlat37 = select(x_478, 1.0f, x_477);
  let x_480 : vec3<f32> = vs_TEXCOORD1;
  let x_482 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  u_xlat6 = (x_480 + -(x_482));
  let x_485 : vec3<f32> = u_xlat6;
  let x_486 : vec3<f32> = u_xlat6;
  u_xlat38 = dot(x_485, x_486);
  let x_488 : f32 = u_xlat38;
  let x_490 : f32 = x_455.x_MainLightShadowParams.z;
  let x_493 : f32 = x_455.x_MainLightShadowParams.w;
  u_xlat6.x = ((x_488 * x_490) + x_493);
  let x_497 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_497, 0.0f, 1.0f);
  let x_501 : f32 = u_xlat37;
  u_xlat17 = (-(x_501) + 1.0f);
  let x_505 : f32 = u_xlat6.x;
  let x_506 : f32 = u_xlat17;
  let x_508 : f32 = u_xlat37;
  u_xlat37 = ((x_505 * x_506) + x_508);
  let x_510 : vec3<f32> = u_xlat5;
  let x_512 : vec4<f32> = u_xlat4;
  u_xlat6.x = dot(-(x_510), vec3<f32>(x_512.x, x_512.y, x_512.z));
  let x_517 : f32 = u_xlat6.x;
  let x_519 : f32 = u_xlat6.x;
  u_xlat6.x = (x_517 + x_519);
  let x_522 : vec4<f32> = u_xlat4;
  let x_524 : vec3<f32> = u_xlat6;
  let x_528 : vec3<f32> = u_xlat5;
  u_xlat6 = ((vec3<f32>(x_522.x, x_522.y, x_522.z) * -(vec3<f32>(x_524.x, x_524.x, x_524.x))) + -(x_528));
  let x_532 : vec4<f32> = u_xlat4;
  let x_534 : vec3<f32> = u_xlat5;
  u_xlat39 = dot(vec3<f32>(x_532.x, x_532.y, x_532.z), x_534);
  let x_536 : f32 = u_xlat39;
  u_xlat39 = clamp(x_536, 0.0f, 1.0f);
  let x_538 : f32 = u_xlat39;
  u_xlat39 = (-(x_538) + 1.0f);
  let x_541 : f32 = u_xlat39;
  let x_542 : f32 = u_xlat39;
  u_xlat39 = (x_541 * x_542);
  let x_544 : f32 = u_xlat39;
  let x_545 : f32 = u_xlat39;
  u_xlat39 = (x_544 * x_545);
  let x_547 : f32 = u_xlat33;
  u_xlat7.x = ((-(x_547) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_554 : f32 = u_xlat33;
  let x_556 : f32 = u_xlat7.x;
  u_xlat33 = (x_554 * x_556);
  let x_558 : f32 = u_xlat33;
  u_xlat33 = (x_558 * 6.0f);
  let x_569 : vec3<f32> = u_xlat6;
  let x_570 : f32 = u_xlat33;
  let x_571 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, x_569, x_570);
  u_xlat7 = x_571;
  let x_573 : f32 = u_xlat7.w;
  u_xlat33 = (x_573 + -1.0f);
  let x_576 : f32 = x_270.unity_SpecCube0_HDR.w;
  let x_577 : f32 = u_xlat33;
  u_xlat33 = ((x_576 * x_577) + 1.0f);
  let x_580 : f32 = u_xlat33;
  u_xlat33 = max(x_580, 0.0f);
  let x_582 : f32 = u_xlat33;
  u_xlat33 = log2(x_582);
  let x_584 : f32 = u_xlat33;
  let x_586 : f32 = x_270.unity_SpecCube0_HDR.y;
  u_xlat33 = (x_584 * x_586);
  let x_588 : f32 = u_xlat33;
  u_xlat33 = exp2(x_588);
  let x_590 : f32 = u_xlat33;
  let x_592 : f32 = x_270.unity_SpecCube0_HDR.x;
  u_xlat33 = (x_590 * x_592);
  let x_594 : vec4<f32> = u_xlat7;
  let x_596 : f32 = u_xlat33;
  u_xlat6 = (vec3<f32>(x_594.x, x_594.y, x_594.z) * vec3<f32>(x_596, x_596, x_596));
  let x_599 : vec2<f32> = u_xlat1;
  let x_601 : vec2<f32> = u_xlat1;
  let x_605 : vec2<f32> = ((vec2<f32>(x_599.x, x_599.x) * vec2<f32>(x_601.x, x_601.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_606 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_605.x, x_605.y, x_606.z, x_606.w);
  let x_609 : f32 = u_xlat7.y;
  u_xlat33 = (1.0f / x_609);
  let x_612 : vec4<f32> = u_xlat0;
  let x_615 : vec2<f32> = u_xlat23;
  u_xlat18 = (-(vec3<f32>(x_612.x, x_612.y, x_612.z)) + vec3<f32>(x_615.x, x_615.x, x_615.x));
  let x_618 : f32 = u_xlat39;
  let x_620 : vec3<f32> = u_xlat18;
  let x_622 : vec4<f32> = u_xlat0;
  u_xlat18 = ((vec3<f32>(x_618, x_618, x_618) * x_620) + vec3<f32>(x_622.x, x_622.y, x_622.z));
  let x_625 : f32 = u_xlat33;
  let x_627 : vec3<f32> = u_xlat18;
  u_xlat18 = (vec3<f32>(x_625, x_625, x_625) * x_627);
  let x_629 : vec3<f32> = u_xlat6;
  let x_630 : vec3<f32> = u_xlat18;
  u_xlat6 = (x_629 * x_630);
  let x_632 : vec3<f32> = u_xlat14;
  let x_633 : vec3<f32> = u_xlat13;
  let x_635 : vec3<f32> = u_xlat6;
  u_xlat14 = ((x_632 * x_633) + x_635);
  let x_637 : f32 = u_xlat37;
  let x_639 : f32 = x_270.unity_LightData.z;
  u_xlat33 = (x_637 * x_639);
  let x_641 : vec4<f32> = u_xlat4;
  let x_644 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat1.x = dot(vec3<f32>(x_641.x, x_641.y, x_641.z), vec3<f32>(x_644.x, x_644.y, x_644.z));
  let x_649 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_649, 0.0f, 1.0f);
  let x_652 : f32 = u_xlat33;
  let x_654 : f32 = u_xlat1.x;
  u_xlat33 = (x_652 * x_654);
  let x_656 : f32 = u_xlat33;
  let x_659 : vec4<f32> = x_28.x_MainLightColor;
  u_xlat6 = (vec3<f32>(x_656, x_656, x_656) * vec3<f32>(x_659.x, x_659.y, x_659.z));
  let x_662 : vec3<f32> = u_xlat5;
  let x_664 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat18 = (x_662 + vec3<f32>(x_664.x, x_664.y, x_664.z));
  let x_667 : vec3<f32> = u_xlat18;
  let x_668 : vec3<f32> = u_xlat18;
  u_xlat33 = dot(x_667, x_668);
  let x_670 : f32 = u_xlat33;
  u_xlat33 = max(x_670, 1.17549435e-38f);
  let x_673 : f32 = u_xlat33;
  u_xlat33 = inverseSqrt(x_673);
  let x_675 : f32 = u_xlat33;
  let x_677 : vec3<f32> = u_xlat18;
  u_xlat18 = (vec3<f32>(x_675, x_675, x_675) * x_677);
  let x_679 : vec4<f32> = u_xlat4;
  let x_681 : vec3<f32> = u_xlat18;
  u_xlat33 = dot(vec3<f32>(x_679.x, x_679.y, x_679.z), x_681);
  let x_683 : f32 = u_xlat33;
  u_xlat33 = clamp(x_683, 0.0f, 1.0f);
  let x_686 : vec4<f32> = x_28.x_MainLightPosition;
  let x_688 : vec3<f32> = u_xlat18;
  u_xlat1.x = dot(vec3<f32>(x_686.x, x_686.y, x_686.z), x_688);
  let x_692 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_692, 0.0f, 1.0f);
  let x_695 : f32 = u_xlat33;
  let x_696 : f32 = u_xlat33;
  u_xlat33 = (x_695 * x_696);
  let x_698 : f32 = u_xlat33;
  let x_700 : f32 = u_xlat7.x;
  u_xlat33 = ((x_698 * x_700) + 1.00001001358032226562f);
  let x_705 : f32 = u_xlat1.x;
  let x_707 : f32 = u_xlat1.x;
  u_xlat1.x = (x_705 * x_707);
  let x_710 : f32 = u_xlat33;
  let x_711 : f32 = u_xlat33;
  u_xlat33 = (x_710 * x_711);
  let x_714 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_714, 0.10000000149011611938f);
  let x_718 : f32 = u_xlat33;
  let x_720 : f32 = u_xlat1.x;
  u_xlat33 = (x_718 * x_720);
  let x_722 : f32 = u_xlat34;
  let x_723 : f32 = u_xlat33;
  u_xlat33 = (x_722 * x_723);
  let x_725 : f32 = u_xlat12;
  let x_726 : f32 = u_xlat33;
  u_xlat33 = (x_725 / x_726);
  let x_728 : vec4<f32> = u_xlat0;
  let x_730 : f32 = u_xlat33;
  let x_733 : vec3<f32> = u_xlat13;
  u_xlat18 = ((vec3<f32>(x_728.x, x_728.y, x_728.z) * vec3<f32>(x_730, x_730, x_730)) + x_733);
  let x_735 : vec3<f32> = u_xlat6;
  let x_736 : vec3<f32> = u_xlat18;
  u_xlat6 = (x_735 * x_736);
  let x_740 : f32 = x_28.x_AdditionalLightsCount.x;
  let x_742 : f32 = x_270.unity_LightData.y;
  u_xlat33 = min(x_740, x_742);
  let x_746 : f32 = u_xlat33;
  u_xlatu33 = bitcast<u32>(i32(x_746));
  let x_749 : f32 = u_xlat38;
  let x_752 : f32 = x_455.x_AdditionalShadowFadeParams.x;
  let x_755 : f32 = x_455.x_AdditionalShadowFadeParams.y;
  u_xlat1.x = ((x_749 * x_752) + x_755);
  let x_759 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_759, 0.0f, 1.0f);
  u_xlat18.x = 0.0f;
  u_xlat18.y = 0.0f;
  u_xlat18.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_772 : u32 = u_xlatu_loop_1;
    let x_773 : u32 = u_xlatu33;
    if ((x_772 < x_773)) {
    } else {
      break;
    }
    let x_776 : u32 = u_xlatu_loop_1;
    u_xlatu37 = (x_776 >> 2u);
    let x_780 : u32 = u_xlatu_loop_1;
    u_xlati38 = bitcast<i32>((x_780 & 3u));
    let x_783 : u32 = u_xlatu37;
    let x_786 : vec4<f32> = x_270.unity_LightIndices[bitcast<i32>(x_783)];
    let x_796 : i32 = u_xlati38;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_801 : vec4<u32> = indexable[x_796];
    u_xlat37 = dot(x_786, bitcast<vec4<f32>>(x_801));
    let x_805 : f32 = u_xlat37;
    u_xlati37 = i32(x_805);
    let x_807 : vec3<f32> = vs_TEXCOORD1;
    let x_818 : i32 = u_xlati37;
    let x_820 : vec4<f32> = x_817.x_AdditionalLightsPosition[x_818];
    let x_823 : i32 = u_xlati37;
    let x_825 : vec4<f32> = x_817.x_AdditionalLightsPosition[x_823];
    u_xlat8 = ((-(x_807) * vec3<f32>(x_820.w, x_820.w, x_820.w)) + vec3<f32>(x_825.x, x_825.y, x_825.z));
    let x_828 : vec3<f32> = u_xlat8;
    let x_829 : vec3<f32> = u_xlat8;
    u_xlat38 = dot(x_828, x_829);
    let x_831 : f32 = u_xlat38;
    u_xlat38 = max(x_831, 0.00006103515625f);
    let x_834 : f32 = u_xlat38;
    u_xlat39 = inverseSqrt(x_834);
    let x_837 : f32 = u_xlat39;
    let x_839 : vec3<f32> = u_xlat8;
    u_xlat9 = (vec3<f32>(x_837, x_837, x_837) * x_839);
    let x_842 : f32 = u_xlat38;
    u_xlat41 = (1.0f / x_842);
    let x_844 : f32 = u_xlat38;
    let x_845 : i32 = u_xlati37;
    let x_847 : f32 = x_817.x_AdditionalLightsAttenuation[x_845].x;
    u_xlat38 = (x_844 * x_847);
    let x_849 : f32 = u_xlat38;
    let x_851 : f32 = u_xlat38;
    u_xlat38 = ((-(x_849) * x_851) + 1.0f);
    let x_854 : f32 = u_xlat38;
    u_xlat38 = max(x_854, 0.0f);
    let x_856 : f32 = u_xlat38;
    let x_857 : f32 = u_xlat38;
    u_xlat38 = (x_856 * x_857);
    let x_859 : f32 = u_xlat38;
    let x_860 : f32 = u_xlat41;
    u_xlat38 = (x_859 * x_860);
    let x_862 : i32 = u_xlati37;
    let x_864 : vec4<f32> = x_817.x_AdditionalLightsSpotDir[x_862];
    let x_866 : vec3<f32> = u_xlat9;
    u_xlat41 = dot(vec3<f32>(x_864.x, x_864.y, x_864.z), x_866);
    let x_868 : f32 = u_xlat41;
    let x_869 : i32 = u_xlati37;
    let x_871 : f32 = x_817.x_AdditionalLightsAttenuation[x_869].z;
    let x_873 : i32 = u_xlati37;
    let x_875 : f32 = x_817.x_AdditionalLightsAttenuation[x_873].w;
    u_xlat41 = ((x_868 * x_871) + x_875);
    let x_877 : f32 = u_xlat41;
    u_xlat41 = clamp(x_877, 0.0f, 1.0f);
    let x_879 : f32 = u_xlat41;
    let x_880 : f32 = u_xlat41;
    u_xlat41 = (x_879 * x_880);
    let x_882 : f32 = u_xlat38;
    let x_883 : f32 = u_xlat41;
    u_xlat38 = (x_882 * x_883);
    let x_887 : i32 = u_xlati37;
    let x_889 : f32 = x_455.x_AdditionalShadowParams[x_887].w;
    u_xlati41 = i32(x_889);
    let x_892 : i32 = u_xlati41;
    u_xlatb42 = (x_892 >= 0i);
    let x_894 : bool = u_xlatb42;
    if (x_894) {
      let x_898 : i32 = u_xlati37;
      let x_900 : f32 = x_455.x_AdditionalShadowParams[x_898].z;
      u_xlatb42 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_900, x_900, x_900, x_900))));
      let x_905 : bool = u_xlatb42;
      if (x_905) {
        let x_910 : vec3<f32> = u_xlat9;
        let x_913 : vec3<f32> = u_xlat9;
        let x_916 : vec4<bool> = (abs(vec4<f32>(x_910.z, x_910.z, x_910.y, x_910.z)) >= abs(vec4<f32>(x_913.x, x_913.y, x_913.x, x_913.x)));
        let x_918 : vec3<bool> = vec3<bool>(x_916.x, x_916.y, x_916.z);
        let x_919 : vec4<bool> = u_xlatb10;
        u_xlatb10 = vec4<bool>(x_918.x, x_918.y, x_918.z, x_919.w);
        let x_922 : bool = u_xlatb10.y;
        let x_924 : bool = u_xlatb10.x;
        u_xlatb42 = (x_922 & x_924);
        let x_926 : vec3<f32> = u_xlat9;
        let x_929 : vec4<bool> = (-(vec4<f32>(x_926.z, x_926.y, x_926.z, x_926.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_930 : vec3<bool> = vec3<bool>(x_929.x, x_929.y, x_929.w);
        let x_931 : vec4<bool> = u_xlatb10;
        u_xlatb10 = vec4<bool>(x_930.x, x_930.y, x_931.z, x_930.z);
        let x_935 : bool = u_xlatb10.x;
        u_xlat10.x = select(4.0f, 5.0f, x_935);
        let x_940 : bool = u_xlatb10.y;
        u_xlat10.y = select(2.0f, 3.0f, x_940);
        let x_946 : bool = u_xlatb10.w;
        u_xlat43 = select(0.0f, 1.0f, x_946);
        let x_950 : bool = u_xlatb10.z;
        if (x_950) {
          let x_955 : f32 = u_xlat10.y;
          x_951 = x_955;
        } else {
          let x_957 : f32 = u_xlat43;
          x_951 = x_957;
        }
        let x_958 : f32 = x_951;
        u_xlat21 = x_958;
        let x_960 : bool = u_xlatb42;
        if (x_960) {
          let x_965 : f32 = u_xlat10.x;
          x_961 = x_965;
        } else {
          let x_967 : f32 = u_xlat21;
          x_961 = x_967;
        }
        let x_968 : f32 = x_961;
        u_xlat42 = x_968;
        let x_969 : i32 = u_xlati37;
        let x_971 : f32 = x_455.x_AdditionalShadowParams[x_969].w;
        u_xlat10.x = trunc(x_971);
        let x_974 : f32 = u_xlat42;
        let x_976 : f32 = u_xlat10.x;
        u_xlat42 = (x_974 + x_976);
        let x_978 : f32 = u_xlat42;
        u_xlati41 = i32(x_978);
      }
      let x_980 : i32 = u_xlati41;
      u_xlati41 = (x_980 << bitcast<u32>(2i));
      let x_982 : vec3<f32> = vs_TEXCOORD1;
      let x_985 : i32 = u_xlati41;
      let x_988 : i32 = u_xlati41;
      let x_992 : vec4<f32> = x_455.x_AdditionalLightsWorldToShadow[((x_985 + 1i) / 4i)][((x_988 + 1i) % 4i)];
      u_xlat10 = (vec4<f32>(x_982.y, x_982.y, x_982.y, x_982.y) * x_992);
      let x_994 : i32 = u_xlati41;
      let x_996 : i32 = u_xlati41;
      let x_999 : vec4<f32> = x_455.x_AdditionalLightsWorldToShadow[(x_994 / 4i)][(x_996 % 4i)];
      let x_1000 : vec3<f32> = vs_TEXCOORD1;
      let x_1003 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_999 * vec4<f32>(x_1000.x, x_1000.x, x_1000.x, x_1000.x)) + x_1003);
      let x_1005 : i32 = u_xlati41;
      let x_1008 : i32 = u_xlati41;
      let x_1012 : vec4<f32> = x_455.x_AdditionalLightsWorldToShadow[((x_1005 + 2i) / 4i)][((x_1008 + 2i) % 4i)];
      let x_1013 : vec3<f32> = vs_TEXCOORD1;
      let x_1016 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_1012 * vec4<f32>(x_1013.z, x_1013.z, x_1013.z, x_1013.z)) + x_1016);
      let x_1018 : vec4<f32> = u_xlat10;
      let x_1019 : i32 = u_xlati41;
      let x_1022 : i32 = u_xlati41;
      let x_1026 : vec4<f32> = x_455.x_AdditionalLightsWorldToShadow[((x_1019 + 3i) / 4i)][((x_1022 + 3i) % 4i)];
      u_xlat10 = (x_1018 + x_1026);
      let x_1028 : vec4<f32> = u_xlat10;
      let x_1030 : vec4<f32> = u_xlat10;
      let x_1032 : vec3<f32> = (vec3<f32>(x_1028.x, x_1028.y, x_1028.z) / vec3<f32>(x_1030.w, x_1030.w, x_1030.w));
      let x_1033 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_1032.x, x_1032.y, x_1032.z, x_1033.w);
      let x_1036 : vec4<f32> = u_xlat10;
      let x_1037 : vec2<f32> = vec2<f32>(x_1036.x, x_1036.y);
      let x_1039 : f32 = u_xlat10.z;
      txVec1 = vec3<f32>(x_1037.x, x_1037.y, x_1039);
      let x_1047 : vec3<f32> = txVec1;
      let x_1049 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1047.xy, x_1047.z);
      u_xlat41 = x_1049;
      let x_1050 : i32 = u_xlati37;
      let x_1052 : f32 = x_455.x_AdditionalShadowParams[x_1050].x;
      u_xlat42 = (1.0f + -(x_1052));
      let x_1055 : f32 = u_xlat41;
      let x_1056 : i32 = u_xlati37;
      let x_1058 : f32 = x_455.x_AdditionalShadowParams[x_1056].x;
      let x_1060 : f32 = u_xlat42;
      u_xlat41 = ((x_1055 * x_1058) + x_1060);
      let x_1063 : f32 = u_xlat10.z;
      u_xlatb42 = (0.0f >= x_1063);
      let x_1066 : f32 = u_xlat10.z;
      u_xlatb10.x = (x_1066 >= 1.0f);
      let x_1069 : bool = u_xlatb42;
      let x_1071 : bool = u_xlatb10.x;
      u_xlatb42 = (x_1069 | x_1071);
      let x_1073 : bool = u_xlatb42;
      let x_1074 : f32 = u_xlat41;
      u_xlat41 = select(x_1074, 1.0f, x_1073);
    } else {
      u_xlat41 = 1.0f;
    }
    let x_1077 : f32 = u_xlat41;
    u_xlat42 = (-(x_1077) + 1.0f);
    let x_1081 : f32 = u_xlat1.x;
    let x_1082 : f32 = u_xlat42;
    let x_1084 : f32 = u_xlat41;
    u_xlat41 = ((x_1081 * x_1082) + x_1084);
    let x_1086 : f32 = u_xlat38;
    let x_1087 : f32 = u_xlat41;
    u_xlat38 = (x_1086 * x_1087);
    let x_1089 : vec4<f32> = u_xlat4;
    let x_1091 : vec3<f32> = u_xlat9;
    u_xlat41 = dot(vec3<f32>(x_1089.x, x_1089.y, x_1089.z), x_1091);
    let x_1093 : f32 = u_xlat41;
    u_xlat41 = clamp(x_1093, 0.0f, 1.0f);
    let x_1095 : f32 = u_xlat38;
    let x_1096 : f32 = u_xlat41;
    u_xlat38 = (x_1095 * x_1096);
    let x_1098 : f32 = u_xlat38;
    let x_1100 : i32 = u_xlati37;
    let x_1102 : vec4<f32> = x_817.x_AdditionalLightsColor[x_1100];
    let x_1104 : vec3<f32> = (vec3<f32>(x_1098, x_1098, x_1098) * vec3<f32>(x_1102.x, x_1102.y, x_1102.z));
    let x_1105 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1104.x, x_1104.y, x_1104.z, x_1105.w);
    let x_1107 : vec3<f32> = u_xlat8;
    let x_1108 : f32 = u_xlat39;
    let x_1111 : vec3<f32> = u_xlat5;
    u_xlat8 = ((x_1107 * vec3<f32>(x_1108, x_1108, x_1108)) + x_1111);
    let x_1113 : vec3<f32> = u_xlat8;
    let x_1114 : vec3<f32> = u_xlat8;
    u_xlat37 = dot(x_1113, x_1114);
    let x_1116 : f32 = u_xlat37;
    u_xlat37 = max(x_1116, 1.17549435e-38f);
    let x_1118 : f32 = u_xlat37;
    u_xlat37 = inverseSqrt(x_1118);
    let x_1120 : f32 = u_xlat37;
    let x_1122 : vec3<f32> = u_xlat8;
    u_xlat8 = (vec3<f32>(x_1120, x_1120, x_1120) * x_1122);
    let x_1124 : vec4<f32> = u_xlat4;
    let x_1126 : vec3<f32> = u_xlat8;
    u_xlat37 = dot(vec3<f32>(x_1124.x, x_1124.y, x_1124.z), x_1126);
    let x_1128 : f32 = u_xlat37;
    u_xlat37 = clamp(x_1128, 0.0f, 1.0f);
    let x_1130 : vec3<f32> = u_xlat9;
    let x_1131 : vec3<f32> = u_xlat8;
    u_xlat38 = dot(x_1130, x_1131);
    let x_1133 : f32 = u_xlat38;
    u_xlat38 = clamp(x_1133, 0.0f, 1.0f);
    let x_1135 : f32 = u_xlat37;
    let x_1136 : f32 = u_xlat37;
    u_xlat37 = (x_1135 * x_1136);
    let x_1138 : f32 = u_xlat37;
    let x_1140 : f32 = u_xlat7.x;
    u_xlat37 = ((x_1138 * x_1140) + 1.00001001358032226562f);
    let x_1143 : f32 = u_xlat38;
    let x_1144 : f32 = u_xlat38;
    u_xlat38 = (x_1143 * x_1144);
    let x_1146 : f32 = u_xlat37;
    let x_1147 : f32 = u_xlat37;
    u_xlat37 = (x_1146 * x_1147);
    let x_1149 : f32 = u_xlat38;
    u_xlat38 = max(x_1149, 0.10000000149011611938f);
    let x_1151 : f32 = u_xlat37;
    let x_1152 : f32 = u_xlat38;
    u_xlat37 = (x_1151 * x_1152);
    let x_1154 : f32 = u_xlat34;
    let x_1155 : f32 = u_xlat37;
    u_xlat37 = (x_1154 * x_1155);
    let x_1157 : f32 = u_xlat12;
    let x_1158 : f32 = u_xlat37;
    u_xlat37 = (x_1157 / x_1158);
    let x_1160 : vec4<f32> = u_xlat0;
    let x_1162 : f32 = u_xlat37;
    let x_1165 : vec3<f32> = u_xlat13;
    u_xlat8 = ((vec3<f32>(x_1160.x, x_1160.y, x_1160.z) * vec3<f32>(x_1162, x_1162, x_1162)) + x_1165);
    let x_1167 : vec3<f32> = u_xlat8;
    let x_1168 : vec4<f32> = u_xlat10;
    let x_1171 : vec3<f32> = u_xlat18;
    u_xlat18 = ((x_1167 * vec3<f32>(x_1168.x, x_1168.y, x_1168.z)) + x_1171);

    continuing {
      let x_1173 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1173 + bitcast<u32>(1i));
    }
  }
  let x_1175 : vec3<f32> = u_xlat14;
  let x_1176 : vec3<f32> = u_xlat3;
  let x_1179 : vec3<f32> = u_xlat6;
  let x_1180 : vec3<f32> = ((x_1175 * vec3<f32>(x_1176.x, x_1176.x, x_1176.x)) + x_1179);
  let x_1181 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1180.x, x_1180.y, x_1180.z, x_1181.w);
  let x_1185 : vec3<f32> = u_xlat18;
  let x_1186 : vec4<f32> = u_xlat0;
  let x_1188 : vec3<f32> = (x_1185 + vec3<f32>(x_1186.x, x_1186.y, x_1186.z));
  let x_1189 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1188.x, x_1188.y, x_1188.z, x_1189.w);
  let x_1193 : f32 = x_54.x_Surface;
  u_xlatb0 = (x_1193 == 1.0f);
  let x_1195 : bool = u_xlatb0;
  if (x_1195) {
    let x_1200 : f32 = u_xlat2.x;
    x_1196 = x_1200;
  } else {
    x_1196 = 1.0f;
  }
  let x_1202 : f32 = x_1196;
  SV_Target0.w = x_1202;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(4) vs_TEXCOORD6_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


