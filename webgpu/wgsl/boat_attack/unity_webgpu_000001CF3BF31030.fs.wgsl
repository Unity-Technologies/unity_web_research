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
  unity_OrthoParams : vec4<f32>,
  /* @offset(112) */
  unity_FogParams : vec4<f32>,
  /* @offset(128) */
  unity_FogColor : vec4<f32>,
  /* @offset(144) */
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

var<private> u_xlat25 : vec2<f32>;

var<private> u_xlat36 : f32;

@group(0) @binding(5) var x_OcclusionMap : texture_2d<f32>;

@group(0) @binding(13) var sampler_OcclusionMap : sampler;

var<private> u_xlat15 : vec3<f32>;

var<private> u_xlatb15 : bool;

var<private> u_xlat4 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat27 : f32;

var<private> u_xlat5 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

@group(1) @binding(4) var<uniform> x_249 : LightShadows;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat8 : vec3<f32>;

var<private> u_xlatb5 : vec4<bool>;

var<private> u_xlatu36 : u32;

var<private> u_xlati36 : i32;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(10) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD8 : vec2<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat37 : f32;

var<private> u_xlat14 : vec3<f32>;

var<private> u_xlat13 : vec3<f32>;

var<private> u_xlat40 : f32;

@group(0) @binding(7) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(15) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat17 : vec3<f32>;

var<private> u_xlatb17 : bool;

var<private> u_xlatb29 : bool;

var<private> u_xlat29 : f32;

var<private> u_xlat41 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_765 : UnityPerDraw;

var<private> u_xlatu13 : u32;

var<private> u_xlatu42 : u32;

var<private> u_xlati43 : i32;

var<private> u_xlat42 : f32;

var<private> u_xlati42 : i32;

@group(1) @binding(1) var<uniform> x_1056 : AdditionalLights;

var<private> u_xlat43 : f32;

var<private> u_xlat44 : f32;

var<private> u_xlat9 : vec3<f32>;

var<private> u_xlat45 : f32;

var<private> u_xlati45 : i32;

var<private> u_xlatb10 : vec3<bool>;

var<private> u_xlatb11 : vec3<bool>;

var<private> u_xlat22 : vec3<f32>;

var<private> u_xlat11 : f32;

var<private> u_xlat34 : f32;

var<private> u_xlat10 : vec4<f32>;

@group(0) @binding(8) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb22 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatb0 : bool;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu17 : u32;

var<private> u_xlatb42 : bool;

