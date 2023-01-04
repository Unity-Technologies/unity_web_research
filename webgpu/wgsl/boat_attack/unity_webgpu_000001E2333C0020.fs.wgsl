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

@group(0) @binding(1) var x_Control : texture_2d<f32>;

@group(0) @binding(13) var sampler_Control : sampler;

@group(1) @binding(0) var<uniform> x_128 : PGlobals;

@group(0) @binding(2) var x_Splat0 : texture_2d<f32>;

@group(0) @binding(14) var sampler_Splat0 : sampler;

var<private> vs_TEXCOORD1 : vec4<f32>;

@group(0) @binding(3) var x_Splat1 : texture_2d<f32>;

@group(0) @binding(4) var x_Splat2 : texture_2d<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

@group(0) @binding(5) var x_Splat3 : texture_2d<f32>;

@group(0) @binding(6) var x_Normal0 : texture_2d<f32>;

@group(0) @binding(15) var sampler_Normal0 : sampler;

@group(0) @binding(7) var x_Normal1 : texture_2d<f32>;

@group(0) @binding(8) var x_Normal2 : texture_2d<f32>;

@group(0) @binding(9) var x_Normal3 : texture_2d<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_842 : MainLightShadows;

@group(1) @binding(2) var<uniform> x_1058 : UnityPerDraw;

