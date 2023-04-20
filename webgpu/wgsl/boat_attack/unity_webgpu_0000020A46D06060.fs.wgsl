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

@group(0) @binding(3) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(11) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_28 : PGlobals;

var<private> u_xlat1 : vec2<f32>;

@group(0) @binding(6) var x_MetallicGlossMap : texture_2d<f32>;

@group(0) @binding(14) var sampler_MetallicGlossMap : sampler;

var<private> u_xlat2 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_54 : UnityPerMaterial;

var<private> u_xlat3 : vec3<f32>;

@group(0) @binding(4) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(12) var sampler_BumpMap : sampler;

var<private> u_xlat23 : vec2<f32>;

var<private> u_xlat33 : f32;

@group(0) @binding(5) var x_OcclusionMap : texture_2d<f32>;

@group(0) @binding(13) var sampler_OcclusionMap : sampler;

var<private> u_xlat14 : vec3<f32>;

var<private> u_xlatb14 : bool;

var<private> u_xlat4 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat25 : f32;

var<private> u_xlat5 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(10) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD8 : vec2<f32>;

var<private> u_xlat6 : vec3<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat13 : vec3<f32>;

var<private> u_xlat12 : f32;

var<private> u_xlat34 : f32;

var<private> vs_TEXCOORD6 : vec4<f32>;

var<private> u_xlat37 : f32;

@group(0) @binding(7) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(15) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat38 : f32;

@group(1) @binding(4) var<uniform> x_427 : LightShadows;

var<private> u_xlatb38 : bool;

var<private> u_xlatb6 : bool;

var<private> u_xlat17 : f32;

var<private> u_xlat39 : f32;

var<private> u_xlat7 : vec4<f32>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_548 : UnityPerDraw;

var<private> u_xlat18 : vec3<f32>;

var<private> u_xlatu33 : u32;

var<private> u_xlatu37 : u32;

var<private> u_xlati38 : i32;

var<private> u_xlati37 : i32;

var<private> u_xlat8 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_793 : AdditionalLights;

var<private> u_xlat9 : vec3<f32>;

var<private> u_xlat41 : f32;

var<private> u_xlati41 : i32;

var<private> u_xlatb42 : bool;

var<private> u_xlatb10 : vec4<bool>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat43 : f32;

var<private> u_xlat21 : f32;

var<private> u_xlat42 : f32;

