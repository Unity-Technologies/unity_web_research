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

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(10) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD8 : vec2<f32>;

var<private> u_xlat6 : vec3<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat37 : f32;

var<private> u_xlat14 : vec3<f32>;

var<private> u_xlat13 : vec3<f32>;

var<private> u_xlat40 : f32;

var<private> vs_TEXCOORD6 : vec4<f32>;

var<private> u_xlat41 : f32;

@group(0) @binding(7) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(15) var sampler_LinearClampCompare : sampler_comparison;

@group(1) @binding(4) var<uniform> x_447 : LightShadows;

var<private> u_xlatb6 : bool;

var<private> u_xlatb18 : bool;

var<private> u_xlat18 : vec3<f32>;

var<private> u_xlat30 : f32;

var<private> u_xlat7 : vec3<f32>;

var<private> u_xlat19 : vec3<f32>;

var<private> u_xlat8 : vec4<f32>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_592 : UnityPerDraw;

var<private> u_xlatu13 : u32;

var<private> u_xlatu6 : u32;

var<private> u_xlati43 : i32;

var<private> u_xlati6 : i32;

@group(1) @binding(1) var<uniform> x_862 : AdditionalLights;

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

var<private> u_xlatu41 : u32;

fn main_1() {
  var x_187 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1005 : f32;
  var x_1016 : f32;
  var txVec1 : vec3<f32>;
  var x_1322 : f32;
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
  let x_243 : f32 = vs_TEXCOORD1.y;
  let x_245 : f32 = x_28.unity_MatrixV[1i].z;
  u_xlat36 = (x_243 * x_245);
  let x_248 : f32 = x_28.unity_MatrixV[0i].z;
  let x_250 : f32 = vs_TEXCOORD1.x;
  let x_252 : f32 = u_xlat36;
  u_xlat36 = ((x_248 * x_250) + x_252);
  let x_255 : f32 = x_28.unity_MatrixV[2i].z;
  let x_257 : f32 = vs_TEXCOORD1.z;
  let x_259 : f32 = u_xlat36;
  u_xlat36 = ((x_255 * x_257) + x_259);
  let x_261 : f32 = u_xlat36;
  let x_264 : f32 = x_28.unity_MatrixV[3i].z;
  u_xlat36 = (x_261 + x_264);
  let x_266 : f32 = u_xlat36;
  let x_270 : f32 = x_28.x_ProjectionParams.y;
  u_xlat36 = (-(x_266) + -(x_270));
  let x_273 : f32 = u_xlat36;
  u_xlat36 = max(x_273, 0.0f);
  let x_275 : f32 = u_xlat36;
  let x_278 : f32 = x_28.unity_FogParams.x;
  u_xlat36 = (x_275 * x_278);
  let x_286 : vec2<f32> = vs_TEXCOORD8;
  let x_288 : f32 = x_28.x_GlobalMipBias.x;
  let x_289 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_286, x_288);
  u_xlat5 = x_289;
  let x_295 : vec2<f32> = vs_TEXCOORD8;
  let x_297 : f32 = x_28.x_GlobalMipBias.x;
  let x_298 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_295, x_297);
  u_xlat6 = vec3<f32>(x_298.x, x_298.y, x_298.z);
  let x_300 : vec4<f32> = u_xlat5;
  let x_304 : vec3<f32> = (vec3<f32>(x_300.x, x_300.y, x_300.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_305 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_304.x, x_304.y, x_304.z, x_305.w);
  let x_307 : vec3<f32> = u_xlat4;
  let x_308 : vec4<f32> = u_xlat5;
  u_xlat25.x = dot(x_307, vec3<f32>(x_308.x, x_308.y, x_308.z));
  let x_313 : f32 = u_xlat25.x;
  u_xlat25.x = (x_313 + 0.5f);
  let x_317 : vec2<f32> = u_xlat25;
  let x_319 : vec3<f32> = u_xlat6;
  let x_320 : vec3<f32> = (vec3<f32>(x_317.x, x_317.x, x_317.x) * x_319);
  let x_321 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_320.x, x_320.y, x_320.z, x_321.w);
  let x_324 : f32 = u_xlat5.w;
  u_xlat25.x = max(x_324, 0.00009999999747378752f);
  let x_328 : vec4<f32> = u_xlat5;
  let x_330 : vec2<f32> = u_xlat25;
  let x_332 : vec3<f32> = (vec3<f32>(x_328.x, x_328.y, x_328.z) / vec3<f32>(x_330.x, x_330.x, x_330.x));
  let x_333 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_332.x, x_332.y, x_332.z, x_333.w);
  let x_336 : f32 = u_xlat1.x;
  u_xlat25.x = ((-(x_336) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_344 : f32 = u_xlat1.y;
  let x_346 : f32 = x_54.x_Smoothness;
  let x_349 : f32 = u_xlat25.x;
  u_xlat37 = ((x_344 * x_346) + -(x_349));
  let x_353 : vec2<f32> = u_xlat25;
  let x_355 : vec4<f32> = u_xlat2;
  u_xlat14 = (vec3<f32>(x_353.x, x_353.x, x_353.x) * vec3<f32>(x_355.y, x_355.z, x_355.w));
  let x_358 : vec4<f32> = u_xlat0;
  let x_361 : vec4<f32> = x_54.x_BaseColor;
  let x_366 : vec3<f32> = ((vec3<f32>(x_358.x, x_358.y, x_358.z) * vec3<f32>(x_361.x, x_361.y, x_361.z)) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_367 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_366.x, x_366.y, x_366.z, x_367.w);
  let x_369 : vec2<f32> = u_xlat1;
  let x_371 : vec4<f32> = u_xlat0;
  let x_376 : vec3<f32> = ((vec3<f32>(x_369.x, x_369.x, x_369.x) * vec3<f32>(x_371.x, x_371.y, x_371.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_377 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_376.x, x_376.y, x_376.z, x_377.w);
  let x_380 : f32 = u_xlat1.y;
  let x_383 : f32 = x_54.x_Smoothness;
  u_xlat1.x = ((-(x_380) * x_383) + 1.0f);
  let x_389 : f32 = u_xlat1.x;
  let x_391 : f32 = u_xlat1.x;
  u_xlat13.x = (x_389 * x_391);
  let x_395 : f32 = u_xlat13.x;
  u_xlat13.x = max(x_395, 0.0078125f);
  let x_400 : f32 = u_xlat13.x;
  let x_402 : f32 = u_xlat13.x;
  u_xlat25.x = (x_400 * x_402);
  let x_405 : f32 = u_xlat37;
  u_xlat37 = (x_405 + 1.0f);
  let x_407 : f32 = u_xlat37;
  u_xlat37 = clamp(x_407, 0.0f, 1.0f);
  let x_411 : f32 = u_xlat13.x;
  u_xlat40 = ((x_411 * 4.0f) + 2.0f);
  let x_416 : f32 = u_xlat3.x;
  u_xlat3.x = min(x_416, 1.0f);
  let x_421 : vec4<f32> = vs_TEXCOORD6;
  let x_422 : vec2<f32> = vec2<f32>(x_421.x, x_421.y);
  let x_424 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_422.x, x_422.y, x_424);
  let x_437 : vec3<f32> = txVec0;
  let x_439 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_437.xy, x_437.z);
  u_xlat41 = x_439;
  let x_449 : f32 = x_447.x_MainLightShadowParams.x;
  u_xlat6.x = (-(x_449) + 1.0f);
  let x_453 : f32 = u_xlat41;
  let x_455 : f32 = x_447.x_MainLightShadowParams.x;
  let x_458 : f32 = u_xlat6.x;
  u_xlat41 = ((x_453 * x_455) + x_458);
  let x_462 : f32 = vs_TEXCOORD6.z;
  u_xlatb6 = (0.0f >= x_462);
  let x_466 : f32 = vs_TEXCOORD6.z;
  u_xlatb18 = (x_466 >= 1.0f);
  let x_468 : bool = u_xlatb18;
  let x_469 : bool = u_xlatb6;
  u_xlatb6 = (x_468 | x_469);
  let x_471 : bool = u_xlatb6;
  let x_472 : f32 = u_xlat41;
  u_xlat41 = select(x_472, 1.0f, x_471);
  let x_474 : vec3<f32> = vs_TEXCOORD1;
  let x_476 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  u_xlat6 = (x_474 + -(x_476));
  let x_479 : vec3<f32> = u_xlat6;
  let x_480 : vec3<f32> = u_xlat6;
  u_xlat6.x = dot(x_479, x_480);
  let x_485 : f32 = u_xlat6.x;
  let x_487 : f32 = x_447.x_MainLightShadowParams.z;
  let x_490 : f32 = x_447.x_MainLightShadowParams.w;
  u_xlat18.x = ((x_485 * x_487) + x_490);
  let x_494 : f32 = u_xlat18.x;
  u_xlat18.x = clamp(x_494, 0.0f, 1.0f);
  let x_498 : f32 = u_xlat41;
  u_xlat30 = (-(x_498) + 1.0f);
  let x_502 : f32 = u_xlat18.x;
  let x_503 : f32 = u_xlat30;
  let x_505 : f32 = u_xlat41;
  u_xlat41 = ((x_502 * x_503) + x_505);
  let x_507 : vec3<f32> = u_xlat15;
  let x_509 : vec3<f32> = u_xlat4;
  u_xlat18.x = dot(-(x_507), x_509);
  let x_513 : f32 = u_xlat18.x;
  let x_515 : f32 = u_xlat18.x;
  u_xlat18.x = (x_513 + x_515);
  let x_518 : vec3<f32> = u_xlat4;
  let x_519 : vec3<f32> = u_xlat18;
  let x_523 : vec3<f32> = u_xlat15;
  u_xlat18 = ((x_518 * -(vec3<f32>(x_519.x, x_519.x, x_519.x))) + -(x_523));
  let x_527 : vec3<f32> = u_xlat4;
  let x_528 : vec3<f32> = u_xlat15;
  u_xlat7.x = dot(x_527, x_528);
  let x_532 : f32 = u_xlat7.x;
  u_xlat7.x = clamp(x_532, 0.0f, 1.0f);
  let x_536 : f32 = u_xlat7.x;
  u_xlat7.x = (-(x_536) + 1.0f);
  let x_541 : f32 = u_xlat7.x;
  let x_543 : f32 = u_xlat7.x;
  u_xlat7.x = (x_541 * x_543);
  let x_547 : f32 = u_xlat7.x;
  let x_549 : f32 = u_xlat7.x;
  u_xlat7.x = (x_547 * x_549);
  let x_554 : f32 = u_xlat1.x;
  u_xlat19.x = ((-(x_554) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_562 : f32 = u_xlat1.x;
  let x_564 : f32 = u_xlat19.x;
  u_xlat1.x = (x_562 * x_564);
  let x_568 : f32 = u_xlat1.x;
  u_xlat1.x = (x_568 * 6.0f);
  let x_581 : vec3<f32> = u_xlat18;
  let x_583 : f32 = u_xlat1.x;
  let x_584 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, x_581, x_583);
  u_xlat8 = x_584;
  let x_586 : f32 = u_xlat8.w;
  u_xlat1.x = (x_586 + -1.0f);
  let x_594 : f32 = x_592.unity_SpecCube0_HDR.w;
  let x_596 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_594 * x_596) + 1.0f);
  let x_601 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_601, 0.0f);
  let x_605 : f32 = u_xlat1.x;
  u_xlat1.x = log2(x_605);
  let x_609 : f32 = u_xlat1.x;
  let x_611 : f32 = x_592.unity_SpecCube0_HDR.y;
  u_xlat1.x = (x_609 * x_611);
  let x_615 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_615);
  let x_619 : f32 = u_xlat1.x;
  let x_621 : f32 = x_592.unity_SpecCube0_HDR.x;
  u_xlat1.x = (x_619 * x_621);
  let x_624 : vec4<f32> = u_xlat8;
  let x_626 : vec2<f32> = u_xlat1;
  u_xlat18 = (vec3<f32>(x_624.x, x_624.y, x_624.z) * vec3<f32>(x_626.x, x_626.x, x_626.x));
  let x_629 : vec3<f32> = u_xlat13;
  let x_631 : vec3<f32> = u_xlat13;
  u_xlat1 = ((vec2<f32>(x_629.x, x_629.x) * vec2<f32>(x_631.x, x_631.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_637 : f32 = u_xlat1.y;
  u_xlat13.x = (1.0f / x_637);
  let x_640 : vec4<f32> = u_xlat0;
  let x_643 : f32 = u_xlat37;
  u_xlat19 = (-(vec3<f32>(x_640.x, x_640.y, x_640.z)) + vec3<f32>(x_643, x_643, x_643));
  let x_646 : vec3<f32> = u_xlat7;
  let x_648 : vec3<f32> = u_xlat19;
  let x_650 : vec4<f32> = u_xlat0;
  u_xlat7 = ((vec3<f32>(x_646.x, x_646.x, x_646.x) * x_648) + vec3<f32>(x_650.x, x_650.y, x_650.z));
  let x_653 : vec3<f32> = u_xlat13;
  let x_655 : vec3<f32> = u_xlat7;
  u_xlat7 = (vec3<f32>(x_653.x, x_653.x, x_653.x) * x_655);
  let x_657 : vec3<f32> = u_xlat18;
  let x_658 : vec3<f32> = u_xlat7;
  u_xlat18 = (x_657 * x_658);
  let x_660 : vec4<f32> = u_xlat5;
  let x_662 : vec3<f32> = u_xlat14;
  let x_664 : vec3<f32> = u_xlat18;
  let x_665 : vec3<f32> = ((vec3<f32>(x_660.x, x_660.y, x_660.z) * x_662) + x_664);
  let x_666 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_665.x, x_665.y, x_665.z, x_666.w);
  let x_668 : f32 = u_xlat41;
  let x_670 : f32 = x_592.unity_LightData.z;
  u_xlat13.x = (x_668 * x_670);
  let x_673 : vec3<f32> = u_xlat4;
  let x_675 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat37 = dot(x_673, vec3<f32>(x_675.x, x_675.y, x_675.z));
  let x_678 : f32 = u_xlat37;
  u_xlat37 = clamp(x_678, 0.0f, 1.0f);
  let x_680 : f32 = u_xlat37;
  let x_682 : f32 = u_xlat13.x;
  u_xlat13.x = (x_680 * x_682);
  let x_685 : vec3<f32> = u_xlat13;
  let x_688 : vec4<f32> = x_28.x_MainLightColor;
  u_xlat18 = (vec3<f32>(x_685.x, x_685.x, x_685.x) * vec3<f32>(x_688.x, x_688.y, x_688.z));
  let x_691 : vec3<f32> = u_xlat15;
  let x_693 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat7 = (x_691 + vec3<f32>(x_693.x, x_693.y, x_693.z));
  let x_696 : vec3<f32> = u_xlat7;
  let x_697 : vec3<f32> = u_xlat7;
  u_xlat13.x = dot(x_696, x_697);
  let x_701 : f32 = u_xlat13.x;
  u_xlat13.x = max(x_701, 1.17549435e-38f);
  let x_706 : f32 = u_xlat13.x;
  u_xlat13.x = inverseSqrt(x_706);
  let x_709 : vec3<f32> = u_xlat13;
  let x_711 : vec3<f32> = u_xlat7;
  u_xlat7 = (vec3<f32>(x_709.x, x_709.x, x_709.x) * x_711);
  let x_713 : vec3<f32> = u_xlat4;
  let x_714 : vec3<f32> = u_xlat7;
  u_xlat13.x = dot(x_713, x_714);
  let x_718 : f32 = u_xlat13.x;
  u_xlat13.x = clamp(x_718, 0.0f, 1.0f);
  let x_722 : vec4<f32> = x_28.x_MainLightPosition;
  let x_724 : vec3<f32> = u_xlat7;
  u_xlat13.z = dot(vec3<f32>(x_722.x, x_722.y, x_722.z), x_724);
  let x_728 : f32 = u_xlat13.z;
  u_xlat13.z = clamp(x_728, 0.0f, 1.0f);
  let x_731 : vec3<f32> = u_xlat13;
  let x_733 : vec3<f32> = u_xlat13;
  let x_735 : vec2<f32> = (vec2<f32>(x_731.x, x_731.z) * vec2<f32>(x_733.x, x_733.z));
  let x_736 : vec3<f32> = u_xlat13;
  u_xlat13 = vec3<f32>(x_735.x, x_736.y, x_735.y);
  let x_739 : f32 = u_xlat13.x;
  let x_741 : f32 = u_xlat1.x;
  u_xlat13.x = ((x_739 * x_741) + 1.00001001358032226562f);
  let x_747 : f32 = u_xlat13.x;
  let x_749 : f32 = u_xlat13.x;
  u_xlat13.x = (x_747 * x_749);
  let x_753 : f32 = u_xlat13.z;
  u_xlat37 = max(x_753, 0.10000000149011611938f);
  let x_756 : f32 = u_xlat37;
  let x_758 : f32 = u_xlat13.x;
  u_xlat13.x = (x_756 * x_758);
  let x_761 : f32 = u_xlat40;
  let x_763 : f32 = u_xlat13.x;
  u_xlat13.x = (x_761 * x_763);
  let x_767 : f32 = u_xlat25.x;
  let x_769 : f32 = u_xlat13.x;
  u_xlat13.x = (x_767 / x_769);
  let x_772 : vec4<f32> = u_xlat0;
  let x_774 : vec3<f32> = u_xlat13;
  let x_777 : vec3<f32> = u_xlat14;
  u_xlat7 = ((vec3<f32>(x_772.x, x_772.y, x_772.z) * vec3<f32>(x_774.x, x_774.x, x_774.x)) + x_777);
  let x_779 : vec3<f32> = u_xlat18;
  let x_780 : vec3<f32> = u_xlat7;
  u_xlat18 = (x_779 * x_780);
  let x_783 : f32 = x_28.x_AdditionalLightsCount.x;
  let x_785 : f32 = x_592.unity_LightData.y;
  u_xlat13.x = min(x_783, x_785);
  let x_791 : f32 = u_xlat13.x;
  u_xlatu13 = bitcast<u32>(i32(x_791));
  let x_795 : f32 = u_xlat6.x;
  let x_798 : f32 = x_447.x_AdditionalShadowFadeParams.x;
  let x_801 : f32 = x_447.x_AdditionalShadowFadeParams.y;
  u_xlat37 = ((x_795 * x_798) + x_801);
  let x_803 : f32 = u_xlat37;
  u_xlat37 = clamp(x_803, 0.0f, 1.0f);
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_815 : u32 = u_xlatu_loop_1;
    let x_816 : u32 = u_xlatu13;
    if ((x_815 < x_816)) {
    } else {
      break;
    }
    let x_819 : u32 = u_xlatu_loop_1;
    u_xlatu6 = (x_819 >> 2u);
    let x_823 : u32 = u_xlatu_loop_1;
    u_xlati43 = bitcast<i32>((x_823 & 3u));
    let x_826 : u32 = u_xlatu6;
    let x_829 : vec4<f32> = x_592.unity_LightIndices[bitcast<i32>(x_826)];
    let x_839 : i32 = u_xlati43;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_844 : vec4<u32> = indexable[x_839];
    u_xlat6.x = dot(x_829, bitcast<vec4<f32>>(x_844));
    let x_850 : f32 = u_xlat6.x;
    u_xlati6 = i32(x_850);
    let x_852 : vec3<f32> = vs_TEXCOORD1;
    let x_863 : i32 = u_xlati6;
    let x_865 : vec4<f32> = x_862.x_AdditionalLightsPosition[x_863];
    let x_868 : i32 = u_xlati6;
    let x_870 : vec4<f32> = x_862.x_AdditionalLightsPosition[x_868];
    let x_872 : vec3<f32> = ((-(x_852) * vec3<f32>(x_865.w, x_865.w, x_865.w)) + vec3<f32>(x_870.x, x_870.y, x_870.z));
    let x_873 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_872.x, x_872.y, x_872.z, x_873.w);
    let x_876 : vec4<f32> = u_xlat8;
    let x_878 : vec4<f32> = u_xlat8;
    u_xlat43 = dot(vec3<f32>(x_876.x, x_876.y, x_876.z), vec3<f32>(x_878.x, x_878.y, x_878.z));
    let x_881 : f32 = u_xlat43;
    u_xlat43 = max(x_881, 0.00006103515625f);
    let x_885 : f32 = u_xlat43;
    u_xlat44 = inverseSqrt(x_885);
    let x_888 : f32 = u_xlat44;
    let x_890 : vec4<f32> = u_xlat8;
    u_xlat9 = (vec3<f32>(x_888, x_888, x_888) * vec3<f32>(x_890.x, x_890.y, x_890.z));
    let x_894 : f32 = u_xlat43;
    u_xlat45 = (1.0f / x_894);
    let x_896 : f32 = u_xlat43;
    let x_897 : i32 = u_xlati6;
    let x_899 : f32 = x_862.x_AdditionalLightsAttenuation[x_897].x;
    u_xlat43 = (x_896 * x_899);
    let x_901 : f32 = u_xlat43;
    let x_903 : f32 = u_xlat43;
    u_xlat43 = ((-(x_901) * x_903) + 1.0f);
    let x_906 : f32 = u_xlat43;
    u_xlat43 = max(x_906, 0.0f);
    let x_908 : f32 = u_xlat43;
    let x_909 : f32 = u_xlat43;
    u_xlat43 = (x_908 * x_909);
    let x_911 : f32 = u_xlat43;
    let x_912 : f32 = u_xlat45;
    u_xlat43 = (x_911 * x_912);
    let x_914 : i32 = u_xlati6;
    let x_916 : vec4<f32> = x_862.x_AdditionalLightsSpotDir[x_914];
    let x_918 : vec3<f32> = u_xlat9;
    u_xlat45 = dot(vec3<f32>(x_916.x, x_916.y, x_916.z), x_918);
    let x_920 : f32 = u_xlat45;
    let x_921 : i32 = u_xlati6;
    let x_923 : f32 = x_862.x_AdditionalLightsAttenuation[x_921].z;
    let x_925 : i32 = u_xlati6;
    let x_927 : f32 = x_862.x_AdditionalLightsAttenuation[x_925].w;
    u_xlat45 = ((x_920 * x_923) + x_927);
    let x_929 : f32 = u_xlat45;
    u_xlat45 = clamp(x_929, 0.0f, 1.0f);
    let x_931 : f32 = u_xlat45;
    let x_932 : f32 = u_xlat45;
    u_xlat45 = (x_931 * x_932);
    let x_934 : f32 = u_xlat43;
    let x_935 : f32 = u_xlat45;
    u_xlat43 = (x_934 * x_935);
    let x_939 : i32 = u_xlati6;
    let x_941 : f32 = x_447.x_AdditionalShadowParams[x_939].w;
    u_xlati45 = i32(x_941);
    let x_946 : i32 = u_xlati45;
    u_xlatb10.x = (x_946 >= 0i);
    let x_950 : bool = u_xlatb10.x;
    if (x_950) {
      let x_954 : i32 = u_xlati6;
      let x_956 : f32 = x_447.x_AdditionalShadowParams[x_954].z;
      u_xlatb10.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_956, x_956, x_956, x_956))));
      let x_963 : bool = u_xlatb10.x;
      if (x_963) {
        let x_966 : vec3<f32> = u_xlat9;
        let x_969 : vec3<f32> = u_xlat9;
        let x_972 : vec4<bool> = (abs(vec4<f32>(x_966.z, x_966.z, x_966.y, x_966.z)) >= abs(vec4<f32>(x_969.x, x_969.y, x_969.x, x_969.x)));
        u_xlatb10 = vec3<bool>(x_972.x, x_972.y, x_972.z);
        let x_975 : bool = u_xlatb10.y;
        let x_977 : bool = u_xlatb10.x;
        u_xlatb10.x = (x_975 & x_977);
        let x_981 : vec3<f32> = u_xlat9;
        let x_984 : vec4<bool> = (-(vec4<f32>(x_981.z, x_981.y, x_981.x, x_981.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb11 = vec3<bool>(x_984.x, x_984.y, x_984.z);
        let x_988 : bool = u_xlatb11.x;
        u_xlat22.x = select(4.0f, 5.0f, x_988);
        let x_993 : bool = u_xlatb11.y;
        u_xlat22.z = select(2.0f, 3.0f, x_993);
        let x_999 : bool = u_xlatb11.z;
        u_xlat11 = select(0.0f, 1.0f, x_999);
        let x_1003 : bool = u_xlatb10.z;
        if (x_1003) {
          let x_1009 : f32 = u_xlat22.z;
          x_1005 = x_1009;
        } else {
          let x_1011 : f32 = u_xlat11;
          x_1005 = x_1011;
        }
        let x_1012 : f32 = x_1005;
        u_xlat34 = x_1012;
        let x_1015 : bool = u_xlatb10.x;
        if (x_1015) {
          let x_1020 : f32 = u_xlat22.x;
          x_1016 = x_1020;
        } else {
          let x_1022 : f32 = u_xlat34;
          x_1016 = x_1022;
        }
        let x_1023 : f32 = x_1016;
        u_xlat10.x = x_1023;
        let x_1025 : i32 = u_xlati6;
        let x_1027 : f32 = x_447.x_AdditionalShadowParams[x_1025].w;
        u_xlat22.x = trunc(x_1027);
        let x_1031 : f32 = u_xlat10.x;
        let x_1033 : f32 = u_xlat22.x;
        u_xlat10.x = (x_1031 + x_1033);
        let x_1037 : f32 = u_xlat10.x;
        u_xlati45 = i32(x_1037);
      }
      let x_1039 : i32 = u_xlati45;
      u_xlati45 = (x_1039 << bitcast<u32>(2i));
      let x_1041 : vec3<f32> = vs_TEXCOORD1;
      let x_1044 : i32 = u_xlati45;
      let x_1047 : i32 = u_xlati45;
      let x_1051 : vec4<f32> = x_447.x_AdditionalLightsWorldToShadow[((x_1044 + 1i) / 4i)][((x_1047 + 1i) % 4i)];
      u_xlat10 = (vec4<f32>(x_1041.y, x_1041.y, x_1041.y, x_1041.y) * x_1051);
      let x_1053 : i32 = u_xlati45;
      let x_1055 : i32 = u_xlati45;
      let x_1058 : vec4<f32> = x_447.x_AdditionalLightsWorldToShadow[(x_1053 / 4i)][(x_1055 % 4i)];
      let x_1059 : vec3<f32> = vs_TEXCOORD1;
      let x_1062 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_1058 * vec4<f32>(x_1059.x, x_1059.x, x_1059.x, x_1059.x)) + x_1062);
      let x_1064 : i32 = u_xlati45;
      let x_1067 : i32 = u_xlati45;
      let x_1071 : vec4<f32> = x_447.x_AdditionalLightsWorldToShadow[((x_1064 + 2i) / 4i)][((x_1067 + 2i) % 4i)];
      let x_1072 : vec3<f32> = vs_TEXCOORD1;
      let x_1075 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_1071 * vec4<f32>(x_1072.z, x_1072.z, x_1072.z, x_1072.z)) + x_1075);
      let x_1077 : vec4<f32> = u_xlat10;
      let x_1078 : i32 = u_xlati45;
      let x_1081 : i32 = u_xlati45;
      let x_1085 : vec4<f32> = x_447.x_AdditionalLightsWorldToShadow[((x_1078 + 3i) / 4i)][((x_1081 + 3i) % 4i)];
      u_xlat10 = (x_1077 + x_1085);
      let x_1087 : vec4<f32> = u_xlat10;
      let x_1089 : vec4<f32> = u_xlat10;
      let x_1091 : vec3<f32> = (vec3<f32>(x_1087.x, x_1087.y, x_1087.z) / vec3<f32>(x_1089.w, x_1089.w, x_1089.w));
      let x_1092 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_1091.x, x_1091.y, x_1091.z, x_1092.w);
      let x_1095 : vec4<f32> = u_xlat10;
      let x_1096 : vec2<f32> = vec2<f32>(x_1095.x, x_1095.y);
      let x_1098 : f32 = u_xlat10.z;
      txVec1 = vec3<f32>(x_1096.x, x_1096.y, x_1098);
      let x_1106 : vec3<f32> = txVec1;
      let x_1108 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1106.xy, x_1106.z);
      u_xlat45 = x_1108;
      let x_1109 : i32 = u_xlati6;
      let x_1111 : f32 = x_447.x_AdditionalShadowParams[x_1109].x;
      u_xlat10.x = (1.0f + -(x_1111));
      let x_1115 : f32 = u_xlat45;
      let x_1116 : i32 = u_xlati6;
      let x_1118 : f32 = x_447.x_AdditionalShadowParams[x_1116].x;
      let x_1121 : f32 = u_xlat10.x;
      u_xlat45 = ((x_1115 * x_1118) + x_1121);
      let x_1124 : f32 = u_xlat10.z;
      u_xlatb10.x = (0.0f >= x_1124);
      let x_1129 : f32 = u_xlat10.z;
      u_xlatb22 = (x_1129 >= 1.0f);
      let x_1131 : bool = u_xlatb22;
      let x_1133 : bool = u_xlatb10.x;
      u_xlatb10.x = (x_1131 | x_1133);
      let x_1137 : bool = u_xlatb10.x;
      let x_1138 : f32 = u_xlat45;
      u_xlat45 = select(x_1138, 1.0f, x_1137);
    } else {
      u_xlat45 = 1.0f;
    }
    let x_1141 : f32 = u_xlat45;
    u_xlat10.x = (-(x_1141) + 1.0f);
    let x_1145 : f32 = u_xlat37;
    let x_1147 : f32 = u_xlat10.x;
    let x_1149 : f32 = u_xlat45;
    u_xlat45 = ((x_1145 * x_1147) + x_1149);
    let x_1151 : f32 = u_xlat43;
    let x_1152 : f32 = u_xlat45;
    u_xlat43 = (x_1151 * x_1152);
    let x_1154 : vec3<f32> = u_xlat4;
    let x_1155 : vec3<f32> = u_xlat9;
    u_xlat45 = dot(x_1154, x_1155);
    let x_1157 : f32 = u_xlat45;
    u_xlat45 = clamp(x_1157, 0.0f, 1.0f);
    let x_1159 : f32 = u_xlat43;
    let x_1160 : f32 = u_xlat45;
    u_xlat43 = (x_1159 * x_1160);
    let x_1162 : f32 = u_xlat43;
    let x_1164 : i32 = u_xlati6;
    let x_1166 : vec4<f32> = x_862.x_AdditionalLightsColor[x_1164];
    let x_1168 : vec3<f32> = (vec3<f32>(x_1162, x_1162, x_1162) * vec3<f32>(x_1166.x, x_1166.y, x_1166.z));
    let x_1169 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1168.x, x_1168.y, x_1168.z, x_1169.w);
    let x_1171 : vec4<f32> = u_xlat8;
    let x_1173 : f32 = u_xlat44;
    let x_1176 : vec3<f32> = u_xlat15;
    let x_1177 : vec3<f32> = ((vec3<f32>(x_1171.x, x_1171.y, x_1171.z) * vec3<f32>(x_1173, x_1173, x_1173)) + x_1176);
    let x_1178 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1177.x, x_1177.y, x_1177.z, x_1178.w);
    let x_1180 : vec4<f32> = u_xlat8;
    let x_1182 : vec4<f32> = u_xlat8;
    u_xlat6.x = dot(vec3<f32>(x_1180.x, x_1180.y, x_1180.z), vec3<f32>(x_1182.x, x_1182.y, x_1182.z));
    let x_1187 : f32 = u_xlat6.x;
    u_xlat6.x = max(x_1187, 1.17549435e-38f);
    let x_1191 : f32 = u_xlat6.x;
    u_xlat6.x = inverseSqrt(x_1191);
    let x_1194 : vec3<f32> = u_xlat6;
    let x_1196 : vec4<f32> = u_xlat8;
    let x_1198 : vec3<f32> = (vec3<f32>(x_1194.x, x_1194.x, x_1194.x) * vec3<f32>(x_1196.x, x_1196.y, x_1196.z));
    let x_1199 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1198.x, x_1198.y, x_1198.z, x_1199.w);
    let x_1201 : vec3<f32> = u_xlat4;
    let x_1202 : vec4<f32> = u_xlat8;
    u_xlat6.x = dot(x_1201, vec3<f32>(x_1202.x, x_1202.y, x_1202.z));
    let x_1207 : f32 = u_xlat6.x;
    u_xlat6.x = clamp(x_1207, 0.0f, 1.0f);
    let x_1210 : vec3<f32> = u_xlat9;
    let x_1211 : vec4<f32> = u_xlat8;
    u_xlat43 = dot(x_1210, vec3<f32>(x_1211.x, x_1211.y, x_1211.z));
    let x_1214 : f32 = u_xlat43;
    u_xlat43 = clamp(x_1214, 0.0f, 1.0f);
    let x_1217 : f32 = u_xlat6.x;
    let x_1219 : f32 = u_xlat6.x;
    u_xlat6.x = (x_1217 * x_1219);
    let x_1223 : f32 = u_xlat6.x;
    let x_1225 : f32 = u_xlat1.x;
    u_xlat6.x = ((x_1223 * x_1225) + 1.00001001358032226562f);
    let x_1229 : f32 = u_xlat43;
    let x_1230 : f32 = u_xlat43;
    u_xlat43 = (x_1229 * x_1230);
    let x_1233 : f32 = u_xlat6.x;
    let x_1235 : f32 = u_xlat6.x;
    u_xlat6.x = (x_1233 * x_1235);
    let x_1238 : f32 = u_xlat43;
    u_xlat43 = max(x_1238, 0.10000000149011611938f);
    let x_1241 : f32 = u_xlat6.x;
    let x_1242 : f32 = u_xlat43;
    u_xlat6.x = (x_1241 * x_1242);
    let x_1245 : f32 = u_xlat40;
    let x_1247 : f32 = u_xlat6.x;
    u_xlat6.x = (x_1245 * x_1247);
    let x_1251 : f32 = u_xlat25.x;
    let x_1253 : f32 = u_xlat6.x;
    u_xlat6.x = (x_1251 / x_1253);
    let x_1256 : vec4<f32> = u_xlat0;
    let x_1258 : vec3<f32> = u_xlat6;
    let x_1261 : vec3<f32> = u_xlat14;
    let x_1262 : vec3<f32> = ((vec3<f32>(x_1256.x, x_1256.y, x_1256.z) * vec3<f32>(x_1258.x, x_1258.x, x_1258.x)) + x_1261);
    let x_1263 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1262.x, x_1262.y, x_1262.z, x_1263.w);
    let x_1265 : vec4<f32> = u_xlat8;
    let x_1267 : vec4<f32> = u_xlat10;
    let x_1270 : vec3<f32> = u_xlat7;
    u_xlat7 = ((vec3<f32>(x_1265.x, x_1265.y, x_1265.z) * vec3<f32>(x_1267.x, x_1267.y, x_1267.z)) + x_1270);

    continuing {
      let x_1272 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1272 + bitcast<u32>(1i));
    }
  }
  let x_1274 : vec4<f32> = u_xlat5;
  let x_1276 : vec3<f32> = u_xlat3;
  let x_1279 : vec3<f32> = u_xlat18;
  let x_1280 : vec3<f32> = ((vec3<f32>(x_1274.x, x_1274.y, x_1274.z) * vec3<f32>(x_1276.x, x_1276.x, x_1276.x)) + x_1279);
  let x_1281 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1280.x, x_1280.y, x_1280.z, x_1281.w);
  let x_1283 : vec3<f32> = u_xlat7;
  let x_1284 : vec4<f32> = u_xlat0;
  let x_1286 : vec3<f32> = (x_1283 + vec3<f32>(x_1284.x, x_1284.y, x_1284.z));
  let x_1287 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1286.x, x_1286.y, x_1286.z, x_1287.w);
  let x_1289 : f32 = u_xlat36;
  let x_1290 : f32 = u_xlat36;
  u_xlat36 = (x_1289 * -(x_1290));
  let x_1293 : f32 = u_xlat36;
  u_xlat36 = exp2(x_1293);
  let x_1295 : vec4<f32> = u_xlat0;
  let x_1298 : vec4<f32> = x_28.unity_FogColor;
  let x_1301 : vec3<f32> = (vec3<f32>(x_1295.x, x_1295.y, x_1295.z) + -(vec3<f32>(x_1298.x, x_1298.y, x_1298.z)));
  let x_1302 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1301.x, x_1301.y, x_1301.z, x_1302.w);
  let x_1306 : f32 = u_xlat36;
  let x_1308 : vec4<f32> = u_xlat0;
  let x_1312 : vec4<f32> = x_28.unity_FogColor;
  let x_1314 : vec3<f32> = ((vec3<f32>(x_1306, x_1306, x_1306) * vec3<f32>(x_1308.x, x_1308.y, x_1308.z)) + vec3<f32>(x_1312.x, x_1312.y, x_1312.z));
  let x_1315 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1314.x, x_1314.y, x_1314.z, x_1315.w);
  let x_1319 : f32 = x_54.x_Surface;
  u_xlatb0 = (x_1319 == 1.0f);
  let x_1321 : bool = u_xlatb0;
  if (x_1321) {
    let x_1326 : f32 = u_xlat2.x;
    x_1322 = x_1326;
  } else {
    x_1322 = 1.0f;
  }
  let x_1328 : f32 = x_1322;
  SV_Target0.w = x_1328;
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