fn main_1() {
  var x_187 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var x_657 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1191 : f32;
  var x_1202 : f32;
  var txVec1 : vec3<f32>;
  var x_1478 : f32;
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
  u_xlat25 = ((vec2<f32>(x_82.x, x_82.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_91 : vec2<f32> = u_xlat25;
  let x_92 : vec2<f32> = u_xlat25;
  u_xlat36 = dot(x_91, x_92);
  let x_94 : f32 = u_xlat36;
  u_xlat36 = min(x_94, 1.0f);
  let x_97 : f32 = u_xlat36;
  u_xlat36 = (-(x_97) + 1.0f);
  let x_100 : f32 = u_xlat36;
  u_xlat36 = sqrt(x_100);
  let x_102 : f32 = u_xlat36;
  u_xlat36 = max(x_102, 0.0000000000000001f);
  let x_105 : vec2<f32> = u_xlat25;
  let x_108 : f32 = x_54.x_BumpScale;
  let x_110 : f32 = x_54.x_BumpScale;
  let x_111 : vec2<f32> = vec2<f32>(x_108, x_110);
  u_xlat25 = (x_105 * vec2<f32>(x_111.x, x_111.y));
  let x_121 : vec2<f32> = vs_TEXCOORD0;
  let x_123 : f32 = x_28.x_GlobalMipBias.x;
  let x_124 : vec4<f32> = textureSampleBias(x_OcclusionMap, sampler_OcclusionMap, x_121, x_123);
  u_xlat3.x = x_124.y;
  let x_131 : f32 = x_54.x_OcclusionStrength;
  u_xlat15.x = (-(x_131) + 1.0f);
  let x_136 : f32 = u_xlat3.x;
  let x_138 : f32 = x_54.x_OcclusionStrength;
  let x_141 : f32 = u_xlat15.x;
  u_xlat3.x = ((x_136 * x_138) + x_141);
  let x_150 : f32 = x_28.unity_OrthoParams.w;
  u_xlatb15 = (x_150 == 0.0f);
  let x_156 : vec3<f32> = vs_TEXCOORD1;
  let x_161 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  u_xlat4 = (-(x_156) + x_161);
  let x_164 : vec3<f32> = u_xlat4;
  let x_165 : vec3<f32> = u_xlat4;
  u_xlat27 = dot(x_164, x_165);
  let x_167 : f32 = u_xlat27;
  u_xlat27 = inverseSqrt(x_167);
  let x_169 : f32 = u_xlat27;
  let x_171 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_169, x_169, x_169) * x_171);
  let x_176 : f32 = x_28.unity_MatrixV[0i].z;
  u_xlat5.x = x_176;
  let x_180 : f32 = x_28.unity_MatrixV[1i].z;
  u_xlat5.y = x_180;
  let x_183 : f32 = x_28.unity_MatrixV[2i].z;
  u_xlat5.z = x_183;
  let x_185 : bool = u_xlatb15;
  if (x_185) {
    let x_190 : vec3<f32> = u_xlat4;
    x_187 = x_190;
  } else {
    let x_192 : vec4<f32> = u_xlat5;
    x_187 = vec3<f32>(x_192.x, x_192.y, x_192.z);
  }
  let x_194 : vec3<f32> = x_187;
  u_xlat15 = x_194;
  let x_196 : vec3<f32> = vs_TEXCOORD2;
  let x_200 : vec4<f32> = vs_TEXCOORD3;
  u_xlat4 = (vec3<f32>(x_196.z, x_196.x, x_196.y) * vec3<f32>(x_200.y, x_200.z, x_200.x));
  let x_203 : vec3<f32> = vs_TEXCOORD2;
  let x_205 : vec4<f32> = vs_TEXCOORD3;
  let x_208 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_203.y, x_203.z, x_203.x) * vec3<f32>(x_205.z, x_205.x, x_205.y)) + -(x_208));
  let x_211 : vec3<f32> = u_xlat4;
  let x_212 : vec4<f32> = vs_TEXCOORD3;
  u_xlat4 = (x_211 * vec3<f32>(x_212.w, x_212.w, x_212.w));
  let x_215 : vec2<f32> = u_xlat25;
  let x_217 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_215.y, x_215.y, x_215.y) * x_217);
  let x_219 : vec2<f32> = u_xlat25;
  let x_221 : vec4<f32> = vs_TEXCOORD3;
  let x_224 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_219.x, x_219.x, x_219.x) * vec3<f32>(x_221.x, x_221.y, x_221.z)) + x_224);
  let x_226 : f32 = u_xlat36;
  let x_228 : vec3<f32> = vs_TEXCOORD2;
  let x_230 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_226, x_226, x_226) * x_228) + x_230);
  let x_232 : vec3<f32> = u_xlat4;
  let x_233 : vec3<f32> = u_xlat4;
  u_xlat36 = dot(x_232, x_233);
  let x_235 : f32 = u_xlat36;
  u_xlat36 = inverseSqrt(x_235);
  let x_237 : f32 = u_xlat36;
  let x_239 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_237, x_237, x_237) * x_239);
  let x_241 : vec3<f32> = vs_TEXCOORD1;
  let x_251 : vec4<f32> = x_249.x_CascadeShadowSplitSpheres0;
  let x_254 : vec3<f32> = (x_241 + -(vec3<f32>(x_251.x, x_251.y, x_251.z)));
  let x_255 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_254.x, x_254.y, x_254.z, x_255.w);
  let x_258 : vec3<f32> = vs_TEXCOORD1;
  let x_260 : vec4<f32> = x_249.x_CascadeShadowSplitSpheres1;
  let x_263 : vec3<f32> = (x_258 + -(vec3<f32>(x_260.x, x_260.y, x_260.z)));
  let x_264 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_263.x, x_263.y, x_263.z, x_264.w);
  let x_267 : vec3<f32> = vs_TEXCOORD1;
  let x_270 : vec4<f32> = x_249.x_CascadeShadowSplitSpheres2;
  let x_273 : vec3<f32> = (x_267 + -(vec3<f32>(x_270.x, x_270.y, x_270.z)));
  let x_274 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_273.x, x_273.y, x_273.z, x_274.w);
  let x_277 : vec3<f32> = vs_TEXCOORD1;
  let x_279 : vec4<f32> = x_249.x_CascadeShadowSplitSpheres3;
  u_xlat8 = (x_277 + -(vec3<f32>(x_279.x, x_279.y, x_279.z)));
  let x_283 : vec4<f32> = u_xlat5;
  let x_285 : vec4<f32> = u_xlat5;
  u_xlat5.x = dot(vec3<f32>(x_283.x, x_283.y, x_283.z), vec3<f32>(x_285.x, x_285.y, x_285.z));
  let x_289 : vec4<f32> = u_xlat6;
  let x_291 : vec4<f32> = u_xlat6;
  u_xlat5.y = dot(vec3<f32>(x_289.x, x_289.y, x_289.z), vec3<f32>(x_291.x, x_291.y, x_291.z));
  let x_295 : vec4<f32> = u_xlat7;
  let x_297 : vec4<f32> = u_xlat7;
  u_xlat5.z = dot(vec3<f32>(x_295.x, x_295.y, x_295.z), vec3<f32>(x_297.x, x_297.y, x_297.z));
  let x_301 : vec3<f32> = u_xlat8;
  let x_302 : vec3<f32> = u_xlat8;
  u_xlat5.w = dot(x_301, x_302);
  let x_308 : vec4<f32> = u_xlat5;
  let x_311 : vec4<f32> = x_249.x_CascadeShadowSplitSphereRadii;
  u_xlatb5 = (x_308 < x_311);
  let x_314 : bool = u_xlatb5.x;
  u_xlat6.x = select(0.0f, 1.0f, x_314);
  let x_318 : bool = u_xlatb5.y;
  u_xlat6.y = select(0.0f, 1.0f, x_318);
  let x_322 : bool = u_xlatb5.z;
  u_xlat6.z = select(0.0f, 1.0f, x_322);
  let x_326 : bool = u_xlatb5.w;
  u_xlat6.w = select(0.0f, 1.0f, x_326);
  let x_330 : bool = u_xlatb5.x;
  u_xlat5.x = select(-0.0f, -1.0f, x_330);
  let x_335 : bool = u_xlatb5.y;
  u_xlat5.y = select(-0.0f, -1.0f, x_335);
  let x_339 : bool = u_xlatb5.z;
  u_xlat5.z = select(-0.0f, -1.0f, x_339);
  let x_342 : vec4<f32> = u_xlat5;
  let x_344 : vec4<f32> = u_xlat6;
  let x_346 : vec3<f32> = (vec3<f32>(x_342.x, x_342.y, x_342.z) + vec3<f32>(x_344.y, x_344.z, x_344.w));
  let x_347 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_346.x, x_346.y, x_346.z, x_347.w);
  let x_349 : vec4<f32> = u_xlat5;
  let x_352 : vec3<f32> = max(vec3<f32>(x_349.x, x_349.y, x_349.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_353 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_353.x, x_352.x, x_352.y, x_352.z);
  let x_355 : vec4<f32> = u_xlat6;
  u_xlat36 = dot(x_355, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_360 : f32 = u_xlat36;
  u_xlat36 = (-(x_360) + 4.0f);
  let x_365 : f32 = u_xlat36;
  u_xlatu36 = u32(x_365);
  let x_369 : u32 = u_xlatu36;
  u_xlati36 = (bitcast<i32>(x_369) << bitcast<u32>(2i));
  let x_372 : vec3<f32> = vs_TEXCOORD1;
  let x_374 : i32 = u_xlati36;
  let x_377 : i32 = u_xlati36;
  let x_381 : vec4<f32> = x_249.x_MainLightWorldToShadow[((x_374 + 1i) / 4i)][((x_377 + 1i) % 4i)];
  let x_383 : vec3<f32> = (vec3<f32>(x_372.y, x_372.y, x_372.y) * vec3<f32>(x_381.x, x_381.y, x_381.z));
  let x_384 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_383.x, x_383.y, x_383.z, x_384.w);
  let x_386 : i32 = u_xlati36;
  let x_388 : i32 = u_xlati36;
  let x_391 : vec4<f32> = x_249.x_MainLightWorldToShadow[(x_386 / 4i)][(x_388 % 4i)];
  let x_393 : vec3<f32> = vs_TEXCOORD1;
  let x_396 : vec4<f32> = u_xlat5;
  let x_398 : vec3<f32> = ((vec3<f32>(x_391.x, x_391.y, x_391.z) * vec3<f32>(x_393.x, x_393.x, x_393.x)) + vec3<f32>(x_396.x, x_396.y, x_396.z));
  let x_399 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_398.x, x_398.y, x_398.z, x_399.w);
  let x_401 : i32 = u_xlati36;
  let x_404 : i32 = u_xlati36;
  let x_408 : vec4<f32> = x_249.x_MainLightWorldToShadow[((x_401 + 2i) / 4i)][((x_404 + 2i) % 4i)];
  let x_410 : vec3<f32> = vs_TEXCOORD1;
  let x_413 : vec4<f32> = u_xlat5;
  let x_415 : vec3<f32> = ((vec3<f32>(x_408.x, x_408.y, x_408.z) * vec3<f32>(x_410.z, x_410.z, x_410.z)) + vec3<f32>(x_413.x, x_413.y, x_413.z));
  let x_416 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_415.x, x_415.y, x_415.z, x_416.w);
  let x_418 : vec4<f32> = u_xlat5;
  let x_420 : i32 = u_xlati36;
  let x_423 : i32 = u_xlati36;
  let x_427 : vec4<f32> = x_249.x_MainLightWorldToShadow[((x_420 + 3i) / 4i)][((x_423 + 3i) % 4i)];
  let x_429 : vec3<f32> = (vec3<f32>(x_418.x, x_418.y, x_418.z) + vec3<f32>(x_427.x, x_427.y, x_427.z));
  let x_430 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_429.x, x_429.y, x_429.z, x_430.w);
  let x_434 : f32 = vs_TEXCOORD1.y;
  let x_436 : f32 = x_28.unity_MatrixV[1i].z;
  u_xlat36 = (x_434 * x_436);
  let x_439 : f32 = x_28.unity_MatrixV[0i].z;
  let x_441 : f32 = vs_TEXCOORD1.x;
  let x_443 : f32 = u_xlat36;
  u_xlat36 = ((x_439 * x_441) + x_443);
  let x_446 : f32 = x_28.unity_MatrixV[2i].z;
  let x_448 : f32 = vs_TEXCOORD1.z;
  let x_450 : f32 = u_xlat36;
  u_xlat36 = ((x_446 * x_448) + x_450);
  let x_452 : f32 = u_xlat36;
  let x_454 : f32 = x_28.unity_MatrixV[3i].z;
  u_xlat36 = (x_452 + x_454);
  let x_456 : f32 = u_xlat36;
  let x_459 : f32 = x_28.x_ProjectionParams.y;
  u_xlat36 = (-(x_456) + -(x_459));
  let x_462 : f32 = u_xlat36;
  u_xlat36 = max(x_462, 0.0f);
  let x_464 : f32 = u_xlat36;
  let x_467 : f32 = x_28.unity_FogParams.x;
  u_xlat36 = (x_464 * x_467);
  let x_475 : vec2<f32> = vs_TEXCOORD8;
  let x_477 : f32 = x_28.x_GlobalMipBias.x;
  let x_478 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_475, x_477);
  u_xlat6 = x_478;
  let x_483 : vec2<f32> = vs_TEXCOORD8;
  let x_485 : f32 = x_28.x_GlobalMipBias.x;
  let x_486 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_483, x_485);
  let x_487 : vec3<f32> = vec3<f32>(x_486.x, x_486.y, x_486.z);
  let x_488 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_487.x, x_487.y, x_487.z, x_488.w);
  let x_490 : vec4<f32> = u_xlat6;
  let x_494 : vec3<f32> = (vec3<f32>(x_490.x, x_490.y, x_490.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_495 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_494.x, x_494.y, x_494.z, x_495.w);
  let x_497 : vec3<f32> = u_xlat4;
  let x_498 : vec4<f32> = u_xlat6;
  u_xlat25.x = dot(x_497, vec3<f32>(x_498.x, x_498.y, x_498.z));
  let x_503 : f32 = u_xlat25.x;
  u_xlat25.x = (x_503 + 0.5f);
  let x_507 : vec2<f32> = u_xlat25;
  let x_509 : vec4<f32> = u_xlat7;
  let x_511 : vec3<f32> = (vec3<f32>(x_507.x, x_507.x, x_507.x) * vec3<f32>(x_509.x, x_509.y, x_509.z));
  let x_512 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_511.x, x_511.y, x_511.z, x_512.w);
  let x_515 : f32 = u_xlat6.w;
  u_xlat25.x = max(x_515, 0.00009999999747378752f);
  let x_519 : vec4<f32> = u_xlat6;
  let x_521 : vec2<f32> = u_xlat25;
  let x_523 : vec3<f32> = (vec3<f32>(x_519.x, x_519.y, x_519.z) / vec3<f32>(x_521.x, x_521.x, x_521.x));
  let x_524 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_523.x, x_523.y, x_523.z, x_524.w);
  let x_527 : f32 = u_xlat1.x;
  u_xlat25.x = ((-(x_527) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_535 : f32 = u_xlat1.y;
  let x_537 : f32 = x_54.x_Smoothness;
  let x_540 : f32 = u_xlat25.x;
  u_xlat37 = ((x_535 * x_537) + -(x_540));
  let x_544 : vec2<f32> = u_xlat25;
  let x_546 : vec4<f32> = u_xlat2;
  u_xlat14 = (vec3<f32>(x_544.x, x_544.x, x_544.x) * vec3<f32>(x_546.y, x_546.z, x_546.w));
  let x_549 : vec4<f32> = u_xlat0;
  let x_552 : vec4<f32> = x_54.x_BaseColor;
  let x_557 : vec3<f32> = ((vec3<f32>(x_549.x, x_549.y, x_549.z) * vec3<f32>(x_552.x, x_552.y, x_552.z)) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_558 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_557.x, x_557.y, x_557.z, x_558.w);
  let x_560 : vec2<f32> = u_xlat1;
  let x_562 : vec4<f32> = u_xlat0;
  let x_567 : vec3<f32> = ((vec3<f32>(x_560.x, x_560.x, x_560.x) * vec3<f32>(x_562.x, x_562.y, x_562.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_568 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_567.x, x_567.y, x_567.z, x_568.w);
  let x_571 : f32 = u_xlat1.y;
  let x_574 : f32 = x_54.x_Smoothness;
  u_xlat1.x = ((-(x_571) * x_574) + 1.0f);
  let x_580 : f32 = u_xlat1.x;
  let x_582 : f32 = u_xlat1.x;
  u_xlat13.x = (x_580 * x_582);
  let x_586 : f32 = u_xlat13.x;
  u_xlat13.x = max(x_586, 0.0078125f);
  let x_591 : f32 = u_xlat13.x;
  let x_593 : f32 = u_xlat13.x;
  u_xlat25.x = (x_591 * x_593);
  let x_596 : f32 = u_xlat37;
  u_xlat37 = (x_596 + 1.0f);
  let x_598 : f32 = u_xlat37;
  u_xlat37 = clamp(x_598, 0.0f, 1.0f);
  let x_602 : f32 = u_xlat13.x;
  u_xlat40 = ((x_602 * 4.0f) + 2.0f);
  let x_606 : f32 = u_xlat3.x;
  u_xlat3.x = min(x_606, 1.0f);
  let x_610 : vec4<f32> = u_xlat5;
  let x_611 : vec2<f32> = vec2<f32>(x_610.x, x_610.y);
  let x_613 : f32 = u_xlat5.z;
  txVec0 = vec3<f32>(x_611.x, x_611.y, x_613);
  let x_625 : vec3<f32> = txVec0;
  let x_627 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_625.xy, x_625.z);
  u_xlat5.x = x_627;
  let x_631 : f32 = x_249.x_MainLightShadowParams.x;
  u_xlat17.x = (-(x_631) + 1.0f);
  let x_636 : f32 = u_xlat5.x;
  let x_638 : f32 = x_249.x_MainLightShadowParams.x;
  let x_641 : f32 = u_xlat17.x;
  u_xlat5.x = ((x_636 * x_638) + x_641);
  let x_646 : f32 = u_xlat5.z;
  u_xlatb17 = (0.0f >= x_646);
  let x_650 : f32 = u_xlat5.z;
  u_xlatb29 = (x_650 >= 1.0f);
  let x_652 : bool = u_xlatb29;
  let x_653 : bool = u_xlatb17;
  u_xlatb17 = (x_652 | x_653);
  let x_655 : bool = u_xlatb17;
  if (x_655) {
    x_657 = 1.0f;
  } else {
    let x_662 : f32 = u_xlat5.x;
    x_657 = x_662;
  }
  let x_663 : f32 = x_657;
  u_xlat5.x = x_663;
  let x_665 : vec3<f32> = vs_TEXCOORD1;
  let x_667 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  u_xlat17 = (x_665 + -(x_667));
  let x_670 : vec3<f32> = u_xlat17;
  let x_671 : vec3<f32> = u_xlat17;
  u_xlat17.x = dot(x_670, x_671);
  let x_676 : f32 = u_xlat17.x;
  let x_678 : f32 = x_249.x_MainLightShadowParams.z;
  let x_681 : f32 = x_249.x_MainLightShadowParams.w;
  u_xlat29 = ((x_676 * x_678) + x_681);
  let x_683 : f32 = u_xlat29;
  u_xlat29 = clamp(x_683, 0.0f, 1.0f);
  let x_687 : f32 = u_xlat5.x;
  u_xlat41 = (-(x_687) + 1.0f);
  let x_690 : f32 = u_xlat29;
  let x_691 : f32 = u_xlat41;
  let x_694 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_690 * x_691) + x_694);
  let x_697 : vec3<f32> = u_xlat15;
  let x_699 : vec3<f32> = u_xlat4;
  u_xlat29 = dot(-(x_697), x_699);
  let x_701 : f32 = u_xlat29;
  let x_702 : f32 = u_xlat29;
  u_xlat29 = (x_701 + x_702);
  let x_704 : vec3<f32> = u_xlat4;
  let x_705 : f32 = u_xlat29;
  let x_709 : vec3<f32> = u_xlat15;
  let x_711 : vec3<f32> = ((x_704 * -(vec3<f32>(x_705, x_705, x_705))) + -(x_709));
  let x_712 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_711.x, x_711.y, x_711.z, x_712.w);
  let x_714 : vec3<f32> = u_xlat4;
  let x_715 : vec3<f32> = u_xlat15;
  u_xlat29 = dot(x_714, x_715);
  let x_717 : f32 = u_xlat29;
  u_xlat29 = clamp(x_717, 0.0f, 1.0f);
  let x_719 : f32 = u_xlat29;
  u_xlat29 = (-(x_719) + 1.0f);
  let x_722 : f32 = u_xlat29;
  let x_723 : f32 = u_xlat29;
  u_xlat29 = (x_722 * x_723);
  let x_725 : f32 = u_xlat29;
  let x_726 : f32 = u_xlat29;
  u_xlat29 = (x_725 * x_726);
  let x_729 : f32 = u_xlat1.x;
  u_xlat41 = ((-(x_729) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_736 : f32 = u_xlat1.x;
  let x_737 : f32 = u_xlat41;
  u_xlat1.x = (x_736 * x_737);
  let x_741 : f32 = u_xlat1.x;
  u_xlat1.x = (x_741 * 6.0f);
  let x_753 : vec4<f32> = u_xlat7;
  let x_756 : f32 = u_xlat1.x;
  let x_757 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_753.x, x_753.y, x_753.z), x_756);
  u_xlat7 = x_757;
  let x_759 : f32 = u_xlat7.w;
  u_xlat1.x = (x_759 + -1.0f);
  let x_767 : f32 = x_765.unity_SpecCube0_HDR.w;
  let x_769 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_767 * x_769) + 1.0f);
  let x_774 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_774, 0.0f);
  let x_778 : f32 = u_xlat1.x;
  u_xlat1.x = log2(x_778);
  let x_782 : f32 = u_xlat1.x;
  let x_784 : f32 = x_765.unity_SpecCube0_HDR.y;
  u_xlat1.x = (x_782 * x_784);
  let x_788 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_788);
  let x_792 : f32 = u_xlat1.x;
  let x_794 : f32 = x_765.unity_SpecCube0_HDR.x;
  u_xlat1.x = (x_792 * x_794);
  let x_797 : vec4<f32> = u_xlat7;
  let x_799 : vec2<f32> = u_xlat1;
  let x_801 : vec3<f32> = (vec3<f32>(x_797.x, x_797.y, x_797.z) * vec3<f32>(x_799.x, x_799.x, x_799.x));
  let x_802 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_801.x, x_801.y, x_801.z, x_802.w);
  let x_804 : vec3<f32> = u_xlat13;
  let x_806 : vec3<f32> = u_xlat13;
  u_xlat1 = ((vec2<f32>(x_804.x, x_804.x) * vec2<f32>(x_806.x, x_806.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_812 : f32 = u_xlat1.y;
  u_xlat13.x = (1.0f / x_812);
  let x_815 : vec4<f32> = u_xlat0;
  let x_818 : f32 = u_xlat37;
  u_xlat8 = (-(vec3<f32>(x_815.x, x_815.y, x_815.z)) + vec3<f32>(x_818, x_818, x_818));
  let x_821 : f32 = u_xlat29;
  let x_823 : vec3<f32> = u_xlat8;
  let x_825 : vec4<f32> = u_xlat0;
  u_xlat8 = ((vec3<f32>(x_821, x_821, x_821) * x_823) + vec3<f32>(x_825.x, x_825.y, x_825.z));
  let x_828 : vec3<f32> = u_xlat13;
  let x_830 : vec3<f32> = u_xlat8;
  u_xlat8 = (vec3<f32>(x_828.x, x_828.x, x_828.x) * x_830);
  let x_832 : vec4<f32> = u_xlat7;
  let x_834 : vec3<f32> = u_xlat8;
  let x_835 : vec3<f32> = (vec3<f32>(x_832.x, x_832.y, x_832.z) * x_834);
  let x_836 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_835.x, x_835.y, x_835.z, x_836.w);
  let x_838 : vec4<f32> = u_xlat6;
  let x_840 : vec3<f32> = u_xlat14;
  let x_842 : vec4<f32> = u_xlat7;
  let x_844 : vec3<f32> = ((vec3<f32>(x_838.x, x_838.y, x_838.z) * x_840) + vec3<f32>(x_842.x, x_842.y, x_842.z));
  let x_845 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_844.x, x_844.y, x_844.z, x_845.w);
  let x_848 : f32 = u_xlat5.x;
  let x_850 : f32 = x_765.unity_LightData.z;
  u_xlat13.x = (x_848 * x_850);
  let x_853 : vec3<f32> = u_xlat4;
  let x_855 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat37 = dot(x_853, vec3<f32>(x_855.x, x_855.y, x_855.z));
  let x_858 : f32 = u_xlat37;
  u_xlat37 = clamp(x_858, 0.0f, 1.0f);
  let x_860 : f32 = u_xlat37;
  let x_862 : f32 = u_xlat13.x;
  u_xlat13.x = (x_860 * x_862);
  let x_865 : vec3<f32> = u_xlat13;
  let x_868 : vec4<f32> = x_28.x_MainLightColor;
  let x_870 : vec3<f32> = (vec3<f32>(x_865.x, x_865.x, x_865.x) * vec3<f32>(x_868.x, x_868.y, x_868.z));
  let x_871 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_870.x, x_871.y, x_870.y, x_870.z);
  let x_873 : vec3<f32> = u_xlat15;
  let x_875 : vec4<f32> = x_28.x_MainLightPosition;
  let x_877 : vec3<f32> = (x_873 + vec3<f32>(x_875.x, x_875.y, x_875.z));
  let x_878 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_877.x, x_877.y, x_877.z, x_878.w);
  let x_880 : vec4<f32> = u_xlat7;
  let x_882 : vec4<f32> = u_xlat7;
  u_xlat13.x = dot(vec3<f32>(x_880.x, x_880.y, x_880.z), vec3<f32>(x_882.x, x_882.y, x_882.z));
  let x_887 : f32 = u_xlat13.x;
  u_xlat13.x = max(x_887, 1.17549435e-38f);
  let x_892 : f32 = u_xlat13.x;
  u_xlat13.x = inverseSqrt(x_892);
  let x_895 : vec3<f32> = u_xlat13;
  let x_897 : vec4<f32> = u_xlat7;
  let x_899 : vec3<f32> = (vec3<f32>(x_895.x, x_895.x, x_895.x) * vec3<f32>(x_897.x, x_897.y, x_897.z));
  let x_900 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_899.x, x_899.y, x_899.z, x_900.w);
  let x_902 : vec3<f32> = u_xlat4;
  let x_903 : vec4<f32> = u_xlat7;
  u_xlat13.x = dot(x_902, vec3<f32>(x_903.x, x_903.y, x_903.z));
  let x_908 : f32 = u_xlat13.x;
  u_xlat13.x = clamp(x_908, 0.0f, 1.0f);
  let x_912 : vec4<f32> = x_28.x_MainLightPosition;
  let x_914 : vec4<f32> = u_xlat7;
  u_xlat13.z = dot(vec3<f32>(x_912.x, x_912.y, x_912.z), vec3<f32>(x_914.x, x_914.y, x_914.z));
  let x_919 : f32 = u_xlat13.z;
  u_xlat13.z = clamp(x_919, 0.0f, 1.0f);
  let x_922 : vec3<f32> = u_xlat13;
  let x_924 : vec3<f32> = u_xlat13;
  let x_926 : vec2<f32> = (vec2<f32>(x_922.x, x_922.z) * vec2<f32>(x_924.x, x_924.z));
  let x_927 : vec3<f32> = u_xlat13;
  u_xlat13 = vec3<f32>(x_926.x, x_927.y, x_926.y);
  let x_930 : f32 = u_xlat13.x;
  let x_932 : f32 = u_xlat1.x;
  u_xlat13.x = ((x_930 * x_932) + 1.00001001358032226562f);
  let x_938 : f32 = u_xlat13.x;
  let x_940 : f32 = u_xlat13.x;
  u_xlat13.x = (x_938 * x_940);
  let x_944 : f32 = u_xlat13.z;
  u_xlat37 = max(x_944, 0.10000000149011611938f);
  let x_947 : f32 = u_xlat37;
  let x_949 : f32 = u_xlat13.x;
  u_xlat13.x = (x_947 * x_949);
  let x_952 : f32 = u_xlat40;
  let x_954 : f32 = u_xlat13.x;
  u_xlat13.x = (x_952 * x_954);
  let x_958 : f32 = u_xlat25.x;
  let x_960 : f32 = u_xlat13.x;
  u_xlat13.x = (x_958 / x_960);
  let x_963 : vec4<f32> = u_xlat0;
  let x_965 : vec3<f32> = u_xlat13;
  let x_968 : vec3<f32> = u_xlat14;
  let x_969 : vec3<f32> = ((vec3<f32>(x_963.x, x_963.y, x_963.z) * vec3<f32>(x_965.x, x_965.x, x_965.x)) + x_968);
  let x_970 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_969.x, x_969.y, x_969.z, x_970.w);
  let x_972 : vec4<f32> = u_xlat5;
  let x_974 : vec4<f32> = u_xlat7;
  let x_976 : vec3<f32> = (vec3<f32>(x_972.x, x_972.z, x_972.w) * vec3<f32>(x_974.x, x_974.y, x_974.z));
  let x_977 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_976.x, x_977.y, x_976.y, x_976.z);
  let x_980 : f32 = x_28.x_AdditionalLightsCount.x;
  let x_982 : f32 = x_765.unity_LightData.y;
  u_xlat13.x = min(x_980, x_982);
  let x_987 : f32 = u_xlat13.x;
  u_xlatu13 = bitcast<u32>(i32(x_987));
  let x_991 : f32 = u_xlat17.x;
  let x_994 : f32 = x_249.x_AdditionalShadowFadeParams.x;
  let x_997 : f32 = x_249.x_AdditionalShadowFadeParams.y;
  u_xlat37 = ((x_991 * x_994) + x_997);
  let x_999 : f32 = u_xlat37;
  u_xlat37 = clamp(x_999, 0.0f, 1.0f);
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1011 : u32 = u_xlatu_loop_1;
    let x_1012 : u32 = u_xlatu13;
    if ((x_1011 < x_1012)) {
    } else {
      break;
    }
    let x_1015 : u32 = u_xlatu_loop_1;
    u_xlatu42 = (x_1015 >> 2u);
    let x_1018 : u32 = u_xlatu_loop_1;
    u_xlati43 = bitcast<i32>((x_1018 & 3u));
    let x_1022 : u32 = u_xlatu42;
    let x_1025 : vec4<f32> = x_765.unity_LightIndices[bitcast<i32>(x_1022)];
    let x_1035 : i32 = u_xlati43;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1040 : vec4<u32> = indexable[x_1035];
    u_xlat42 = dot(x_1025, bitcast<vec4<f32>>(x_1040));
    let x_1044 : f32 = u_xlat42;
    u_xlati42 = i32(x_1044);
    let x_1046 : vec3<f32> = vs_TEXCOORD1;
    let x_1057 : i32 = u_xlati42;
    let x_1059 : vec4<f32> = x_1056.x_AdditionalLightsPosition[x_1057];
    let x_1062 : i32 = u_xlati42;
    let x_1064 : vec4<f32> = x_1056.x_AdditionalLightsPosition[x_1062];
    u_xlat8 = ((-(x_1046) * vec3<f32>(x_1059.w, x_1059.w, x_1059.w)) + vec3<f32>(x_1064.x, x_1064.y, x_1064.z));
    let x_1068 : vec3<f32> = u_xlat8;
    let x_1069 : vec3<f32> = u_xlat8;
    u_xlat43 = dot(x_1068, x_1069);
    let x_1071 : f32 = u_xlat43;
    u_xlat43 = max(x_1071, 0.00006103515625f);
    let x_1075 : f32 = u_xlat43;
    u_xlat44 = inverseSqrt(x_1075);
    let x_1078 : f32 = u_xlat44;
    let x_1080 : vec3<f32> = u_xlat8;
    u_xlat9 = (vec3<f32>(x_1078, x_1078, x_1078) * x_1080);
    let x_1083 : f32 = u_xlat43;
    u_xlat45 = (1.0f / x_1083);
    let x_1085 : f32 = u_xlat43;
    let x_1086 : i32 = u_xlati42;
    let x_1088 : f32 = x_1056.x_AdditionalLightsAttenuation[x_1086].x;
    u_xlat43 = (x_1085 * x_1088);
    let x_1090 : f32 = u_xlat43;
    let x_1092 : f32 = u_xlat43;
    u_xlat43 = ((-(x_1090) * x_1092) + 1.0f);
    let x_1095 : f32 = u_xlat43;
    u_xlat43 = max(x_1095, 0.0f);
    let x_1097 : f32 = u_xlat43;
    let x_1098 : f32 = u_xlat43;
    u_xlat43 = (x_1097 * x_1098);
    let x_1100 : f32 = u_xlat43;
    let x_1101 : f32 = u_xlat45;
    u_xlat43 = (x_1100 * x_1101);
    let x_1103 : i32 = u_xlati42;
    let x_1105 : vec4<f32> = x_1056.x_AdditionalLightsSpotDir[x_1103];
    let x_1107 : vec3<f32> = u_xlat9;
    u_xlat45 = dot(vec3<f32>(x_1105.x, x_1105.y, x_1105.z), x_1107);
    let x_1109 : f32 = u_xlat45;
    let x_1110 : i32 = u_xlati42;
    let x_1112 : f32 = x_1056.x_AdditionalLightsAttenuation[x_1110].z;
    let x_1114 : i32 = u_xlati42;
    let x_1116 : f32 = x_1056.x_AdditionalLightsAttenuation[x_1114].w;
    u_xlat45 = ((x_1109 * x_1112) + x_1116);
    let x_1118 : f32 = u_xlat45;
    u_xlat45 = clamp(x_1118, 0.0f, 1.0f);
    let x_1120 : f32 = u_xlat45;
    let x_1121 : f32 = u_xlat45;
    u_xlat45 = (x_1120 * x_1121);
    let x_1123 : f32 = u_xlat43;
    let x_1124 : f32 = u_xlat45;
    u_xlat43 = (x_1123 * x_1124);
    let x_1128 : i32 = u_xlati42;
    let x_1130 : f32 = x_249.x_AdditionalShadowParams[x_1128].w;
    u_xlati45 = i32(x_1130);
    let x_1135 : i32 = u_xlati45;
    u_xlatb10.x = (x_1135 >= 0i);
    let x_1139 : bool = u_xlatb10.x;
    if (x_1139) {
      let x_1143 : i32 = u_xlati42;
      let x_1145 : f32 = x_249.x_AdditionalShadowParams[x_1143].z;
      u_xlatb10.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1145, x_1145, x_1145, x_1145))));
      let x_1151 : bool = u_xlatb10.x;
      if (x_1151) {
        let x_1154 : vec3<f32> = u_xlat9;
        let x_1157 : vec3<f32> = u_xlat9;
        let x_1160 : vec4<bool> = (abs(vec4<f32>(x_1154.z, x_1154.z, x_1154.y, x_1154.z)) >= abs(vec4<f32>(x_1157.x, x_1157.y, x_1157.x, x_1157.x)));
        u_xlatb10 = vec3<bool>(x_1160.x, x_1160.y, x_1160.z);
        let x_1163 : bool = u_xlatb10.y;
        let x_1165 : bool = u_xlatb10.x;
        u_xlatb10.x = (x_1163 & x_1165);
        let x_1169 : vec3<f32> = u_xlat9;
        let x_1172 : vec4<bool> = (-(vec4<f32>(x_1169.z, x_1169.y, x_1169.x, x_1169.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb11 = vec3<bool>(x_1172.x, x_1172.y, x_1172.z);
        let x_1176 : bool = u_xlatb11.x;
        u_xlat22.x = select(4.0f, 5.0f, x_1176);
        let x_1181 : bool = u_xlatb11.y;
        u_xlat22.z = select(2.0f, 3.0f, x_1181);
        let x_1186 : bool = u_xlatb11.z;
        u_xlat11 = select(0.0f, 1.0f, x_1186);
        let x_1190 : bool = u_xlatb10.z;
        if (x_1190) {
          let x_1195 : f32 = u_xlat22.z;
          x_1191 = x_1195;
        } else {
          let x_1197 : f32 = u_xlat11;
          x_1191 = x_1197;
        }
        let x_1198 : f32 = x_1191;
        u_xlat34 = x_1198;
        let x_1201 : bool = u_xlatb10.x;
        if (x_1201) {
          let x_1206 : f32 = u_xlat22.x;
          x_1202 = x_1206;
        } else {
          let x_1208 : f32 = u_xlat34;
          x_1202 = x_1208;
        }
        let x_1209 : f32 = x_1202;
        u_xlat10.x = x_1209;
        let x_1211 : i32 = u_xlati42;
        let x_1213 : f32 = x_249.x_AdditionalShadowParams[x_1211].w;
        u_xlat22.x = trunc(x_1213);
        let x_1217 : f32 = u_xlat10.x;
        let x_1219 : f32 = u_xlat22.x;
        u_xlat10.x = (x_1217 + x_1219);
        let x_1223 : f32 = u_xlat10.x;
        u_xlati45 = i32(x_1223);
      }
      let x_1225 : i32 = u_xlati45;
      u_xlati45 = (x_1225 << bitcast<u32>(2i));
      let x_1227 : vec3<f32> = vs_TEXCOORD1;
      let x_1230 : i32 = u_xlati45;
      let x_1233 : i32 = u_xlati45;
      let x_1237 : vec4<f32> = x_249.x_AdditionalLightsWorldToShadow[((x_1230 + 1i) / 4i)][((x_1233 + 1i) % 4i)];
      u_xlat10 = (vec4<f32>(x_1227.y, x_1227.y, x_1227.y, x_1227.y) * x_1237);
      let x_1239 : i32 = u_xlati45;
      let x_1241 : i32 = u_xlati45;
      let x_1244 : vec4<f32> = x_249.x_AdditionalLightsWorldToShadow[(x_1239 / 4i)][(x_1241 % 4i)];
      let x_1245 : vec3<f32> = vs_TEXCOORD1;
      let x_1248 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_1244 * vec4<f32>(x_1245.x, x_1245.x, x_1245.x, x_1245.x)) + x_1248);
      let x_1250 : i32 = u_xlati45;
      let x_1253 : i32 = u_xlati45;
      let x_1257 : vec4<f32> = x_249.x_AdditionalLightsWorldToShadow[((x_1250 + 2i) / 4i)][((x_1253 + 2i) % 4i)];
      let x_1258 : vec3<f32> = vs_TEXCOORD1;
      let x_1261 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_1257 * vec4<f32>(x_1258.z, x_1258.z, x_1258.z, x_1258.z)) + x_1261);
      let x_1263 : vec4<f32> = u_xlat10;
      let x_1264 : i32 = u_xlati45;
      let x_1267 : i32 = u_xlati45;
      let x_1271 : vec4<f32> = x_249.x_AdditionalLightsWorldToShadow[((x_1264 + 3i) / 4i)][((x_1267 + 3i) % 4i)];
      u_xlat10 = (x_1263 + x_1271);
      let x_1273 : vec4<f32> = u_xlat10;
      let x_1275 : vec4<f32> = u_xlat10;
      let x_1277 : vec3<f32> = (vec3<f32>(x_1273.x, x_1273.y, x_1273.z) / vec3<f32>(x_1275.w, x_1275.w, x_1275.w));
      let x_1278 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_1277.x, x_1277.y, x_1277.z, x_1278.w);
      let x_1281 : vec4<f32> = u_xlat10;
      let x_1282 : vec2<f32> = vec2<f32>(x_1281.x, x_1281.y);
      let x_1284 : f32 = u_xlat10.z;
      txVec1 = vec3<f32>(x_1282.x, x_1282.y, x_1284);
      let x_1292 : vec3<f32> = txVec1;
      let x_1294 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1292.xy, x_1292.z);
      u_xlat45 = x_1294;
      let x_1295 : i32 = u_xlati42;
      let x_1297 : f32 = x_249.x_AdditionalShadowParams[x_1295].x;
      u_xlat10.x = (1.0f + -(x_1297));
      let x_1301 : f32 = u_xlat45;
      let x_1302 : i32 = u_xlati42;
      let x_1304 : f32 = x_249.x_AdditionalShadowParams[x_1302].x;
      let x_1307 : f32 = u_xlat10.x;
      u_xlat45 = ((x_1301 * x_1304) + x_1307);
      let x_1310 : f32 = u_xlat10.z;
      u_xlatb10.x = (0.0f >= x_1310);
      let x_1315 : f32 = u_xlat10.z;
      u_xlatb22 = (x_1315 >= 1.0f);
      let x_1317 : bool = u_xlatb22;
      let x_1319 : bool = u_xlatb10.x;
      u_xlatb10.x = (x_1317 | x_1319);
      let x_1323 : bool = u_xlatb10.x;
      let x_1324 : f32 = u_xlat45;
      u_xlat45 = select(x_1324, 1.0f, x_1323);
    } else {
      u_xlat45 = 1.0f;
    }
    let x_1327 : f32 = u_xlat45;
    u_xlat10.x = (-(x_1327) + 1.0f);
    let x_1331 : f32 = u_xlat37;
    let x_1333 : f32 = u_xlat10.x;
    let x_1335 : f32 = u_xlat45;
    u_xlat45 = ((x_1331 * x_1333) + x_1335);
    let x_1337 : f32 = u_xlat43;
    let x_1338 : f32 = u_xlat45;
    u_xlat43 = (x_1337 * x_1338);
    let x_1340 : vec3<f32> = u_xlat4;
    let x_1341 : vec3<f32> = u_xlat9;
    u_xlat45 = dot(x_1340, x_1341);
    let x_1343 : f32 = u_xlat45;
    u_xlat45 = clamp(x_1343, 0.0f, 1.0f);
    let x_1345 : f32 = u_xlat43;
    let x_1346 : f32 = u_xlat45;
    u_xlat43 = (x_1345 * x_1346);
    let x_1348 : f32 = u_xlat43;
    let x_1350 : i32 = u_xlati42;
    let x_1352 : vec4<f32> = x_1056.x_AdditionalLightsColor[x_1350];
    let x_1354 : vec3<f32> = (vec3<f32>(x_1348, x_1348, x_1348) * vec3<f32>(x_1352.x, x_1352.y, x_1352.z));
    let x_1355 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1354.x, x_1354.y, x_1354.z, x_1355.w);
    let x_1357 : vec3<f32> = u_xlat8;
    let x_1358 : f32 = u_xlat44;
    let x_1361 : vec3<f32> = u_xlat15;
    u_xlat8 = ((x_1357 * vec3<f32>(x_1358, x_1358, x_1358)) + x_1361);
    let x_1363 : vec3<f32> = u_xlat8;
    let x_1364 : vec3<f32> = u_xlat8;
    u_xlat42 = dot(x_1363, x_1364);
    let x_1366 : f32 = u_xlat42;
    u_xlat42 = max(x_1366, 1.17549435e-38f);
    let x_1368 : f32 = u_xlat42;
    u_xlat42 = inverseSqrt(x_1368);
    let x_1370 : f32 = u_xlat42;
    let x_1372 : vec3<f32> = u_xlat8;
    u_xlat8 = (vec3<f32>(x_1370, x_1370, x_1370) * x_1372);
    let x_1374 : vec3<f32> = u_xlat4;
    let x_1375 : vec3<f32> = u_xlat8;
    u_xlat42 = dot(x_1374, x_1375);
    let x_1377 : f32 = u_xlat42;
    u_xlat42 = clamp(x_1377, 0.0f, 1.0f);
    let x_1379 : vec3<f32> = u_xlat9;
    let x_1380 : vec3<f32> = u_xlat8;
    u_xlat43 = dot(x_1379, x_1380);
    let x_1382 : f32 = u_xlat43;
    u_xlat43 = clamp(x_1382, 0.0f, 1.0f);
    let x_1384 : f32 = u_xlat42;
    let x_1385 : f32 = u_xlat42;
    u_xlat42 = (x_1384 * x_1385);
    let x_1387 : f32 = u_xlat42;
    let x_1389 : f32 = u_xlat1.x;
    u_xlat42 = ((x_1387 * x_1389) + 1.00001001358032226562f);
    let x_1392 : f32 = u_xlat43;
    let x_1393 : f32 = u_xlat43;
    u_xlat43 = (x_1392 * x_1393);
    let x_1395 : f32 = u_xlat42;
    let x_1396 : f32 = u_xlat42;
    u_xlat42 = (x_1395 * x_1396);
    let x_1398 : f32 = u_xlat43;
    u_xlat43 = max(x_1398, 0.10000000149011611938f);
    let x_1400 : f32 = u_xlat42;
    let x_1401 : f32 = u_xlat43;
    u_xlat42 = (x_1400 * x_1401);
    let x_1403 : f32 = u_xlat40;
    let x_1404 : f32 = u_xlat42;
    u_xlat42 = (x_1403 * x_1404);
    let x_1407 : f32 = u_xlat25.x;
    let x_1408 : f32 = u_xlat42;
    u_xlat42 = (x_1407 / x_1408);
    let x_1410 : vec4<f32> = u_xlat0;
    let x_1412 : f32 = u_xlat42;
    let x_1415 : vec3<f32> = u_xlat14;
    u_xlat8 = ((vec3<f32>(x_1410.x, x_1410.y, x_1410.z) * vec3<f32>(x_1412, x_1412, x_1412)) + x_1415);
    let x_1417 : vec3<f32> = u_xlat8;
    let x_1418 : vec4<f32> = u_xlat10;
    let x_1421 : vec4<f32> = u_xlat7;
    let x_1423 : vec3<f32> = ((x_1417 * vec3<f32>(x_1418.x, x_1418.y, x_1418.z)) + vec3<f32>(x_1421.x, x_1421.y, x_1421.z));
    let x_1424 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1423.x, x_1423.y, x_1423.z, x_1424.w);

    continuing {
      let x_1426 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1426 + bitcast<u32>(1i));
    }
  }
  let x_1428 : vec4<f32> = u_xlat6;
  let x_1430 : vec3<f32> = u_xlat3;
  let x_1433 : vec4<f32> = u_xlat5;
  let x_1435 : vec3<f32> = ((vec3<f32>(x_1428.x, x_1428.y, x_1428.z) * vec3<f32>(x_1430.x, x_1430.x, x_1430.x)) + vec3<f32>(x_1433.x, x_1433.z, x_1433.w));
  let x_1436 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1435.x, x_1435.y, x_1435.z, x_1436.w);
  let x_1438 : vec4<f32> = u_xlat7;
  let x_1440 : vec4<f32> = u_xlat0;
  let x_1442 : vec3<f32> = (vec3<f32>(x_1438.x, x_1438.y, x_1438.z) + vec3<f32>(x_1440.x, x_1440.y, x_1440.z));
  let x_1443 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1442.x, x_1442.y, x_1442.z, x_1443.w);
  let x_1445 : f32 = u_xlat36;
  let x_1446 : f32 = u_xlat36;
  u_xlat36 = (x_1445 * -(x_1446));
  let x_1449 : f32 = u_xlat36;
  u_xlat36 = exp2(x_1449);
  let x_1451 : vec4<f32> = u_xlat0;
  let x_1454 : vec4<f32> = x_28.unity_FogColor;
  let x_1457 : vec3<f32> = (vec3<f32>(x_1451.x, x_1451.y, x_1451.z) + -(vec3<f32>(x_1454.x, x_1454.y, x_1454.z)));
  let x_1458 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1457.x, x_1457.y, x_1457.z, x_1458.w);
  let x_1462 : f32 = u_xlat36;
  let x_1464 : vec4<f32> = u_xlat0;
  let x_1468 : vec4<f32> = x_28.unity_FogColor;
  let x_1470 : vec3<f32> = ((vec3<f32>(x_1462, x_1462, x_1462) * vec3<f32>(x_1464.x, x_1464.y, x_1464.z)) + vec3<f32>(x_1468.x, x_1468.y, x_1468.z));
  let x_1471 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1470.x, x_1470.y, x_1470.z, x_1471.w);
  let x_1475 : f32 = x_54.x_Surface;
  u_xlatb0 = (x_1475 == 1.0f);
  let x_1477 : bool = u_xlatb0;
  if (x_1477) {
    let x_1482 : f32 = u_xlat2.x;
    x_1478 = x_1482;
  } else {
    x_1478 = 1.0f;
  }
  let x_1484 : f32 = x_1478;
  SV_Target0.w = x_1484;
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


