struct x_Terrain {
  x_NormalScale0 : f32,
  x_NormalScale1 : f32,
  x_NormalScale2 : f32,
  x_NormalScale3 : f32,
  x_Metallic0 : f32,
  x_Metallic1 : f32,
  x_Metallic2 : f32,
  x_Metallic3 : f32,
  x_Smoothness0 : f32,
  x_Smoothness1 : f32,
  x_Smoothness2 : f32,
  x_Smoothness3 : f32,
  x_DiffuseRemapScale0 : vec4<f32>,
  x_DiffuseRemapScale1 : vec4<f32>,
  x_DiffuseRemapScale2 : vec4<f32>,
  x_DiffuseRemapScale3 : vec4<f32>,
  x_MaskMapRemapOffset0 : vec4<f32>,
  x_MaskMapRemapOffset1 : vec4<f32>,
  x_MaskMapRemapOffset2 : vec4<f32>,
  x_MaskMapRemapOffset3 : vec4<f32>,
  x_MaskMapRemapScale0 : vec4<f32>,
  x_MaskMapRemapScale1 : vec4<f32>,
  x_MaskMapRemapScale2 : vec4<f32>,
  x_MaskMapRemapScale3 : vec4<f32>,
  x_Control_ST : vec4<f32>,
  x_Control_TexelSize : vec4<f32>,
  x_DiffuseHasAlpha0 : f32,
  x_DiffuseHasAlpha1 : f32,
  x_DiffuseHasAlpha2 : f32,
  x_DiffuseHasAlpha3 : f32,
  x_LayerHasMask0 : f32,
  x_LayerHasMask1 : f32,
  x_LayerHasMask2 : f32,
  x_LayerHasMask3 : f32,
  x_Splat0_ST : vec4<f32>,
  x_Splat1_ST : vec4<f32>,
  x_Splat2_ST : vec4<f32>,
  x_Splat3_ST : vec4<f32>,
  x_HeightTransition : f32,
  x_NumLayersCount : f32,
  @size(8)
  padding : u32,
  x_TerrainHeightmapRecipSize : vec4<f32>,
  x_TerrainHeightmapScale : vec4<f32>,
}