@group(0) @binding(10) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(16) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(11) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(17) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(12) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1732 : AdditionalLights;

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
  var u_xlatb2 : vec4<bool>;
  var u_xlatu2 : u32;
  var u_xlati2 : i32;
  var u_xlat16 : vec3<f32>;
  var u_xlat44 : f32;
  var u_xlat45 : f32;
  var u_xlat18 : f32;
  var u_xlat32 : f32;
  var txVec0 : vec3<f32>;
  var u_xlatb16 : bool;
  var u_xlatb30 : bool;
  var x_1289 : f32;
  var u_xlat30 : f32;
  var u_xlatu0 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu43 : u32;
  var u_xlati46 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati43 : i32;
  var u_xlat46 : f32;
  var u_xlat47 : f32;
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
  let x_837 : vec3<f32> = vs_TEXCOORD7;
  let x_844 : vec4<f32> = x_842.x_CascadeShadowSplitSpheres0;
  let x_847 : vec3<f32> = (x_837 + -(vec3<f32>(x_844.x, x_844.y, x_844.z)));
  let x_848 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_847.x, x_847.y, x_847.z, x_848.w);
  let x_850 : vec3<f32> = vs_TEXCOORD7;
  let x_852 : vec4<f32> = x_842.x_CascadeShadowSplitSpheres1;
  let x_855 : vec3<f32> = (x_850 + -(vec3<f32>(x_852.x, x_852.y, x_852.z)));
  let x_856 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_855.x, x_855.y, x_855.z, x_856.w);
  let x_858 : vec3<f32> = vs_TEXCOORD7;
  let x_860 : vec4<f32> = x_842.x_CascadeShadowSplitSpheres2;
  let x_863 : vec3<f32> = (x_858 + -(vec3<f32>(x_860.x, x_860.y, x_860.z)));
  let x_864 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_863.x, x_863.y, x_863.z, x_864.w);
  let x_866 : vec3<f32> = vs_TEXCOORD7;
  let x_868 : vec4<f32> = x_842.x_CascadeShadowSplitSpheres3;
  let x_871 : vec3<f32> = (x_866 + -(vec3<f32>(x_868.x, x_868.y, x_868.z)));
  let x_872 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_871.x, x_871.y, x_871.z, x_872.w);
  let x_874 : vec4<f32> = u_xlat2;
  let x_876 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_874.x, x_874.y, x_874.z), vec3<f32>(x_876.x, x_876.y, x_876.z));
  let x_880 : vec4<f32> = u_xlat3;
  let x_882 : vec4<f32> = u_xlat3;
  u_xlat2.y = dot(vec3<f32>(x_880.x, x_880.y, x_880.z), vec3<f32>(x_882.x, x_882.y, x_882.z));
  let x_886 : vec4<f32> = u_xlat4;
  let x_888 : vec4<f32> = u_xlat4;
  u_xlat2.z = dot(vec3<f32>(x_886.x, x_886.y, x_886.z), vec3<f32>(x_888.x, x_888.y, x_888.z));
  let x_892 : vec4<f32> = u_xlat6;
  let x_894 : vec4<f32> = u_xlat6;
  u_xlat2.w = dot(vec3<f32>(x_892.x, x_892.y, x_892.z), vec3<f32>(x_894.x, x_894.y, x_894.z));
  let x_900 : vec4<f32> = u_xlat2;
  let x_902 : vec4<f32> = x_842.x_CascadeShadowSplitSphereRadii;
  u_xlatb2 = (x_900 < x_902);
  let x_905 : bool = u_xlatb2.x;
  u_xlat3.x = select(0.0f, 1.0f, x_905);
  let x_909 : bool = u_xlatb2.y;
  u_xlat3.y = select(0.0f, 1.0f, x_909);
  let x_913 : bool = u_xlatb2.z;
  u_xlat3.z = select(0.0f, 1.0f, x_913);
  let x_917 : bool = u_xlatb2.w;
  u_xlat3.w = select(0.0f, 1.0f, x_917);
  let x_921 : bool = u_xlatb2.x;
  u_xlat2.x = select(-0.0f, -1.0f, x_921);
  let x_926 : bool = u_xlatb2.y;
  u_xlat2.y = select(-0.0f, -1.0f, x_926);
  let x_930 : bool = u_xlatb2.z;
  u_xlat2.z = select(-0.0f, -1.0f, x_930);
  let x_933 : vec4<f32> = u_xlat2;
  let x_935 : vec4<f32> = u_xlat3;
  let x_937 : vec3<f32> = (vec3<f32>(x_933.x, x_933.y, x_933.z) + vec3<f32>(x_935.y, x_935.z, x_935.w));
  let x_938 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_937.x, x_937.y, x_937.z, x_938.w);
  let x_940 : vec4<f32> = u_xlat2;
  let x_943 : vec3<f32> = max(vec3<f32>(x_940.x, x_940.y, x_940.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_944 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_944.x, x_943.x, x_943.y, x_943.z);
  let x_946 : vec4<f32> = u_xlat3;
  u_xlat2.x = dot(x_946, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_952 : f32 = u_xlat2.x;
  u_xlat2.x = (-(x_952) + 4.0f);
  let x_959 : f32 = u_xlat2.x;
  u_xlatu2 = u32(x_959);
  let x_963 : u32 = u_xlatu2;
  u_xlati2 = (bitcast<i32>(x_963) << bitcast<u32>(2i));
  let x_967 : vec3<f32> = vs_TEXCOORD7;
  let x_969 : i32 = u_xlati2;
  let x_972 : i32 = u_xlati2;
  let x_976 : vec4<f32> = x_842.x_MainLightWorldToShadow[((x_969 + 1i) / 4i)][((x_972 + 1i) % 4i)];
  u_xlat16 = (vec3<f32>(x_967.y, x_967.y, x_967.y) * vec3<f32>(x_976.x, x_976.y, x_976.z));
  let x_979 : i32 = u_xlati2;
  let x_981 : i32 = u_xlati2;
  let x_984 : vec4<f32> = x_842.x_MainLightWorldToShadow[(x_979 / 4i)][(x_981 % 4i)];
  let x_986 : vec3<f32> = vs_TEXCOORD7;
  let x_989 : vec3<f32> = u_xlat16;
  u_xlat16 = ((vec3<f32>(x_984.x, x_984.y, x_984.z) * vec3<f32>(x_986.x, x_986.x, x_986.x)) + x_989);
  let x_991 : i32 = u_xlati2;
  let x_994 : i32 = u_xlati2;
  let x_998 : vec4<f32> = x_842.x_MainLightWorldToShadow[((x_991 + 2i) / 4i)][((x_994 + 2i) % 4i)];
  let x_1000 : vec3<f32> = vs_TEXCOORD7;
  let x_1003 : vec3<f32> = u_xlat16;
  u_xlat16 = ((vec3<f32>(x_998.x, x_998.y, x_998.z) * vec3<f32>(x_1000.z, x_1000.z, x_1000.z)) + x_1003);
  let x_1005 : vec3<f32> = u_xlat16;
  let x_1006 : i32 = u_xlati2;
  let x_1009 : i32 = u_xlati2;
  let x_1013 : vec4<f32> = x_842.x_MainLightWorldToShadow[((x_1006 + 3i) / 4i)][((x_1009 + 3i) % 4i)];
  let x_1015 : vec3<f32> = (x_1005 + vec3<f32>(x_1013.x, x_1013.y, x_1013.z));
  let x_1016 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1015.x, x_1015.y, x_1015.z, x_1016.w);
  let x_1020 : f32 = vs_TEXCOORD7.y;
  let x_1022 : f32 = x_128.unity_MatrixV[1i].z;
  u_xlat44 = (x_1020 * x_1022);
  let x_1025 : f32 = x_128.unity_MatrixV[0i].z;
  let x_1027 : f32 = vs_TEXCOORD7.x;
  let x_1029 : f32 = u_xlat44;
  u_xlat44 = ((x_1025 * x_1027) + x_1029);
  let x_1032 : f32 = x_128.unity_MatrixV[2i].z;
  let x_1034 : f32 = vs_TEXCOORD7.z;
  let x_1036 : f32 = u_xlat44;
  u_xlat44 = ((x_1032 * x_1034) + x_1036);
  let x_1038 : f32 = u_xlat44;
  let x_1040 : f32 = x_128.unity_MatrixV[3i].z;
  u_xlat44 = (x_1038 + x_1040);
  let x_1042 : f32 = u_xlat44;
  let x_1045 : f32 = x_128.x_ProjectionParams.y;
  u_xlat44 = (-(x_1042) + -(x_1045));
  let x_1048 : f32 = u_xlat44;
  u_xlat44 = max(x_1048, 0.0f);
  let x_1050 : f32 = u_xlat44;
  let x_1052 : f32 = x_128.unity_FogParams.x;
  u_xlat44 = (x_1050 * x_1052);
  u_xlat1.w = 1.0f;
  let x_1060 : vec4<f32> = x_1058.unity_SHAr;
  let x_1061 : vec4<f32> = u_xlat1;
  u_xlat3.x = dot(x_1060, x_1061);
  let x_1065 : vec4<f32> = x_1058.unity_SHAg;
  let x_1066 : vec4<f32> = u_xlat1;
  u_xlat3.y = dot(x_1065, x_1066);
  let x_1070 : vec4<f32> = x_1058.unity_SHAb;
  let x_1071 : vec4<f32> = u_xlat1;
  u_xlat3.z = dot(x_1070, x_1071);
  let x_1074 : vec4<f32> = u_xlat1;
  let x_1076 : vec4<f32> = u_xlat1;
  u_xlat4 = (vec4<f32>(x_1074.y, x_1074.z, x_1074.z, x_1074.x) * vec4<f32>(x_1076.x, x_1076.y, x_1076.z, x_1076.z));
  let x_1080 : vec4<f32> = x_1058.unity_SHBr;
  let x_1081 : vec4<f32> = u_xlat4;
  u_xlat6.x = dot(x_1080, x_1081);
  let x_1085 : vec4<f32> = x_1058.unity_SHBg;
  let x_1086 : vec4<f32> = u_xlat4;
  u_xlat6.y = dot(x_1085, x_1086);
  let x_1090 : vec4<f32> = x_1058.unity_SHBb;
  let x_1091 : vec4<f32> = u_xlat4;
  u_xlat6.z = dot(x_1090, x_1091);
  let x_1095 : f32 = u_xlat1.y;
  let x_1097 : f32 = u_xlat1.y;
  u_xlat43 = (x_1095 * x_1097);
  let x_1100 : f32 = u_xlat1.x;
  let x_1102 : f32 = u_xlat1.x;
  let x_1104 : f32 = u_xlat43;
  u_xlat43 = ((x_1100 * x_1102) + -(x_1104));
  let x_1109 : vec4<f32> = x_1058.unity_SHC;
  let x_1111 : f32 = u_xlat43;
  let x_1114 : vec4<f32> = u_xlat6;
  let x_1116 : vec3<f32> = ((vec3<f32>(x_1109.x, x_1109.y, x_1109.z) * vec3<f32>(x_1111, x_1111, x_1111)) + vec3<f32>(x_1114.x, x_1114.y, x_1114.z));
  let x_1117 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1116.x, x_1116.y, x_1116.z, x_1117.w);
  let x_1119 : vec4<f32> = u_xlat3;
  let x_1121 : vec4<f32> = u_xlat4;
  let x_1123 : vec3<f32> = (vec3<f32>(x_1119.x, x_1119.y, x_1119.z) + vec3<f32>(x_1121.x, x_1121.y, x_1121.z));
  let x_1124 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1123.x, x_1123.y, x_1123.z, x_1124.w);
  let x_1126 : vec4<f32> = u_xlat3;
  let x_1128 : vec3<f32> = max(vec3<f32>(x_1126.x, x_1126.y, x_1126.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_1129 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1128.x, x_1128.y, x_1128.z, x_1129.w);
  let x_1133 : vec4<f32> = x_128.x_ScaledScreenParams;
  let x_1134 : vec2<f32> = vec2<f32>(x_1133.x, x_1133.y);
  let x_1138 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_1134.x, x_1134.y));
  let x_1139 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1138.x, x_1138.y, x_1139.z, x_1139.w);
  let x_1141 : vec4<f32> = u_xlat4;
  let x_1143 : vec4<f32> = hlslcc_FragCoord;
  let x_1145 : vec2<f32> = (vec2<f32>(x_1141.x, x_1141.y) * vec2<f32>(x_1143.x, x_1143.y));
  let x_1146 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1145.x, x_1145.y, x_1146.z, x_1146.w);
  let x_1149 : f32 = u_xlat4.y;
  let x_1151 : f32 = x_128.x_ScaleBiasRt.x;
  let x_1154 : f32 = x_128.x_ScaleBiasRt.y;
  u_xlat43 = ((x_1149 * x_1151) + x_1154);
  let x_1156 : f32 = u_xlat43;
  u_xlat4.z = (-(x_1156) + 1.0f);
  let x_1161 : f32 = u_xlat0.x;
  u_xlat43 = ((-(x_1161) * 0.959999979f) + 0.959999979f);
  let x_1167 : f32 = u_xlat43;
  u_xlat45 = (-(x_1167) + 1.0f);
  let x_1170 : f32 = u_xlat43;
  let x_1172 : vec4<f32> = u_xlat5;
  let x_1174 : vec3<f32> = (vec3<f32>(x_1170, x_1170, x_1170) * vec3<f32>(x_1172.x, x_1172.y, x_1172.z));
  let x_1175 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1174.x, x_1174.y, x_1174.z, x_1175.w);
  let x_1177 : vec4<f32> = u_xlat5;
  let x_1181 : vec3<f32> = (vec3<f32>(x_1177.x, x_1177.y, x_1177.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_1182 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1181.x, x_1181.y, x_1181.z, x_1182.w);
  let x_1184 : vec3<f32> = u_xlat0;
  let x_1186 : vec4<f32> = u_xlat5;
  let x_1191 : vec3<f32> = ((vec3<f32>(x_1184.x, x_1184.x, x_1184.x) * vec3<f32>(x_1186.x, x_1186.y, x_1186.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_1192 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1191.x, x_1191.y, x_1191.z, x_1192.w);
  let x_1194 : f32 = u_xlat28;
  u_xlat0.x = (-(x_1194) + 1.0f);
  let x_1199 : f32 = u_xlat0.x;
  let x_1201 : f32 = u_xlat0.x;
  u_xlat43 = (x_1199 * x_1201);
  let x_1203 : f32 = u_xlat43;
  u_xlat43 = max(x_1203, 0.0078125f);
  let x_1207 : f32 = u_xlat43;
  let x_1208 : f32 = u_xlat43;
  u_xlat18 = (x_1207 * x_1208);
  let x_1210 : f32 = u_xlat28;
  let x_1211 : f32 = u_xlat45;
  u_xlat28 = (x_1210 + x_1211);
  let x_1213 : f32 = u_xlat28;
  u_xlat28 = clamp(x_1213, 0.0f, 1.0f);
  let x_1215 : f32 = u_xlat43;
  u_xlat45 = ((x_1215 * 4.0f) + 2.0f);
  let x_1223 : vec4<f32> = u_xlat4;
  let x_1226 : f32 = x_128.x_GlobalMipBias.x;
  let x_1227 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_1223.x, x_1223.z), x_1226);
  u_xlat4.x = x_1227.x;
  let x_1232 : f32 = u_xlat4.x;
  u_xlat32 = (x_1232 + -1.0f);
  let x_1235 : f32 = x_128.x_AmbientOcclusionParam.w;
  let x_1236 : f32 = u_xlat32;
  u_xlat32 = ((x_1235 * x_1236) + 1.0f);
  let x_1239 : f32 = u_xlat14;
  let x_1241 : f32 = u_xlat4.x;
  u_xlat14 = min(x_1239, x_1241);
  let x_1244 : vec4<f32> = u_xlat2;
  let x_1245 : vec2<f32> = vec2<f32>(x_1244.x, x_1244.y);
  let x_1247 : f32 = u_xlat2.z;
  txVec0 = vec3<f32>(x_1245.x, x_1245.y, x_1247);
  let x_1259 : vec3<f32> = txVec0;
  let x_1261 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1259.xy, x_1259.z);
  u_xlat2.x = x_1261;
  let x_1264 : f32 = x_842.x_MainLightShadowParams.x;
  u_xlat16.x = (-(x_1264) + 1.0f);
  let x_1269 : f32 = u_xlat2.x;
  let x_1271 : f32 = x_842.x_MainLightShadowParams.x;
  let x_1274 : f32 = u_xlat16.x;
  u_xlat2.x = ((x_1269 * x_1271) + x_1274);
  let x_1279 : f32 = u_xlat2.z;
  u_xlatb16 = (0.0f >= x_1279);
  let x_1283 : f32 = u_xlat2.z;
  u_xlatb30 = (x_1283 >= 1.0f);
  let x_1285 : bool = u_xlatb30;
  let x_1286 : bool = u_xlatb16;
  u_xlatb16 = (x_1285 | x_1286);
  let x_1288 : bool = u_xlatb16;
  if (x_1288) {
    x_1289 = 1.0f;
  } else {
    let x_1294 : f32 = u_xlat2.x;
    x_1289 = x_1294;
  }
  let x_1295 : f32 = x_1289;
  u_xlat2.x = x_1295;
  let x_1297 : vec3<f32> = vs_TEXCOORD7;
  let x_1300 : vec3<f32> = x_128.x_WorldSpaceCameraPos;
  let x_1302 : vec3<f32> = (x_1297 + -(x_1300));
  let x_1303 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1302.x, x_1302.y, x_1302.z, x_1303.w);
  let x_1305 : vec4<f32> = u_xlat7;
  let x_1307 : vec4<f32> = u_xlat7;
  u_xlat16.x = dot(vec3<f32>(x_1305.x, x_1305.y, x_1305.z), vec3<f32>(x_1307.x, x_1307.y, x_1307.z));
  let x_1312 : f32 = u_xlat16.x;
  let x_1314 : f32 = x_842.x_MainLightShadowParams.z;
  let x_1317 : f32 = x_842.x_MainLightShadowParams.w;
  u_xlat16.x = ((x_1312 * x_1314) + x_1317);
  let x_1321 : f32 = u_xlat16.x;
  u_xlat16.x = clamp(x_1321, 0.0f, 1.0f);
  let x_1326 : f32 = u_xlat2.x;
  u_xlat30 = (-(x_1326) + 1.0f);
  let x_1330 : f32 = u_xlat16.x;
  let x_1331 : f32 = u_xlat30;
  let x_1334 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_1330 * x_1331) + x_1334);
  let x_1337 : f32 = u_xlat32;
  let x_1340 : vec4<f32> = x_128.x_MainLightColor;
  let x_1342 : vec3<f32> = (vec3<f32>(x_1337, x_1337, x_1337) * vec3<f32>(x_1340.x, x_1340.y, x_1340.z));
  let x_1343 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1342.x, x_1342.y, x_1342.z, x_1343.w);
  let x_1346 : f32 = vs_TEXCOORD3.w;
  u_xlat8.x = x_1346;
  let x_1349 : f32 = vs_TEXCOORD4.w;
  u_xlat8.y = x_1349;
  let x_1352 : f32 = vs_TEXCOORD5.w;
  u_xlat8.z = x_1352;
  let x_1354 : vec4<f32> = u_xlat8;
  let x_1357 : vec4<f32> = u_xlat1;
  u_xlat16.x = dot(-(vec3<f32>(x_1354.x, x_1354.y, x_1354.z)), vec3<f32>(x_1357.x, x_1357.y, x_1357.z));
  let x_1362 : f32 = u_xlat16.x;
  let x_1364 : f32 = u_xlat16.x;
  u_xlat16.x = (x_1362 + x_1364);
  let x_1367 : vec4<f32> = u_xlat1;
  let x_1369 : vec3<f32> = u_xlat16;
  let x_1373 : vec4<f32> = u_xlat8;
  let x_1376 : vec3<f32> = ((vec3<f32>(x_1367.x, x_1367.y, x_1367.z) * -(vec3<f32>(x_1369.x, x_1369.x, x_1369.x))) + -(vec3<f32>(x_1373.x, x_1373.y, x_1373.z)));
  let x_1377 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1376.x, x_1376.y, x_1376.z, x_1377.w);
  let x_1379 : vec4<f32> = u_xlat1;
  let x_1381 : vec4<f32> = u_xlat8;
  u_xlat16.x = dot(vec3<f32>(x_1379.x, x_1379.y, x_1379.z), vec3<f32>(x_1381.x, x_1381.y, x_1381.z));
  let x_1386 : f32 = u_xlat16.x;
  u_xlat16.x = clamp(x_1386, 0.0f, 1.0f);
  let x_1390 : f32 = u_xlat16.x;
  u_xlat16.x = (-(x_1390) + 1.0f);
  let x_1395 : f32 = u_xlat16.x;
  let x_1397 : f32 = u_xlat16.x;
  u_xlat16.x = (x_1395 * x_1397);
  let x_1401 : f32 = u_xlat16.x;
  let x_1403 : f32 = u_xlat16.x;
  u_xlat16.x = (x_1401 * x_1403);
  let x_1407 : f32 = u_xlat0.x;
  u_xlat30 = ((-(x_1407) * 0.699999988f) + 1.700000048f);
  let x_1414 : f32 = u_xlat0.x;
  let x_1415 : f32 = u_xlat30;
  u_xlat0.x = (x_1414 * x_1415);
  let x_1419 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1419 * 6.0f);
  let x_1431 : vec4<f32> = u_xlat9;
  let x_1434 : f32 = u_xlat0.x;
  let x_1435 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1431.x, x_1431.y, x_1431.z), x_1434);
  u_xlat9 = x_1435;
  let x_1437 : f32 = u_xlat9.w;
  u_xlat0.x = (x_1437 + -1.0f);
  let x_1441 : f32 = x_1058.unity_SpecCube0_HDR.w;
  let x_1443 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1441 * x_1443) + 1.0f);
  let x_1448 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1448, 0.0f);
  let x_1452 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_1452);
  let x_1456 : f32 = u_xlat0.x;
  let x_1458 : f32 = x_1058.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_1456 * x_1458);
  let x_1462 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_1462);
  let x_1466 : f32 = u_xlat0.x;
  let x_1468 : f32 = x_1058.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_1466 * x_1468);
  let x_1471 : vec4<f32> = u_xlat9;
  let x_1473 : vec3<f32> = u_xlat0;
  let x_1475 : vec3<f32> = (vec3<f32>(x_1471.x, x_1471.y, x_1471.z) * vec3<f32>(x_1473.x, x_1473.x, x_1473.x));
  let x_1476 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1475.x, x_1475.y, x_1475.z, x_1476.w);
  let x_1478 : f32 = u_xlat43;
  let x_1480 : f32 = u_xlat43;
  let x_1484 : vec2<f32> = ((vec2<f32>(x_1478, x_1478) * vec2<f32>(x_1480, x_1480)) + vec2<f32>(-1.0f, 1.0f));
  let x_1485 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1484.x, x_1485.y, x_1485.z, x_1484.y);
  let x_1488 : f32 = u_xlat4.w;
  u_xlat0.x = (1.0f / x_1488);
  let x_1491 : vec4<f32> = u_xlat5;
  let x_1494 : f32 = u_xlat28;
  let x_1496 : vec3<f32> = (-(vec3<f32>(x_1491.x, x_1491.y, x_1491.z)) + vec3<f32>(x_1494, x_1494, x_1494));
  let x_1497 : vec4<f32> = u_xlat10;
  u_xlat10 = vec4<f32>(x_1496.x, x_1496.y, x_1496.z, x_1497.w);
  let x_1499 : vec3<f32> = u_xlat16;
  let x_1501 : vec4<f32> = u_xlat10;
  let x_1504 : vec4<f32> = u_xlat5;
  let x_1506 : vec3<f32> = ((vec3<f32>(x_1499.x, x_1499.x, x_1499.x) * vec3<f32>(x_1501.x, x_1501.y, x_1501.z)) + vec3<f32>(x_1504.x, x_1504.y, x_1504.z));
  let x_1507 : vec4<f32> = u_xlat10;
  u_xlat10 = vec4<f32>(x_1506.x, x_1506.y, x_1506.z, x_1507.w);
  let x_1509 : vec3<f32> = u_xlat0;
  let x_1511 : vec4<f32> = u_xlat10;
  let x_1513 : vec3<f32> = (vec3<f32>(x_1509.x, x_1509.x, x_1509.x) * vec3<f32>(x_1511.x, x_1511.y, x_1511.z));
  let x_1514 : vec4<f32> = u_xlat10;
  u_xlat10 = vec4<f32>(x_1513.x, x_1513.y, x_1513.z, x_1514.w);
  let x_1516 : vec4<f32> = u_xlat9;
  let x_1518 : vec4<f32> = u_xlat10;
  let x_1520 : vec3<f32> = (vec3<f32>(x_1516.x, x_1516.y, x_1516.z) * vec3<f32>(x_1518.x, x_1518.y, x_1518.z));
  let x_1521 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1520.x, x_1520.y, x_1520.z, x_1521.w);
  let x_1523 : vec4<f32> = u_xlat3;
  let x_1525 : vec4<f32> = u_xlat6;
  let x_1528 : vec4<f32> = u_xlat9;
  let x_1530 : vec3<f32> = ((vec3<f32>(x_1523.x, x_1523.y, x_1523.z) * vec3<f32>(x_1525.x, x_1525.y, x_1525.z)) + vec3<f32>(x_1528.x, x_1528.y, x_1528.z));
  let x_1531 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1530.x, x_1530.y, x_1530.z, x_1531.w);
  let x_1534 : f32 = u_xlat2.x;
  let x_1536 : f32 = x_1058.unity_LightData.z;
  u_xlat0.x = (x_1534 * x_1536);
  let x_1539 : vec4<f32> = u_xlat1;
  let x_1542 : vec4<f32> = x_128.x_MainLightPosition;
  u_xlat28 = dot(vec3<f32>(x_1539.x, x_1539.y, x_1539.z), vec3<f32>(x_1542.x, x_1542.y, x_1542.z));
  let x_1545 : f32 = u_xlat28;
  u_xlat28 = clamp(x_1545, 0.0f, 1.0f);
  let x_1547 : f32 = u_xlat28;
  let x_1549 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1547 * x_1549);
  let x_1552 : vec3<f32> = u_xlat0;
  let x_1554 : vec4<f32> = u_xlat7;
  let x_1556 : vec3<f32> = (vec3<f32>(x_1552.x, x_1552.x, x_1552.x) * vec3<f32>(x_1554.x, x_1554.y, x_1554.z));
  let x_1557 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1556.x, x_1556.y, x_1556.z, x_1557.w);
  let x_1559 : vec4<f32> = u_xlat8;
  let x_1562 : vec4<f32> = x_128.x_MainLightPosition;
  let x_1564 : vec3<f32> = (vec3<f32>(x_1559.x, x_1559.y, x_1559.z) + vec3<f32>(x_1562.x, x_1562.y, x_1562.z));
  let x_1565 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1564.x, x_1564.y, x_1564.z, x_1565.w);
  let x_1567 : vec4<f32> = u_xlat7;
  let x_1569 : vec4<f32> = u_xlat7;
  u_xlat0.x = dot(vec3<f32>(x_1567.x, x_1567.y, x_1567.z), vec3<f32>(x_1569.x, x_1569.y, x_1569.z));
  let x_1574 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1574, 1.17549435e-37f);
  let x_1579 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_1579);
  let x_1582 : vec3<f32> = u_xlat0;
  let x_1584 : vec4<f32> = u_xlat7;
  let x_1586 : vec3<f32> = (vec3<f32>(x_1582.x, x_1582.x, x_1582.x) * vec3<f32>(x_1584.x, x_1584.y, x_1584.z));
  let x_1587 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1586.x, x_1586.y, x_1586.z, x_1587.w);
  let x_1589 : vec4<f32> = u_xlat1;
  let x_1591 : vec4<f32> = u_xlat7;
  u_xlat0.x = dot(vec3<f32>(x_1589.x, x_1589.y, x_1589.z), vec3<f32>(x_1591.x, x_1591.y, x_1591.z));
  let x_1596 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_1596, 0.0f, 1.0f);
  let x_1600 : vec4<f32> = x_128.x_MainLightPosition;
  let x_1602 : vec4<f32> = u_xlat7;
  u_xlat0.z = dot(vec3<f32>(x_1600.x, x_1600.y, x_1600.z), vec3<f32>(x_1602.x, x_1602.y, x_1602.z));
  let x_1607 : f32 = u_xlat0.z;
  u_xlat0.z = clamp(x_1607, 0.0f, 1.0f);
  let x_1610 : vec3<f32> = u_xlat0;
  let x_1612 : vec3<f32> = u_xlat0;
  let x_1614 : vec2<f32> = (vec2<f32>(x_1610.x, x_1610.z) * vec2<f32>(x_1612.x, x_1612.z));
  let x_1615 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_1614.x, x_1615.y, x_1614.y);
  let x_1618 : f32 = u_xlat0.x;
  let x_1620 : f32 = u_xlat4.x;
  u_xlat0.x = ((x_1618 * x_1620) + 1.000010014f);
  let x_1626 : f32 = u_xlat0.x;
  let x_1628 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1626 * x_1628);
  let x_1632 : f32 = u_xlat0.z;
  u_xlat28 = max(x_1632, 0.100000001f);
  let x_1635 : f32 = u_xlat28;
  let x_1637 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1635 * x_1637);
  let x_1640 : f32 = u_xlat45;
  let x_1642 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1640 * x_1642);
  let x_1645 : f32 = u_xlat18;
  let x_1647 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1645 / x_1647);
  let x_1650 : vec4<f32> = u_xlat5;
  let x_1652 : vec3<f32> = u_xlat0;
  let x_1655 : vec4<f32> = u_xlat6;
  let x_1657 : vec3<f32> = ((vec3<f32>(x_1650.x, x_1650.y, x_1650.z) * vec3<f32>(x_1652.x, x_1652.x, x_1652.x)) + vec3<f32>(x_1655.x, x_1655.y, x_1655.z));
  let x_1658 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1657.x, x_1657.y, x_1657.z, x_1658.w);
  let x_1660 : vec4<f32> = u_xlat2;
  let x_1662 : vec4<f32> = u_xlat7;
  let x_1664 : vec3<f32> = (vec3<f32>(x_1660.x, x_1660.y, x_1660.z) * vec3<f32>(x_1662.x, x_1662.y, x_1662.z));
  let x_1665 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1664.x, x_1664.y, x_1664.z, x_1665.w);
  let x_1668 : f32 = x_128.x_AdditionalLightsCount.x;
  let x_1670 : f32 = x_1058.unity_LightData.y;
  u_xlat0.x = min(x_1668, x_1670);
  let x_1675 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_1675));
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1687 : u32 = u_xlatu_loop_1;
    let x_1688 : u32 = u_xlatu0;
    if ((x_1687 < x_1688)) {
    } else {
      break;
    }
    let x_1691 : u32 = u_xlatu_loop_1;
    u_xlatu43 = (x_1691 >> 2u);
    let x_1694 : u32 = u_xlatu_loop_1;
    u_xlati46 = bitcast<i32>((x_1694 & 3u));
    let x_1697 : u32 = u_xlatu43;
    let x_1700 : vec4<f32> = x_1058.unity_LightIndices[bitcast<i32>(x_1697)];
    let x_1710 : i32 = u_xlati46;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1715 : vec4<u32> = indexable[x_1710];
    u_xlat43 = dot(x_1700, bitcast<vec4<f32>>(x_1715));
    let x_1719 : f32 = u_xlat43;
    u_xlati43 = i32(x_1719);
    let x_1721 : vec3<f32> = vs_TEXCOORD7;
    let x_1733 : i32 = u_xlati43;
    let x_1735 : vec4<f32> = x_1732.x_AdditionalLightsPosition[x_1733];
    let x_1738 : i32 = u_xlati43;
    let x_1740 : vec4<f32> = x_1732.x_AdditionalLightsPosition[x_1738];
    let x_1742 : vec3<f32> = ((-(x_1721) * vec3<f32>(x_1735.w, x_1735.w, x_1735.w)) + vec3<f32>(x_1740.x, x_1740.y, x_1740.z));
    let x_1743 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1742.x, x_1742.y, x_1742.z, x_1743.w);
    let x_1746 : vec4<f32> = u_xlat9;
    let x_1748 : vec4<f32> = u_xlat9;
    u_xlat46 = dot(vec3<f32>(x_1746.x, x_1746.y, x_1746.z), vec3<f32>(x_1748.x, x_1748.y, x_1748.z));
    let x_1751 : f32 = u_xlat46;
    u_xlat46 = max(x_1751, 6.10351562e-05f);
    let x_1754 : f32 = u_xlat46;
    u_xlat47 = inverseSqrt(x_1754);
    let x_1756 : f32 = u_xlat47;
    let x_1758 : vec4<f32> = u_xlat9;
    let x_1760 : vec3<f32> = (vec3<f32>(x_1756, x_1756, x_1756) * vec3<f32>(x_1758.x, x_1758.y, x_1758.z));
    let x_1761 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1760.x, x_1760.y, x_1760.z, x_1761.w);
    let x_1764 : f32 = u_xlat46;
    u_xlat48 = (1.0f / x_1764);
    let x_1766 : f32 = u_xlat46;
    let x_1767 : i32 = u_xlati43;
    let x_1769 : f32 = x_1732.x_AdditionalLightsAttenuation[x_1767].x;
    u_xlat46 = (x_1766 * x_1769);
    let x_1771 : f32 = u_xlat46;
    let x_1773 : f32 = u_xlat46;
    u_xlat46 = ((-(x_1771) * x_1773) + 1.0f);
    let x_1776 : f32 = u_xlat46;
    u_xlat46 = max(x_1776, 0.0f);
    let x_1778 : f32 = u_xlat46;
    let x_1779 : f32 = u_xlat46;
    u_xlat46 = (x_1778 * x_1779);
    let x_1781 : f32 = u_xlat46;
    let x_1782 : f32 = u_xlat48;
    u_xlat46 = (x_1781 * x_1782);
    let x_1784 : i32 = u_xlati43;
    let x_1786 : vec4<f32> = x_1732.x_AdditionalLightsSpotDir[x_1784];
    let x_1788 : vec4<f32> = u_xlat10;
    u_xlat48 = dot(vec3<f32>(x_1786.x, x_1786.y, x_1786.z), vec3<f32>(x_1788.x, x_1788.y, x_1788.z));
    let x_1791 : f32 = u_xlat48;
    let x_1792 : i32 = u_xlati43;
    let x_1794 : f32 = x_1732.x_AdditionalLightsAttenuation[x_1792].z;
    let x_1796 : i32 = u_xlati43;
    let x_1798 : f32 = x_1732.x_AdditionalLightsAttenuation[x_1796].w;
    u_xlat48 = ((x_1791 * x_1794) + x_1798);
    let x_1800 : f32 = u_xlat48;
    u_xlat48 = clamp(x_1800, 0.0f, 1.0f);
    let x_1802 : f32 = u_xlat48;
    let x_1803 : f32 = u_xlat48;
    u_xlat48 = (x_1802 * x_1803);
    let x_1805 : f32 = u_xlat46;
    let x_1806 : f32 = u_xlat48;
    u_xlat46 = (x_1805 * x_1806);
    let x_1808 : f32 = u_xlat32;
    let x_1810 : i32 = u_xlati43;
    let x_1812 : vec4<f32> = x_1732.x_AdditionalLightsColor[x_1810];
    let x_1814 : vec3<f32> = (vec3<f32>(x_1808, x_1808, x_1808) * vec3<f32>(x_1812.x, x_1812.y, x_1812.z));
    let x_1815 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1814.x, x_1814.y, x_1814.z, x_1815.w);
    let x_1817 : vec4<f32> = u_xlat1;
    let x_1819 : vec4<f32> = u_xlat10;
    u_xlat43 = dot(vec3<f32>(x_1817.x, x_1817.y, x_1817.z), vec3<f32>(x_1819.x, x_1819.y, x_1819.z));
    let x_1822 : f32 = u_xlat43;
    u_xlat43 = clamp(x_1822, 0.0f, 1.0f);
    let x_1824 : f32 = u_xlat43;
    let x_1825 : f32 = u_xlat46;
    u_xlat43 = (x_1824 * x_1825);
    let x_1827 : f32 = u_xlat43;
    let x_1829 : vec4<f32> = u_xlat11;
    let x_1831 : vec3<f32> = (vec3<f32>(x_1827, x_1827, x_1827) * vec3<f32>(x_1829.x, x_1829.y, x_1829.z));
    let x_1832 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1831.x, x_1831.y, x_1831.z, x_1832.w);
    let x_1834 : vec4<f32> = u_xlat9;
    let x_1836 : f32 = u_xlat47;
    let x_1839 : vec4<f32> = u_xlat8;
    let x_1841 : vec3<f32> = ((vec3<f32>(x_1834.x, x_1834.y, x_1834.z) * vec3<f32>(x_1836, x_1836, x_1836)) + vec3<f32>(x_1839.x, x_1839.y, x_1839.z));
    let x_1842 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1841.x, x_1841.y, x_1841.z, x_1842.w);
    let x_1844 : vec4<f32> = u_xlat9;
    let x_1846 : vec4<f32> = u_xlat9;
    u_xlat43 = dot(vec3<f32>(x_1844.x, x_1844.y, x_1844.z), vec3<f32>(x_1846.x, x_1846.y, x_1846.z));
    let x_1849 : f32 = u_xlat43;
    u_xlat43 = max(x_1849, 1.17549435e-37f);
    let x_1851 : f32 = u_xlat43;
    u_xlat43 = inverseSqrt(x_1851);
    let x_1853 : f32 = u_xlat43;
    let x_1855 : vec4<f32> = u_xlat9;
    let x_1857 : vec3<f32> = (vec3<f32>(x_1853, x_1853, x_1853) * vec3<f32>(x_1855.x, x_1855.y, x_1855.z));
    let x_1858 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1857.x, x_1857.y, x_1857.z, x_1858.w);
    let x_1860 : vec4<f32> = u_xlat1;
    let x_1862 : vec4<f32> = u_xlat9;
    u_xlat43 = dot(vec3<f32>(x_1860.x, x_1860.y, x_1860.z), vec3<f32>(x_1862.x, x_1862.y, x_1862.z));
    let x_1865 : f32 = u_xlat43;
    u_xlat43 = clamp(x_1865, 0.0f, 1.0f);
    let x_1867 : vec4<f32> = u_xlat10;
    let x_1869 : vec4<f32> = u_xlat9;
    u_xlat46 = dot(vec3<f32>(x_1867.x, x_1867.y, x_1867.z), vec3<f32>(x_1869.x, x_1869.y, x_1869.z));
    let x_1872 : f32 = u_xlat46;
    u_xlat46 = clamp(x_1872, 0.0f, 1.0f);
    let x_1874 : f32 = u_xlat43;
    let x_1875 : f32 = u_xlat43;
    u_xlat43 = (x_1874 * x_1875);
    let x_1877 : f32 = u_xlat43;
    let x_1879 : f32 = u_xlat4.x;
    u_xlat43 = ((x_1877 * x_1879) + 1.000010014f);
    let x_1882 : f32 = u_xlat46;
    let x_1883 : f32 = u_xlat46;
    u_xlat46 = (x_1882 * x_1883);
    let x_1885 : f32 = u_xlat43;
    let x_1886 : f32 = u_xlat43;
    u_xlat43 = (x_1885 * x_1886);
    let x_1888 : f32 = u_xlat46;
    u_xlat46 = max(x_1888, 0.100000001f);
    let x_1890 : f32 = u_xlat43;
    let x_1891 : f32 = u_xlat46;
    u_xlat43 = (x_1890 * x_1891);
    let x_1893 : f32 = u_xlat45;
    let x_1894 : f32 = u_xlat43;
    u_xlat43 = (x_1893 * x_1894);
    let x_1896 : f32 = u_xlat18;
    let x_1897 : f32 = u_xlat43;
    u_xlat43 = (x_1896 / x_1897);
    let x_1899 : vec4<f32> = u_xlat5;
    let x_1901 : f32 = u_xlat43;
    let x_1904 : vec4<f32> = u_xlat6;
    let x_1906 : vec3<f32> = ((vec3<f32>(x_1899.x, x_1899.y, x_1899.z) * vec3<f32>(x_1901, x_1901, x_1901)) + vec3<f32>(x_1904.x, x_1904.y, x_1904.z));
    let x_1907 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1906.x, x_1906.y, x_1906.z, x_1907.w);
    let x_1909 : vec4<f32> = u_xlat9;
    let x_1911 : vec4<f32> = u_xlat11;
    let x_1914 : vec4<f32> = u_xlat7;
    let x_1916 : vec3<f32> = ((vec3<f32>(x_1909.x, x_1909.y, x_1909.z) * vec3<f32>(x_1911.x, x_1911.y, x_1911.z)) + vec3<f32>(x_1914.x, x_1914.y, x_1914.z));
    let x_1917 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1916.x, x_1916.y, x_1916.z, x_1917.w);

    continuing {
      let x_1919 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1919 + bitcast<u32>(1i));
    }
  }
  let x_1921 : vec4<f32> = u_xlat3;
  let x_1923 : f32 = u_xlat14;
  let x_1926 : vec4<f32> = u_xlat2;
  u_xlat0 = ((vec3<f32>(x_1921.x, x_1921.y, x_1921.z) * vec3<f32>(x_1923, x_1923, x_1923)) + vec3<f32>(x_1926.x, x_1926.y, x_1926.z));
  let x_1929 : vec4<f32> = u_xlat7;
  let x_1931 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_1929.x, x_1929.y, x_1929.z) + x_1931);
  let x_1933 : f32 = u_xlat44;
  let x_1934 : f32 = u_xlat44;
  u_xlat1.x = (x_1933 * -(x_1934));
  let x_1939 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_1939);
  let x_1942 : vec3<f32> = u_xlat0;
  let x_1943 : f32 = u_xlat42;
  let x_1947 : vec4<f32> = x_128.unity_FogColor;
  u_xlat0 = ((x_1942 * vec3<f32>(x_1943, x_1943, x_1943)) + -(vec3<f32>(x_1947.x, x_1947.y, x_1947.z)));
  let x_1953 : vec4<f32> = u_xlat1;
  let x_1955 : vec3<f32> = u_xlat0;
  let x_1958 : vec4<f32> = x_128.unity_FogColor;
  let x_1960 : vec3<f32> = ((vec3<f32>(x_1953.x, x_1953.x, x_1953.x) * x_1955) + vec3<f32>(x_1958.x, x_1958.y, x_1958.z));
  let x_1961 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1960.x, x_1960.y, x_1960.z, x_1961.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(5) vs_TEXCOORD5_param : vec4<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(6) vs_TEXCOORD7_param : vec3<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  main_1();
  return main_out(SV_Target0);
}

