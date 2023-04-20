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

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(3) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(9) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_45 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_58 : UnityPerMaterial;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat36 : f32;

@group(0) @binding(6) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_PointRepeat : sampler;

var<private> u_xlatb2 : bool;

@group(1) @binding(2) var<uniform> x_96 : UnityPerDraw;

var<private> u_xlatb36 : bool;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat38 : f32;

var<private> u_xlat3 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> u_xlat4 : vec4<f32>;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(8) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD8 : vec2<f32>;

var<private> u_xlat5 : vec3<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat13 : vec3<f32>;

var<private> u_xlat39 : f32;

var<private> u_xlat40 : f32;

var<private> vs_TEXCOORD6 : vec4<f32>;

var<private> u_xlat17 : vec3<f32>;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(11) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat29 : f32;

@group(1) @binding(4) var<uniform> x_354 : LightShadows;

var<private> u_xlatb29 : bool;

var<private> u_xlatb41 : bool;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat41 : f32;

var<private> u_xlat42 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

var<private> u_xlat7 : vec2<f32>;

var<private> u_xlat19 : vec3<f32>;

var<private> u_xlatu36 : u32;

var<private> u_xlatu42 : u32;

var<private> u_xlati8 : i32;

var<private> u_xlati42 : i32;

var<private> u_xlat8 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_719 : AdditionalLights;

var<private> u_xlat44 : f32;

var<private> u_xlat9 : f32;

var<private> u_xlat21 : vec3<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlati10 : i32;

var<private> u_xlatb22 : vec3<bool>;

var<private> u_xlatb11 : vec3<bool>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat34 : f32;

var<private> u_xlat22 : f32;

@group(0) @binding(5) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb34 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatb0 : bool;

var<private> u_xlatu39 : u32;