struct PGlobals {
  x_ScaledScreenParams : vec4<f32>,
  x_GlobalMipBias : vec2<f32>,
  @size(8)
  padding_1 : u32,
  x_MainLightPosition : vec4<f32>,
  x_MainLightColor : vec4<f32>,
  x_AmbientOcclusionParam : vec4<f32>,
  x_AdditionalLightsCount : vec4<f32>,
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding_2 : u32,
  x_ProjectionParams : vec4<f32>,
  x_ScaleBiasRt : vec4<f32>,
  unity_FogParams : vec4<f32>,
  unity_FogColor : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
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

@group(1) @binding(3) var<uniform> x_30 : x_Terrain;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(0) @binding(3) var x_Control : texture_2d<f32>;

@group(0) @binding(16) var sampler_Control : sampler;

@group(1) @binding(0) var<uniform> x_128 : PGlobals;

@group(0) @binding(4) var x_Splat0 : texture_2d<f32>;

@group(0) @binding(17) var sampler_Splat0 : sampler;

var<private> vs_TEXCOORD1 : vec4<f32>;

@group(0) @binding(5) var x_Splat1 : texture_2d<f32>;

@group(0) @binding(6) var x_Splat2 : texture_2d<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

@group(0) @binding(7) var x_Splat3 : texture_2d<f32>;

@group(0) @binding(8) var x_Normal0 : texture_2d<f32>;

@group(0) @binding(18) var sampler_Normal0 : sampler;

@group(0) @binding(9) var x_Normal1 : texture_2d<f32>;

@group(0) @binding(10) var x_Normal2 : texture_2d<f32>;

@group(0) @binding(11) var x_Normal3 : texture_2d<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(15) var samplerunity_Lightmap : sampler;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(12) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(19) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_TEXCOORD8 : vec4<f32>;

@group(0) @binding(13) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(20) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_1068 : MainLightShadows;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(14) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_1226 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_1504 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat42 : f32;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlatb43 : bool;
  var u_xlat11 : vec4<f32>;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec4<f32>;
  var u_xlat43 : f32;
  var u_xlat28 : f32;
  var u_xlat14 : f32;
  var u_xlat44 : f32;
  var u_xlat17 : f32;
  var u_xlat45 : f32;
  var u_xlat31 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat46 : f32;
  var u_xlatb46 : bool;
  var u_xlatb47 : bool;
  var x_1093 : f32;
  var u_xlat47 : f32;
  var u_xlatu28 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu17 : u32;
  var u_xlati46 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati17 : i32;
  var u_xlat48 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_35 : vec4<f32> = x_30.x_MaskMapRemapScale0;
  let x_42 : vec4<f32> = x_30.x_MaskMapRemapOffset0;
  u_xlat0 = ((vec3<f32>(x_35.x, x_35.y, x_35.w) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(x_42.x, x_42.y, x_42.w));
  let x_48 : vec4<f32> = x_30.x_MaskMapRemapScale1;
  let x_53 : vec4<f32> = x_30.x_MaskMapRemapOffset1;
  let x_55 : vec3<f32> = ((vec3<f32>(x_48.x, x_48.y, x_48.w) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(x_53.x, x_53.y, x_53.w));
  let x_56 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_55.x, x_55.y, x_55.z, x_56.w);
  let x_61 : vec4<f32> = x_30.x_MaskMapRemapScale2;
  let x_66 : vec4<f32> = x_30.x_MaskMapRemapOffset2;
  let x_68 : vec3<f32> = ((vec3<f32>(x_61.x, x_61.y, x_61.w) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(x_66.x, x_66.y, x_66.w));
  let x_69 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_68.x, x_68.y, x_68.z, x_69.w);
  let x_74 : vec4<f32> = x_30.x_MaskMapRemapScale3;
  let x_79 : vec4<f32> = x_30.x_MaskMapRemapOffset3;
  let x_81 : vec3<f32> = ((vec3<f32>(x_74.x, x_74.w, x_74.y) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(x_79.x, x_79.w, x_79.y));
  let x_82 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_81.x, x_81.y, x_82.z, x_81.z);
  let x_88 : vec4<f32> = x_30.x_Control_TexelSize;
  let x_92 : vec2<f32> = (vec2<f32>(x_88.z, x_88.w) + vec2<f32>(-1.0f, -1.0f));
  let x_93 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_92.x, x_92.y, x_93.z, x_93.w);
  let x_96 : vec4<f32> = vs_TEXCOORD0;
  let x_98 : vec4<f32> = u_xlat4;
  let x_102 : vec2<f32> = ((vec2<f32>(x_96.x, x_96.y) * vec2<f32>(x_98.x, x_98.y)) + vec2<f32>(0.5f, 0.5f));
  let x_103 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_102.x, x_102.y, x_103.z, x_103.w);
  let x_105 : vec4<f32> = u_xlat4;
  let x_108 : vec4<f32> = x_30.x_Control_TexelSize;
  let x_110 : vec2<f32> = (vec2<f32>(x_105.x, x_105.y) * vec2<f32>(x_108.x, x_108.y));
  let x_111 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_110.x, x_110.y, x_111.z, x_111.w);
  let x_123 : vec4<f32> = u_xlat4;
  let x_133 : f32 = x_128.x_GlobalMipBias.x;
  let x_134 : vec4<f32> = textureSampleBias(x_Control, sampler_Control, vec2<f32>(x_123.x, x_123.y), x_133);
  u_xlat4 = x_134;
  let x_137 : vec4<f32> = u_xlat4;
  u_xlat42 = dot(x_137, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_147 : vec4<f32> = vs_TEXCOORD1;
  let x_150 : f32 = x_128.x_GlobalMipBias.x;
  let x_151 : vec4<f32> = textureSampleBias(x_Splat0, sampler_Splat0, vec2<f32>(x_147.x, x_147.y), x_150);
  u_xlat5 = x_151;
  let x_157 : vec4<f32> = vs_TEXCOORD1;
  let x_160 : f32 = x_128.x_GlobalMipBias.x;
  let x_161 : vec4<f32> = textureSampleBias(x_Splat1, sampler_Splat0, vec2<f32>(x_157.z, x_157.w), x_160);
  u_xlat6 = x_161;
  let x_168 : vec4<f32> = vs_TEXCOORD2;
  let x_171 : f32 = x_128.x_GlobalMipBias.x;
  let x_172 : vec4<f32> = textureSampleBias(x_Splat2, sampler_Splat0, vec2<f32>(x_168.x, x_168.y), x_171);
  u_xlat7 = x_172;
  let x_178 : vec4<f32> = vs_TEXCOORD2;
  let x_181 : f32 = x_128.x_GlobalMipBias.x;
  let x_182 : vec4<f32> = textureSampleBias(x_Splat3, sampler_Splat0, vec2<f32>(x_178.z, x_178.w), x_181);
  u_xlat8 = x_182;
  let x_185 : f32 = u_xlat5.w;
  u_xlat9.x = x_185;
  let x_188 : f32 = u_xlat6.w;
  u_xlat9.y = x_188;
  let x_192 : f32 = u_xlat7.w;
  u_xlat9.z = x_192;
  let x_196 : f32 = u_xlat8.w;
  u_xlat9.w = x_196;
  let x_199 : vec4<f32> = u_xlat9;
  let x_202 : f32 = x_30.x_Smoothness0;
  let x_205 : f32 = x_30.x_Smoothness1;
  let x_208 : f32 = x_30.x_Smoothness2;
  let x_211 : f32 = x_30.x_Smoothness3;
  u_xlat10 = (x_199 * vec4<f32>(x_202, x_205, x_208, x_211));
  let x_220 : f32 = x_30.x_NumLayersCount;
  u_xlatb43 = (4.0f >= x_220);
  let x_223 : vec4<f32> = u_xlat4;
  u_xlat11 = (-(x_223) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_226 : vec4<f32> = u_xlat9;
  let x_227 : vec4<f32> = u_xlat11;
  u_xlat11 = (x_226 + -(x_227));
  let x_230 : vec4<f32> = u_xlat11;
  u_xlat11 = (x_230 * vec4<f32>(20.0f, 20.0f, 20.0f, 20.0f));
  let x_234 : vec4<f32> = u_xlat11;
  u_xlat11 = clamp(x_234, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_239 : vec4<f32> = u_xlat4;
  let x_243 : vec4<f32> = u_xlat11;
  u_xlat11 = ((x_239 * vec4<f32>(0.001f, 0.001f, 0.001f, 0.001f)) + x_243);
  let x_246 : vec4<f32> = u_xlat4;
  let x_247 : vec4<f32> = u_xlat11;
  u_xlat12 = (x_246 + -(x_247));
  let x_252 : f32 = u_xlat12.x;
  let x_255 : f32 = x_30.x_DiffuseRemapScale0.w;
  u_xlat13.x = (x_252 * x_255);
  let x_259 : f32 = u_xlat12.y;
  let x_262 : f32 = x_30.x_DiffuseRemapScale1.w;
  u_xlat13.y = (x_259 * x_262);
  let x_266 : f32 = u_xlat12.z;
  let x_269 : f32 = x_30.x_DiffuseRemapScale2.w;
  u_xlat13.z = (x_266 * x_269);
  let x_273 : f32 = u_xlat12.w;
  let x_276 : f32 = x_30.x_DiffuseRemapScale3.w;
  u_xlat13.w = (x_273 * x_276);
  let x_279 : vec4<f32> = u_xlat11;
  let x_280 : vec4<f32> = u_xlat13;
  u_xlat11 = (x_279 + x_280);
  let x_282 : bool = u_xlatb43;
  let x_283 : vec4<f32> = u_xlat11;
  let x_284 : vec4<f32> = u_xlat4;
  u_xlat4 = select(x_284, x_283, vec4<bool>(x_282, x_282, x_282, x_282));
  let x_289 : vec4<f32> = u_xlat4;
  u_xlat43 = dot(x_289, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_291 : f32 = u_xlat43;
  u_xlat43 = (x_291 + 6.10351562e-05f);
  let x_294 : vec4<f32> = u_xlat4;
  let x_295 : f32 = u_xlat43;
  u_xlat4 = (x_294 / vec4<f32>(x_295, x_295, x_295, x_295));
  let x_298 : vec4<f32> = u_xlat4;
  let x_301 : vec4<f32> = x_30.x_DiffuseRemapScale0;
  let x_303 : vec3<f32> = (vec3<f32>(x_298.x, x_298.x, x_298.x) * vec3<f32>(x_301.x, x_301.y, x_301.z));
  let x_304 : vec4<f32> = u_xlat11;
  u_xlat11 = vec4<f32>(x_303.x, x_303.y, x_303.z, x_304.w);
  let x_306 : vec4<f32> = u_xlat4;
  let x_309 : vec4<f32> = x_30.x_DiffuseRemapScale1;
  let x_311 : vec3<f32> = (vec3<f32>(x_306.y, x_306.y, x_306.y) * vec3<f32>(x_309.x, x_309.y, x_309.z));
  let x_312 : vec4<f32> = u_xlat12;
  u_xlat12 = vec4<f32>(x_311.x, x_311.y, x_311.z, x_312.w);
  let x_314 : vec4<f32> = u_xlat6;
  let x_316 : vec4<f32> = u_xlat12;
  let x_318 : vec3<f32> = (vec3<f32>(x_314.x, x_314.y, x_314.z) * vec3<f32>(x_316.x, x_316.y, x_316.z));
  let x_319 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_318.x, x_318.y, x_318.z, x_319.w);
  let x_321 : vec4<f32> = u_xlat5;
  let x_323 : vec4<f32> = u_xlat11;
  let x_326 : vec4<f32> = u_xlat6;
  let x_328 : vec3<f32> = ((vec3<f32>(x_321.x, x_321.y, x_321.z) * vec3<f32>(x_323.x, x_323.y, x_323.z)) + vec3<f32>(x_326.x, x_326.y, x_326.z));
  let x_329 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_328.x, x_328.y, x_328.z, x_329.w);
  let x_331 : vec4<f32> = u_xlat4;
  let x_334 : vec4<f32> = x_30.x_DiffuseRemapScale2;
  let x_336 : vec3<f32> = (vec3<f32>(x_331.z, x_331.z, x_331.z) * vec3<f32>(x_334.x, x_334.y, x_334.z));
  let x_337 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_336.x, x_336.y, x_336.z, x_337.w);
  let x_339 : vec4<f32> = u_xlat7;
  let x_341 : vec4<f32> = u_xlat6;
  let x_344 : vec4<f32> = u_xlat5;
  let x_346 : vec3<f32> = ((vec3<f32>(x_339.x, x_339.y, x_339.z) * vec3<f32>(x_341.x, x_341.y, x_341.z)) + vec3<f32>(x_344.x, x_344.y, x_344.z));
  let x_347 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_346.x, x_346.y, x_346.z, x_347.w);
  let x_349 : vec4<f32> = u_xlat4;
  let x_352 : vec4<f32> = x_30.x_DiffuseRemapScale3;
  let x_354 : vec3<f32> = (vec3<f32>(x_349.w, x_349.w, x_349.w) * vec3<f32>(x_352.x, x_352.y, x_352.z));
  let x_355 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_354.x, x_354.y, x_354.z, x_355.w);
  let x_357 : vec4<f32> = u_xlat8;
  let x_359 : vec4<f32> = u_xlat6;
  let x_362 : vec4<f32> = u_xlat5;
  let x_364 : vec3<f32> = ((vec3<f32>(x_357.x, x_357.y, x_357.z) * vec3<f32>(x_359.x, x_359.y, x_359.z)) + vec3<f32>(x_362.x, x_362.y, x_362.z));
  let x_365 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_364.x, x_364.y, x_364.z, x_365.w);
  let x_372 : vec4<f32> = vs_TEXCOORD1;
  let x_375 : f32 = x_128.x_GlobalMipBias.x;
  let x_376 : vec4<f32> = textureSampleBias(x_Normal0, sampler_Normal0, vec2<f32>(x_372.x, x_372.y), x_375);
  let x_377 : vec3<f32> = vec3<f32>(x_376.x, x_376.y, x_376.w);
  let x_378 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_377.x, x_377.y, x_377.z, x_378.w);
  let x_381 : f32 = u_xlat6.x;
  let x_383 : f32 = u_xlat6.z;
  u_xlat6.x = (x_381 * x_383);
  let x_386 : vec4<f32> = u_xlat6;
  let x_391 : vec2<f32> = ((vec2<f32>(x_386.x, x_386.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_392 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_391.x, x_391.y, x_392.z, x_392.w);
  let x_394 : vec4<f32> = u_xlat6;
  let x_396 : vec4<f32> = u_xlat6;
  u_xlat43 = dot(vec2<f32>(x_394.x, x_394.y), vec2<f32>(x_396.x, x_396.y));
  let x_399 : f32 = u_xlat43;
  u_xlat43 = min(x_399, 1.0f);
  let x_401 : f32 = u_xlat43;
  u_xlat43 = (-(x_401) + 1.0f);
  let x_404 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_404);
  let x_406 : f32 = u_xlat43;
  u_xlat7.z = max(x_406, 1.00000002e-16f);
  let x_410 : vec4<f32> = u_xlat6;
  let x_414 : f32 = x_30.x_NormalScale0;
  let x_416 : vec2<f32> = (vec2<f32>(x_410.x, x_410.y) * vec2<f32>(x_414, x_414));
  let x_417 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_416.x, x_416.y, x_417.z, x_417.w);
  let x_423 : vec4<f32> = vs_TEXCOORD1;
  let x_426 : f32 = x_128.x_GlobalMipBias.x;
  let x_427 : vec4<f32> = textureSampleBias(x_Normal1, sampler_Normal0, vec2<f32>(x_423.z, x_423.w), x_426);
  let x_428 : vec3<f32> = vec3<f32>(x_427.x, x_427.y, x_427.w);
  let x_429 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_428.x, x_428.y, x_428.z, x_429.w);
  let x_432 : f32 = u_xlat6.x;
  let x_434 : f32 = u_xlat6.z;
  u_xlat6.x = (x_432 * x_434);
  let x_437 : vec4<f32> = u_xlat6;
  let x_440 : vec2<f32> = ((vec2<f32>(x_437.x, x_437.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_441 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_440.x, x_440.y, x_441.z, x_441.w);
  let x_443 : vec4<f32> = u_xlat6;
  let x_445 : vec4<f32> = u_xlat6;
  u_xlat43 = dot(vec2<f32>(x_443.x, x_443.y), vec2<f32>(x_445.x, x_445.y));
  let x_448 : f32 = u_xlat43;
  u_xlat43 = min(x_448, 1.0f);
  let x_450 : f32 = u_xlat43;
  u_xlat43 = (-(x_450) + 1.0f);
  let x_453 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_453);
  let x_455 : f32 = u_xlat43;
  u_xlat8.z = max(x_455, 1.00000002e-16f);
  let x_458 : vec4<f32> = u_xlat6;
  let x_461 : f32 = x_30.x_NormalScale1;
  let x_463 : f32 = x_30.x_NormalScale1;
  let x_464 : vec2<f32> = vec2<f32>(x_461, x_463);
  let x_468 : vec2<f32> = (vec2<f32>(x_458.x, x_458.y) * vec2<f32>(x_464.x, x_464.y));
  let x_469 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_468.x, x_468.y, x_469.z, x_469.w);
  let x_471 : vec4<f32> = u_xlat4;
  let x_473 : vec4<f32> = u_xlat8;
  let x_475 : vec3<f32> = (vec3<f32>(x_471.y, x_471.y, x_471.y) * vec3<f32>(x_473.x, x_473.y, x_473.z));
  let x_476 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_475.x, x_475.y, x_475.z, x_476.w);
  let x_478 : vec4<f32> = u_xlat4;
  let x_480 : vec4<f32> = u_xlat7;
  let x_483 : vec4<f32> = u_xlat6;
  let x_485 : vec3<f32> = ((vec3<f32>(x_478.x, x_478.x, x_478.x) * vec3<f32>(x_480.x, x_480.y, x_480.z)) + vec3<f32>(x_483.x, x_483.y, x_483.z));
  let x_486 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_485.x, x_485.y, x_485.z, x_486.w);
  let x_492 : vec4<f32> = vs_TEXCOORD2;
  let x_495 : f32 = x_128.x_GlobalMipBias.x;
  let x_496 : vec4<f32> = textureSampleBias(x_Normal2, sampler_Normal0, vec2<f32>(x_492.x, x_492.y), x_495);
  let x_497 : vec3<f32> = vec3<f32>(x_496.x, x_496.y, x_496.w);
  let x_498 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_497.x, x_497.y, x_497.z, x_498.w);
  let x_501 : f32 = u_xlat7.x;
  let x_503 : f32 = u_xlat7.z;
  u_xlat7.x = (x_501 * x_503);
  let x_506 : vec4<f32> = u_xlat7;
  let x_509 : vec2<f32> = ((vec2<f32>(x_506.x, x_506.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_510 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_509.x, x_509.y, x_510.z, x_510.w);
  let x_512 : vec4<f32> = u_xlat7;
  let x_514 : vec4<f32> = u_xlat7;
  u_xlat43 = dot(vec2<f32>(x_512.x, x_512.y), vec2<f32>(x_514.x, x_514.y));
  let x_517 : f32 = u_xlat43;
  u_xlat43 = min(x_517, 1.0f);
  let x_519 : f32 = u_xlat43;
  u_xlat43 = (-(x_519) + 1.0f);
  let x_522 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_522);
  let x_524 : f32 = u_xlat43;
  u_xlat8.z = max(x_524, 1.00000002e-16f);
  let x_527 : vec4<f32> = u_xlat7;
  let x_531 : f32 = x_30.x_NormalScale2;
  let x_533 : f32 = x_30.x_NormalScale2;
  let x_534 : vec2<f32> = vec2<f32>(x_531, x_533);
  let x_538 : vec2<f32> = (vec2<f32>(x_527.x, x_527.y) * vec2<f32>(x_534.x, x_534.y));
  let x_539 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_538.x, x_538.y, x_539.z, x_539.w);
  let x_541 : vec4<f32> = u_xlat4;
  let x_543 : vec4<f32> = u_xlat8;
  let x_546 : vec4<f32> = u_xlat6;
  let x_548 : vec3<f32> = ((vec3<f32>(x_541.z, x_541.z, x_541.z) * vec3<f32>(x_543.x, x_543.y, x_543.z)) + vec3<f32>(x_546.x, x_546.y, x_546.z));
  let x_549 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_548.x, x_548.y, x_548.z, x_549.w);
  let x_555 : vec4<f32> = vs_TEXCOORD2;
  let x_558 : f32 = x_128.x_GlobalMipBias.x;
  let x_559 : vec4<f32> = textureSampleBias(x_Normal3, sampler_Normal0, vec2<f32>(x_555.z, x_555.w), x_558);
  let x_560 : vec3<f32> = vec3<f32>(x_559.x, x_559.y, x_559.w);
  let x_561 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_560.x, x_560.y, x_560.z, x_561.w);
  let x_564 : f32 = u_xlat7.x;
  let x_566 : f32 = u_xlat7.z;
  u_xlat7.x = (x_564 * x_566);
  let x_569 : vec4<f32> = u_xlat7;
  let x_572 : vec2<f32> = ((vec2<f32>(x_569.x, x_569.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_573 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_572.x, x_572.y, x_573.z, x_573.w);
  let x_575 : vec4<f32> = u_xlat7;
  let x_577 : vec4<f32> = u_xlat7;
  u_xlat43 = dot(vec2<f32>(x_575.x, x_575.y), vec2<f32>(x_577.x, x_577.y));
  let x_580 : f32 = u_xlat43;
  u_xlat43 = min(x_580, 1.0f);
  let x_582 : f32 = u_xlat43;
  u_xlat43 = (-(x_582) + 1.0f);
  let x_585 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_585);
  let x_587 : f32 = u_xlat43;
  u_xlat8.z = max(x_587, 1.00000002e-16f);
  let x_590 : vec4<f32> = u_xlat7;
  let x_594 : f32 = x_30.x_NormalScale3;
  let x_596 : f32 = x_30.x_NormalScale3;
  let x_597 : vec2<f32> = vec2<f32>(x_594, x_596);
  let x_601 : vec2<f32> = (vec2<f32>(x_590.x, x_590.y) * vec2<f32>(x_597.x, x_597.y));
  let x_602 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_601.x, x_601.y, x_602.z, x_602.w);
  let x_604 : vec4<f32> = u_xlat4;
  let x_606 : vec4<f32> = u_xlat8;
  let x_609 : vec4<f32> = u_xlat6;
  let x_611 : vec3<f32> = ((vec3<f32>(x_604.w, x_604.w, x_604.w) * vec3<f32>(x_606.x, x_606.y, x_606.z)) + vec3<f32>(x_609.x, x_609.y, x_609.z));
  let x_612 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_611.x, x_611.y, x_611.z, x_612.w);
  let x_615 : f32 = u_xlat6.z;
  u_xlat6.w = (x_615 + 0.00001f);
  let x_619 : vec4<f32> = u_xlat6;
  let x_621 : vec4<f32> = u_xlat6;
  u_xlat43 = dot(vec3<f32>(x_619.x, x_619.y, x_619.w), vec3<f32>(x_621.x, x_621.y, x_621.w));
  let x_624 : f32 = u_xlat43;
  u_xlat43 = inverseSqrt(x_624);
  let x_626 : f32 = u_xlat43;
  let x_628 : vec4<f32> = u_xlat6;
  let x_630 : vec3<f32> = (vec3<f32>(x_626, x_626, x_626) * vec3<f32>(x_628.x, x_628.y, x_628.w));
  let x_631 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_630.x, x_630.y, x_630.z, x_631.w);
  let x_634 : f32 = x_30.x_MaskMapRemapScale0.y;
  u_xlat7.x = x_634;
  let x_637 : f32 = x_30.x_MaskMapRemapScale1.y;
  u_xlat7.y = x_637;
  let x_640 : f32 = x_30.x_MaskMapRemapScale2.y;
  u_xlat7.z = x_640;
  let x_643 : f32 = x_30.x_MaskMapRemapScale3.y;
  u_xlat7.w = x_643;
  let x_646 : f32 = x_30.x_MaskMapRemapOffset0.y;
  u_xlat8.x = x_646;
  let x_649 : f32 = x_30.x_MaskMapRemapOffset1.y;
  u_xlat8.y = x_649;
  let x_652 : f32 = x_30.x_MaskMapRemapOffset2.y;
  u_xlat8.z = x_652;
  let x_655 : f32 = x_30.x_MaskMapRemapOffset3.y;
  u_xlat8.w = x_655;
  let x_657 : vec4<f32> = u_xlat7;
  let x_658 : vec4<f32> = u_xlat8;
  u_xlat7 = (x_657 + x_658);
  let x_661 : f32 = u_xlat0.z;
  u_xlat8.x = x_661;
  let x_664 : f32 = u_xlat1.z;
  u_xlat8.y = x_664;
  let x_667 : f32 = u_xlat2.z;
  u_xlat8.z = x_667;
  let x_670 : f32 = u_xlat3.y;
  u_xlat8.w = x_670;
  let x_672 : vec4<f32> = u_xlat9;
  let x_675 : f32 = x_30.x_Smoothness0;
  let x_677 : f32 = x_30.x_Smoothness1;
  let x_679 : f32 = x_30.x_Smoothness2;
  let x_681 : f32 = x_30.x_Smoothness3;
  let x_684 : vec4<f32> = u_xlat8;
  u_xlat8 = ((-(x_672) * vec4<f32>(x_675, x_677, x_679, x_681)) + x_684);
  let x_688 : f32 = x_30.x_LayerHasMask0;
  let x_691 : f32 = x_30.x_LayerHasMask1;
  let x_694 : f32 = x_30.x_LayerHasMask2;
  let x_697 : f32 = x_30.x_LayerHasMask3;
  let x_699 : vec4<f32> = u_xlat8;
  let x_701 : vec4<f32> = u_xlat10;
  u_xlat8 = ((vec4<f32>(x_688, x_691, x_694, x_697) * x_699) + x_701);
  let x_704 : vec4<f32> = u_xlat4;
  let x_705 : vec4<f32> = u_xlat8;
  u_xlat28 = dot(x_704, x_705);
  let x_708 : f32 = u_xlat0.x;
  u_xlat8.x = x_708;
  let x_711 : f32 = u_xlat1.x;
  u_xlat8.y = x_711;
  let x_714 : f32 = u_xlat2.x;
  u_xlat8.z = x_714;
  let x_717 : f32 = u_xlat3.x;
  u_xlat8.w = x_717;
  let x_719 : vec4<f32> = u_xlat8;
  let x_722 : f32 = x_30.x_Metallic0;
  let x_725 : f32 = x_30.x_Metallic1;
  let x_728 : f32 = x_30.x_Metallic2;
  let x_731 : f32 = x_30.x_Metallic3;
  u_xlat8 = (x_719 + -(vec4<f32>(x_722, x_725, x_728, x_731)));
  let x_736 : f32 = x_30.x_LayerHasMask0;
  let x_738 : f32 = x_30.x_LayerHasMask1;
  let x_740 : f32 = x_30.x_LayerHasMask2;
  let x_742 : f32 = x_30.x_LayerHasMask3;
  let x_744 : vec4<f32> = u_xlat8;
  let x_747 : f32 = x_30.x_Metallic0;
  let x_749 : f32 = x_30.x_Metallic1;
  let x_751 : f32 = x_30.x_Metallic2;
  let x_753 : f32 = x_30.x_Metallic3;
  u_xlat8 = ((vec4<f32>(x_736, x_738, x_740, x_742) * x_744) + vec4<f32>(x_747, x_749, x_751, x_753));
  let x_756 : vec4<f32> = u_xlat4;
  let x_757 : vec4<f32> = u_xlat8;
  u_xlat0.x = dot(x_756, x_757);
  let x_761 : f32 = u_xlat0.y;
  u_xlat3.x = x_761;
  let x_764 : f32 = u_xlat1.y;
  u_xlat3.y = x_764;
  let x_767 : f32 = u_xlat2.y;
  u_xlat3.z = x_767;
  let x_769 : vec4<f32> = u_xlat7;
  let x_771 : vec4<f32> = u_xlat3;
  u_xlat1 = (-(x_769) + x_771);
  let x_774 : f32 = x_30.x_LayerHasMask0;
  let x_776 : f32 = x_30.x_LayerHasMask1;
  let x_778 : f32 = x_30.x_LayerHasMask2;
  let x_780 : f32 = x_30.x_LayerHasMask3;
  let x_782 : vec4<f32> = u_xlat1;
  let x_784 : vec4<f32> = u_xlat7;
  u_xlat1 = ((vec4<f32>(x_774, x_776, x_778, x_780) * x_782) + x_784);
  let x_787 : vec4<f32> = u_xlat4;
  let x_788 : vec4<f32> = u_xlat1;
  u_xlat14 = dot(x_787, x_788);
  let x_790 : vec4<f32> = u_xlat6;
  let x_793 : vec4<f32> = vs_TEXCOORD5;
  let x_795 : vec3<f32> = (vec3<f32>(x_790.y, x_790.y, x_790.y) * vec3<f32>(x_793.x, x_793.y, x_793.z));
  let x_796 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_795.x, x_795.y, x_795.z, x_796.w);
  let x_798 : vec4<f32> = u_xlat6;
  let x_801 : vec4<f32> = vs_TEXCOORD4;
  let x_805 : vec4<f32> = u_xlat1;
  let x_807 : vec3<f32> = ((vec3<f32>(x_798.x, x_798.x, x_798.x) * -(vec3<f32>(x_801.x, x_801.y, x_801.z))) + vec3<f32>(x_805.x, x_805.y, x_805.z));
  let x_808 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_807.x, x_807.y, x_807.z, x_808.w);
  let x_810 : vec4<f32> = u_xlat6;
  let x_813 : vec4<f32> = vs_TEXCOORD3;
  let x_816 : vec4<f32> = u_xlat1;
  let x_818 : vec3<f32> = ((vec3<f32>(x_810.z, x_810.z, x_810.z) * vec3<f32>(x_813.x, x_813.y, x_813.z)) + vec3<f32>(x_816.x, x_816.y, x_816.z));
  let x_819 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_818.x, x_818.y, x_818.z, x_819.w);
  let x_821 : vec4<f32> = u_xlat1;
  let x_823 : vec4<f32> = u_xlat1;
  u_xlat43 = dot(vec3<f32>(x_821.x, x_821.y, x_821.z), vec3<f32>(x_823.x, x_823.y, x_823.z));
  let x_826 : f32 = u_xlat43;
  u_xlat43 = inverseSqrt(x_826);
  let x_828 : f32 = u_xlat43;
  let x_830 : vec4<f32> = u_xlat1;
  let x_832 : vec3<f32> = (vec3<f32>(x_828, x_828, x_828) * vec3<f32>(x_830.x, x_830.y, x_830.z));
  let x_833 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_832.x, x_832.y, x_832.z, x_833.w);
  let x_838 : f32 = vs_TEXCOORD7.y;
  let x_840 : f32 = x_128.unity_MatrixV[1i].z;
  u_xlat43 = (x_838 * x_840);
  let x_843 : f32 = x_128.unity_MatrixV[0i].z;
  let x_845 : f32 = vs_TEXCOORD7.x;
  let x_847 : f32 = u_xlat43;
  u_xlat43 = ((x_843 * x_845) + x_847);
  let x_850 : f32 = x_128.unity_MatrixV[2i].z;
  let x_852 : f32 = vs_TEXCOORD7.z;
  let x_854 : f32 = u_xlat43;
  u_xlat43 = ((x_850 * x_852) + x_854);
  let x_856 : f32 = u_xlat43;
  let x_858 : f32 = x_128.unity_MatrixV[3i].z;
  u_xlat43 = (x_856 + x_858);
  let x_860 : f32 = u_xlat43;
  let x_863 : f32 = x_128.x_ProjectionParams.y;
  u_xlat43 = (-(x_860) + -(x_863));
  let x_866 : f32 = u_xlat43;
  u_xlat43 = max(x_866, 0.0f);
  let x_868 : f32 = u_xlat43;
  let x_870 : f32 = x_128.unity_FogParams.x;
  u_xlat43 = (x_868 * x_870);
  let x_877 : vec4<f32> = vs_TEXCOORD0;
  let x_880 : f32 = x_128.x_GlobalMipBias.x;
  let x_881 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_877.z, x_877.w), x_880);
  u_xlat2 = x_881;
  let x_886 : vec4<f32> = vs_TEXCOORD0;
  let x_889 : f32 = x_128.x_GlobalMipBias.x;
  let x_890 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_886.z, x_886.w), x_889);
  let x_891 : vec3<f32> = vec3<f32>(x_890.x, x_890.y, x_890.z);
  let x_892 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_891.x, x_891.y, x_891.z, x_892.w);
  let x_894 : vec4<f32> = u_xlat2;
  let x_898 : vec3<f32> = (vec3<f32>(x_894.x, x_894.y, x_894.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_899 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_898.x, x_898.y, x_898.z, x_899.w);
  let x_901 : vec4<f32> = u_xlat1;
  let x_903 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_901.x, x_901.y, x_901.z), vec3<f32>(x_903.x, x_903.y, x_903.z));
  let x_908 : f32 = u_xlat2.x;
  u_xlat2.x = (x_908 + 0.5f);
  let x_911 : vec4<f32> = u_xlat2;
  let x_913 : vec4<f32> = u_xlat3;
  let x_915 : vec3<f32> = (vec3<f32>(x_911.x, x_911.x, x_911.x) * vec3<f32>(x_913.x, x_913.y, x_913.z));
  let x_916 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_915.x, x_915.y, x_915.z, x_916.w);
  let x_920 : f32 = u_xlat2.w;
  u_xlat44 = max(x_920, 0.0001f);
  let x_923 : vec4<f32> = u_xlat2;
  let x_925 : f32 = u_xlat44;
  let x_927 : vec3<f32> = (vec3<f32>(x_923.x, x_923.y, x_923.z) / vec3<f32>(x_925, x_925, x_925));
  let x_928 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_927.x, x_927.y, x_927.z, x_928.w);
  let x_932 : vec4<f32> = x_128.x_ScaledScreenParams;
  let x_933 : vec2<f32> = vec2<f32>(x_932.x, x_932.y);
  let x_937 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_933.x, x_933.y));
  let x_938 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_937.x, x_937.y, x_938.z, x_938.w);
  let x_940 : vec4<f32> = u_xlat3;
  let x_942 : vec4<f32> = hlslcc_FragCoord;
  let x_944 : vec2<f32> = (vec2<f32>(x_940.x, x_940.y) * vec2<f32>(x_942.x, x_942.y));
  let x_945 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_944.x, x_944.y, x_945.z, x_945.w);
  let x_948 : f32 = u_xlat3.y;
  let x_950 : f32 = x_128.x_ScaleBiasRt.x;
  let x_953 : f32 = x_128.x_ScaleBiasRt.y;
  u_xlat44 = ((x_948 * x_950) + x_953);
  let x_955 : f32 = u_xlat44;
  u_xlat3.z = (-(x_955) + 1.0f);
  let x_960 : f32 = u_xlat0.x;
  u_xlat44 = ((-(x_960) * 0.959999979f) + 0.959999979f);
  let x_966 : f32 = u_xlat28;
  let x_967 : f32 = u_xlat44;
  u_xlat17 = (x_966 + -(x_967));
  let x_970 : f32 = u_xlat44;
  let x_972 : vec4<f32> = u_xlat5;
  let x_974 : vec3<f32> = (vec3<f32>(x_970, x_970, x_970) * vec3<f32>(x_972.x, x_972.y, x_972.z));
  let x_975 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_974.x, x_974.y, x_974.z, x_975.w);
  let x_977 : vec4<f32> = u_xlat5;
  let x_981 : vec3<f32> = (vec3<f32>(x_977.x, x_977.y, x_977.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_982 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_981.x, x_981.y, x_981.z, x_982.w);
  let x_984 : vec3<f32> = u_xlat0;
  let x_986 : vec4<f32> = u_xlat5;
  let x_991 : vec3<f32> = ((vec3<f32>(x_984.x, x_984.x, x_984.x) * vec3<f32>(x_986.x, x_986.y, x_986.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_992 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_991.x, x_991.y, x_991.z, x_992.w);
  let x_994 : f32 = u_xlat28;
  u_xlat0.x = (-(x_994) + 1.0f);
  let x_999 : f32 = u_xlat0.x;
  let x_1001 : f32 = u_xlat0.x;
  u_xlat28 = (x_999 * x_1001);
  let x_1003 : f32 = u_xlat28;
  u_xlat28 = max(x_1003, 0.0078125f);
  let x_1006 : f32 = u_xlat28;
  let x_1007 : f32 = u_xlat28;
  u_xlat44 = (x_1006 * x_1007);
  let x_1009 : f32 = u_xlat17;
  u_xlat17 = (x_1009 + 1.0f);
  let x_1011 : f32 = u_xlat17;
  u_xlat17 = clamp(x_1011, 0.0f, 1.0f);
  let x_1014 : f32 = u_xlat28;
  u_xlat45 = ((x_1014 * 4.0f) + 2.0f);
  let x_1022 : vec4<f32> = u_xlat3;
  let x_1025 : f32 = x_128.x_GlobalMipBias.x;
  let x_1026 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_1022.x, x_1022.z), x_1025);
  u_xlat3.x = x_1026.x;
  let x_1031 : f32 = u_xlat3.x;
  u_xlat31 = (x_1031 + -1.0f);
  let x_1034 : f32 = x_128.x_AmbientOcclusionParam.w;
  let x_1035 : f32 = u_xlat31;
  u_xlat31 = ((x_1034 * x_1035) + 1.0f);
  let x_1038 : f32 = u_xlat14;
  let x_1040 : f32 = u_xlat3.x;
  u_xlat14 = min(x_1038, x_1040);
  let x_1044 : vec4<f32> = vs_TEXCOORD8;
  let x_1045 : vec2<f32> = vec2<f32>(x_1044.x, x_1044.y);
  let x_1047 : f32 = vs_TEXCOORD8.z;
  txVec0 = vec3<f32>(x_1045.x, x_1045.y, x_1047);
  let x_1059 : vec3<f32> = txVec0;
  let x_1061 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1059.xy, x_1059.z);
  u_xlat3.x = x_1061;
  let x_1070 : f32 = x_1068.x_MainLightShadowParams.x;
  u_xlat46 = (-(x_1070) + 1.0f);
  let x_1074 : f32 = u_xlat3.x;
  let x_1076 : f32 = x_1068.x_MainLightShadowParams.x;
  let x_1078 : f32 = u_xlat46;
  u_xlat3.x = ((x_1074 * x_1076) + x_1078);
  let x_1083 : f32 = vs_TEXCOORD8.z;
  u_xlatb46 = (0.0f >= x_1083);
  let x_1087 : f32 = vs_TEXCOORD8.z;
  u_xlatb47 = (x_1087 >= 1.0f);
  let x_1089 : bool = u_xlatb46;
  let x_1090 : bool = u_xlatb47;
  u_xlatb46 = (x_1089 | x_1090);
  let x_1092 : bool = u_xlatb46;
  if (x_1092) {
    x_1093 = 1.0f;
  } else {
    let x_1098 : f32 = u_xlat3.x;
    x_1093 = x_1098;
  }
  let x_1099 : f32 = x_1093;
  u_xlat3.x = x_1099;
  let x_1101 : vec3<f32> = vs_TEXCOORD7;
  let x_1104 : vec3<f32> = x_128.x_WorldSpaceCameraPos;
  let x_1106 : vec3<f32> = (x_1101 + -(x_1104));
  let x_1107 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1106.x, x_1106.y, x_1106.z, x_1107.w);
  let x_1109 : vec4<f32> = u_xlat6;
  let x_1111 : vec4<f32> = u_xlat6;
  u_xlat46 = dot(vec3<f32>(x_1109.x, x_1109.y, x_1109.z), vec3<f32>(x_1111.x, x_1111.y, x_1111.z));
  let x_1114 : f32 = u_xlat46;
  let x_1116 : f32 = x_1068.x_MainLightShadowParams.z;
  let x_1119 : f32 = x_1068.x_MainLightShadowParams.w;
  u_xlat46 = ((x_1114 * x_1116) + x_1119);
  let x_1121 : f32 = u_xlat46;
  u_xlat46 = clamp(x_1121, 0.0f, 1.0f);
  let x_1125 : f32 = u_xlat3.x;
  u_xlat47 = (-(x_1125) + 1.0f);
  let x_1128 : f32 = u_xlat46;
  let x_1129 : f32 = u_xlat47;
  let x_1132 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_1128 * x_1129) + x_1132);
  let x_1135 : f32 = u_xlat31;
  let x_1138 : vec4<f32> = x_128.x_MainLightColor;
  let x_1140 : vec3<f32> = (vec3<f32>(x_1135, x_1135, x_1135) * vec3<f32>(x_1138.x, x_1138.y, x_1138.z));
  let x_1141 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1140.x, x_1140.y, x_1140.z, x_1141.w);
  let x_1144 : f32 = vs_TEXCOORD3.w;
  u_xlat7.x = x_1144;
  let x_1147 : f32 = vs_TEXCOORD4.w;
  u_xlat7.y = x_1147;
  let x_1150 : f32 = vs_TEXCOORD5.w;
  u_xlat7.z = x_1150;
  let x_1152 : vec4<f32> = u_xlat7;
  let x_1155 : vec4<f32> = u_xlat1;
  u_xlat46 = dot(-(vec3<f32>(x_1152.x, x_1152.y, x_1152.z)), vec3<f32>(x_1155.x, x_1155.y, x_1155.z));
  let x_1158 : f32 = u_xlat46;
  let x_1159 : f32 = u_xlat46;
  u_xlat46 = (x_1158 + x_1159);
  let x_1161 : vec4<f32> = u_xlat1;
  let x_1163 : f32 = u_xlat46;
  let x_1167 : vec4<f32> = u_xlat7;
  let x_1170 : vec3<f32> = ((vec3<f32>(x_1161.x, x_1161.y, x_1161.z) * -(vec3<f32>(x_1163, x_1163, x_1163))) + -(vec3<f32>(x_1167.x, x_1167.y, x_1167.z)));
  let x_1171 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1170.x, x_1170.y, x_1170.z, x_1171.w);
  let x_1173 : vec4<f32> = u_xlat1;
  let x_1175 : vec4<f32> = u_xlat7;
  u_xlat46 = dot(vec3<f32>(x_1173.x, x_1173.y, x_1173.z), vec3<f32>(x_1175.x, x_1175.y, x_1175.z));
  let x_1178 : f32 = u_xlat46;
  u_xlat46 = clamp(x_1178, 0.0f, 1.0f);
  let x_1180 : f32 = u_xlat46;
  u_xlat46 = (-(x_1180) + 1.0f);
  let x_1183 : f32 = u_xlat46;
  let x_1184 : f32 = u_xlat46;
  u_xlat46 = (x_1183 * x_1184);
  let x_1186 : f32 = u_xlat46;
  let x_1187 : f32 = u_xlat46;
  u_xlat46 = (x_1186 * x_1187);
  let x_1190 : f32 = u_xlat0.x;
  u_xlat47 = ((-(x_1190) * 0.699999988f) + 1.700000048f);
  let x_1197 : f32 = u_xlat0.x;
  let x_1198 : f32 = u_xlat47;
  u_xlat0.x = (x_1197 * x_1198);
  let x_1202 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1202 * 6.0f);
  let x_1214 : vec4<f32> = u_xlat8;
  let x_1217 : f32 = u_xlat0.x;
  let x_1218 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1214.x, x_1214.y, x_1214.z), x_1217);
  u_xlat8 = x_1218;
  let x_1220 : f32 = u_xlat8.w;
  u_xlat0.x = (x_1220 + -1.0f);
  let x_1228 : f32 = x_1226.unity_SpecCube0_HDR.w;
  let x_1230 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1228 * x_1230) + 1.0f);
  let x_1235 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1235, 0.0f);
  let x_1239 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_1239);
  let x_1243 : f32 = u_xlat0.x;
  let x_1245 : f32 = x_1226.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_1243 * x_1245);
  let x_1249 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_1249);
  let x_1253 : f32 = u_xlat0.x;
  let x_1255 : f32 = x_1226.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_1253 * x_1255);
  let x_1258 : vec4<f32> = u_xlat8;
  let x_1260 : vec3<f32> = u_xlat0;
  let x_1262 : vec3<f32> = (vec3<f32>(x_1258.x, x_1258.y, x_1258.z) * vec3<f32>(x_1260.x, x_1260.x, x_1260.x));
  let x_1263 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1262.x, x_1262.y, x_1262.z, x_1263.w);
  let x_1265 : f32 = u_xlat28;
  let x_1267 : f32 = u_xlat28;
  let x_1271 : vec2<f32> = ((vec2<f32>(x_1265, x_1265) * vec2<f32>(x_1267, x_1267)) + vec2<f32>(-1.0f, 1.0f));
  let x_1272 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_1271.x, x_1272.y, x_1271.y);
  let x_1275 : f32 = u_xlat0.z;
  u_xlat28 = (1.0f / x_1275);
  let x_1277 : vec4<f32> = u_xlat5;
  let x_1280 : f32 = u_xlat17;
  let x_1282 : vec3<f32> = (-(vec3<f32>(x_1277.x, x_1277.y, x_1277.z)) + vec3<f32>(x_1280, x_1280, x_1280));
  let x_1283 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1282.x, x_1282.y, x_1282.z, x_1283.w);
  let x_1285 : f32 = u_xlat46;
  let x_1287 : vec4<f32> = u_xlat9;
  let x_1290 : vec4<f32> = u_xlat5;
  let x_1292 : vec3<f32> = ((vec3<f32>(x_1285, x_1285, x_1285) * vec3<f32>(x_1287.x, x_1287.y, x_1287.z)) + vec3<f32>(x_1290.x, x_1290.y, x_1290.z));
  let x_1293 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1292.x, x_1292.y, x_1292.z, x_1293.w);
  let x_1295 : f32 = u_xlat28;
  let x_1297 : vec4<f32> = u_xlat9;
  let x_1299 : vec3<f32> = (vec3<f32>(x_1295, x_1295, x_1295) * vec3<f32>(x_1297.x, x_1297.y, x_1297.z));
  let x_1300 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1299.x, x_1299.y, x_1299.z, x_1300.w);
  let x_1302 : vec4<f32> = u_xlat8;
  let x_1304 : vec4<f32> = u_xlat9;
  let x_1306 : vec3<f32> = (vec3<f32>(x_1302.x, x_1302.y, x_1302.z) * vec3<f32>(x_1304.x, x_1304.y, x_1304.z));
  let x_1307 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1306.x, x_1306.y, x_1306.z, x_1307.w);
  let x_1309 : vec4<f32> = u_xlat2;
  let x_1311 : vec4<f32> = u_xlat4;
  let x_1314 : vec4<f32> = u_xlat8;
  let x_1316 : vec3<f32> = ((vec3<f32>(x_1309.x, x_1309.y, x_1309.z) * vec3<f32>(x_1311.x, x_1311.y, x_1311.z)) + vec3<f32>(x_1314.x, x_1314.y, x_1314.z));
  let x_1317 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1316.x, x_1316.y, x_1316.z, x_1317.w);
  let x_1320 : f32 = u_xlat3.x;
  let x_1322 : f32 = x_1226.unity_LightData.z;
  u_xlat28 = (x_1320 * x_1322);
  let x_1324 : vec4<f32> = u_xlat1;
  let x_1327 : vec4<f32> = x_128.x_MainLightPosition;
  u_xlat3.x = dot(vec3<f32>(x_1324.x, x_1324.y, x_1324.z), vec3<f32>(x_1327.x, x_1327.y, x_1327.z));
  let x_1332 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_1332, 0.0f, 1.0f);
  let x_1335 : f32 = u_xlat28;
  let x_1337 : f32 = u_xlat3.x;
  u_xlat28 = (x_1335 * x_1337);
  let x_1339 : f32 = u_xlat28;
  let x_1341 : vec4<f32> = u_xlat6;
  let x_1343 : vec3<f32> = (vec3<f32>(x_1339, x_1339, x_1339) * vec3<f32>(x_1341.x, x_1341.y, x_1341.z));
  let x_1344 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1343.x, x_1343.y, x_1343.z, x_1344.w);
  let x_1346 : vec4<f32> = u_xlat7;
  let x_1349 : vec4<f32> = x_128.x_MainLightPosition;
  let x_1351 : vec3<f32> = (vec3<f32>(x_1346.x, x_1346.y, x_1346.z) + vec3<f32>(x_1349.x, x_1349.y, x_1349.z));
  let x_1352 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1351.x, x_1351.y, x_1351.z, x_1352.w);
  let x_1354 : vec4<f32> = u_xlat8;
  let x_1356 : vec4<f32> = u_xlat8;
  u_xlat28 = dot(vec3<f32>(x_1354.x, x_1354.y, x_1354.z), vec3<f32>(x_1356.x, x_1356.y, x_1356.z));
  let x_1359 : f32 = u_xlat28;
  u_xlat28 = max(x_1359, 1.17549435e-37f);
  let x_1362 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_1362);
  let x_1364 : f32 = u_xlat28;
  let x_1366 : vec4<f32> = u_xlat8;
  let x_1368 : vec3<f32> = (vec3<f32>(x_1364, x_1364, x_1364) * vec3<f32>(x_1366.x, x_1366.y, x_1366.z));
  let x_1369 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1368.x, x_1368.y, x_1368.z, x_1369.w);
  let x_1371 : vec4<f32> = u_xlat1;
  let x_1373 : vec4<f32> = u_xlat8;
  u_xlat28 = dot(vec3<f32>(x_1371.x, x_1371.y, x_1371.z), vec3<f32>(x_1373.x, x_1373.y, x_1373.z));
  let x_1376 : f32 = u_xlat28;
  u_xlat28 = clamp(x_1376, 0.0f, 1.0f);
  let x_1379 : vec4<f32> = x_128.x_MainLightPosition;
  let x_1381 : vec4<f32> = u_xlat8;
  u_xlat3.x = dot(vec3<f32>(x_1379.x, x_1379.y, x_1379.z), vec3<f32>(x_1381.x, x_1381.y, x_1381.z));
  let x_1386 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_1386, 0.0f, 1.0f);
  let x_1389 : f32 = u_xlat28;
  let x_1390 : f32 = u_xlat28;
  u_xlat28 = (x_1389 * x_1390);
  let x_1392 : f32 = u_xlat28;
  let x_1394 : f32 = u_xlat0.x;
  u_xlat28 = ((x_1392 * x_1394) + 1.000010014f);
  let x_1399 : f32 = u_xlat3.x;
  let x_1401 : f32 = u_xlat3.x;
  u_xlat3.x = (x_1399 * x_1401);
  let x_1404 : f32 = u_xlat28;
  let x_1405 : f32 = u_xlat28;
  u_xlat28 = (x_1404 * x_1405);
  let x_1408 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_1408, 0.100000001f);
  let x_1412 : f32 = u_xlat28;
  let x_1414 : f32 = u_xlat3.x;
  u_xlat28 = (x_1412 * x_1414);
  let x_1416 : f32 = u_xlat45;
  let x_1417 : f32 = u_xlat28;
  u_xlat28 = (x_1416 * x_1417);
  let x_1419 : f32 = u_xlat44;
  let x_1420 : f32 = u_xlat28;
  u_xlat28 = (x_1419 / x_1420);
  let x_1422 : vec4<f32> = u_xlat5;
  let x_1424 : f32 = u_xlat28;
  let x_1427 : vec4<f32> = u_xlat4;
  let x_1429 : vec3<f32> = ((vec3<f32>(x_1422.x, x_1422.y, x_1422.z) * vec3<f32>(x_1424, x_1424, x_1424)) + vec3<f32>(x_1427.x, x_1427.y, x_1427.z));
  let x_1430 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1429.x, x_1429.y, x_1429.z, x_1430.w);
  let x_1432 : vec4<f32> = u_xlat6;
  let x_1434 : vec4<f32> = u_xlat8;
  let x_1436 : vec3<f32> = (vec3<f32>(x_1432.x, x_1432.y, x_1432.z) * vec3<f32>(x_1434.x, x_1434.y, x_1434.z));
  let x_1437 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1436.x, x_1436.y, x_1436.z, x_1437.w);
  let x_1440 : f32 = x_128.x_AdditionalLightsCount.x;
  let x_1442 : f32 = x_1226.unity_LightData.y;
  u_xlat28 = min(x_1440, x_1442);
  let x_1446 : f32 = u_xlat28;
  u_xlatu28 = bitcast<u32>(i32(x_1446));
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1458 : u32 = u_xlatu_loop_1;
    let x_1459 : u32 = u_xlatu28;
    if ((x_1458 < x_1459)) {
    } else {
      break;
    }
    let x_1462 : u32 = u_xlatu_loop_1;
    u_xlatu17 = (x_1462 >> 2u);
    let x_1466 : u32 = u_xlatu_loop_1;
    u_xlati46 = bitcast<i32>((x_1466 & 3u));
    let x_1469 : u32 = u_xlatu17;
    let x_1472 : vec4<f32> = x_1226.unity_LightIndices[bitcast<i32>(x_1469)];
    let x_1482 : i32 = u_xlati46;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1487 : vec4<u32> = indexable[x_1482];
    u_xlat17 = dot(x_1472, bitcast<vec4<f32>>(x_1487));
    let x_1491 : f32 = u_xlat17;
    u_xlati17 = i32(x_1491);
    let x_1493 : vec3<f32> = vs_TEXCOORD7;
    let x_1505 : i32 = u_xlati17;
    let x_1507 : vec4<f32> = x_1504.x_AdditionalLightsPosition[x_1505];
    let x_1510 : i32 = u_xlati17;
    let x_1512 : vec4<f32> = x_1504.x_AdditionalLightsPosition[x_1510];
    let x_1514 : vec3<f32> = ((-(x_1493) * vec3<f32>(x_1507.w, x_1507.w, x_1507.w)) + vec3<f32>(x_1512.x, x_1512.y, x_1512.z));
    let x_1515 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1514.x, x_1514.y, x_1514.z, x_1515.w);
    let x_1517 : vec4<f32> = u_xlat9;
    let x_1519 : vec4<f32> = u_xlat9;
    u_xlat46 = dot(vec3<f32>(x_1517.x, x_1517.y, x_1517.z), vec3<f32>(x_1519.x, x_1519.y, x_1519.z));
    let x_1522 : f32 = u_xlat46;
    u_xlat46 = max(x_1522, 6.10351562e-05f);
    let x_1524 : f32 = u_xlat46;
    u_xlat47 = inverseSqrt(x_1524);
    let x_1526 : f32 = u_xlat47;
    let x_1528 : vec4<f32> = u_xlat9;
    let x_1530 : vec3<f32> = (vec3<f32>(x_1526, x_1526, x_1526) * vec3<f32>(x_1528.x, x_1528.y, x_1528.z));
    let x_1531 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1530.x, x_1530.y, x_1530.z, x_1531.w);
    let x_1534 : f32 = u_xlat46;
    u_xlat48 = (1.0f / x_1534);
    let x_1536 : f32 = u_xlat46;
    let x_1537 : i32 = u_xlati17;
    let x_1539 : f32 = x_1504.x_AdditionalLightsAttenuation[x_1537].x;
    u_xlat46 = (x_1536 * x_1539);
    let x_1541 : f32 = u_xlat46;
    let x_1543 : f32 = u_xlat46;
    u_xlat46 = ((-(x_1541) * x_1543) + 1.0f);
    let x_1546 : f32 = u_xlat46;
    u_xlat46 = max(x_1546, 0.0f);
    let x_1548 : f32 = u_xlat46;
    let x_1549 : f32 = u_xlat46;
    u_xlat46 = (x_1548 * x_1549);
    let x_1551 : f32 = u_xlat46;
    let x_1552 : f32 = u_xlat48;
    u_xlat46 = (x_1551 * x_1552);
    let x_1554 : i32 = u_xlati17;
    let x_1556 : vec4<f32> = x_1504.x_AdditionalLightsSpotDir[x_1554];
    let x_1558 : vec4<f32> = u_xlat10;
    u_xlat48 = dot(vec3<f32>(x_1556.x, x_1556.y, x_1556.z), vec3<f32>(x_1558.x, x_1558.y, x_1558.z));
    let x_1561 : f32 = u_xlat48;
    let x_1562 : i32 = u_xlati17;
    let x_1564 : f32 = x_1504.x_AdditionalLightsAttenuation[x_1562].z;
    let x_1566 : i32 = u_xlati17;
    let x_1568 : f32 = x_1504.x_AdditionalLightsAttenuation[x_1566].w;
    u_xlat48 = ((x_1561 * x_1564) + x_1568);
    let x_1570 : f32 = u_xlat48;
    u_xlat48 = clamp(x_1570, 0.0f, 1.0f);
    let x_1572 : f32 = u_xlat48;
    let x_1573 : f32 = u_xlat48;
    u_xlat48 = (x_1572 * x_1573);
    let x_1575 : f32 = u_xlat46;
    let x_1576 : f32 = u_xlat48;
    u_xlat46 = (x_1575 * x_1576);
    let x_1578 : f32 = u_xlat31;
    let x_1580 : i32 = u_xlati17;
    let x_1582 : vec4<f32> = x_1504.x_AdditionalLightsColor[x_1580];
    let x_1584 : vec3<f32> = (vec3<f32>(x_1578, x_1578, x_1578) * vec3<f32>(x_1582.x, x_1582.y, x_1582.z));
    let x_1585 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1584.x, x_1584.y, x_1584.z, x_1585.w);
    let x_1587 : vec4<f32> = u_xlat1;
    let x_1589 : vec4<f32> = u_xlat10;
    u_xlat17 = dot(vec3<f32>(x_1587.x, x_1587.y, x_1587.z), vec3<f32>(x_1589.x, x_1589.y, x_1589.z));
    let x_1592 : f32 = u_xlat17;
    u_xlat17 = clamp(x_1592, 0.0f, 1.0f);
    let x_1594 : f32 = u_xlat17;
    let x_1595 : f32 = u_xlat46;
    u_xlat17 = (x_1594 * x_1595);
    let x_1597 : f32 = u_xlat17;
    let x_1599 : vec4<f32> = u_xlat11;
    let x_1601 : vec3<f32> = (vec3<f32>(x_1597, x_1597, x_1597) * vec3<f32>(x_1599.x, x_1599.y, x_1599.z));
    let x_1602 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1601.x, x_1601.y, x_1601.z, x_1602.w);
    let x_1604 : vec4<f32> = u_xlat9;
    let x_1606 : f32 = u_xlat47;
    let x_1609 : vec4<f32> = u_xlat7;
    let x_1611 : vec3<f32> = ((vec3<f32>(x_1604.x, x_1604.y, x_1604.z) * vec3<f32>(x_1606, x_1606, x_1606)) + vec3<f32>(x_1609.x, x_1609.y, x_1609.z));
    let x_1612 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1611.x, x_1611.y, x_1611.z, x_1612.w);
    let x_1614 : vec4<f32> = u_xlat9;
    let x_1616 : vec4<f32> = u_xlat9;
    u_xlat17 = dot(vec3<f32>(x_1614.x, x_1614.y, x_1614.z), vec3<f32>(x_1616.x, x_1616.y, x_1616.z));
    let x_1619 : f32 = u_xlat17;
    u_xlat17 = max(x_1619, 1.17549435e-37f);
    let x_1621 : f32 = u_xlat17;
    u_xlat17 = inverseSqrt(x_1621);
    let x_1623 : f32 = u_xlat17;
    let x_1625 : vec4<f32> = u_xlat9;
    let x_1627 : vec3<f32> = (vec3<f32>(x_1623, x_1623, x_1623) * vec3<f32>(x_1625.x, x_1625.y, x_1625.z));
    let x_1628 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1627.x, x_1627.y, x_1627.z, x_1628.w);
    let x_1630 : vec4<f32> = u_xlat1;
    let x_1632 : vec4<f32> = u_xlat9;
    u_xlat17 = dot(vec3<f32>(x_1630.x, x_1630.y, x_1630.z), vec3<f32>(x_1632.x, x_1632.y, x_1632.z));
    let x_1635 : f32 = u_xlat17;
    u_xlat17 = clamp(x_1635, 0.0f, 1.0f);
    let x_1637 : vec4<f32> = u_xlat10;
    let x_1639 : vec4<f32> = u_xlat9;
    u_xlat46 = dot(vec3<f32>(x_1637.x, x_1637.y, x_1637.z), vec3<f32>(x_1639.x, x_1639.y, x_1639.z));
    let x_1642 : f32 = u_xlat46;
    u_xlat46 = clamp(x_1642, 0.0f, 1.0f);
    let x_1644 : f32 = u_xlat17;
    let x_1645 : f32 = u_xlat17;
    u_xlat17 = (x_1644 * x_1645);
    let x_1647 : f32 = u_xlat17;
    let x_1649 : f32 = u_xlat0.x;
    u_xlat17 = ((x_1647 * x_1649) + 1.000010014f);
    let x_1652 : f32 = u_xlat46;
    let x_1653 : f32 = u_xlat46;
    u_xlat46 = (x_1652 * x_1653);
    let x_1655 : f32 = u_xlat17;
    let x_1656 : f32 = u_xlat17;
    u_xlat17 = (x_1655 * x_1656);
    let x_1658 : f32 = u_xlat46;
    u_xlat46 = max(x_1658, 0.100000001f);
    let x_1660 : f32 = u_xlat17;
    let x_1661 : f32 = u_xlat46;
    u_xlat17 = (x_1660 * x_1661);
    let x_1663 : f32 = u_xlat45;
    let x_1664 : f32 = u_xlat17;
    u_xlat17 = (x_1663 * x_1664);
    let x_1666 : f32 = u_xlat44;
    let x_1667 : f32 = u_xlat17;
    u_xlat17 = (x_1666 / x_1667);
    let x_1669 : vec4<f32> = u_xlat5;
    let x_1671 : f32 = u_xlat17;
    let x_1674 : vec4<f32> = u_xlat4;
    let x_1676 : vec3<f32> = ((vec3<f32>(x_1669.x, x_1669.y, x_1669.z) * vec3<f32>(x_1671, x_1671, x_1671)) + vec3<f32>(x_1674.x, x_1674.y, x_1674.z));
    let x_1677 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1676.x, x_1676.y, x_1676.z, x_1677.w);
    let x_1679 : vec4<f32> = u_xlat9;
    let x_1681 : vec4<f32> = u_xlat11;
    let x_1684 : vec4<f32> = u_xlat8;
    let x_1686 : vec3<f32> = ((vec3<f32>(x_1679.x, x_1679.y, x_1679.z) * vec3<f32>(x_1681.x, x_1681.y, x_1681.z)) + vec3<f32>(x_1684.x, x_1684.y, x_1684.z));
    let x_1687 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1686.x, x_1686.y, x_1686.z, x_1687.w);

    continuing {
      let x_1689 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1689 + bitcast<u32>(1i));
    }
  }
  let x_1691 : vec4<f32> = u_xlat2;
  let x_1693 : f32 = u_xlat14;
  let x_1696 : vec4<f32> = u_xlat6;
  u_xlat0 = ((vec3<f32>(x_1691.x, x_1691.y, x_1691.z) * vec3<f32>(x_1693, x_1693, x_1693)) + vec3<f32>(x_1696.x, x_1696.y, x_1696.z));
  let x_1699 : vec4<f32> = u_xlat8;
  let x_1701 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_1699.x, x_1699.y, x_1699.z) + x_1701);
  let x_1703 : f32 = u_xlat43;
  let x_1704 : f32 = u_xlat43;
  u_xlat1.x = (x_1703 * -(x_1704));
  let x_1709 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_1709);
  let x_1712 : vec3<f32> = u_xlat0;
  let x_1713 : f32 = u_xlat42;
  let x_1717 : vec4<f32> = x_128.unity_FogColor;
  u_xlat0 = ((x_1712 * vec3<f32>(x_1713, x_1713, x_1713)) + -(vec3<f32>(x_1717.x, x_1717.y, x_1717.z)));
  let x_1723 : vec4<f32> = u_xlat1;
  let x_1725 : vec3<f32> = u_xlat0;
  let x_1728 : vec4<f32> = x_128.unity_FogColor;
  let x_1730 : vec3<f32> = ((vec3<f32>(x_1723.x, x_1723.x, x_1723.x) * x_1725) + vec3<f32>(x_1728.x, x_1728.y, x_1728.z));
  let x_1731 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1730.x, x_1730.y, x_1730.z, x_1731.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(5) vs_TEXCOORD5_param : vec4<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(6) vs_TEXCOORD7_param : vec3<f32>, @location(7) vs_TEXCOORD8_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD8 = vs_TEXCOORD8_param;
  main_1();
  return main_out(SV_Target0);
}