@group(0) @binding(8) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

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
  var x_927 : f32;
  var x_937 : f32;
  var txVec1 : vec3<f32>;
  var x_1171 : f32;
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
  u_xlat14 = (vec3<f32>(x_259, x_259, x_259) * x_261);
  let x_269 : vec2<f32> = vs_TEXCOORD8;
  let x_271 : f32 = x_28.x_GlobalMipBias.x;
  let x_272 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_269, x_271);
  u_xlat4 = x_272;
  let x_278 : vec2<f32> = vs_TEXCOORD8;
  let x_280 : f32 = x_28.x_GlobalMipBias.x;
  let x_281 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_278, x_280);
  u_xlat6 = vec3<f32>(x_281.x, x_281.y, x_281.z);
  let x_283 : vec4<f32> = u_xlat4;
  let x_287 : vec3<f32> = (vec3<f32>(x_283.x, x_283.y, x_283.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_288 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_287.x, x_287.y, x_287.z, x_288.w);
  let x_290 : vec3<f32> = u_xlat14;
  let x_291 : vec4<f32> = u_xlat4;
  u_xlat33 = dot(x_290, vec3<f32>(x_291.x, x_291.y, x_291.z));
  let x_294 : f32 = u_xlat33;
  u_xlat33 = (x_294 + 0.5f);
  let x_297 : f32 = u_xlat33;
  let x_299 : vec3<f32> = u_xlat6;
  let x_300 : vec3<f32> = (vec3<f32>(x_297, x_297, x_297) * x_299);
  let x_301 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_300.x, x_300.y, x_300.z, x_301.w);
  let x_304 : f32 = u_xlat4.w;
  u_xlat33 = max(x_304, 0.00009999999747378752f);
  let x_307 : vec4<f32> = u_xlat4;
  let x_309 : f32 = u_xlat33;
  let x_311 : vec3<f32> = (vec3<f32>(x_307.x, x_307.y, x_307.z) / vec3<f32>(x_309, x_309, x_309));
  let x_312 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_311.x, x_311.y, x_311.z, x_312.w);
  let x_315 : f32 = u_xlat1.x;
  u_xlat33 = ((-(x_315) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_321 : f32 = u_xlat1.y;
  let x_323 : f32 = x_54.x_Smoothness;
  let x_325 : f32 = u_xlat33;
  u_xlat23.x = ((x_321 * x_323) + -(x_325));
  let x_330 : f32 = u_xlat33;
  let x_332 : vec4<f32> = u_xlat2;
  u_xlat13 = (vec3<f32>(x_330, x_330, x_330) * vec3<f32>(x_332.y, x_332.z, x_332.w));
  let x_335 : vec4<f32> = u_xlat0;
  let x_338 : vec4<f32> = x_54.x_BaseColor;
  let x_343 : vec3<f32> = ((vec3<f32>(x_335.x, x_335.y, x_335.z) * vec3<f32>(x_338.x, x_338.y, x_338.z)) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_344 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_343.x, x_343.y, x_343.z, x_344.w);
  let x_346 : vec2<f32> = u_xlat1;
  let x_348 : vec4<f32> = u_xlat0;
  let x_353 : vec3<f32> = ((vec3<f32>(x_346.x, x_346.x, x_346.x) * vec3<f32>(x_348.x, x_348.y, x_348.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_354 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_353.x, x_353.y, x_353.z, x_354.w);
  let x_357 : f32 = u_xlat1.y;
  let x_360 : f32 = x_54.x_Smoothness;
  u_xlat33 = ((-(x_357) * x_360) + 1.0f);
  let x_363 : f32 = u_xlat33;
  let x_364 : f32 = u_xlat33;
  u_xlat1.x = (x_363 * x_364);
  let x_368 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_368, 0.0078125f);
  let x_374 : f32 = u_xlat1.x;
  let x_376 : f32 = u_xlat1.x;
  u_xlat12 = (x_374 * x_376);
  let x_379 : f32 = u_xlat23.x;
  u_xlat23.x = (x_379 + 1.0f);
  let x_383 : f32 = u_xlat23.x;
  u_xlat23.x = clamp(x_383, 0.0f, 1.0f);
  let x_388 : f32 = u_xlat1.x;
  u_xlat34 = ((x_388 * 4.0f) + 2.0f);
  let x_393 : f32 = u_xlat3.x;
  u_xlat3.x = min(x_393, 1.0f);
  let x_399 : vec4<f32> = vs_TEXCOORD6;
  let x_400 : vec2<f32> = vec2<f32>(x_399.x, x_399.y);
  let x_403 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_400.x, x_400.y, x_403);
  let x_416 : vec3<f32> = txVec0;
  let x_418 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_416.xy, x_416.z);
  u_xlat37 = x_418;
  let x_429 : f32 = x_427.x_MainLightShadowParams.x;
  u_xlat38 = (-(x_429) + 1.0f);
  let x_432 : f32 = u_xlat37;
  let x_434 : f32 = x_427.x_MainLightShadowParams.x;
  let x_436 : f32 = u_xlat38;
  u_xlat37 = ((x_432 * x_434) + x_436);
  let x_440 : f32 = vs_TEXCOORD6.z;
  u_xlatb38 = (0.0f >= x_440);
  let x_444 : f32 = vs_TEXCOORD6.z;
  u_xlatb6 = (x_444 >= 1.0f);
  let x_446 : bool = u_xlatb38;
  let x_447 : bool = u_xlatb6;
  u_xlatb38 = (x_446 | x_447);
  let x_449 : bool = u_xlatb38;
  let x_450 : f32 = u_xlat37;
  u_xlat37 = select(x_450, 1.0f, x_449);
  let x_452 : vec3<f32> = vs_TEXCOORD1;
  let x_454 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  u_xlat6 = (x_452 + -(x_454));
  let x_457 : vec3<f32> = u_xlat6;
  let x_458 : vec3<f32> = u_xlat6;
  u_xlat38 = dot(x_457, x_458);
  let x_460 : f32 = u_xlat38;
  let x_462 : f32 = x_427.x_MainLightShadowParams.z;
  let x_465 : f32 = x_427.x_MainLightShadowParams.w;
  u_xlat6.x = ((x_460 * x_462) + x_465);
  let x_469 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_469, 0.0f, 1.0f);
  let x_473 : f32 = u_xlat37;
  u_xlat17 = (-(x_473) + 1.0f);
  let x_477 : f32 = u_xlat6.x;
  let x_478 : f32 = u_xlat17;
  let x_480 : f32 = u_xlat37;
  u_xlat37 = ((x_477 * x_478) + x_480);
  let x_482 : vec3<f32> = u_xlat5;
  let x_484 : vec3<f32> = u_xlat14;
  u_xlat6.x = dot(-(x_482), x_484);
  let x_488 : f32 = u_xlat6.x;
  let x_490 : f32 = u_xlat6.x;
  u_xlat6.x = (x_488 + x_490);
  let x_493 : vec3<f32> = u_xlat14;
  let x_494 : vec3<f32> = u_xlat6;
  let x_498 : vec3<f32> = u_xlat5;
  u_xlat6 = ((x_493 * -(vec3<f32>(x_494.x, x_494.x, x_494.x))) + -(x_498));
  let x_502 : vec3<f32> = u_xlat14;
  let x_503 : vec3<f32> = u_xlat5;
  u_xlat39 = dot(x_502, x_503);
  let x_505 : f32 = u_xlat39;
  u_xlat39 = clamp(x_505, 0.0f, 1.0f);
  let x_507 : f32 = u_xlat39;
  u_xlat39 = (-(x_507) + 1.0f);
  let x_510 : f32 = u_xlat39;
  let x_511 : f32 = u_xlat39;
  u_xlat39 = (x_510 * x_511);
  let x_513 : f32 = u_xlat39;
  let x_514 : f32 = u_xlat39;
  u_xlat39 = (x_513 * x_514);
  let x_517 : f32 = u_xlat33;
  u_xlat7.x = ((-(x_517) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_524 : f32 = u_xlat33;
  let x_526 : f32 = u_xlat7.x;
  u_xlat33 = (x_524 * x_526);
  let x_528 : f32 = u_xlat33;
  u_xlat33 = (x_528 * 6.0f);
  let x_539 : vec3<f32> = u_xlat6;
  let x_540 : f32 = u_xlat33;
  let x_541 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, x_539, x_540);
  u_xlat7 = x_541;
  let x_543 : f32 = u_xlat7.w;
  u_xlat33 = (x_543 + -1.0f);
  let x_550 : f32 = x_548.unity_SpecCube0_HDR.w;
  let x_551 : f32 = u_xlat33;
  u_xlat33 = ((x_550 * x_551) + 1.0f);
  let x_554 : f32 = u_xlat33;
  u_xlat33 = max(x_554, 0.0f);
  let x_556 : f32 = u_xlat33;
  u_xlat33 = log2(x_556);
  let x_558 : f32 = u_xlat33;
  let x_560 : f32 = x_548.unity_SpecCube0_HDR.y;
  u_xlat33 = (x_558 * x_560);
  let x_562 : f32 = u_xlat33;
  u_xlat33 = exp2(x_562);
  let x_564 : f32 = u_xlat33;
  let x_566 : f32 = x_548.unity_SpecCube0_HDR.x;
  u_xlat33 = (x_564 * x_566);
  let x_568 : vec4<f32> = u_xlat7;
  let x_570 : f32 = u_xlat33;
  u_xlat6 = (vec3<f32>(x_568.x, x_568.y, x_568.z) * vec3<f32>(x_570, x_570, x_570));
  let x_573 : vec2<f32> = u_xlat1;
  let x_575 : vec2<f32> = u_xlat1;
  let x_579 : vec2<f32> = ((vec2<f32>(x_573.x, x_573.x) * vec2<f32>(x_575.x, x_575.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_580 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_579.x, x_579.y, x_580.z, x_580.w);
  let x_583 : f32 = u_xlat7.y;
  u_xlat33 = (1.0f / x_583);
  let x_586 : vec4<f32> = u_xlat0;
  let x_589 : vec2<f32> = u_xlat23;
  u_xlat18 = (-(vec3<f32>(x_586.x, x_586.y, x_586.z)) + vec3<f32>(x_589.x, x_589.x, x_589.x));
  let x_592 : f32 = u_xlat39;
  let x_594 : vec3<f32> = u_xlat18;
  let x_596 : vec4<f32> = u_xlat0;
  u_xlat18 = ((vec3<f32>(x_592, x_592, x_592) * x_594) + vec3<f32>(x_596.x, x_596.y, x_596.z));
  let x_599 : f32 = u_xlat33;
  let x_601 : vec3<f32> = u_xlat18;
  u_xlat18 = (vec3<f32>(x_599, x_599, x_599) * x_601);
  let x_603 : vec3<f32> = u_xlat6;
  let x_604 : vec3<f32> = u_xlat18;
  u_xlat6 = (x_603 * x_604);
  let x_606 : vec4<f32> = u_xlat4;
  let x_608 : vec3<f32> = u_xlat13;
  let x_610 : vec3<f32> = u_xlat6;
  let x_611 : vec3<f32> = ((vec3<f32>(x_606.x, x_606.y, x_606.z) * x_608) + x_610);
  let x_612 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_611.x, x_611.y, x_611.z, x_612.w);
  let x_614 : f32 = u_xlat37;
  let x_616 : f32 = x_548.unity_LightData.z;
  u_xlat33 = (x_614 * x_616);
  let x_618 : vec3<f32> = u_xlat14;
  let x_620 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat1.x = dot(x_618, vec3<f32>(x_620.x, x_620.y, x_620.z));
  let x_625 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_625, 0.0f, 1.0f);
  let x_628 : f32 = u_xlat33;
  let x_630 : f32 = u_xlat1.x;
  u_xlat33 = (x_628 * x_630);
  let x_632 : f32 = u_xlat33;
  let x_635 : vec4<f32> = x_28.x_MainLightColor;
  u_xlat6 = (vec3<f32>(x_632, x_632, x_632) * vec3<f32>(x_635.x, x_635.y, x_635.z));
  let x_638 : vec3<f32> = u_xlat5;
  let x_640 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat18 = (x_638 + vec3<f32>(x_640.x, x_640.y, x_640.z));
  let x_643 : vec3<f32> = u_xlat18;
  let x_644 : vec3<f32> = u_xlat18;
  u_xlat33 = dot(x_643, x_644);
  let x_646 : f32 = u_xlat33;
  u_xlat33 = max(x_646, 1.17549435e-38f);
  let x_649 : f32 = u_xlat33;
  u_xlat33 = inverseSqrt(x_649);
  let x_651 : f32 = u_xlat33;
  let x_653 : vec3<f32> = u_xlat18;
  u_xlat18 = (vec3<f32>(x_651, x_651, x_651) * x_653);
  let x_655 : vec3<f32> = u_xlat14;
  let x_656 : vec3<f32> = u_xlat18;
  u_xlat33 = dot(x_655, x_656);
  let x_658 : f32 = u_xlat33;
  u_xlat33 = clamp(x_658, 0.0f, 1.0f);
  let x_661 : vec4<f32> = x_28.x_MainLightPosition;
  let x_663 : vec3<f32> = u_xlat18;
  u_xlat1.x = dot(vec3<f32>(x_661.x, x_661.y, x_661.z), x_663);
  let x_667 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_667, 0.0f, 1.0f);
  let x_670 : f32 = u_xlat33;
  let x_671 : f32 = u_xlat33;
  u_xlat33 = (x_670 * x_671);
  let x_673 : f32 = u_xlat33;
  let x_675 : f32 = u_xlat7.x;
  u_xlat33 = ((x_673 * x_675) + 1.00001001358032226562f);
  let x_680 : f32 = u_xlat1.x;
  let x_682 : f32 = u_xlat1.x;
  u_xlat1.x = (x_680 * x_682);
  let x_685 : f32 = u_xlat33;
  let x_686 : f32 = u_xlat33;
  u_xlat33 = (x_685 * x_686);
  let x_689 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_689, 0.10000000149011611938f);
  let x_693 : f32 = u_xlat33;
  let x_695 : f32 = u_xlat1.x;
  u_xlat33 = (x_693 * x_695);
  let x_697 : f32 = u_xlat34;
  let x_698 : f32 = u_xlat33;
  u_xlat33 = (x_697 * x_698);
  let x_700 : f32 = u_xlat12;
  let x_701 : f32 = u_xlat33;
  u_xlat33 = (x_700 / x_701);
  let x_703 : vec4<f32> = u_xlat0;
  let x_705 : f32 = u_xlat33;
  let x_708 : vec3<f32> = u_xlat13;
  u_xlat18 = ((vec3<f32>(x_703.x, x_703.y, x_703.z) * vec3<f32>(x_705, x_705, x_705)) + x_708);
  let x_710 : vec3<f32> = u_xlat6;
  let x_711 : vec3<f32> = u_xlat18;
  u_xlat6 = (x_710 * x_711);
  let x_715 : f32 = x_28.x_AdditionalLightsCount.x;
  let x_717 : f32 = x_548.unity_LightData.y;
  u_xlat33 = min(x_715, x_717);
  let x_721 : f32 = u_xlat33;
  u_xlatu33 = bitcast<u32>(i32(x_721));
  let x_724 : f32 = u_xlat38;
  let x_727 : f32 = x_427.x_AdditionalShadowFadeParams.x;
  let x_730 : f32 = x_427.x_AdditionalShadowFadeParams.y;
  u_xlat1.x = ((x_724 * x_727) + x_730);
  let x_734 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_734, 0.0f, 1.0f);
  u_xlat18.x = 0.0f;
  u_xlat18.y = 0.0f;
  u_xlat18.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_747 : u32 = u_xlatu_loop_1;
    let x_748 : u32 = u_xlatu33;
    if ((x_747 < x_748)) {
    } else {
      break;
    }
    let x_751 : u32 = u_xlatu_loop_1;
    u_xlatu37 = (x_751 >> 2u);
    let x_755 : u32 = u_xlatu_loop_1;
    u_xlati38 = bitcast<i32>((x_755 & 3u));
    let x_758 : u32 = u_xlatu37;
    let x_761 : vec4<f32> = x_548.unity_LightIndices[bitcast<i32>(x_758)];
    let x_771 : i32 = u_xlati38;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_776 : vec4<u32> = indexable[x_771];
    u_xlat37 = dot(x_761, bitcast<vec4<f32>>(x_776));
    let x_780 : f32 = u_xlat37;
    u_xlati37 = i32(x_780);
    let x_783 : vec3<f32> = vs_TEXCOORD1;
    let x_794 : i32 = u_xlati37;
    let x_796 : vec4<f32> = x_793.x_AdditionalLightsPosition[x_794];
    let x_799 : i32 = u_xlati37;
    let x_801 : vec4<f32> = x_793.x_AdditionalLightsPosition[x_799];
    u_xlat8 = ((-(x_783) * vec3<f32>(x_796.w, x_796.w, x_796.w)) + vec3<f32>(x_801.x, x_801.y, x_801.z));
    let x_804 : vec3<f32> = u_xlat8;
    let x_805 : vec3<f32> = u_xlat8;
    u_xlat38 = dot(x_804, x_805);
    let x_807 : f32 = u_xlat38;
    u_xlat38 = max(x_807, 0.00006103515625f);
    let x_810 : f32 = u_xlat38;
    u_xlat39 = inverseSqrt(x_810);
    let x_813 : f32 = u_xlat39;
    let x_815 : vec3<f32> = u_xlat8;
    u_xlat9 = (vec3<f32>(x_813, x_813, x_813) * x_815);
    let x_818 : f32 = u_xlat38;
    u_xlat41 = (1.0f / x_818);
    let x_820 : f32 = u_xlat38;
    let x_821 : i32 = u_xlati37;
    let x_823 : f32 = x_793.x_AdditionalLightsAttenuation[x_821].x;
    u_xlat38 = (x_820 * x_823);
    let x_825 : f32 = u_xlat38;
    let x_827 : f32 = u_xlat38;
    u_xlat38 = ((-(x_825) * x_827) + 1.0f);
    let x_830 : f32 = u_xlat38;
    u_xlat38 = max(x_830, 0.0f);
    let x_832 : f32 = u_xlat38;
    let x_833 : f32 = u_xlat38;
    u_xlat38 = (x_832 * x_833);
    let x_835 : f32 = u_xlat38;
    let x_836 : f32 = u_xlat41;
    u_xlat38 = (x_835 * x_836);
    let x_838 : i32 = u_xlati37;
    let x_840 : vec4<f32> = x_793.x_AdditionalLightsSpotDir[x_838];
    let x_842 : vec3<f32> = u_xlat9;
    u_xlat41 = dot(vec3<f32>(x_840.x, x_840.y, x_840.z), x_842);
    let x_844 : f32 = u_xlat41;
    let x_845 : i32 = u_xlati37;
    let x_847 : f32 = x_793.x_AdditionalLightsAttenuation[x_845].z;
    let x_849 : i32 = u_xlati37;
    let x_851 : f32 = x_793.x_AdditionalLightsAttenuation[x_849].w;
    u_xlat41 = ((x_844 * x_847) + x_851);
    let x_853 : f32 = u_xlat41;
    u_xlat41 = clamp(x_853, 0.0f, 1.0f);
    let x_855 : f32 = u_xlat41;
    let x_856 : f32 = u_xlat41;
    u_xlat41 = (x_855 * x_856);
    let x_858 : f32 = u_xlat38;
    let x_859 : f32 = u_xlat41;
    u_xlat38 = (x_858 * x_859);
    let x_863 : i32 = u_xlati37;
    let x_865 : f32 = x_427.x_AdditionalShadowParams[x_863].w;
    u_xlati41 = i32(x_865);
    let x_868 : i32 = u_xlati41;
    u_xlatb42 = (x_868 >= 0i);
    let x_870 : bool = u_xlatb42;
    if (x_870) {
      let x_874 : i32 = u_xlati37;
      let x_876 : f32 = x_427.x_AdditionalShadowParams[x_874].z;
      u_xlatb42 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_876, x_876, x_876, x_876))));
      let x_881 : bool = u_xlatb42;
      if (x_881) {
        let x_886 : vec3<f32> = u_xlat9;
        let x_889 : vec3<f32> = u_xlat9;
        let x_892 : vec4<bool> = (abs(vec4<f32>(x_886.z, x_886.z, x_886.y, x_886.z)) >= abs(vec4<f32>(x_889.x, x_889.y, x_889.x, x_889.x)));
        let x_894 : vec3<bool> = vec3<bool>(x_892.x, x_892.y, x_892.z);
        let x_895 : vec4<bool> = u_xlatb10;
        u_xlatb10 = vec4<bool>(x_894.x, x_894.y, x_894.z, x_895.w);
        let x_898 : bool = u_xlatb10.y;
        let x_900 : bool = u_xlatb10.x;
        u_xlatb42 = (x_898 & x_900);
        let x_902 : vec3<f32> = u_xlat9;
        let x_905 : vec4<bool> = (-(vec4<f32>(x_902.z, x_902.y, x_902.z, x_902.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_906 : vec3<bool> = vec3<bool>(x_905.x, x_905.y, x_905.w);
        let x_907 : vec4<bool> = u_xlatb10;
        u_xlatb10 = vec4<bool>(x_906.x, x_906.y, x_907.z, x_906.z);
        let x_911 : bool = u_xlatb10.x;
        u_xlat10.x = select(4.0f, 5.0f, x_911);
        let x_916 : bool = u_xlatb10.y;
        u_xlat10.y = select(2.0f, 3.0f, x_916);
        let x_922 : bool = u_xlatb10.w;
        u_xlat43 = select(0.0f, 1.0f, x_922);
        let x_926 : bool = u_xlatb10.z;
        if (x_926) {
          let x_931 : f32 = u_xlat10.y;
          x_927 = x_931;
        } else {
          let x_933 : f32 = u_xlat43;
          x_927 = x_933;
        }
        let x_934 : f32 = x_927;
        u_xlat21 = x_934;
        let x_936 : bool = u_xlatb42;
        if (x_936) {
          let x_941 : f32 = u_xlat10.x;
          x_937 = x_941;
        } else {
          let x_943 : f32 = u_xlat21;
          x_937 = x_943;
        }
        let x_944 : f32 = x_937;
        u_xlat42 = x_944;
        let x_945 : i32 = u_xlati37;
        let x_947 : f32 = x_427.x_AdditionalShadowParams[x_945].w;
        u_xlat10.x = trunc(x_947);
        let x_950 : f32 = u_xlat42;
        let x_952 : f32 = u_xlat10.x;
        u_xlat42 = (x_950 + x_952);
        let x_954 : f32 = u_xlat42;
        u_xlati41 = i32(x_954);
      }
      let x_956 : i32 = u_xlati41;
      u_xlati41 = (x_956 << bitcast<u32>(2i));
      let x_958 : vec3<f32> = vs_TEXCOORD1;
      let x_961 : i32 = u_xlati41;
      let x_964 : i32 = u_xlati41;
      let x_968 : vec4<f32> = x_427.x_AdditionalLightsWorldToShadow[((x_961 + 1i) / 4i)][((x_964 + 1i) % 4i)];
      u_xlat10 = (vec4<f32>(x_958.y, x_958.y, x_958.y, x_958.y) * x_968);
      let x_970 : i32 = u_xlati41;
      let x_972 : i32 = u_xlati41;
      let x_975 : vec4<f32> = x_427.x_AdditionalLightsWorldToShadow[(x_970 / 4i)][(x_972 % 4i)];
      let x_976 : vec3<f32> = vs_TEXCOORD1;
      let x_979 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_975 * vec4<f32>(x_976.x, x_976.x, x_976.x, x_976.x)) + x_979);
      let x_981 : i32 = u_xlati41;
      let x_984 : i32 = u_xlati41;
      let x_988 : vec4<f32> = x_427.x_AdditionalLightsWorldToShadow[((x_981 + 2i) / 4i)][((x_984 + 2i) % 4i)];
      let x_989 : vec3<f32> = vs_TEXCOORD1;
      let x_992 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_988 * vec4<f32>(x_989.z, x_989.z, x_989.z, x_989.z)) + x_992);
      let x_994 : vec4<f32> = u_xlat10;
      let x_995 : i32 = u_xlati41;
      let x_998 : i32 = u_xlati41;
      let x_1002 : vec4<f32> = x_427.x_AdditionalLightsWorldToShadow[((x_995 + 3i) / 4i)][((x_998 + 3i) % 4i)];
      u_xlat10 = (x_994 + x_1002);
      let x_1004 : vec4<f32> = u_xlat10;
      let x_1006 : vec4<f32> = u_xlat10;
      let x_1008 : vec3<f32> = (vec3<f32>(x_1004.x, x_1004.y, x_1004.z) / vec3<f32>(x_1006.w, x_1006.w, x_1006.w));
      let x_1009 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_1008.x, x_1008.y, x_1008.z, x_1009.w);
      let x_1012 : vec4<f32> = u_xlat10;
      let x_1013 : vec2<f32> = vec2<f32>(x_1012.x, x_1012.y);
      let x_1015 : f32 = u_xlat10.z;
      txVec1 = vec3<f32>(x_1013.x, x_1013.y, x_1015);
      let x_1023 : vec3<f32> = txVec1;
      let x_1025 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1023.xy, x_1023.z);
      u_xlat41 = x_1025;
      let x_1026 : i32 = u_xlati37;
      let x_1028 : f32 = x_427.x_AdditionalShadowParams[x_1026].x;
      u_xlat42 = (1.0f + -(x_1028));
      let x_1031 : f32 = u_xlat41;
      let x_1032 : i32 = u_xlati37;
      let x_1034 : f32 = x_427.x_AdditionalShadowParams[x_1032].x;
      let x_1036 : f32 = u_xlat42;
      u_xlat41 = ((x_1031 * x_1034) + x_1036);
      let x_1039 : f32 = u_xlat10.z;
      u_xlatb42 = (0.0f >= x_1039);
      let x_1042 : f32 = u_xlat10.z;
      u_xlatb10.x = (x_1042 >= 1.0f);
      let x_1045 : bool = u_xlatb42;
      let x_1047 : bool = u_xlatb10.x;
      u_xlatb42 = (x_1045 | x_1047);
      let x_1049 : bool = u_xlatb42;
      let x_1050 : f32 = u_xlat41;
      u_xlat41 = select(x_1050, 1.0f, x_1049);
    } else {
      u_xlat41 = 1.0f;
    }
    let x_1053 : f32 = u_xlat41;
    u_xlat42 = (-(x_1053) + 1.0f);
    let x_1057 : f32 = u_xlat1.x;
    let x_1058 : f32 = u_xlat42;
    let x_1060 : f32 = u_xlat41;
    u_xlat41 = ((x_1057 * x_1058) + x_1060);
    let x_1062 : f32 = u_xlat38;
    let x_1063 : f32 = u_xlat41;
    u_xlat38 = (x_1062 * x_1063);
    let x_1065 : vec3<f32> = u_xlat14;
    let x_1066 : vec3<f32> = u_xlat9;
    u_xlat41 = dot(x_1065, x_1066);
    let x_1068 : f32 = u_xlat41;
    u_xlat41 = clamp(x_1068, 0.0f, 1.0f);
    let x_1070 : f32 = u_xlat38;
    let x_1071 : f32 = u_xlat41;
    u_xlat38 = (x_1070 * x_1071);
    let x_1073 : f32 = u_xlat38;
    let x_1075 : i32 = u_xlati37;
    let x_1077 : vec4<f32> = x_793.x_AdditionalLightsColor[x_1075];
    let x_1079 : vec3<f32> = (vec3<f32>(x_1073, x_1073, x_1073) * vec3<f32>(x_1077.x, x_1077.y, x_1077.z));
    let x_1080 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1079.x, x_1079.y, x_1079.z, x_1080.w);
    let x_1082 : vec3<f32> = u_xlat8;
    let x_1083 : f32 = u_xlat39;
    let x_1086 : vec3<f32> = u_xlat5;
    u_xlat8 = ((x_1082 * vec3<f32>(x_1083, x_1083, x_1083)) + x_1086);
    let x_1088 : vec3<f32> = u_xlat8;
    let x_1089 : vec3<f32> = u_xlat8;
    u_xlat37 = dot(x_1088, x_1089);
    let x_1091 : f32 = u_xlat37;
    u_xlat37 = max(x_1091, 1.17549435e-38f);
    let x_1093 : f32 = u_xlat37;
    u_xlat37 = inverseSqrt(x_1093);
    let x_1095 : f32 = u_xlat37;
    let x_1097 : vec3<f32> = u_xlat8;
    u_xlat8 = (vec3<f32>(x_1095, x_1095, x_1095) * x_1097);
    let x_1099 : vec3<f32> = u_xlat14;
    let x_1100 : vec3<f32> = u_xlat8;
    u_xlat37 = dot(x_1099, x_1100);
    let x_1102 : f32 = u_xlat37;
    u_xlat37 = clamp(x_1102, 0.0f, 1.0f);
    let x_1104 : vec3<f32> = u_xlat9;
    let x_1105 : vec3<f32> = u_xlat8;
    u_xlat38 = dot(x_1104, x_1105);
    let x_1107 : f32 = u_xlat38;
    u_xlat38 = clamp(x_1107, 0.0f, 1.0f);
    let x_1109 : f32 = u_xlat37;
    let x_1110 : f32 = u_xlat37;
    u_xlat37 = (x_1109 * x_1110);
    let x_1112 : f32 = u_xlat37;
    let x_1114 : f32 = u_xlat7.x;
    u_xlat37 = ((x_1112 * x_1114) + 1.00001001358032226562f);
    let x_1117 : f32 = u_xlat38;
    let x_1118 : f32 = u_xlat38;
    u_xlat38 = (x_1117 * x_1118);
    let x_1120 : f32 = u_xlat37;
    let x_1121 : f32 = u_xlat37;
    u_xlat37 = (x_1120 * x_1121);
    let x_1123 : f32 = u_xlat38;
    u_xlat38 = max(x_1123, 0.10000000149011611938f);
    let x_1125 : f32 = u_xlat37;
    let x_1126 : f32 = u_xlat38;
    u_xlat37 = (x_1125 * x_1126);
    let x_1128 : f32 = u_xlat34;
    let x_1129 : f32 = u_xlat37;
    u_xlat37 = (x_1128 * x_1129);
    let x_1131 : f32 = u_xlat12;
    let x_1132 : f32 = u_xlat37;
    u_xlat37 = (x_1131 / x_1132);
    let x_1134 : vec4<f32> = u_xlat0;
    let x_1136 : f32 = u_xlat37;
    let x_1139 : vec3<f32> = u_xlat13;
    u_xlat8 = ((vec3<f32>(x_1134.x, x_1134.y, x_1134.z) * vec3<f32>(x_1136, x_1136, x_1136)) + x_1139);
    let x_1141 : vec3<f32> = u_xlat8;
    let x_1142 : vec4<f32> = u_xlat10;
    let x_1145 : vec3<f32> = u_xlat18;
    u_xlat18 = ((x_1141 * vec3<f32>(x_1142.x, x_1142.y, x_1142.z)) + x_1145);

    continuing {
      let x_1147 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1147 + bitcast<u32>(1i));
    }
  }
  let x_1149 : vec4<f32> = u_xlat4;
  let x_1151 : vec3<f32> = u_xlat3;
  let x_1154 : vec3<f32> = u_xlat6;
  let x_1155 : vec3<f32> = ((vec3<f32>(x_1149.x, x_1149.y, x_1149.z) * vec3<f32>(x_1151.x, x_1151.x, x_1151.x)) + x_1154);
  let x_1156 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1155.x, x_1155.y, x_1155.z, x_1156.w);
  let x_1160 : vec3<f32> = u_xlat18;
  let x_1161 : vec4<f32> = u_xlat0;
  let x_1163 : vec3<f32> = (x_1160 + vec3<f32>(x_1161.x, x_1161.y, x_1161.z));
  let x_1164 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1163.x, x_1163.y, x_1163.z, x_1164.w);
  let x_1168 : f32 = x_54.x_Surface;
  u_xlatb0 = (x_1168 == 1.0f);
  let x_1170 : bool = u_xlatb0;
  if (x_1170) {
    let x_1175 : f32 = u_xlat2.x;
    x_1171 = x_1175;
  } else {
    x_1171 = 1.0f;
  }
  let x_1177 : f32 = x_1171;
  SV_Target0.w = x_1177;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(5) vs_TEXCOORD8_param : vec2<f32>, @location(4) vs_TEXCOORD6_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD8 = vs_TEXCOORD8_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


