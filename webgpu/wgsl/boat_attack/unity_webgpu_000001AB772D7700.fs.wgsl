struct PGlobals {
  x_ScaledScreenParams : vec4<f32>,
  x_GlobalMipBias : vec2<f32>,
  @size(8)
  padding : u32,
  x_MainLightPosition : vec4<f32>,
  x_MainLightColor : vec4<f32>,
  x_AmbientOcclusionParam : vec4<f32>,
  x_AdditionalLightsCount : vec4<f32>,
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding_1 : u32,
  x_ProjectionParams : vec4<f32>,
  unity_OrthoParams : vec4<f32>,
  x_ScaleBiasRt : vec4<f32>,
  unity_FogParams : vec4<f32>,
  unity_FogColor : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
}

struct UnityPerMaterial {
  x_BaseMap_ST : vec4<f32>,
  x_DetailAlbedoMap_ST : vec4<f32>,
  x_BaseColor : vec4<f32>,
  x_SpecColor : vec4<f32>,
  x_EmissionColor : vec4<f32>,
  x_Cutoff : f32,
  x_Smoothness : f32,
  x_Metallic : f32,
  x_BumpScale : f32,
  x_Parallax : f32,
  x_OcclusionStrength : f32,
  x_ClearCoatMask : f32,
  x_ClearCoatSmoothness : f32,
  x_DetailAlbedoMapScale : f32,
  x_DetailNormalMapScale : f32,
  x_Surface : f32,
}

type Arr = array<mat4x4<f32>, 5u>;

struct MainLightShadows {
  x_MainLightWorldToShadow : Arr,
  x_CascadeShadowSplitSpheres0 : vec4<f32>,
  x_CascadeShadowSplitSpheres1 : vec4<f32>,
  x_CascadeShadowSplitSpheres2 : vec4<f32>,
  x_CascadeShadowSplitSpheres3 : vec4<f32>,
  x_CascadeShadowSplitSphereRadii : vec4<f32>,
  x_MainLightShadowOffset0 : vec4<f32>,
  x_MainLightShadowOffset1 : vec4<f32>,
  x_MainLightShadowParams : vec4<f32>,
  x_MainLightShadowmapSize : vec4<f32>,
}

type Arr_1 = array<vec4<f32>, 2u>;

struct UnityPerDraw {
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_LODFade : vec4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_RenderingLayer : vec4<f32>,
  unity_LightData : vec4<f32>,
  unity_LightIndices : Arr_1,
  unity_ProbesOcclusion : vec4<f32>,
  unity_SpecCube0_HDR : vec4<f32>,
  unity_SpecCube1_HDR : vec4<f32>,
  unity_SpecCube0_BoxMax : vec4<f32>,
  unity_SpecCube0_BoxMin : vec4<f32>,
  unity_SpecCube0_ProbePosition : vec4<f32>,
  unity_SpecCube1_BoxMax : vec4<f32>,
  unity_SpecCube1_BoxMin : vec4<f32>,
  unity_SpecCube1_ProbePosition : vec4<f32>,
  unity_LightmapST : vec4<f32>,
  unity_DynamicLightmapST : vec4<f32>,
  unity_SHAr : vec4<f32>,
  unity_SHAg : vec4<f32>,
  unity_SHAb : vec4<f32>,
  unity_SHBr : vec4<f32>,
  unity_SHBg : vec4<f32>,
  unity_SHBb : vec4<f32>,
  unity_SHC : vec4<f32>,
  unity_RendererBounds_Min : vec4<f32>,
  unity_RendererBounds_Max : vec4<f32>,
  unity_MatrixPreviousM : mat4x4<f32>,
  unity_MatrixPreviousMI : mat4x4<f32>,
  unity_MotionVectorsParams : vec4<f32>,
  unity_SpriteColor : vec4<f32>,
  unity_SpriteProps : vec4<f32>,
}

type Arr_2 = array<vec4<f32>, 256u>;

type Arr_3 = array<vec4<f32>, 256u>;

type Arr_4 = array<vec4<f32>, 256u>;

type Arr_5 = array<vec4<f32>, 256u>;

type Arr_6 = array<vec4<f32>, 256u>;

struct strided_arr {
  @size(16)
  el : f32,
}

type Arr_7 = array<strided_arr, 256u>;

struct AdditionalLights {
  x_AdditionalLightsPosition : Arr_6,
  x_AdditionalLightsColor : Arr_6,
  x_AdditionalLightsAttenuation : Arr_6,
  x_AdditionalLightsSpotDir : Arr_6,
  x_AdditionalLightsOcclusionProbes : Arr_6,
  x_AdditionalLightsLayerMasks : Arr_7,
}

var<private> gl_FragCoord : vec4<f32>;

@group(0) @binding(2) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(7) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(3) var<uniform> x_57 : UnityPerMaterial;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_133 : MainLightShadows;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(6) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD8 : vec2<f32>;