var<private> u_xlatb42 : bool;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var x_103 : f32;
  var x_155 : f32;
  var x_167 : f32;
  var x_179 : f32;
  var txVec0 : vec3<f32>;
  var x_380 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_866 : f32;
  var x_877 : f32;
  var txVec1 : vec3<f32>;
  var x_994 : f32;
  var x_1139 : f32;
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
  let x_54 : vec4<f32> = u_xlat0;
  let x_62 : vec4<f32> = x_58.x_BaseColor;
  u_xlat1 = (vec4<f32>(x_54.w, x_54.x, x_54.y, x_54.z) * vec4<f32>(x_62.w, x_62.x, x_62.y, x_62.z));
  let x_67 : vec4<f32> = hlslcc_FragCoord;
  let x_71 : f32 = x_45.x_DitheringTextureInvSize;
  let x_73 : vec2<f32> = (vec2<f32>(x_67.x, x_67.y) * vec2<f32>(x_71, x_71));
  let x_74 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_73.x, x_73.y, x_74.z);
  let x_83 : vec3<f32> = u_xlat2;
  let x_86 : f32 = x_45.x_GlobalMipBias.x;
  let x_87 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_PointRepeat, vec2<f32>(x_83.x, x_83.y), x_86);
  u_xlat36 = x_87.w;
  let x_98 : f32 = x_96.unity_LODFade.x;
  u_xlatb2 = (x_98 >= 0.0f);
  let x_101 : bool = u_xlatb2;
  if (x_101) {
    let x_106 : f32 = u_xlat36;
    x_103 = abs(x_106);
  } else {
    let x_109 : f32 = u_xlat36;
    x_103 = -(abs(x_109));
  }
  let x_112 : f32 = x_103;
  u_xlat36 = x_112;
  let x_113 : f32 = u_xlat36;
  let x_116 : f32 = x_96.unity_LODFade.x;
  u_xlat36 = (-(x_113) + x_116);
  let x_119 : f32 = u_xlat36;
  u_xlatb36 = (x_119 < 0.0f);
  let x_121 : bool = u_xlatb36;
  if (((select(0i, 1i, x_121) * -1i) != 0i)) {
    discard;
  }
  let x_132 : f32 = x_45.unity_OrthoParams.w;
  u_xlatb36 = (x_132 == 0.0f);
  let x_136 : vec3<f32> = vs_TEXCOORD1;
  let x_141 : vec3<f32> = x_45.x_WorldSpaceCameraPos;
  u_xlat2 = (-(x_136) + x_141);
  let x_144 : vec3<f32> = u_xlat2;
  let x_145 : vec3<f32> = u_xlat2;
  u_xlat38 = dot(x_144, x_145);
  let x_147 : f32 = u_xlat38;
  u_xlat38 = inverseSqrt(x_147);
  let x_149 : f32 = u_xlat38;
  let x_151 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_149, x_149, x_149) * x_151);
  let x_154 : bool = u_xlatb36;
  if (x_154) {
    let x_159 : f32 = u_xlat2.x;
    x_155 = x_159;
  } else {
    let x_163 : f32 = x_45.unity_MatrixV[0i].z;
    x_155 = x_163;
  }
  let x_164 : f32 = x_155;
  u_xlat3.x = x_164;
  let x_166 : bool = u_xlatb36;
  if (x_166) {
    let x_172 : f32 = u_xlat2.y;
    x_167 = x_172;
  } else {
    let x_175 : f32 = x_45.unity_MatrixV[1i].z;
    x_167 = x_175;
  }
  let x_176 : f32 = x_167;
  u_xlat3.y = x_176;
  let x_178 : bool = u_xlatb36;
  if (x_178) {
    let x_183 : f32 = u_xlat2.z;
    x_179 = x_183;
  } else {
    let x_186 : f32 = x_45.unity_MatrixV[2i].z;
    x_179 = x_186;
  }
  let x_187 : f32 = x_179;
  u_xlat3.z = x_187;
  let x_190 : vec3<f32> = vs_TEXCOORD2;
  let x_191 : vec3<f32> = vs_TEXCOORD2;
  u_xlat36 = dot(x_190, x_191);
  let x_193 : f32 = u_xlat36;
  u_xlat36 = inverseSqrt(x_193);
  let x_195 : f32 = u_xlat36;
  let x_197 : vec3<f32> = vs_TEXCOORD2;
  u_xlat2 = (vec3<f32>(x_195, x_195, x_195) * x_197);
  let x_206 : vec2<f32> = vs_TEXCOORD8;
  let x_208 : f32 = x_45.x_GlobalMipBias.x;
  let x_209 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_206, x_208);
  u_xlat4 = x_209;
  let x_215 : vec2<f32> = vs_TEXCOORD8;
  let x_217 : f32 = x_45.x_GlobalMipBias.x;
  let x_218 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_215, x_217);
  u_xlat5 = vec3<f32>(x_218.x, x_218.y, x_218.z);
  let x_220 : vec4<f32> = u_xlat4;
  let x_224 : vec3<f32> = (vec3<f32>(x_220.x, x_220.y, x_220.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_225 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_224.x, x_224.y, x_224.z, x_225.w);
  let x_227 : vec3<f32> = u_xlat2;
  let x_228 : vec4<f32> = u_xlat4;
  u_xlat36 = dot(x_227, vec3<f32>(x_228.x, x_228.y, x_228.z));
  let x_231 : f32 = u_xlat36;
  u_xlat36 = (x_231 + 0.5f);
  let x_234 : f32 = u_xlat36;
  let x_236 : vec3<f32> = u_xlat5;
  let x_237 : vec3<f32> = (vec3<f32>(x_234, x_234, x_234) * x_236);
  let x_238 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_237.x, x_237.y, x_237.z, x_238.w);
  let x_241 : f32 = u_xlat4.w;
  u_xlat36 = max(x_241, 0.00009999999747378752f);
  let x_244 : vec4<f32> = u_xlat4;
  let x_246 : f32 = u_xlat36;
  let x_248 : vec3<f32> = (vec3<f32>(x_244.x, x_244.y, x_244.z) / vec3<f32>(x_246, x_246, x_246));
  let x_249 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_248.x, x_248.y, x_248.z, x_249.w);
  let x_252 : f32 = x_58.x_Metallic;
  u_xlat36 = ((-(x_252) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_257 : f32 = u_xlat36;
  let x_260 : f32 = x_58.x_Smoothness;
  u_xlat38 = (-(x_257) + x_260);
  let x_263 : f32 = u_xlat36;
  let x_265 : vec4<f32> = u_xlat1;
  u_xlat13 = (vec3<f32>(x_263, x_263, x_263) * vec3<f32>(x_265.y, x_265.z, x_265.w));
  let x_268 : vec4<f32> = u_xlat0;
  let x_271 : vec4<f32> = x_58.x_BaseColor;
  let x_276 : vec3<f32> = ((vec3<f32>(x_268.x, x_268.y, x_268.z) * vec3<f32>(x_271.x, x_271.y, x_271.z)) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_277 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_276.x, x_276.y, x_276.z, x_277.w);
  let x_280 : f32 = x_58.x_Metallic;
  let x_282 : f32 = x_58.x_Metallic;
  let x_284 : f32 = x_58.x_Metallic;
  let x_285 : vec3<f32> = vec3<f32>(x_280, x_282, x_284);
  let x_290 : vec4<f32> = u_xlat0;
  let x_295 : vec3<f32> = ((vec3<f32>(x_285.x, x_285.y, x_285.z) * vec3<f32>(x_290.x, x_290.y, x_290.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_296 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_295.x, x_295.y, x_295.z, x_296.w);
  let x_299 : f32 = x_58.x_Smoothness;
  u_xlat36 = (-(x_299) + 1.0f);
  let x_303 : f32 = u_xlat36;
  let x_304 : f32 = u_xlat36;
  u_xlat39 = (x_303 * x_304);
  let x_306 : f32 = u_xlat39;
  u_xlat39 = max(x_306, 0.0078125f);
  let x_310 : f32 = u_xlat39;
  let x_311 : f32 = u_xlat39;
  u_xlat40 = (x_310 * x_311);
  let x_313 : f32 = u_xlat38;
  u_xlat38 = (x_313 + 1.0f);
  let x_315 : f32 = u_xlat38;
  u_xlat38 = clamp(x_315, 0.0f, 1.0f);
  let x_317 : f32 = u_xlat39;
  u_xlat5.x = ((x_317 * 4.0f) + 2.0f);
  let x_326 : vec4<f32> = vs_TEXCOORD6;
  let x_327 : vec2<f32> = vec2<f32>(x_326.x, x_326.y);
  let x_329 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_327.x, x_327.y, x_329);
  let x_342 : vec3<f32> = txVec0;
  let x_344 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_342.xy, x_342.z);
  u_xlat17.x = x_344;
  let x_357 : f32 = x_354.x_MainLightShadowParams.x;
  u_xlat29 = (-(x_357) + 1.0f);
  let x_361 : f32 = u_xlat17.x;
  let x_363 : f32 = x_354.x_MainLightShadowParams.x;
  let x_365 : f32 = u_xlat29;
  u_xlat17.x = ((x_361 * x_363) + x_365);
  let x_370 : f32 = vs_TEXCOORD6.z;
  u_xlatb29 = (0.0f >= x_370);
  let x_374 : f32 = vs_TEXCOORD6.z;
  u_xlatb41 = (x_374 >= 1.0f);
  let x_376 : bool = u_xlatb41;
  let x_377 : bool = u_xlatb29;
  u_xlatb29 = (x_376 | x_377);
  let x_379 : bool = u_xlatb29;
  if (x_379) {
    x_380 = 1.0f;
  } else {
    let x_385 : f32 = u_xlat17.x;
    x_380 = x_385;
  }
  let x_386 : f32 = x_380;
  u_xlat17.x = x_386;
  let x_389 : vec3<f32> = vs_TEXCOORD1;
  let x_391 : vec3<f32> = x_45.x_WorldSpaceCameraPos;
  let x_393 : vec3<f32> = (x_389 + -(x_391));
  let x_394 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_393.x, x_393.y, x_393.z, x_394.w);
  let x_396 : vec4<f32> = u_xlat6;
  let x_398 : vec4<f32> = u_xlat6;
  u_xlat29 = dot(vec3<f32>(x_396.x, x_396.y, x_396.z), vec3<f32>(x_398.x, x_398.y, x_398.z));
  let x_402 : f32 = u_xlat29;
  let x_404 : f32 = x_354.x_MainLightShadowParams.z;
  let x_407 : f32 = x_354.x_MainLightShadowParams.w;
  u_xlat41 = ((x_402 * x_404) + x_407);
  let x_409 : f32 = u_xlat41;
  u_xlat41 = clamp(x_409, 0.0f, 1.0f);
  let x_412 : f32 = u_xlat17.x;
  u_xlat6.x = (-(x_412) + 1.0f);
  let x_416 : f32 = u_xlat41;
  let x_418 : f32 = u_xlat6.x;
  let x_421 : f32 = u_xlat17.x;
  u_xlat17.x = ((x_416 * x_418) + x_421);
  let x_424 : vec3<f32> = u_xlat3;
  let x_426 : vec3<f32> = u_xlat2;
  u_xlat41 = dot(-(x_424), x_426);
  let x_428 : f32 = u_xlat41;
  let x_429 : f32 = u_xlat41;
  u_xlat41 = (x_428 + x_429);
  let x_431 : vec3<f32> = u_xlat2;
  let x_432 : f32 = u_xlat41;
  let x_436 : vec3<f32> = u_xlat3;
  let x_438 : vec3<f32> = ((x_431 * -(vec3<f32>(x_432, x_432, x_432))) + -(x_436));
  let x_439 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_438.x, x_438.y, x_438.z, x_439.w);
  let x_441 : vec3<f32> = u_xlat2;
  let x_442 : vec3<f32> = u_xlat3;
  u_xlat41 = dot(x_441, x_442);
  let x_444 : f32 = u_xlat41;
  u_xlat41 = clamp(x_444, 0.0f, 1.0f);
  let x_446 : f32 = u_xlat41;
  u_xlat41 = (-(x_446) + 1.0f);
  let x_449 : f32 = u_xlat41;
  let x_450 : f32 = u_xlat41;
  u_xlat41 = (x_449 * x_450);
  let x_452 : f32 = u_xlat41;
  let x_453 : f32 = u_xlat41;
  u_xlat41 = (x_452 * x_453);
  let x_456 : f32 = u_xlat36;
  u_xlat42 = ((-(x_456) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_462 : f32 = u_xlat36;
  let x_463 : f32 = u_xlat42;
  u_xlat36 = (x_462 * x_463);
  let x_465 : f32 = u_xlat36;
  u_xlat36 = (x_465 * 6.0f);
  let x_476 : vec4<f32> = u_xlat6;
  let x_478 : f32 = u_xlat36;
  let x_479 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_476.x, x_476.y, x_476.z), x_478);
  u_xlat6 = x_479;
  let x_481 : f32 = u_xlat6.w;
  u_xlat36 = (x_481 + -1.0f);
  let x_485 : f32 = x_96.unity_SpecCube0_HDR.w;
  let x_486 : f32 = u_xlat36;
  u_xlat36 = ((x_485 * x_486) + 1.0f);
  let x_489 : f32 = u_xlat36;
  u_xlat36 = max(x_489, 0.0f);
  let x_491 : f32 = u_xlat36;
  u_xlat36 = log2(x_491);
  let x_493 : f32 = u_xlat36;
  let x_495 : f32 = x_96.unity_SpecCube0_HDR.y;
  u_xlat36 = (x_493 * x_495);
  let x_497 : f32 = u_xlat36;
  u_xlat36 = exp2(x_497);
  let x_499 : f32 = u_xlat36;
  let x_501 : f32 = x_96.unity_SpecCube0_HDR.x;
  u_xlat36 = (x_499 * x_501);
  let x_503 : vec4<f32> = u_xlat6;
  let x_505 : f32 = u_xlat36;
  let x_507 : vec3<f32> = (vec3<f32>(x_503.x, x_503.y, x_503.z) * vec3<f32>(x_505, x_505, x_505));
  let x_508 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_507.x, x_507.y, x_507.z, x_508.w);
  let x_512 : f32 = u_xlat39;
  let x_514 : f32 = u_xlat39;
  u_xlat7 = ((vec2<f32>(x_512, x_512) * vec2<f32>(x_514, x_514)) + vec2<f32>(-1.0f, 1.0f));
  let x_520 : f32 = u_xlat7.y;
  u_xlat36 = (1.0f / x_520);
  let x_523 : vec4<f32> = u_xlat0;
  let x_526 : f32 = u_xlat38;
  u_xlat19 = (-(vec3<f32>(x_523.x, x_523.y, x_523.z)) + vec3<f32>(x_526, x_526, x_526));
  let x_529 : f32 = u_xlat41;
  let x_531 : vec3<f32> = u_xlat19;
  let x_533 : vec4<f32> = u_xlat0;
  u_xlat19 = ((vec3<f32>(x_529, x_529, x_529) * x_531) + vec3<f32>(x_533.x, x_533.y, x_533.z));
  let x_536 : f32 = u_xlat36;
  let x_538 : vec3<f32> = u_xlat19;
  u_xlat19 = (vec3<f32>(x_536, x_536, x_536) * x_538);
  let x_540 : vec4<f32> = u_xlat6;
  let x_542 : vec3<f32> = u_xlat19;
  let x_543 : vec3<f32> = (vec3<f32>(x_540.x, x_540.y, x_540.z) * x_542);
  let x_544 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_543.x, x_543.y, x_543.z, x_544.w);
  let x_546 : vec4<f32> = u_xlat4;
  let x_548 : vec3<f32> = u_xlat13;
  let x_550 : vec4<f32> = u_xlat6;
  let x_552 : vec3<f32> = ((vec3<f32>(x_546.x, x_546.y, x_546.z) * x_548) + vec3<f32>(x_550.x, x_550.y, x_550.z));
  let x_553 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_552.x, x_552.y, x_552.z, x_553.w);
  let x_556 : f32 = u_xlat17.x;
  let x_558 : f32 = x_96.unity_LightData.z;
  u_xlat36 = (x_556 * x_558);
  let x_560 : vec3<f32> = u_xlat2;
  let x_562 : vec4<f32> = x_45.x_MainLightPosition;
  u_xlat38 = dot(x_560, vec3<f32>(x_562.x, x_562.y, x_562.z));
  let x_565 : f32 = u_xlat38;
  u_xlat38 = clamp(x_565, 0.0f, 1.0f);
  let x_567 : f32 = u_xlat36;
  let x_568 : f32 = u_xlat38;
  u_xlat36 = (x_567 * x_568);
  let x_570 : f32 = u_xlat36;
  let x_573 : vec4<f32> = x_45.x_MainLightColor;
  let x_575 : vec3<f32> = (vec3<f32>(x_570, x_570, x_570) * vec3<f32>(x_573.x, x_573.y, x_573.z));
  let x_576 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_575.x, x_575.y, x_575.z, x_576.w);
  let x_578 : vec3<f32> = u_xlat3;
  let x_580 : vec4<f32> = x_45.x_MainLightPosition;
  u_xlat19 = (x_578 + vec3<f32>(x_580.x, x_580.y, x_580.z));
  let x_583 : vec3<f32> = u_xlat19;
  let x_584 : vec3<f32> = u_xlat19;
  u_xlat36 = dot(x_583, x_584);
  let x_586 : f32 = u_xlat36;
  u_xlat36 = max(x_586, 1.17549435e-38f);
  let x_589 : f32 = u_xlat36;
  u_xlat36 = inverseSqrt(x_589);
  let x_591 : f32 = u_xlat36;
  let x_593 : vec3<f32> = u_xlat19;
  u_xlat19 = (vec3<f32>(x_591, x_591, x_591) * x_593);
  let x_595 : vec3<f32> = u_xlat2;
  let x_596 : vec3<f32> = u_xlat19;
  u_xlat36 = dot(x_595, x_596);
  let x_598 : f32 = u_xlat36;
  u_xlat36 = clamp(x_598, 0.0f, 1.0f);
  let x_601 : vec4<f32> = x_45.x_MainLightPosition;
  let x_603 : vec3<f32> = u_xlat19;
  u_xlat38 = dot(vec3<f32>(x_601.x, x_601.y, x_601.z), x_603);
  let x_605 : f32 = u_xlat38;
  u_xlat38 = clamp(x_605, 0.0f, 1.0f);
  let x_607 : f32 = u_xlat36;
  let x_608 : f32 = u_xlat36;
  u_xlat36 = (x_607 * x_608);
  let x_610 : f32 = u_xlat36;
  let x_612 : f32 = u_xlat7.x;
  u_xlat36 = ((x_610 * x_612) + 1.00001001358032226562f);
  let x_616 : f32 = u_xlat38;
  let x_617 : f32 = u_xlat38;
  u_xlat38 = (x_616 * x_617);
  let x_619 : f32 = u_xlat36;
  let x_620 : f32 = u_xlat36;
  u_xlat36 = (x_619 * x_620);
  let x_622 : f32 = u_xlat38;
  u_xlat38 = max(x_622, 0.10000000149011611938f);
  let x_625 : f32 = u_xlat36;
  let x_626 : f32 = u_xlat38;
  u_xlat36 = (x_625 * x_626);
  let x_629 : f32 = u_xlat5.x;
  let x_630 : f32 = u_xlat36;
  u_xlat36 = (x_629 * x_630);
  let x_632 : f32 = u_xlat40;
  let x_633 : f32 = u_xlat36;
  u_xlat36 = (x_632 / x_633);
  let x_635 : vec4<f32> = u_xlat0;
  let x_637 : f32 = u_xlat36;
  let x_640 : vec3<f32> = u_xlat13;
  u_xlat19 = ((vec3<f32>(x_635.x, x_635.y, x_635.z) * vec3<f32>(x_637, x_637, x_637)) + x_640);
  let x_644 : f32 = x_45.x_AdditionalLightsCount.x;
  let x_646 : f32 = x_96.unity_LightData.y;
  u_xlat36 = min(x_644, x_646);
  let x_650 : f32 = u_xlat36;
  u_xlatu36 = bitcast<u32>(i32(x_650));
  let x_653 : f32 = u_xlat29;
  let x_656 : f32 = x_354.x_AdditionalShadowFadeParams.x;
  let x_659 : f32 = x_354.x_AdditionalShadowFadeParams.y;
  u_xlat38 = ((x_653 * x_656) + x_659);
  let x_661 : f32 = u_xlat38;
  u_xlat38 = clamp(x_661, 0.0f, 1.0f);
  u_xlat17.x = 0.0f;
  u_xlat17.y = 0.0f;
  u_xlat17.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_673 : u32 = u_xlatu_loop_1;
    let x_674 : u32 = u_xlatu36;
    if ((x_673 < x_674)) {
    } else {
      break;
    }
    let x_677 : u32 = u_xlatu_loop_1;
    u_xlatu42 = (x_677 >> 2u);
    let x_681 : u32 = u_xlatu_loop_1;
    u_xlati8 = bitcast<i32>((x_681 & 3u));
    let x_684 : u32 = u_xlatu42;
    let x_687 : vec4<f32> = x_96.unity_LightIndices[bitcast<i32>(x_684)];
    let x_697 : i32 = u_xlati8;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_702 : vec4<u32> = indexable[x_697];
    u_xlat42 = dot(x_687, bitcast<vec4<f32>>(x_702));
    let x_706 : f32 = u_xlat42;
    u_xlati42 = i32(x_706);
    let x_709 : vec3<f32> = vs_TEXCOORD1;
    let x_720 : i32 = u_xlati42;
    let x_722 : vec4<f32> = x_719.x_AdditionalLightsPosition[x_720];
    let x_725 : i32 = u_xlati42;
    let x_727 : vec4<f32> = x_719.x_AdditionalLightsPosition[x_725];
    u_xlat8 = ((-(x_709) * vec3<f32>(x_722.w, x_722.w, x_722.w)) + vec3<f32>(x_727.x, x_727.y, x_727.z));
    let x_731 : vec3<f32> = u_xlat8;
    let x_732 : vec3<f32> = u_xlat8;
    u_xlat44 = dot(x_731, x_732);
    let x_734 : f32 = u_xlat44;
    u_xlat44 = max(x_734, 0.00006103515625f);
    let x_738 : f32 = u_xlat44;
    u_xlat9 = inverseSqrt(x_738);
    let x_741 : vec3<f32> = u_xlat8;
    let x_742 : f32 = u_xlat9;
    u_xlat21 = (x_741 * vec3<f32>(x_742, x_742, x_742));
    let x_746 : f32 = u_xlat44;
    u_xlat10.x = (1.0f / x_746);
    let x_749 : f32 = u_xlat44;
    let x_750 : i32 = u_xlati42;
    let x_752 : f32 = x_719.x_AdditionalLightsAttenuation[x_750].x;
    u_xlat44 = (x_749 * x_752);
    let x_754 : f32 = u_xlat44;
    let x_756 : f32 = u_xlat44;
    u_xlat44 = ((-(x_754) * x_756) + 1.0f);
    let x_759 : f32 = u_xlat44;
    u_xlat44 = max(x_759, 0.0f);
    let x_761 : f32 = u_xlat44;
    let x_762 : f32 = u_xlat44;
    u_xlat44 = (x_761 * x_762);
    let x_764 : f32 = u_xlat44;
    let x_766 : f32 = u_xlat10.x;
    u_xlat44 = (x_764 * x_766);
    let x_768 : i32 = u_xlati42;
    let x_770 : vec4<f32> = x_719.x_AdditionalLightsSpotDir[x_768];
    let x_772 : vec3<f32> = u_xlat21;
    u_xlat10.x = dot(vec3<f32>(x_770.x, x_770.y, x_770.z), x_772);
    let x_776 : f32 = u_xlat10.x;
    let x_777 : i32 = u_xlati42;
    let x_779 : f32 = x_719.x_AdditionalLightsAttenuation[x_777].z;
    let x_781 : i32 = u_xlati42;
    let x_783 : f32 = x_719.x_AdditionalLightsAttenuation[x_781].w;
    u_xlat10.x = ((x_776 * x_779) + x_783);
    let x_787 : f32 = u_xlat10.x;
    u_xlat10.x = clamp(x_787, 0.0f, 1.0f);
    let x_791 : f32 = u_xlat10.x;
    let x_793 : f32 = u_xlat10.x;
    u_xlat10.x = (x_791 * x_793);
    let x_796 : f32 = u_xlat44;
    let x_798 : f32 = u_xlat10.x;
    u_xlat44 = (x_796 * x_798);
    let x_802 : i32 = u_xlati42;
    let x_804 : f32 = x_354.x_AdditionalShadowParams[x_802].w;
    u_xlati10 = i32(x_804);
    let x_809 : i32 = u_xlati10;
    u_xlatb22.x = (x_809 >= 0i);
    let x_813 : bool = u_xlatb22.x;
    if (x_813) {
      let x_817 : i32 = u_xlati42;
      let x_819 : f32 = x_354.x_AdditionalShadowParams[x_817].z;
      u_xlatb22.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_819, x_819, x_819, x_819))));
      let x_826 : bool = u_xlatb22.x;
      if (x_826) {
        let x_829 : vec3<f32> = u_xlat21;
        let x_832 : vec3<f32> = u_xlat21;
        let x_835 : vec4<bool> = (abs(vec4<f32>(x_829.z, x_829.z, x_829.y, x_829.y)) >= abs(vec4<f32>(x_832.x, x_832.y, x_832.x, x_832.x)));
        u_xlatb22 = vec3<bool>(x_835.x, x_835.y, x_835.z);
        let x_838 : bool = u_xlatb22.y;
        let x_840 : bool = u_xlatb22.x;
        u_xlatb22.x = (x_838 & x_840);
        let x_844 : vec3<f32> = u_xlat21;
        let x_847 : vec4<bool> = (-(vec4<f32>(x_844.z, x_844.y, x_844.x, x_844.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb11 = vec3<bool>(x_847.x, x_847.y, x_847.z);
        let x_851 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_851);
        let x_856 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_856);
        let x_862 : bool = u_xlatb11.z;
        u_xlat34 = select(0.0f, 1.0f, x_862);
        let x_865 : bool = u_xlatb22.z;
        if (x_865) {
          let x_870 : f32 = u_xlat11.y;
          x_866 = x_870;
        } else {
          let x_872 : f32 = u_xlat34;
          x_866 = x_872;
        }
        let x_873 : f32 = x_866;
        u_xlat34 = x_873;
        let x_876 : bool = u_xlatb22.x;
        if (x_876) {
          let x_881 : f32 = u_xlat11.x;
          x_877 = x_881;
        } else {
          let x_883 : f32 = u_xlat34;
          x_877 = x_883;
        }
        let x_884 : f32 = x_877;
        u_xlat22 = x_884;
        let x_885 : i32 = u_xlati42;
        let x_887 : f32 = x_354.x_AdditionalShadowParams[x_885].w;
        u_xlat34 = trunc(x_887);
        let x_889 : f32 = u_xlat22;
        let x_890 : f32 = u_xlat34;
        u_xlat22 = (x_889 + x_890);
        let x_892 : f32 = u_xlat22;
        u_xlati10 = i32(x_892);
      }
      let x_894 : i32 = u_xlati10;
      u_xlati10 = (x_894 << bitcast<u32>(2i));
      let x_896 : vec3<f32> = vs_TEXCOORD1;
      let x_899 : i32 = u_xlati10;
      let x_902 : i32 = u_xlati10;
      let x_906 : vec4<f32> = x_354.x_AdditionalLightsWorldToShadow[((x_899 + 1i) / 4i)][((x_902 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_896.y, x_896.y, x_896.y, x_896.y) * x_906);
      let x_908 : i32 = u_xlati10;
      let x_910 : i32 = u_xlati10;
      let x_913 : vec4<f32> = x_354.x_AdditionalLightsWorldToShadow[(x_908 / 4i)][(x_910 % 4i)];
      let x_914 : vec3<f32> = vs_TEXCOORD1;
      let x_917 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_913 * vec4<f32>(x_914.x, x_914.x, x_914.x, x_914.x)) + x_917);
      let x_919 : i32 = u_xlati10;
      let x_922 : i32 = u_xlati10;
      let x_926 : vec4<f32> = x_354.x_AdditionalLightsWorldToShadow[((x_919 + 2i) / 4i)][((x_922 + 2i) % 4i)];
      let x_927 : vec3<f32> = vs_TEXCOORD1;
      let x_930 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_926 * vec4<f32>(x_927.z, x_927.z, x_927.z, x_927.z)) + x_930);
      let x_932 : vec4<f32> = u_xlat11;
      let x_933 : i32 = u_xlati10;
      let x_936 : i32 = u_xlati10;
      let x_940 : vec4<f32> = x_354.x_AdditionalLightsWorldToShadow[((x_933 + 3i) / 4i)][((x_936 + 3i) % 4i)];
      u_xlat10 = (x_932 + x_940);
      let x_942 : vec4<f32> = u_xlat10;
      let x_944 : vec4<f32> = u_xlat10;
      let x_946 : vec3<f32> = (vec3<f32>(x_942.x, x_942.y, x_942.z) / vec3<f32>(x_944.w, x_944.w, x_944.w));
      let x_947 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_946.x, x_946.y, x_946.z, x_947.w);
      let x_950 : vec4<f32> = u_xlat10;
      let x_951 : vec2<f32> = vec2<f32>(x_950.x, x_950.y);
      let x_953 : f32 = u_xlat10.z;
      txVec1 = vec3<f32>(x_951.x, x_951.y, x_953);
      let x_961 : vec3<f32> = txVec1;
      let x_963 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_961.xy, x_961.z);
      u_xlat10.x = x_963;
      let x_965 : i32 = u_xlati42;
      let x_967 : f32 = x_354.x_AdditionalShadowParams[x_965].x;
      u_xlat22 = (1.0f + -(x_967));
      let x_971 : f32 = u_xlat10.x;
      let x_972 : i32 = u_xlati42;
      let x_974 : f32 = x_354.x_AdditionalShadowParams[x_972].x;
      let x_976 : f32 = u_xlat22;
      u_xlat10.x = ((x_971 * x_974) + x_976);
      let x_980 : f32 = u_xlat10.z;
      u_xlatb22.x = (0.0f >= x_980);
      let x_985 : f32 = u_xlat10.z;
      u_xlatb34 = (x_985 >= 1.0f);
      let x_987 : bool = u_xlatb34;
      let x_989 : bool = u_xlatb22.x;
      u_xlatb22.x = (x_987 | x_989);
      let x_993 : bool = u_xlatb22.x;
      if (x_993) {
        x_994 = 1.0f;
      } else {
        let x_999 : f32 = u_xlat10.x;
        x_994 = x_999;
      }
      let x_1000 : f32 = x_994;
      u_xlat10.x = x_1000;
    } else {
      u_xlat10.x = 1.0f;
    }
    let x_1005 : f32 = u_xlat10.x;
    u_xlat22 = (-(x_1005) + 1.0f);
    let x_1008 : f32 = u_xlat38;
    let x_1009 : f32 = u_xlat22;
    let x_1012 : f32 = u_xlat10.x;
    u_xlat10.x = ((x_1008 * x_1009) + x_1012);
    let x_1015 : f32 = u_xlat44;
    let x_1017 : f32 = u_xlat10.x;
    u_xlat44 = (x_1015 * x_1017);
    let x_1019 : vec3<f32> = u_xlat2;
    let x_1020 : vec3<f32> = u_xlat21;
    u_xlat10.x = dot(x_1019, x_1020);
    let x_1024 : f32 = u_xlat10.x;
    u_xlat10.x = clamp(x_1024, 0.0f, 1.0f);
    let x_1027 : f32 = u_xlat44;
    let x_1029 : f32 = u_xlat10.x;
    u_xlat44 = (x_1027 * x_1029);
    let x_1031 : f32 = u_xlat44;
    let x_1033 : i32 = u_xlati42;
    let x_1035 : vec4<f32> = x_719.x_AdditionalLightsColor[x_1033];
    let x_1037 : vec3<f32> = (vec3<f32>(x_1031, x_1031, x_1031) * vec3<f32>(x_1035.x, x_1035.y, x_1035.z));
    let x_1038 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1037.x, x_1037.y, x_1037.z, x_1038.w);
    let x_1040 : vec3<f32> = u_xlat8;
    let x_1041 : f32 = u_xlat9;
    let x_1044 : vec3<f32> = u_xlat3;
    u_xlat8 = ((x_1040 * vec3<f32>(x_1041, x_1041, x_1041)) + x_1044);
    let x_1046 : vec3<f32> = u_xlat8;
    let x_1047 : vec3<f32> = u_xlat8;
    u_xlat42 = dot(x_1046, x_1047);
    let x_1049 : f32 = u_xlat42;
    u_xlat42 = max(x_1049, 1.17549435e-38f);
    let x_1051 : f32 = u_xlat42;
    u_xlat42 = inverseSqrt(x_1051);
    let x_1053 : f32 = u_xlat42;
    let x_1055 : vec3<f32> = u_xlat8;
    u_xlat8 = (vec3<f32>(x_1053, x_1053, x_1053) * x_1055);
    let x_1057 : vec3<f32> = u_xlat2;
    let x_1058 : vec3<f32> = u_xlat8;
    u_xlat42 = dot(x_1057, x_1058);
    let x_1060 : f32 = u_xlat42;
    u_xlat42 = clamp(x_1060, 0.0f, 1.0f);
    let x_1062 : vec3<f32> = u_xlat21;
    let x_1063 : vec3<f32> = u_xlat8;
    u_xlat8.x = dot(x_1062, x_1063);
    let x_1067 : f32 = u_xlat8.x;
    u_xlat8.x = clamp(x_1067, 0.0f, 1.0f);
    let x_1070 : f32 = u_xlat42;
    let x_1071 : f32 = u_xlat42;
    u_xlat42 = (x_1070 * x_1071);
    let x_1073 : f32 = u_xlat42;
    let x_1075 : f32 = u_xlat7.x;
    u_xlat42 = ((x_1073 * x_1075) + 1.00001001358032226562f);
    let x_1079 : f32 = u_xlat8.x;
    let x_1081 : f32 = u_xlat8.x;
    u_xlat8.x = (x_1079 * x_1081);
    let x_1084 : f32 = u_xlat42;
    let x_1085 : f32 = u_xlat42;
    u_xlat42 = (x_1084 * x_1085);
    let x_1088 : f32 = u_xlat8.x;
    u_xlat8.x = max(x_1088, 0.10000000149011611938f);
    let x_1091 : f32 = u_xlat42;
    let x_1093 : f32 = u_xlat8.x;
    u_xlat42 = (x_1091 * x_1093);
    let x_1096 : f32 = u_xlat5.x;
    let x_1097 : f32 = u_xlat42;
    u_xlat42 = (x_1096 * x_1097);
    let x_1099 : f32 = u_xlat40;
    let x_1100 : f32 = u_xlat42;
    u_xlat42 = (x_1099 / x_1100);
    let x_1102 : vec4<f32> = u_xlat0;
    let x_1104 : f32 = u_xlat42;
    let x_1107 : vec3<f32> = u_xlat13;
    u_xlat8 = ((vec3<f32>(x_1102.x, x_1102.y, x_1102.z) * vec3<f32>(x_1104, x_1104, x_1104)) + x_1107);
    let x_1109 : vec3<f32> = u_xlat8;
    let x_1110 : vec4<f32> = u_xlat10;
    let x_1113 : vec3<f32> = u_xlat17;
    u_xlat17 = ((x_1109 * vec3<f32>(x_1110.x, x_1110.y, x_1110.z)) + x_1113);

    continuing {
      let x_1115 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1115 + bitcast<u32>(1i));
    }
  }
  let x_1117 : vec3<f32> = u_xlat19;
  let x_1118 : vec4<f32> = u_xlat6;
  let x_1121 : vec4<f32> = u_xlat4;
  let x_1123 : vec3<f32> = ((x_1117 * vec3<f32>(x_1118.x, x_1118.y, x_1118.z)) + vec3<f32>(x_1121.x, x_1121.y, x_1121.z));
  let x_1124 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1123.x, x_1123.y, x_1123.z, x_1124.w);
  let x_1128 : vec3<f32> = u_xlat17;
  let x_1129 : vec4<f32> = u_xlat0;
  let x_1131 : vec3<f32> = (x_1128 + vec3<f32>(x_1129.x, x_1129.y, x_1129.z));
  let x_1132 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1131.x, x_1131.y, x_1131.z, x_1132.w);
  let x_1136 : f32 = x_58.x_Surface;
  u_xlatb0 = (x_1136 == 1.0f);
  let x_1138 : bool = u_xlatb0;
  if (x_1138) {
    let x_1143 : f32 = u_xlat1.x;
    x_1139 = x_1143;
  } else {
    x_1139 = 1.0f;
  }
  let x_1145 : f32 = x_1139;
  SV_Target0.w = x_1145;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(4) vs_TEXCOORD8_param : vec2<f32>, @location(3) vs_TEXCOORD6_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD8 = vs_TEXCOORD8_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  main_1();
  return main_out(SV_Target0);
}