@group(0) @binding(3) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(9) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(5) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_646 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_870 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb33 : bool;
  var u_xlat2 : vec3<f32>;
  var u_xlat35 : f32;
  var u_xlat3 : vec3<f32>;
  var x_109 : vec3<f32>;
  var u_xlat33 : f32;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat7 : vec3<f32>;
  var u_xlatb4 : vec4<bool>;
  var u_xlatu33 : u32;
  var u_xlati33 : i32;
  var u_xlat36 : f32;
  var u_xlat12 : vec3<f32>;
  var u_xlat37 : f32;
  var u_xlat38 : f32;
  var u_xlat17 : f32;
  var u_xlat28 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat15 : f32;
  var u_xlatb15 : bool;
  var u_xlatb26 : bool;
  var x_536 : f32;
  var u_xlat26 : vec2<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat9 : vec3<f32>;
  var u_xlatu35 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu39 : u32;
  var u_xlati40 : i32;
  var u_xlat39 : f32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati39 : i32;
  var u_xlat40 : f32;
  var u_xlat41 : f32;
  var u_xlat42 : f32;
  var u_xlat10 : vec3<f32>;
  var u_xlatb0 : bool;
  var x_1094 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_40 : vec2<f32> = vs_TEXCOORD0;
  let x_50 : f32 = x_44.x_GlobalMipBias.x;
  let x_51 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_40, x_50);
  u_xlat0 = x_51;
  let x_53 : vec4<f32> = u_xlat0;
  let x_61 : vec4<f32> = x_57.x_BaseColor;
  u_xlat1 = (vec4<f32>(x_53.w, x_53.x, x_53.y, x_53.z) * vec4<f32>(x_61.w, x_61.x, x_61.y, x_61.z));
  let x_69 : f32 = x_44.unity_OrthoParams.w;
  u_xlatb33 = (x_69 == 0.0f);
  let x_76 : vec3<f32> = vs_TEXCOORD1;
  let x_81 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat2 = (-(x_76) + x_81);
  let x_85 : vec3<f32> = u_xlat2;
  let x_86 : vec3<f32> = u_xlat2;
  u_xlat35 = dot(x_85, x_86);
  let x_88 : f32 = u_xlat35;
  u_xlat35 = inverseSqrt(x_88);
  let x_90 : f32 = u_xlat35;
  let x_92 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_90, x_90, x_90) * x_92);
  let x_99 : f32 = x_44.unity_MatrixV[0i].z;
  u_xlat3.x = x_99;
  let x_102 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat3.y = x_102;
  let x_106 : f32 = x_44.unity_MatrixV[2i].z;
  u_xlat3.z = x_106;
  let x_108 : bool = u_xlatb33;
  if (x_108) {
    let x_112 : vec3<f32> = u_xlat2;
    x_109 = x_112;
  } else {
    let x_114 : vec3<f32> = u_xlat3;
    x_109 = x_114;
  }
  let x_115 : vec3<f32> = x_109;
  u_xlat2 = x_115;
  let x_118 : vec3<f32> = vs_TEXCOORD2;
  let x_119 : vec3<f32> = vs_TEXCOORD2;
  u_xlat33 = dot(x_118, x_119);
  let x_121 : f32 = u_xlat33;
  u_xlat33 = inverseSqrt(x_121);
  let x_123 : f32 = u_xlat33;
  let x_125 : vec3<f32> = vs_TEXCOORD2;
  u_xlat3 = (vec3<f32>(x_123, x_123, x_123) * x_125);
  let x_128 : vec3<f32> = vs_TEXCOORD1;
  let x_135 : vec4<f32> = x_133.x_CascadeShadowSplitSpheres0;
  let x_138 : vec3<f32> = (x_128 + -(vec3<f32>(x_135.x, x_135.y, x_135.z)));
  let x_139 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_138.x, x_138.y, x_138.z, x_139.w);
  let x_142 : vec3<f32> = vs_TEXCOORD1;
  let x_144 : vec4<f32> = x_133.x_CascadeShadowSplitSpheres1;
  let x_147 : vec3<f32> = (x_142 + -(vec3<f32>(x_144.x, x_144.y, x_144.z)));
  let x_148 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_147.x, x_147.y, x_147.z, x_148.w);
  let x_151 : vec3<f32> = vs_TEXCOORD1;
  let x_154 : vec4<f32> = x_133.x_CascadeShadowSplitSpheres2;
  u_xlat6 = (x_151 + -(vec3<f32>(x_154.x, x_154.y, x_154.z)));
  let x_159 : vec3<f32> = vs_TEXCOORD1;
  let x_162 : vec4<f32> = x_133.x_CascadeShadowSplitSpheres3;
  u_xlat7 = (x_159 + -(vec3<f32>(x_162.x, x_162.y, x_162.z)));
  let x_166 : vec4<f32> = u_xlat4;
  let x_168 : vec4<f32> = u_xlat4;
  u_xlat4.x = dot(vec3<f32>(x_166.x, x_166.y, x_166.z), vec3<f32>(x_168.x, x_168.y, x_168.z));
  let x_172 : vec4<f32> = u_xlat5;
  let x_174 : vec4<f32> = u_xlat5;
  u_xlat4.y = dot(vec3<f32>(x_172.x, x_172.y, x_172.z), vec3<f32>(x_174.x, x_174.y, x_174.z));
  let x_178 : vec3<f32> = u_xlat6;
  let x_179 : vec3<f32> = u_xlat6;
  u_xlat4.z = dot(x_178, x_179);
  let x_182 : vec3<f32> = u_xlat7;
  let x_183 : vec3<f32> = u_xlat7;
  u_xlat4.w = dot(x_182, x_183);
  let x_189 : vec4<f32> = u_xlat4;
  let x_192 : vec4<f32> = x_133.x_CascadeShadowSplitSphereRadii;
  u_xlatb4 = (x_189 < x_192);
  let x_195 : bool = u_xlatb4.x;
  u_xlat5.x = select(0.0f, 1.0f, x_195);
  let x_199 : bool = u_xlatb4.y;
  u_xlat5.y = select(0.0f, 1.0f, x_199);
  let x_203 : bool = u_xlatb4.z;
  u_xlat5.z = select(0.0f, 1.0f, x_203);
  let x_207 : bool = u_xlatb4.w;
  u_xlat5.w = select(0.0f, 1.0f, x_207);
  let x_211 : bool = u_xlatb4.x;
  u_xlat4.x = select(-0.0f, -1.0f, x_211);
  let x_217 : bool = u_xlatb4.y;
  u_xlat4.y = select(-0.0f, -1.0f, x_217);
  let x_221 : bool = u_xlatb4.z;
  u_xlat4.z = select(-0.0f, -1.0f, x_221);
  let x_224 : vec4<f32> = u_xlat4;
  let x_226 : vec4<f32> = u_xlat5;
  let x_228 : vec3<f32> = (vec3<f32>(x_224.x, x_224.y, x_224.z) + vec3<f32>(x_226.y, x_226.z, x_226.w));
  let x_229 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_228.x, x_228.y, x_228.z, x_229.w);
  let x_231 : vec4<f32> = u_xlat4;
  let x_234 : vec3<f32> = max(vec3<f32>(x_231.x, x_231.y, x_231.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_235 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_235.x, x_234.x, x_234.y, x_234.z);
  let x_237 : vec4<f32> = u_xlat5;
  u_xlat33 = dot(x_237, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_243 : f32 = u_xlat33;
  u_xlat33 = (-(x_243) + 4.0f);
  let x_248 : f32 = u_xlat33;
  u_xlatu33 = u32(x_248);
  let x_252 : u32 = u_xlatu33;
  u_xlati33 = (bitcast<i32>(x_252) << bitcast<u32>(2i));
  let x_255 : vec3<f32> = vs_TEXCOORD1;
  let x_257 : i32 = u_xlati33;
  let x_260 : i32 = u_xlati33;
  let x_264 : vec4<f32> = x_133.x_MainLightWorldToShadow[((x_257 + 1i) / 4i)][((x_260 + 1i) % 4i)];
  let x_266 : vec3<f32> = (vec3<f32>(x_255.y, x_255.y, x_255.y) * vec3<f32>(x_264.x, x_264.y, x_264.z));
  let x_267 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_266.x, x_266.y, x_266.z, x_267.w);
  let x_269 : i32 = u_xlati33;
  let x_271 : i32 = u_xlati33;
  let x_274 : vec4<f32> = x_133.x_MainLightWorldToShadow[(x_269 / 4i)][(x_271 % 4i)];
  let x_276 : vec3<f32> = vs_TEXCOORD1;
  let x_279 : vec4<f32> = u_xlat4;
  let x_281 : vec3<f32> = ((vec3<f32>(x_274.x, x_274.y, x_274.z) * vec3<f32>(x_276.x, x_276.x, x_276.x)) + vec3<f32>(x_279.x, x_279.y, x_279.z));
  let x_282 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_281.x, x_281.y, x_281.z, x_282.w);
  let x_284 : i32 = u_xlati33;
  let x_287 : i32 = u_xlati33;
  let x_291 : vec4<f32> = x_133.x_MainLightWorldToShadow[((x_284 + 2i) / 4i)][((x_287 + 2i) % 4i)];
  let x_293 : vec3<f32> = vs_TEXCOORD1;
  let x_296 : vec4<f32> = u_xlat4;
  let x_298 : vec3<f32> = ((vec3<f32>(x_291.x, x_291.y, x_291.z) * vec3<f32>(x_293.z, x_293.z, x_293.z)) + vec3<f32>(x_296.x, x_296.y, x_296.z));
  let x_299 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_298.x, x_298.y, x_298.z, x_299.w);
  let x_301 : vec4<f32> = u_xlat4;
  let x_303 : i32 = u_xlati33;
  let x_306 : i32 = u_xlati33;
  let x_310 : vec4<f32> = x_133.x_MainLightWorldToShadow[((x_303 + 3i) / 4i)][((x_306 + 3i) % 4i)];
  let x_312 : vec3<f32> = (vec3<f32>(x_301.x, x_301.y, x_301.z) + vec3<f32>(x_310.x, x_310.y, x_310.z));
  let x_313 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_312.x, x_312.y, x_312.z, x_313.w);
  let x_316 : f32 = vs_TEXCOORD1.y;
  let x_318 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat33 = (x_316 * x_318);
  let x_321 : f32 = x_44.unity_MatrixV[0i].z;
  let x_323 : f32 = vs_TEXCOORD1.x;
  let x_325 : f32 = u_xlat33;
  u_xlat33 = ((x_321 * x_323) + x_325);
  let x_328 : f32 = x_44.unity_MatrixV[2i].z;
  let x_330 : f32 = vs_TEXCOORD1.z;
  let x_332 : f32 = u_xlat33;
  u_xlat33 = ((x_328 * x_330) + x_332);
  let x_334 : f32 = u_xlat33;
  let x_336 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat33 = (x_334 + x_336);
  let x_338 : f32 = u_xlat33;
  let x_342 : f32 = x_44.x_ProjectionParams.y;
  u_xlat33 = (-(x_338) + -(x_342));
  let x_345 : f32 = u_xlat33;
  u_xlat33 = max(x_345, 0.0f);
  let x_347 : f32 = u_xlat33;
  let x_350 : f32 = x_44.unity_FogParams.x;
  u_xlat33 = (x_347 * x_350);
  let x_358 : vec2<f32> = vs_TEXCOORD8;
  let x_360 : f32 = x_44.x_GlobalMipBias.x;
  let x_361 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_358, x_360);
  let x_362 : vec3<f32> = vec3<f32>(x_361.x, x_361.y, x_361.z);
  let x_363 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_362.x, x_362.y, x_362.z, x_363.w);
  let x_367 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_368 : vec2<f32> = vec2<f32>(x_367.x, x_367.y);
  let x_372 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_368.x, x_368.y));
  let x_373 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_372.x, x_372.y, x_373.z);
  let x_375 : vec3<f32> = u_xlat6;
  let x_377 : vec4<f32> = hlslcc_FragCoord;
  let x_379 : vec2<f32> = (vec2<f32>(x_375.x, x_375.y) * vec2<f32>(x_377.x, x_377.y));
  let x_380 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_379.x, x_379.y, x_380.z);
  let x_383 : f32 = u_xlat6.y;
  let x_386 : f32 = x_44.x_ScaleBiasRt.x;
  let x_389 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat35 = ((x_383 * x_386) + x_389);
  let x_391 : f32 = u_xlat35;
  u_xlat6.z = (-(x_391) + 1.0f);
  let x_396 : f32 = x_57.x_Metallic;
  u_xlat35 = ((-(x_396) * 0.959999979f) + 0.959999979f);
  let x_402 : f32 = u_xlat35;
  let x_405 : f32 = x_57.x_Smoothness;
  u_xlat36 = (-(x_402) + x_405);
  let x_408 : vec4<f32> = u_xlat1;
  let x_410 : f32 = u_xlat35;
  u_xlat12 = (vec3<f32>(x_408.y, x_408.z, x_408.w) * vec3<f32>(x_410, x_410, x_410));
  let x_413 : vec4<f32> = u_xlat0;
  let x_416 : vec4<f32> = x_57.x_BaseColor;
  let x_421 : vec3<f32> = ((vec3<f32>(x_413.x, x_413.y, x_413.z) * vec3<f32>(x_416.x, x_416.y, x_416.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_422 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_421.x, x_421.y, x_421.z, x_422.w);
  let x_425 : f32 = x_57.x_Metallic;
  let x_427 : f32 = x_57.x_Metallic;
  let x_429 : f32 = x_57.x_Metallic;
  let x_430 : vec3<f32> = vec3<f32>(x_425, x_427, x_429);
  let x_435 : vec4<f32> = u_xlat0;
  let x_440 : vec3<f32> = ((vec3<f32>(x_430.x, x_430.y, x_430.z) * vec3<f32>(x_435.x, x_435.y, x_435.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_441 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_440.x, x_440.y, x_440.z, x_441.w);
  let x_444 : f32 = x_57.x_Smoothness;
  u_xlat35 = (-(x_444) + 1.0f);
  let x_448 : f32 = u_xlat35;
  let x_449 : f32 = u_xlat35;
  u_xlat37 = (x_448 * x_449);
  let x_451 : f32 = u_xlat37;
  u_xlat37 = max(x_451, 0.0078125f);
  let x_455 : f32 = u_xlat37;
  let x_456 : f32 = u_xlat37;
  u_xlat38 = (x_455 * x_456);
  let x_458 : f32 = u_xlat36;
  u_xlat36 = (x_458 + 1.0f);
  let x_460 : f32 = u_xlat36;
  u_xlat36 = clamp(x_460, 0.0f, 1.0f);
  let x_463 : f32 = u_xlat37;
  u_xlat17 = ((x_463 * 4.0f) + 2.0f);
  let x_471 : vec3<f32> = u_xlat6;
  let x_474 : f32 = x_44.x_GlobalMipBias.x;
  let x_475 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_471.x, x_471.z), x_474);
  u_xlat6.x = x_475.x;
  let x_480 : f32 = u_xlat6.x;
  u_xlat28 = (x_480 + -1.0f);
  let x_483 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_484 : f32 = u_xlat28;
  u_xlat28 = ((x_483 * x_484) + 1.0f);
  let x_488 : f32 = u_xlat6.x;
  u_xlat6.x = min(x_488, 1.0f);
  let x_492 : vec4<f32> = u_xlat4;
  let x_493 : vec2<f32> = vec2<f32>(x_492.x, x_492.y);
  let x_495 : f32 = u_xlat4.z;
  txVec0 = vec3<f32>(x_493.x, x_493.y, x_495);
  let x_507 : vec3<f32> = txVec0;
  let x_509 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_507.xy, x_507.z);
  u_xlat4.x = x_509;
  let x_513 : f32 = x_133.x_MainLightShadowParams.x;
  u_xlat15 = (-(x_513) + 1.0f);
  let x_517 : f32 = u_xlat4.x;
  let x_519 : f32 = x_133.x_MainLightShadowParams.x;
  let x_521 : f32 = u_xlat15;
  u_xlat4.x = ((x_517 * x_519) + x_521);
  let x_526 : f32 = u_xlat4.z;
  u_xlatb15 = (0.0f >= x_526);
  let x_530 : f32 = u_xlat4.z;
  u_xlatb26 = (x_530 >= 1.0f);
  let x_532 : bool = u_xlatb26;
  let x_533 : bool = u_xlatb15;
  u_xlatb15 = (x_532 | x_533);
  let x_535 : bool = u_xlatb15;
  if (x_535) {
    x_536 = 1.0f;
  } else {
    let x_541 : f32 = u_xlat4.x;
    x_536 = x_541;
  }
  let x_542 : f32 = x_536;
  u_xlat4.x = x_542;
  let x_544 : vec3<f32> = vs_TEXCOORD1;
  let x_546 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat7 = (x_544 + -(x_546));
  let x_549 : vec3<f32> = u_xlat7;
  let x_550 : vec3<f32> = u_xlat7;
  u_xlat15 = dot(x_549, x_550);
  let x_552 : f32 = u_xlat15;
  let x_554 : f32 = x_133.x_MainLightShadowParams.z;
  let x_557 : f32 = x_133.x_MainLightShadowParams.w;
  u_xlat15 = ((x_552 * x_554) + x_557);
  let x_559 : f32 = u_xlat15;
  u_xlat15 = clamp(x_559, 0.0f, 1.0f);
  let x_564 : f32 = u_xlat4.x;
  u_xlat26.x = (-(x_564) + 1.0f);
  let x_568 : f32 = u_xlat15;
  let x_570 : f32 = u_xlat26.x;
  let x_573 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_568 * x_570) + x_573);
  let x_576 : f32 = u_xlat28;
  let x_579 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat7 = (vec3<f32>(x_576, x_576, x_576) * vec3<f32>(x_579.x, x_579.y, x_579.z));
  let x_582 : vec3<f32> = u_xlat2;
  let x_584 : vec3<f32> = u_xlat3;
  u_xlat15 = dot(-(x_582), x_584);
  let x_586 : f32 = u_xlat15;
  let x_587 : f32 = u_xlat15;
  u_xlat15 = (x_586 + x_587);
  let x_590 : vec3<f32> = u_xlat3;
  let x_591 : f32 = u_xlat15;
  let x_595 : vec3<f32> = u_xlat2;
  let x_597 : vec3<f32> = ((x_590 * -(vec3<f32>(x_591, x_591, x_591))) + -(x_595));
  let x_598 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_597.x, x_597.y, x_597.z, x_598.w);
  let x_600 : vec3<f32> = u_xlat3;
  let x_601 : vec3<f32> = u_xlat2;
  u_xlat15 = dot(x_600, x_601);
  let x_603 : f32 = u_xlat15;
  u_xlat15 = clamp(x_603, 0.0f, 1.0f);
  let x_605 : f32 = u_xlat15;
  u_xlat15 = (-(x_605) + 1.0f);
  let x_608 : f32 = u_xlat15;
  let x_609 : f32 = u_xlat15;
  u_xlat15 = (x_608 * x_609);
  let x_611 : f32 = u_xlat15;
  let x_612 : f32 = u_xlat15;
  u_xlat15 = (x_611 * x_612);
  let x_614 : f32 = u_xlat35;
  u_xlat26.x = ((-(x_614) * 0.699999988f) + 1.700000048f);
  let x_621 : f32 = u_xlat35;
  let x_623 : f32 = u_xlat26.x;
  u_xlat35 = (x_621 * x_623);
  let x_625 : f32 = u_xlat35;
  u_xlat35 = (x_625 * 6.0f);
  let x_636 : vec4<f32> = u_xlat8;
  let x_638 : f32 = u_xlat35;
  let x_639 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_636.x, x_636.y, x_636.z), x_638);
  u_xlat8 = x_639;
  let x_641 : f32 = u_xlat8.w;
  u_xlat35 = (x_641 + -1.0f);
  let x_648 : f32 = x_646.unity_SpecCube0_HDR.w;
  let x_649 : f32 = u_xlat35;
  u_xlat35 = ((x_648 * x_649) + 1.0f);
  let x_652 : f32 = u_xlat35;
  u_xlat35 = max(x_652, 0.0f);
  let x_654 : f32 = u_xlat35;
  u_xlat35 = log2(x_654);
  let x_656 : f32 = u_xlat35;
  let x_658 : f32 = x_646.unity_SpecCube0_HDR.y;
  u_xlat35 = (x_656 * x_658);
  let x_660 : f32 = u_xlat35;
  u_xlat35 = exp2(x_660);
  let x_662 : f32 = u_xlat35;
  let x_664 : f32 = x_646.unity_SpecCube0_HDR.x;
  u_xlat35 = (x_662 * x_664);
  let x_666 : vec4<f32> = u_xlat8;
  let x_668 : f32 = u_xlat35;
  let x_670 : vec3<f32> = (vec3<f32>(x_666.x, x_666.y, x_666.z) * vec3<f32>(x_668, x_668, x_668));
  let x_671 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_670.x, x_670.y, x_670.z, x_671.w);
  let x_673 : f32 = u_xlat37;
  let x_675 : f32 = u_xlat37;
  u_xlat26 = ((vec2<f32>(x_673, x_673) * vec2<f32>(x_675, x_675)) + vec2<f32>(-1.0f, 1.0f));
  let x_681 : f32 = u_xlat26.y;
  u_xlat35 = (1.0f / x_681);
  let x_684 : vec4<f32> = u_xlat0;
  let x_687 : f32 = u_xlat36;
  u_xlat9 = (-(vec3<f32>(x_684.x, x_684.y, x_684.z)) + vec3<f32>(x_687, x_687, x_687));
  let x_690 : f32 = u_xlat15;
  let x_692 : vec3<f32> = u_xlat9;
  let x_694 : vec4<f32> = u_xlat0;
  u_xlat9 = ((vec3<f32>(x_690, x_690, x_690) * x_692) + vec3<f32>(x_694.x, x_694.y, x_694.z));
  let x_697 : f32 = u_xlat35;
  let x_699 : vec3<f32> = u_xlat9;
  u_xlat9 = (vec3<f32>(x_697, x_697, x_697) * x_699);
  let x_701 : vec4<f32> = u_xlat8;
  let x_703 : vec3<f32> = u_xlat9;
  let x_704 : vec3<f32> = (vec3<f32>(x_701.x, x_701.y, x_701.z) * x_703);
  let x_705 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_704.x, x_704.y, x_704.z, x_705.w);
  let x_707 : vec4<f32> = u_xlat5;
  let x_709 : vec3<f32> = u_xlat12;
  let x_711 : vec4<f32> = u_xlat8;
  let x_713 : vec3<f32> = ((vec3<f32>(x_707.x, x_707.y, x_707.z) * x_709) + vec3<f32>(x_711.x, x_711.y, x_711.z));
  let x_714 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_713.x, x_713.y, x_713.z, x_714.w);
  let x_717 : f32 = u_xlat4.x;
  let x_719 : f32 = x_646.unity_LightData.z;
  u_xlat35 = (x_717 * x_719);
  let x_721 : vec3<f32> = u_xlat3;
  let x_723 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat36 = dot(x_721, vec3<f32>(x_723.x, x_723.y, x_723.z));
  let x_726 : f32 = u_xlat36;
  u_xlat36 = clamp(x_726, 0.0f, 1.0f);
  let x_728 : f32 = u_xlat35;
  let x_729 : f32 = u_xlat36;
  u_xlat35 = (x_728 * x_729);
  let x_731 : f32 = u_xlat35;
  let x_733 : vec3<f32> = u_xlat7;
  let x_734 : vec3<f32> = (vec3<f32>(x_731, x_731, x_731) * x_733);
  let x_735 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_734.x, x_734.y, x_735.z, x_734.z);
  let x_737 : vec3<f32> = u_xlat2;
  let x_739 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat7 = (x_737 + vec3<f32>(x_739.x, x_739.y, x_739.z));
  let x_742 : vec3<f32> = u_xlat7;
  let x_743 : vec3<f32> = u_xlat7;
  u_xlat35 = dot(x_742, x_743);
  let x_745 : f32 = u_xlat35;
  u_xlat35 = max(x_745, 1.17549435e-37f);
  let x_748 : f32 = u_xlat35;
  u_xlat35 = inverseSqrt(x_748);
  let x_750 : f32 = u_xlat35;
  let x_752 : vec3<f32> = u_xlat7;
  u_xlat7 = (vec3<f32>(x_750, x_750, x_750) * x_752);
  let x_754 : vec3<f32> = u_xlat3;
  let x_755 : vec3<f32> = u_xlat7;
  u_xlat35 = dot(x_754, x_755);
  let x_757 : f32 = u_xlat35;
  u_xlat35 = clamp(x_757, 0.0f, 1.0f);
  let x_760 : vec4<f32> = x_44.x_MainLightPosition;
  let x_762 : vec3<f32> = u_xlat7;
  u_xlat36 = dot(vec3<f32>(x_760.x, x_760.y, x_760.z), x_762);
  let x_764 : f32 = u_xlat36;
  u_xlat36 = clamp(x_764, 0.0f, 1.0f);
  let x_766 : f32 = u_xlat35;
  let x_767 : f32 = u_xlat35;
  u_xlat35 = (x_766 * x_767);
  let x_769 : f32 = u_xlat35;
  let x_771 : f32 = u_xlat26.x;
  u_xlat35 = ((x_769 * x_771) + 1.000010014f);
  let x_775 : f32 = u_xlat36;
  let x_776 : f32 = u_xlat36;
  u_xlat36 = (x_775 * x_776);
  let x_778 : f32 = u_xlat35;
  let x_779 : f32 = u_xlat35;
  u_xlat35 = (x_778 * x_779);
  let x_781 : f32 = u_xlat36;
  u_xlat36 = max(x_781, 0.100000001f);
  let x_784 : f32 = u_xlat35;
  let x_785 : f32 = u_xlat36;
  u_xlat35 = (x_784 * x_785);
  let x_787 : f32 = u_xlat17;
  let x_788 : f32 = u_xlat35;
  u_xlat35 = (x_787 * x_788);
  let x_790 : f32 = u_xlat38;
  let x_791 : f32 = u_xlat35;
  u_xlat35 = (x_790 / x_791);
  let x_793 : vec4<f32> = u_xlat0;
  let x_795 : f32 = u_xlat35;
  let x_798 : vec3<f32> = u_xlat12;
  u_xlat7 = ((vec3<f32>(x_793.x, x_793.y, x_793.z) * vec3<f32>(x_795, x_795, x_795)) + x_798);
  let x_800 : vec4<f32> = u_xlat4;
  let x_802 : vec3<f32> = u_xlat7;
  let x_803 : vec3<f32> = (vec3<f32>(x_800.x, x_800.y, x_800.w) * x_802);
  let x_804 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_803.x, x_803.y, x_804.z, x_803.z);
  let x_807 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_809 : f32 = x_646.unity_LightData.y;
  u_xlat35 = min(x_807, x_809);
  let x_812 : f32 = u_xlat35;
  u_xlatu35 = bitcast<u32>(i32(x_812));
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_824 : u32 = u_xlatu_loop_1;
    let x_825 : u32 = u_xlatu35;
    if ((x_824 < x_825)) {
    } else {
      break;
    }
    let x_828 : u32 = u_xlatu_loop_1;
    u_xlatu39 = (x_828 >> 2u);
    let x_831 : u32 = u_xlatu_loop_1;
    u_xlati40 = bitcast<i32>((x_831 & 3u));
    let x_835 : u32 = u_xlatu39;
    let x_838 : vec4<f32> = x_646.unity_LightIndices[bitcast<i32>(x_835)];
    let x_848 : i32 = u_xlati40;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_853 : vec4<u32> = indexable[x_848];
    u_xlat39 = dot(x_838, bitcast<vec4<f32>>(x_853));
    let x_857 : f32 = u_xlat39;
    u_xlati39 = i32(x_857);
    let x_859 : vec3<f32> = vs_TEXCOORD1;
    let x_871 : i32 = u_xlati39;
    let x_873 : vec4<f32> = x_870.x_AdditionalLightsPosition[x_871];
    let x_876 : i32 = u_xlati39;
    let x_878 : vec4<f32> = x_870.x_AdditionalLightsPosition[x_876];
    let x_880 : vec3<f32> = ((-(x_859) * vec3<f32>(x_873.w, x_873.w, x_873.w)) + vec3<f32>(x_878.x, x_878.y, x_878.z));
    let x_881 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_880.x, x_880.y, x_880.z, x_881.w);
    let x_884 : vec4<f32> = u_xlat8;
    let x_886 : vec4<f32> = u_xlat8;
    u_xlat40 = dot(vec3<f32>(x_884.x, x_884.y, x_884.z), vec3<f32>(x_886.x, x_886.y, x_886.z));
    let x_889 : f32 = u_xlat40;
    u_xlat40 = max(x_889, 6.10351562e-05f);
    let x_893 : f32 = u_xlat40;
    u_xlat41 = inverseSqrt(x_893);
    let x_895 : f32 = u_xlat41;
    let x_897 : vec4<f32> = u_xlat8;
    u_xlat9 = (vec3<f32>(x_895, x_895, x_895) * vec3<f32>(x_897.x, x_897.y, x_897.z));
    let x_901 : f32 = u_xlat40;
    u_xlat42 = (1.0f / x_901);
    let x_903 : f32 = u_xlat40;
    let x_904 : i32 = u_xlati39;
    let x_906 : f32 = x_870.x_AdditionalLightsAttenuation[x_904].x;
    u_xlat40 = (x_903 * x_906);
    let x_908 : f32 = u_xlat40;
    let x_910 : f32 = u_xlat40;
    u_xlat40 = ((-(x_908) * x_910) + 1.0f);
    let x_913 : f32 = u_xlat40;
    u_xlat40 = max(x_913, 0.0f);
    let x_915 : f32 = u_xlat40;
    let x_916 : f32 = u_xlat40;
    u_xlat40 = (x_915 * x_916);
    let x_918 : f32 = u_xlat40;
    let x_919 : f32 = u_xlat42;
    u_xlat40 = (x_918 * x_919);
    let x_921 : i32 = u_xlati39;
    let x_923 : vec4<f32> = x_870.x_AdditionalLightsSpotDir[x_921];
    let x_925 : vec3<f32> = u_xlat9;
    u_xlat42 = dot(vec3<f32>(x_923.x, x_923.y, x_923.z), x_925);
    let x_927 : f32 = u_xlat42;
    let x_928 : i32 = u_xlati39;
    let x_930 : f32 = x_870.x_AdditionalLightsAttenuation[x_928].z;
    let x_932 : i32 = u_xlati39;
    let x_934 : f32 = x_870.x_AdditionalLightsAttenuation[x_932].w;
    u_xlat42 = ((x_927 * x_930) + x_934);
    let x_936 : f32 = u_xlat42;
    u_xlat42 = clamp(x_936, 0.0f, 1.0f);
    let x_938 : f32 = u_xlat42;
    let x_939 : f32 = u_xlat42;
    u_xlat42 = (x_938 * x_939);
    let x_941 : f32 = u_xlat40;
    let x_942 : f32 = u_xlat42;
    u_xlat40 = (x_941 * x_942);
    let x_945 : f32 = u_xlat28;
    let x_947 : i32 = u_xlati39;
    let x_949 : vec4<f32> = x_870.x_AdditionalLightsColor[x_947];
    u_xlat10 = (vec3<f32>(x_945, x_945, x_945) * vec3<f32>(x_949.x, x_949.y, x_949.z));
    let x_952 : vec3<f32> = u_xlat3;
    let x_953 : vec3<f32> = u_xlat9;
    u_xlat39 = dot(x_952, x_953);
    let x_955 : f32 = u_xlat39;
    u_xlat39 = clamp(x_955, 0.0f, 1.0f);
    let x_957 : f32 = u_xlat39;
    let x_958 : f32 = u_xlat40;
    u_xlat39 = (x_957 * x_958);
    let x_960 : f32 = u_xlat39;
    let x_962 : vec3<f32> = u_xlat10;
    u_xlat10 = (vec3<f32>(x_960, x_960, x_960) * x_962);
    let x_964 : vec4<f32> = u_xlat8;
    let x_966 : f32 = u_xlat41;
    let x_969 : vec3<f32> = u_xlat2;
    let x_970 : vec3<f32> = ((vec3<f32>(x_964.x, x_964.y, x_964.z) * vec3<f32>(x_966, x_966, x_966)) + x_969);
    let x_971 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_970.x, x_970.y, x_970.z, x_971.w);
    let x_973 : vec4<f32> = u_xlat8;
    let x_975 : vec4<f32> = u_xlat8;
    u_xlat39 = dot(vec3<f32>(x_973.x, x_973.y, x_973.z), vec3<f32>(x_975.x, x_975.y, x_975.z));
    let x_978 : f32 = u_xlat39;
    u_xlat39 = max(x_978, 1.17549435e-37f);
    let x_980 : f32 = u_xlat39;
    u_xlat39 = inverseSqrt(x_980);
    let x_982 : f32 = u_xlat39;
    let x_984 : vec4<f32> = u_xlat8;
    let x_986 : vec3<f32> = (vec3<f32>(x_982, x_982, x_982) * vec3<f32>(x_984.x, x_984.y, x_984.z));
    let x_987 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_986.x, x_986.y, x_986.z, x_987.w);
    let x_989 : vec3<f32> = u_xlat3;
    let x_990 : vec4<f32> = u_xlat8;
    u_xlat39 = dot(x_989, vec3<f32>(x_990.x, x_990.y, x_990.z));
    let x_993 : f32 = u_xlat39;
    u_xlat39 = clamp(x_993, 0.0f, 1.0f);
    let x_995 : vec3<f32> = u_xlat9;
    let x_996 : vec4<f32> = u_xlat8;
    u_xlat40 = dot(x_995, vec3<f32>(x_996.x, x_996.y, x_996.z));
    let x_999 : f32 = u_xlat40;
    u_xlat40 = clamp(x_999, 0.0f, 1.0f);
    let x_1001 : f32 = u_xlat39;
    let x_1002 : f32 = u_xlat39;
    u_xlat39 = (x_1001 * x_1002);
    let x_1004 : f32 = u_xlat39;
    let x_1006 : f32 = u_xlat26.x;
    u_xlat39 = ((x_1004 * x_1006) + 1.000010014f);
    let x_1009 : f32 = u_xlat40;
    let x_1010 : f32 = u_xlat40;
    u_xlat40 = (x_1009 * x_1010);
    let x_1012 : f32 = u_xlat39;
    let x_1013 : f32 = u_xlat39;
    u_xlat39 = (x_1012 * x_1013);
    let x_1015 : f32 = u_xlat40;
    u_xlat40 = max(x_1015, 0.100000001f);
    let x_1017 : f32 = u_xlat39;
    let x_1018 : f32 = u_xlat40;
    u_xlat39 = (x_1017 * x_1018);
    let x_1020 : f32 = u_xlat17;
    let x_1021 : f32 = u_xlat39;
    u_xlat39 = (x_1020 * x_1021);
    let x_1023 : f32 = u_xlat38;
    let x_1024 : f32 = u_xlat39;
    u_xlat39 = (x_1023 / x_1024);
    let x_1026 : vec4<f32> = u_xlat0;
    let x_1028 : f32 = u_xlat39;
    let x_1031 : vec3<f32> = u_xlat12;
    let x_1032 : vec3<f32> = ((vec3<f32>(x_1026.x, x_1026.y, x_1026.z) * vec3<f32>(x_1028, x_1028, x_1028)) + x_1031);
    let x_1033 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1032.x, x_1032.y, x_1032.z, x_1033.w);
    let x_1035 : vec4<f32> = u_xlat8;
    let x_1037 : vec3<f32> = u_xlat10;
    let x_1039 : vec3<f32> = u_xlat7;
    u_xlat7 = ((vec3<f32>(x_1035.x, x_1035.y, x_1035.z) * x_1037) + x_1039);

    continuing {
      let x_1041 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1041 + bitcast<u32>(1i));
    }
  }
  let x_1043 : vec4<f32> = u_xlat5;
  let x_1045 : vec3<f32> = u_xlat6;
  let x_1048 : vec4<f32> = u_xlat4;
  let x_1050 : vec3<f32> = ((vec3<f32>(x_1043.x, x_1043.y, x_1043.z) * vec3<f32>(x_1045.x, x_1045.x, x_1045.x)) + vec3<f32>(x_1048.x, x_1048.y, x_1048.w));
  let x_1051 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1050.x, x_1050.y, x_1050.z, x_1051.w);
  let x_1053 : vec3<f32> = u_xlat7;
  let x_1054 : vec4<f32> = u_xlat0;
  let x_1056 : vec3<f32> = (x_1053 + vec3<f32>(x_1054.x, x_1054.y, x_1054.z));
  let x_1057 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1056.x, x_1056.y, x_1056.z, x_1057.w);
  let x_1059 : f32 = u_xlat33;
  let x_1060 : f32 = u_xlat33;
  u_xlat33 = (x_1059 * -(x_1060));
  let x_1063 : f32 = u_xlat33;
  u_xlat33 = exp2(x_1063);
  let x_1065 : vec4<f32> = u_xlat0;
  let x_1069 : vec4<f32> = x_44.unity_FogColor;
  let x_1072 : vec3<f32> = (vec3<f32>(x_1065.x, x_1065.y, x_1065.z) + -(vec3<f32>(x_1069.x, x_1069.y, x_1069.z)));
  let x_1073 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1072.x, x_1072.y, x_1072.z, x_1073.w);
  let x_1077 : f32 = u_xlat33;
  let x_1079 : vec4<f32> = u_xlat0;
  let x_1083 : vec4<f32> = x_44.unity_FogColor;
  let x_1085 : vec3<f32> = ((vec3<f32>(x_1077, x_1077, x_1077) * vec3<f32>(x_1079.x, x_1079.y, x_1079.z)) + vec3<f32>(x_1083.x, x_1083.y, x_1083.z));
  let x_1086 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1085.x, x_1085.y, x_1085.z, x_1086.w);
  let x_1091 : f32 = x_57.x_Surface;
  u_xlatb0 = (x_1091 == 1.0f);
  let x_1093 : bool = u_xlatb0;
  if (x_1093) {
    let x_1098 : f32 = u_xlat1.x;
    x_1094 = x_1098;
  } else {
    x_1094 = 1.0f;
  }
  let x_1100 : f32 = x_1094;
  SV_Target0.w = x_1100;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(3) vs_TEXCOORD8_param : vec2<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD8 = vs_TEXCOORD8_param;
  main_1();
  return main_out(SV_Target0);
}

