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

@group(0) @binding(2) var x_Control : texture_2d<f32>;

@group(0) @binding(15) var sampler_Control : sampler;

@group(1) @binding(0) var<uniform> x_128 : PGlobals;

@group(0) @binding(3) var x_Splat0 : texture_2d<f32>;

@group(0) @binding(16) var sampler_Splat0 : sampler;

var<private> vs_TEXCOORD1 : vec4<f32>;

@group(0) @binding(4) var x_Splat1 : texture_2d<f32>;

@group(0) @binding(5) var x_Splat2 : texture_2d<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

@group(0) @binding(6) var x_Splat3 : texture_2d<f32>;

@group(0) @binding(7) var x_Normal0 : texture_2d<f32>;

@group(0) @binding(17) var sampler_Normal0 : sampler;

@group(0) @binding(8) var x_Normal1 : texture_2d<f32>;

@group(0) @binding(9) var x_Normal2 : texture_2d<f32>;

@group(0) @binding(10) var x_Normal3 : texture_2d<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_854 : MainLightShadows;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(14) var samplerunity_Lightmap : sampler;

@group(0) @binding(11) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(18) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(12) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(19) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(13) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_1373 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_1642 : AdditionalLights;

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
  var u_xlatb44 : bool;
  var u_xlat28 : f32;
  var u_xlat14 : f32;
  var u_xlatb2 : vec4<bool>;
  var u_xlatu43 : u32;
  var u_xlati43 : i32;
  var u_xlat44 : f32;
  var u_xlat45 : f32;
  var u_xlat18 : f32;
  var u_xlat32 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat16 : f32;
  var u_xlatb16 : bool;
  var u_xlatb30 : bool;
  var x_1240 : f32;
  var u_xlat30 : f32;
  var u_xlatu28 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu4 : u32;
  var u_xlati46 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati4 : i32;
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
  let x_293 : f32 = u_xlat43;
  u_xlatb44 = (0.005f >= x_293);
  let x_295 : bool = u_xlatb44;
  if (((select(0i, 1i, x_295) * -1i) != 0i)) {
    discard;
  }
  let x_304 : f32 = u_xlat43;
  u_xlat43 = (x_304 + 6.10351562e-05f);
  let x_307 : vec4<f32> = u_xlat4;
  let x_308 : f32 = u_xlat43;
  u_xlat4 = (x_307 / vec4<f32>(x_308, x_308, x_308, x_308));
  let x_311 : vec4<f32> = u_xlat4;
  let x_314 : vec4<f32> = x_30.x_DiffuseRemapScale0;
  let x_316 : vec3<f32> = (vec3<f32>(x_311.x, x_311.x, x_311.x) * vec3<f32>(x_314.x, x_314.y, x_314.z));
  let x_317 : vec4<f32> = u_xlat11;
  u_xlat11 = vec4<f32>(x_316.x, x_316.y, x_316.z, x_317.w);
  let x_319 : vec4<f32> = u_xlat4;
  let x_322 : vec4<f32> = x_30.x_DiffuseRemapScale1;
  let x_324 : vec3<f32> = (vec3<f32>(x_319.y, x_319.y, x_319.y) * vec3<f32>(x_322.x, x_322.y, x_322.z));
  let x_325 : vec4<f32> = u_xlat12;
  u_xlat12 = vec4<f32>(x_324.x, x_324.y, x_324.z, x_325.w);
  let x_327 : vec4<f32> = u_xlat6;
  let x_329 : vec4<f32> = u_xlat12;
  let x_331 : vec3<f32> = (vec3<f32>(x_327.x, x_327.y, x_327.z) * vec3<f32>(x_329.x, x_329.y, x_329.z));
  let x_332 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_331.x, x_331.y, x_331.z, x_332.w);
  let x_334 : vec4<f32> = u_xlat5;
  let x_336 : vec4<f32> = u_xlat11;
  let x_339 : vec4<f32> = u_xlat6;
  let x_341 : vec3<f32> = ((vec3<f32>(x_334.x, x_334.y, x_334.z) * vec3<f32>(x_336.x, x_336.y, x_336.z)) + vec3<f32>(x_339.x, x_339.y, x_339.z));
  let x_342 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_341.x, x_341.y, x_341.z, x_342.w);
  let x_344 : vec4<f32> = u_xlat4;
  let x_347 : vec4<f32> = x_30.x_DiffuseRemapScale2;
  let x_349 : vec3<f32> = (vec3<f32>(x_344.z, x_344.z, x_344.z) * vec3<f32>(x_347.x, x_347.y, x_347.z));
  let x_350 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_349.x, x_349.y, x_349.z, x_350.w);
  let x_352 : vec4<f32> = u_xlat7;
  let x_354 : vec4<f32> = u_xlat6;
  let x_357 : vec4<f32> = u_xlat5;
  let x_359 : vec3<f32> = ((vec3<f32>(x_352.x, x_352.y, x_352.z) * vec3<f32>(x_354.x, x_354.y, x_354.z)) + vec3<f32>(x_357.x, x_357.y, x_357.z));
  let x_360 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_359.x, x_359.y, x_359.z, x_360.w);
  let x_362 : vec4<f32> = u_xlat4;
  let x_365 : vec4<f32> = x_30.x_DiffuseRemapScale3;
  let x_367 : vec3<f32> = (vec3<f32>(x_362.w, x_362.w, x_362.w) * vec3<f32>(x_365.x, x_365.y, x_365.z));
  let x_368 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_367.x, x_367.y, x_367.z, x_368.w);
  let x_370 : vec4<f32> = u_xlat8;
  let x_372 : vec4<f32> = u_xlat6;
  let x_375 : vec4<f32> = u_xlat5;
  let x_377 : vec3<f32> = ((vec3<f32>(x_370.x, x_370.y, x_370.z) * vec3<f32>(x_372.x, x_372.y, x_372.z)) + vec3<f32>(x_375.x, x_375.y, x_375.z));
  let x_378 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_377.x, x_377.y, x_377.z, x_378.w);
  let x_385 : vec4<f32> = vs_TEXCOORD1;
  let x_388 : f32 = x_128.x_GlobalMipBias.x;
  let x_389 : vec4<f32> = textureSampleBias(x_Normal0, sampler_Normal0, vec2<f32>(x_385.x, x_385.y), x_388);
  let x_390 : vec3<f32> = vec3<f32>(x_389.x, x_389.y, x_389.w);
  let x_391 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_390.x, x_390.y, x_390.z, x_391.w);
  let x_394 : f32 = u_xlat6.x;
  let x_396 : f32 = u_xlat6.z;
  u_xlat6.x = (x_394 * x_396);
  let x_399 : vec4<f32> = u_xlat6;
  let x_404 : vec2<f32> = ((vec2<f32>(x_399.x, x_399.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_405 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_404.x, x_404.y, x_405.z, x_405.w);
  let x_407 : vec4<f32> = u_xlat6;
  let x_409 : vec4<f32> = u_xlat6;
  u_xlat43 = dot(vec2<f32>(x_407.x, x_407.y), vec2<f32>(x_409.x, x_409.y));
  let x_412 : f32 = u_xlat43;
  u_xlat43 = min(x_412, 1.0f);
  let x_414 : f32 = u_xlat43;
  u_xlat43 = (-(x_414) + 1.0f);
  let x_417 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_417);
  let x_419 : f32 = u_xlat43;
  u_xlat7.z = max(x_419, 1.00000002e-16f);
  let x_423 : vec4<f32> = u_xlat6;
  let x_426 : f32 = x_30.x_NormalScale0;
  let x_428 : vec2<f32> = (vec2<f32>(x_423.x, x_423.y) * vec2<f32>(x_426, x_426));
  let x_429 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_428.x, x_428.y, x_429.z, x_429.w);
  let x_435 : vec4<f32> = vs_TEXCOORD1;
  let x_438 : f32 = x_128.x_GlobalMipBias.x;
  let x_439 : vec4<f32> = textureSampleBias(x_Normal1, sampler_Normal0, vec2<f32>(x_435.z, x_435.w), x_438);
  let x_440 : vec3<f32> = vec3<f32>(x_439.x, x_439.y, x_439.w);
  let x_441 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_440.x, x_440.y, x_440.z, x_441.w);
  let x_444 : f32 = u_xlat6.x;
  let x_446 : f32 = u_xlat6.z;
  u_xlat6.x = (x_444 * x_446);
  let x_449 : vec4<f32> = u_xlat6;
  let x_452 : vec2<f32> = ((vec2<f32>(x_449.x, x_449.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_453 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_452.x, x_452.y, x_453.z, x_453.w);
  let x_455 : vec4<f32> = u_xlat6;
  let x_457 : vec4<f32> = u_xlat6;
  u_xlat43 = dot(vec2<f32>(x_455.x, x_455.y), vec2<f32>(x_457.x, x_457.y));
  let x_460 : f32 = u_xlat43;
  u_xlat43 = min(x_460, 1.0f);
  let x_462 : f32 = u_xlat43;
  u_xlat43 = (-(x_462) + 1.0f);
  let x_465 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_465);
  let x_467 : f32 = u_xlat43;
  u_xlat8.z = max(x_467, 1.00000002e-16f);
  let x_470 : vec4<f32> = u_xlat6;
  let x_473 : f32 = x_30.x_NormalScale1;
  let x_475 : f32 = x_30.x_NormalScale1;
  let x_476 : vec2<f32> = vec2<f32>(x_473, x_475);
  let x_480 : vec2<f32> = (vec2<f32>(x_470.x, x_470.y) * vec2<f32>(x_476.x, x_476.y));
  let x_481 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_480.x, x_480.y, x_481.z, x_481.w);
  let x_483 : vec4<f32> = u_xlat4;
  let x_485 : vec4<f32> = u_xlat8;
  let x_487 : vec3<f32> = (vec3<f32>(x_483.y, x_483.y, x_483.y) * vec3<f32>(x_485.x, x_485.y, x_485.z));
  let x_488 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_487.x, x_487.y, x_487.z, x_488.w);
  let x_490 : vec4<f32> = u_xlat4;
  let x_492 : vec4<f32> = u_xlat7;
  let x_495 : vec4<f32> = u_xlat6;
  let x_497 : vec3<f32> = ((vec3<f32>(x_490.x, x_490.x, x_490.x) * vec3<f32>(x_492.x, x_492.y, x_492.z)) + vec3<f32>(x_495.x, x_495.y, x_495.z));
  let x_498 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_497.x, x_497.y, x_497.z, x_498.w);
  let x_504 : vec4<f32> = vs_TEXCOORD2;
  let x_507 : f32 = x_128.x_GlobalMipBias.x;
  let x_508 : vec4<f32> = textureSampleBias(x_Normal2, sampler_Normal0, vec2<f32>(x_504.x, x_504.y), x_507);
  let x_509 : vec3<f32> = vec3<f32>(x_508.x, x_508.y, x_508.w);
  let x_510 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_509.x, x_509.y, x_509.z, x_510.w);
  let x_513 : f32 = u_xlat7.x;
  let x_515 : f32 = u_xlat7.z;
  u_xlat7.x = (x_513 * x_515);
  let x_518 : vec4<f32> = u_xlat7;
  let x_521 : vec2<f32> = ((vec2<f32>(x_518.x, x_518.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_522 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_521.x, x_521.y, x_522.z, x_522.w);
  let x_524 : vec4<f32> = u_xlat7;
  let x_526 : vec4<f32> = u_xlat7;
  u_xlat43 = dot(vec2<f32>(x_524.x, x_524.y), vec2<f32>(x_526.x, x_526.y));
  let x_529 : f32 = u_xlat43;
  u_xlat43 = min(x_529, 1.0f);
  let x_531 : f32 = u_xlat43;
  u_xlat43 = (-(x_531) + 1.0f);
  let x_534 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_534);
  let x_536 : f32 = u_xlat43;
  u_xlat8.z = max(x_536, 1.00000002e-16f);
  let x_539 : vec4<f32> = u_xlat7;
  let x_543 : f32 = x_30.x_NormalScale2;
  let x_545 : f32 = x_30.x_NormalScale2;
  let x_546 : vec2<f32> = vec2<f32>(x_543, x_545);
  let x_550 : vec2<f32> = (vec2<f32>(x_539.x, x_539.y) * vec2<f32>(x_546.x, x_546.y));
  let x_551 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_550.x, x_550.y, x_551.z, x_551.w);
  let x_553 : vec4<f32> = u_xlat4;
  let x_555 : vec4<f32> = u_xlat8;
  let x_558 : vec4<f32> = u_xlat6;
  let x_560 : vec3<f32> = ((vec3<f32>(x_553.z, x_553.z, x_553.z) * vec3<f32>(x_555.x, x_555.y, x_555.z)) + vec3<f32>(x_558.x, x_558.y, x_558.z));
  let x_561 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_560.x, x_560.y, x_560.z, x_561.w);
  let x_567 : vec4<f32> = vs_TEXCOORD2;
  let x_570 : f32 = x_128.x_GlobalMipBias.x;
  let x_571 : vec4<f32> = textureSampleBias(x_Normal3, sampler_Normal0, vec2<f32>(x_567.z, x_567.w), x_570);
  let x_572 : vec3<f32> = vec3<f32>(x_571.x, x_571.y, x_571.w);
  let x_573 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_572.x, x_572.y, x_572.z, x_573.w);
  let x_576 : f32 = u_xlat7.x;
  let x_578 : f32 = u_xlat7.z;
  u_xlat7.x = (x_576 * x_578);
  let x_581 : vec4<f32> = u_xlat7;
  let x_584 : vec2<f32> = ((vec2<f32>(x_581.x, x_581.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_585 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_584.x, x_584.y, x_585.z, x_585.w);
  let x_587 : vec4<f32> = u_xlat7;
  let x_589 : vec4<f32> = u_xlat7;
  u_xlat43 = dot(vec2<f32>(x_587.x, x_587.y), vec2<f32>(x_589.x, x_589.y));
  let x_592 : f32 = u_xlat43;
  u_xlat43 = min(x_592, 1.0f);
  let x_594 : f32 = u_xlat43;
  u_xlat43 = (-(x_594) + 1.0f);
  let x_597 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_597);
  let x_599 : f32 = u_xlat43;
  u_xlat8.z = max(x_599, 1.00000002e-16f);
  let x_602 : vec4<f32> = u_xlat7;
  let x_606 : f32 = x_30.x_NormalScale3;
  let x_608 : f32 = x_30.x_NormalScale3;
  let x_609 : vec2<f32> = vec2<f32>(x_606, x_608);
  let x_613 : vec2<f32> = (vec2<f32>(x_602.x, x_602.y) * vec2<f32>(x_609.x, x_609.y));
  let x_614 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_613.x, x_613.y, x_614.z, x_614.w);
  let x_616 : vec4<f32> = u_xlat4;
  let x_618 : vec4<f32> = u_xlat8;
  let x_621 : vec4<f32> = u_xlat6;
  let x_623 : vec3<f32> = ((vec3<f32>(x_616.w, x_616.w, x_616.w) * vec3<f32>(x_618.x, x_618.y, x_618.z)) + vec3<f32>(x_621.x, x_621.y, x_621.z));
  let x_624 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_623.x, x_623.y, x_623.z, x_624.w);
  let x_627 : f32 = u_xlat6.z;
  u_xlat6.w = (x_627 + 0.00001f);
  let x_631 : vec4<f32> = u_xlat6;
  let x_633 : vec4<f32> = u_xlat6;
  u_xlat43 = dot(vec3<f32>(x_631.x, x_631.y, x_631.w), vec3<f32>(x_633.x, x_633.y, x_633.w));
  let x_636 : f32 = u_xlat43;
  u_xlat43 = inverseSqrt(x_636);
  let x_638 : f32 = u_xlat43;
  let x_640 : vec4<f32> = u_xlat6;
  let x_642 : vec3<f32> = (vec3<f32>(x_638, x_638, x_638) * vec3<f32>(x_640.x, x_640.y, x_640.w));
  let x_643 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_642.x, x_642.y, x_642.z, x_643.w);
  let x_646 : f32 = x_30.x_MaskMapRemapScale0.y;
  u_xlat7.x = x_646;
  let x_649 : f32 = x_30.x_MaskMapRemapScale1.y;
  u_xlat7.y = x_649;
  let x_652 : f32 = x_30.x_MaskMapRemapScale2.y;
  u_xlat7.z = x_652;
  let x_655 : f32 = x_30.x_MaskMapRemapScale3.y;
  u_xlat7.w = x_655;
  let x_658 : f32 = x_30.x_MaskMapRemapOffset0.y;
  u_xlat8.x = x_658;
  let x_661 : f32 = x_30.x_MaskMapRemapOffset1.y;
  u_xlat8.y = x_661;
  let x_664 : f32 = x_30.x_MaskMapRemapOffset2.y;
  u_xlat8.z = x_664;
  let x_667 : f32 = x_30.x_MaskMapRemapOffset3.y;
  u_xlat8.w = x_667;
  let x_669 : vec4<f32> = u_xlat7;
  let x_670 : vec4<f32> = u_xlat8;
  u_xlat7 = (x_669 + x_670);
  let x_673 : f32 = u_xlat0.z;
  u_xlat8.x = x_673;
  let x_676 : f32 = u_xlat1.z;
  u_xlat8.y = x_676;
  let x_679 : f32 = u_xlat2.z;
  u_xlat8.z = x_679;
  let x_682 : f32 = u_xlat3.y;
  u_xlat8.w = x_682;
  let x_684 : vec4<f32> = u_xlat9;
  let x_687 : f32 = x_30.x_Smoothness0;
  let x_689 : f32 = x_30.x_Smoothness1;
  let x_691 : f32 = x_30.x_Smoothness2;
  let x_693 : f32 = x_30.x_Smoothness3;
  let x_696 : vec4<f32> = u_xlat8;
  u_xlat8 = ((-(x_684) * vec4<f32>(x_687, x_689, x_691, x_693)) + x_696);
  let x_700 : f32 = x_30.x_LayerHasMask0;
  let x_703 : f32 = x_30.x_LayerHasMask1;
  let x_706 : f32 = x_30.x_LayerHasMask2;
  let x_709 : f32 = x_30.x_LayerHasMask3;
  let x_711 : vec4<f32> = u_xlat8;
  let x_713 : vec4<f32> = u_xlat10;
  u_xlat8 = ((vec4<f32>(x_700, x_703, x_706, x_709) * x_711) + x_713);
  let x_716 : vec4<f32> = u_xlat4;
  let x_717 : vec4<f32> = u_xlat8;
  u_xlat28 = dot(x_716, x_717);
  let x_720 : f32 = u_xlat0.x;
  u_xlat8.x = x_720;
  let x_723 : f32 = u_xlat1.x;
  u_xlat8.y = x_723;
  let x_726 : f32 = u_xlat2.x;
  u_xlat8.z = x_726;
  let x_729 : f32 = u_xlat3.x;
  u_xlat8.w = x_729;
  let x_731 : vec4<f32> = u_xlat8;
  let x_734 : f32 = x_30.x_Metallic0;
  let x_737 : f32 = x_30.x_Metallic1;
  let x_740 : f32 = x_30.x_Metallic2;
  let x_743 : f32 = x_30.x_Metallic3;
  u_xlat8 = (x_731 + -(vec4<f32>(x_734, x_737, x_740, x_743)));
  let x_748 : f32 = x_30.x_LayerHasMask0;
  let x_750 : f32 = x_30.x_LayerHasMask1;
  let x_752 : f32 = x_30.x_LayerHasMask2;
  let x_754 : f32 = x_30.x_LayerHasMask3;
  let x_756 : vec4<f32> = u_xlat8;
  let x_759 : f32 = x_30.x_Metallic0;
  let x_761 : f32 = x_30.x_Metallic1;
  let x_763 : f32 = x_30.x_Metallic2;
  let x_765 : f32 = x_30.x_Metallic3;
  u_xlat8 = ((vec4<f32>(x_748, x_750, x_752, x_754) * x_756) + vec4<f32>(x_759, x_761, x_763, x_765));
  let x_768 : vec4<f32> = u_xlat4;
  let x_769 : vec4<f32> = u_xlat8;
  u_xlat0.x = dot(x_768, x_769);
  let x_773 : f32 = u_xlat0.y;
  u_xlat3.x = x_773;
  let x_776 : f32 = u_xlat1.y;
  u_xlat3.y = x_776;
  let x_779 : f32 = u_xlat2.y;
  u_xlat3.z = x_779;
  let x_781 : vec4<f32> = u_xlat7;
  let x_783 : vec4<f32> = u_xlat3;
  u_xlat1 = (-(x_781) + x_783);
  let x_786 : f32 = x_30.x_LayerHasMask0;
  let x_788 : f32 = x_30.x_LayerHasMask1;
  let x_790 : f32 = x_30.x_LayerHasMask2;
  let x_792 : f32 = x_30.x_LayerHasMask3;
  let x_794 : vec4<f32> = u_xlat1;
  let x_796 : vec4<f32> = u_xlat7;
  u_xlat1 = ((vec4<f32>(x_786, x_788, x_790, x_792) * x_794) + x_796);
  let x_799 : vec4<f32> = u_xlat4;
  let x_800 : vec4<f32> = u_xlat1;
  u_xlat14 = dot(x_799, x_800);
  let x_802 : vec4<f32> = u_xlat6;
  let x_805 : vec4<f32> = vs_TEXCOORD5;
  let x_807 : vec3<f32> = (vec3<f32>(x_802.y, x_802.y, x_802.y) * vec3<f32>(x_805.x, x_805.y, x_805.z));
  let x_808 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_807.x, x_807.y, x_807.z, x_808.w);
  let x_810 : vec4<f32> = u_xlat6;
  let x_813 : vec4<f32> = vs_TEXCOORD4;
  let x_817 : vec4<f32> = u_xlat1;
  let x_819 : vec3<f32> = ((vec3<f32>(x_810.x, x_810.x, x_810.x) * -(vec3<f32>(x_813.x, x_813.y, x_813.z))) + vec3<f32>(x_817.x, x_817.y, x_817.z));
  let x_820 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_819.x, x_819.y, x_819.z, x_820.w);
  let x_822 : vec4<f32> = u_xlat6;
  let x_825 : vec4<f32> = vs_TEXCOORD3;
  let x_828 : vec4<f32> = u_xlat1;
  let x_830 : vec3<f32> = ((vec3<f32>(x_822.z, x_822.z, x_822.z) * vec3<f32>(x_825.x, x_825.y, x_825.z)) + vec3<f32>(x_828.x, x_828.y, x_828.z));
  let x_831 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_830.x, x_830.y, x_830.z, x_831.w);
  let x_833 : vec4<f32> = u_xlat1;
  let x_835 : vec4<f32> = u_xlat1;
  u_xlat43 = dot(vec3<f32>(x_833.x, x_833.y, x_833.z), vec3<f32>(x_835.x, x_835.y, x_835.z));
  let x_838 : f32 = u_xlat43;
  u_xlat43 = inverseSqrt(x_838);
  let x_840 : f32 = u_xlat43;
  let x_842 : vec4<f32> = u_xlat1;
  let x_844 : vec3<f32> = (vec3<f32>(x_840, x_840, x_840) * vec3<f32>(x_842.x, x_842.y, x_842.z));
  let x_845 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_844.x, x_844.y, x_844.z, x_845.w);
  let x_849 : vec3<f32> = vs_TEXCOORD7;
  let x_856 : vec4<f32> = x_854.x_CascadeShadowSplitSpheres0;
  let x_859 : vec3<f32> = (x_849 + -(vec3<f32>(x_856.x, x_856.y, x_856.z)));
  let x_860 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_859.x, x_859.y, x_859.z, x_860.w);
  let x_862 : vec3<f32> = vs_TEXCOORD7;
  let x_864 : vec4<f32> = x_854.x_CascadeShadowSplitSpheres1;
  let x_867 : vec3<f32> = (x_862 + -(vec3<f32>(x_864.x, x_864.y, x_864.z)));
  let x_868 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_867.x, x_867.y, x_867.z, x_868.w);
  let x_870 : vec3<f32> = vs_TEXCOORD7;
  let x_872 : vec4<f32> = x_854.x_CascadeShadowSplitSpheres2;
  let x_875 : vec3<f32> = (x_870 + -(vec3<f32>(x_872.x, x_872.y, x_872.z)));
  let x_876 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_875.x, x_875.y, x_875.z, x_876.w);
  let x_878 : vec3<f32> = vs_TEXCOORD7;
  let x_880 : vec4<f32> = x_854.x_CascadeShadowSplitSpheres3;
  let x_883 : vec3<f32> = (x_878 + -(vec3<f32>(x_880.x, x_880.y, x_880.z)));
  let x_884 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_883.x, x_883.y, x_883.z, x_884.w);
  let x_886 : vec4<f32> = u_xlat2;
  let x_888 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_886.x, x_886.y, x_886.z), vec3<f32>(x_888.x, x_888.y, x_888.z));
  let x_892 : vec4<f32> = u_xlat3;
  let x_894 : vec4<f32> = u_xlat3;
  u_xlat2.y = dot(vec3<f32>(x_892.x, x_892.y, x_892.z), vec3<f32>(x_894.x, x_894.y, x_894.z));
  let x_898 : vec4<f32> = u_xlat4;
  let x_900 : vec4<f32> = u_xlat4;
  u_xlat2.z = dot(vec3<f32>(x_898.x, x_898.y, x_898.z), vec3<f32>(x_900.x, x_900.y, x_900.z));
  let x_904 : vec4<f32> = u_xlat6;
  let x_906 : vec4<f32> = u_xlat6;
  u_xlat2.w = dot(vec3<f32>(x_904.x, x_904.y, x_904.z), vec3<f32>(x_906.x, x_906.y, x_906.z));
  let x_912 : vec4<f32> = u_xlat2;
  let x_914 : vec4<f32> = x_854.x_CascadeShadowSplitSphereRadii;
  u_xlatb2 = (x_912 < x_914);
  let x_917 : bool = u_xlatb2.x;
  u_xlat3.x = select(0.0f, 1.0f, x_917);
  let x_921 : bool = u_xlatb2.y;
  u_xlat3.y = select(0.0f, 1.0f, x_921);
  let x_925 : bool = u_xlatb2.z;
  u_xlat3.z = select(0.0f, 1.0f, x_925);
  let x_929 : bool = u_xlatb2.w;
  u_xlat3.w = select(0.0f, 1.0f, x_929);
  let x_933 : bool = u_xlatb2.x;
  u_xlat2.x = select(-0.0f, -1.0f, x_933);
  let x_938 : bool = u_xlatb2.y;
  u_xlat2.y = select(-0.0f, -1.0f, x_938);
  let x_942 : bool = u_xlatb2.z;
  u_xlat2.z = select(-0.0f, -1.0f, x_942);
  let x_945 : vec4<f32> = u_xlat2;
  let x_947 : vec4<f32> = u_xlat3;
  let x_949 : vec3<f32> = (vec3<f32>(x_945.x, x_945.y, x_945.z) + vec3<f32>(x_947.y, x_947.z, x_947.w));
  let x_950 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_949.x, x_949.y, x_949.z, x_950.w);
  let x_952 : vec4<f32> = u_xlat2;
  let x_955 : vec3<f32> = max(vec3<f32>(x_952.x, x_952.y, x_952.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_956 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_956.x, x_955.x, x_955.y, x_955.z);
  let x_958 : vec4<f32> = u_xlat3;
  u_xlat43 = dot(x_958, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_962 : f32 = u_xlat43;
  u_xlat43 = (-(x_962) + 4.0f);
  let x_967 : f32 = u_xlat43;
  u_xlatu43 = u32(x_967);
  let x_971 : u32 = u_xlatu43;
  u_xlati43 = (bitcast<i32>(x_971) << bitcast<u32>(2i));
  let x_974 : vec3<f32> = vs_TEXCOORD7;
  let x_976 : i32 = u_xlati43;
  let x_979 : i32 = u_xlati43;
  let x_983 : vec4<f32> = x_854.x_MainLightWorldToShadow[((x_976 + 1i) / 4i)][((x_979 + 1i) % 4i)];
  let x_985 : vec3<f32> = (vec3<f32>(x_974.y, x_974.y, x_974.y) * vec3<f32>(x_983.x, x_983.y, x_983.z));
  let x_986 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_985.x, x_985.y, x_985.z, x_986.w);
  let x_988 : i32 = u_xlati43;
  let x_990 : i32 = u_xlati43;
  let x_993 : vec4<f32> = x_854.x_MainLightWorldToShadow[(x_988 / 4i)][(x_990 % 4i)];
  let x_995 : vec3<f32> = vs_TEXCOORD7;
  let x_998 : vec4<f32> = u_xlat2;
  let x_1000 : vec3<f32> = ((vec3<f32>(x_993.x, x_993.y, x_993.z) * vec3<f32>(x_995.x, x_995.x, x_995.x)) + vec3<f32>(x_998.x, x_998.y, x_998.z));
  let x_1001 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1000.x, x_1000.y, x_1000.z, x_1001.w);
  let x_1003 : i32 = u_xlati43;
  let x_1006 : i32 = u_xlati43;
  let x_1010 : vec4<f32> = x_854.x_MainLightWorldToShadow[((x_1003 + 2i) / 4i)][((x_1006 + 2i) % 4i)];
  let x_1012 : vec3<f32> = vs_TEXCOORD7;
  let x_1015 : vec4<f32> = u_xlat2;
  let x_1017 : vec3<f32> = ((vec3<f32>(x_1010.x, x_1010.y, x_1010.z) * vec3<f32>(x_1012.z, x_1012.z, x_1012.z)) + vec3<f32>(x_1015.x, x_1015.y, x_1015.z));
  let x_1018 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1017.x, x_1017.y, x_1017.z, x_1018.w);
  let x_1020 : vec4<f32> = u_xlat2;
  let x_1022 : i32 = u_xlati43;
  let x_1025 : i32 = u_xlati43;
  let x_1029 : vec4<f32> = x_854.x_MainLightWorldToShadow[((x_1022 + 3i) / 4i)][((x_1025 + 3i) % 4i)];
  let x_1031 : vec3<f32> = (vec3<f32>(x_1020.x, x_1020.y, x_1020.z) + vec3<f32>(x_1029.x, x_1029.y, x_1029.z));
  let x_1032 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1031.x, x_1031.y, x_1031.z, x_1032.w);
  let x_1035 : f32 = vs_TEXCOORD7.y;
  let x_1037 : f32 = x_128.unity_MatrixV[1i].z;
  u_xlat43 = (x_1035 * x_1037);
  let x_1040 : f32 = x_128.unity_MatrixV[0i].z;
  let x_1042 : f32 = vs_TEXCOORD7.x;
  let x_1044 : f32 = u_xlat43;
  u_xlat43 = ((x_1040 * x_1042) + x_1044);
  let x_1047 : f32 = x_128.unity_MatrixV[2i].z;
  let x_1049 : f32 = vs_TEXCOORD7.z;
  let x_1051 : f32 = u_xlat43;
  u_xlat43 = ((x_1047 * x_1049) + x_1051);
  let x_1053 : f32 = u_xlat43;
  let x_1055 : f32 = x_128.unity_MatrixV[3i].z;
  u_xlat43 = (x_1053 + x_1055);
  let x_1057 : f32 = u_xlat43;
  let x_1060 : f32 = x_128.x_ProjectionParams.y;
  u_xlat43 = (-(x_1057) + -(x_1060));
  let x_1063 : f32 = u_xlat43;
  u_xlat43 = max(x_1063, 0.0f);
  let x_1065 : f32 = u_xlat43;
  let x_1067 : f32 = x_128.unity_FogParams.x;
  u_xlat43 = (x_1065 * x_1067);
  let x_1074 : vec4<f32> = vs_TEXCOORD0;
  let x_1077 : f32 = x_128.x_GlobalMipBias.x;
  let x_1078 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_1074.z, x_1074.w), x_1077);
  let x_1079 : vec3<f32> = vec3<f32>(x_1078.x, x_1078.y, x_1078.z);
  let x_1080 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1079.x, x_1079.y, x_1079.z, x_1080.w);
  let x_1084 : vec4<f32> = x_128.x_ScaledScreenParams;
  let x_1085 : vec2<f32> = vec2<f32>(x_1084.x, x_1084.y);
  let x_1089 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_1085.x, x_1085.y));
  let x_1090 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1089.x, x_1089.y, x_1090.z, x_1090.w);
  let x_1092 : vec4<f32> = u_xlat4;
  let x_1094 : vec4<f32> = hlslcc_FragCoord;
  let x_1096 : vec2<f32> = (vec2<f32>(x_1092.x, x_1092.y) * vec2<f32>(x_1094.x, x_1094.y));
  let x_1097 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1096.x, x_1096.y, x_1097.z, x_1097.w);
  let x_1101 : f32 = u_xlat4.y;
  let x_1103 : f32 = x_128.x_ScaleBiasRt.x;
  let x_1106 : f32 = x_128.x_ScaleBiasRt.y;
  u_xlat44 = ((x_1101 * x_1103) + x_1106);
  let x_1108 : f32 = u_xlat44;
  u_xlat4.z = (-(x_1108) + 1.0f);
  let x_1113 : f32 = u_xlat0.x;
  u_xlat44 = ((-(x_1113) * 0.959999979f) + 0.959999979f);
  let x_1119 : f32 = u_xlat28;
  let x_1120 : f32 = u_xlat44;
  u_xlat45 = (x_1119 + -(x_1120));
  let x_1123 : f32 = u_xlat44;
  let x_1125 : vec4<f32> = u_xlat5;
  let x_1127 : vec3<f32> = (vec3<f32>(x_1123, x_1123, x_1123) * vec3<f32>(x_1125.x, x_1125.y, x_1125.z));
  let x_1128 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1127.x, x_1127.y, x_1127.z, x_1128.w);
  let x_1130 : vec4<f32> = u_xlat5;
  let x_1134 : vec3<f32> = (vec3<f32>(x_1130.x, x_1130.y, x_1130.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_1135 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1134.x, x_1134.y, x_1134.z, x_1135.w);
  let x_1137 : vec3<f32> = u_xlat0;
  let x_1139 : vec4<f32> = u_xlat5;
  let x_1144 : vec3<f32> = ((vec3<f32>(x_1137.x, x_1137.x, x_1137.x) * vec3<f32>(x_1139.x, x_1139.y, x_1139.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_1145 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1144.x, x_1144.y, x_1144.z, x_1145.w);
  let x_1147 : f32 = u_xlat28;
  u_xlat0.x = (-(x_1147) + 1.0f);
  let x_1152 : f32 = u_xlat0.x;
  let x_1154 : f32 = u_xlat0.x;
  u_xlat28 = (x_1152 * x_1154);
  let x_1156 : f32 = u_xlat28;
  u_xlat28 = max(x_1156, 0.0078125f);
  let x_1159 : f32 = u_xlat28;
  let x_1160 : f32 = u_xlat28;
  u_xlat44 = (x_1159 * x_1160);
  let x_1162 : f32 = u_xlat45;
  u_xlat45 = (x_1162 + 1.0f);
  let x_1164 : f32 = u_xlat45;
  u_xlat45 = clamp(x_1164, 0.0f, 1.0f);
  let x_1167 : f32 = u_xlat28;
  u_xlat18 = ((x_1167 * 4.0f) + 2.0f);
  let x_1175 : vec4<f32> = u_xlat4;
  let x_1178 : f32 = x_128.x_GlobalMipBias.x;
  let x_1179 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_1175.x, x_1175.z), x_1178);
  u_xlat4.x = x_1179.x;
  let x_1184 : f32 = u_xlat4.x;
  u_xlat32 = (x_1184 + -1.0f);
  let x_1187 : f32 = x_128.x_AmbientOcclusionParam.w;
  let x_1188 : f32 = u_xlat32;
  u_xlat32 = ((x_1187 * x_1188) + 1.0f);
  let x_1191 : f32 = u_xlat14;
  let x_1193 : f32 = u_xlat4.x;
  u_xlat14 = min(x_1191, x_1193);
  let x_1196 : vec4<f32> = u_xlat2;
  let x_1197 : vec2<f32> = vec2<f32>(x_1196.x, x_1196.y);
  let x_1199 : f32 = u_xlat2.z;
  txVec0 = vec3<f32>(x_1197.x, x_1197.y, x_1199);
  let x_1211 : vec3<f32> = txVec0;
  let x_1213 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1211.xy, x_1211.z);
  u_xlat2.x = x_1213;
  let x_1217 : f32 = x_854.x_MainLightShadowParams.x;
  u_xlat16 = (-(x_1217) + 1.0f);
  let x_1221 : f32 = u_xlat2.x;
  let x_1223 : f32 = x_854.x_MainLightShadowParams.x;
  let x_1225 : f32 = u_xlat16;
  u_xlat2.x = ((x_1221 * x_1223) + x_1225);
  let x_1230 : f32 = u_xlat2.z;
  u_xlatb16 = (0.0f >= x_1230);
  let x_1234 : f32 = u_xlat2.z;
  u_xlatb30 = (x_1234 >= 1.0f);
  let x_1236 : bool = u_xlatb30;
  let x_1237 : bool = u_xlatb16;
  u_xlatb16 = (x_1236 | x_1237);
  let x_1239 : bool = u_xlatb16;
  if (x_1239) {
    x_1240 = 1.0f;
  } else {
    let x_1245 : f32 = u_xlat2.x;
    x_1240 = x_1245;
  }
  let x_1246 : f32 = x_1240;
  u_xlat2.x = x_1246;
  let x_1248 : vec3<f32> = vs_TEXCOORD7;
  let x_1251 : vec3<f32> = x_128.x_WorldSpaceCameraPos;
  let x_1253 : vec3<f32> = (x_1248 + -(x_1251));
  let x_1254 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1253.x, x_1253.y, x_1253.z, x_1254.w);
  let x_1256 : vec4<f32> = u_xlat7;
  let x_1258 : vec4<f32> = u_xlat7;
  u_xlat16 = dot(vec3<f32>(x_1256.x, x_1256.y, x_1256.z), vec3<f32>(x_1258.x, x_1258.y, x_1258.z));
  let x_1261 : f32 = u_xlat16;
  let x_1263 : f32 = x_854.x_MainLightShadowParams.z;
  let x_1266 : f32 = x_854.x_MainLightShadowParams.w;
  u_xlat16 = ((x_1261 * x_1263) + x_1266);
  let x_1268 : f32 = u_xlat16;
  u_xlat16 = clamp(x_1268, 0.0f, 1.0f);
  let x_1272 : f32 = u_xlat2.x;
  u_xlat30 = (-(x_1272) + 1.0f);
  let x_1275 : f32 = u_xlat16;
  let x_1276 : f32 = u_xlat30;
  let x_1279 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_1275 * x_1276) + x_1279);
  let x_1282 : f32 = u_xlat32;
  let x_1285 : vec4<f32> = x_128.x_MainLightColor;
  let x_1287 : vec3<f32> = (vec3<f32>(x_1282, x_1282, x_1282) * vec3<f32>(x_1285.x, x_1285.y, x_1285.z));
  let x_1288 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1287.x, x_1287.y, x_1287.z, x_1288.w);
  let x_1291 : f32 = vs_TEXCOORD3.w;
  u_xlat8.x = x_1291;
  let x_1294 : f32 = vs_TEXCOORD4.w;
  u_xlat8.y = x_1294;
  let x_1297 : f32 = vs_TEXCOORD5.w;
  u_xlat8.z = x_1297;
  let x_1299 : vec4<f32> = u_xlat8;
  let x_1302 : vec4<f32> = u_xlat1;
  u_xlat16 = dot(-(vec3<f32>(x_1299.x, x_1299.y, x_1299.z)), vec3<f32>(x_1302.x, x_1302.y, x_1302.z));
  let x_1305 : f32 = u_xlat16;
  let x_1306 : f32 = u_xlat16;
  u_xlat16 = (x_1305 + x_1306);
  let x_1308 : vec4<f32> = u_xlat1;
  let x_1310 : f32 = u_xlat16;
  let x_1314 : vec4<f32> = u_xlat8;
  let x_1317 : vec3<f32> = ((vec3<f32>(x_1308.x, x_1308.y, x_1308.z) * -(vec3<f32>(x_1310, x_1310, x_1310))) + -(vec3<f32>(x_1314.x, x_1314.y, x_1314.z)));
  let x_1318 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1317.x, x_1317.y, x_1317.z, x_1318.w);
  let x_1320 : vec4<f32> = u_xlat1;
  let x_1322 : vec4<f32> = u_xlat8;
  u_xlat16 = dot(vec3<f32>(x_1320.x, x_1320.y, x_1320.z), vec3<f32>(x_1322.x, x_1322.y, x_1322.z));
  let x_1325 : f32 = u_xlat16;
  u_xlat16 = clamp(x_1325, 0.0f, 1.0f);
  let x_1327 : f32 = u_xlat16;
  u_xlat16 = (-(x_1327) + 1.0f);
  let x_1330 : f32 = u_xlat16;
  let x_1331 : f32 = u_xlat16;
  u_xlat16 = (x_1330 * x_1331);
  let x_1333 : f32 = u_xlat16;
  let x_1334 : f32 = u_xlat16;
  u_xlat16 = (x_1333 * x_1334);
  let x_1337 : f32 = u_xlat0.x;
  u_xlat30 = ((-(x_1337) * 0.699999988f) + 1.700000048f);
  let x_1344 : f32 = u_xlat0.x;
  let x_1345 : f32 = u_xlat30;
  u_xlat0.x = (x_1344 * x_1345);
  let x_1349 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1349 * 6.0f);
  let x_1361 : vec4<f32> = u_xlat9;
  let x_1364 : f32 = u_xlat0.x;
  let x_1365 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1361.x, x_1361.y, x_1361.z), x_1364);
  u_xlat9 = x_1365;
  let x_1367 : f32 = u_xlat9.w;
  u_xlat0.x = (x_1367 + -1.0f);
  let x_1375 : f32 = x_1373.unity_SpecCube0_HDR.w;
  let x_1377 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1375 * x_1377) + 1.0f);
  let x_1382 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1382, 0.0f);
  let x_1386 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_1386);
  let x_1390 : f32 = u_xlat0.x;
  let x_1392 : f32 = x_1373.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_1390 * x_1392);
  let x_1396 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_1396);
  let x_1400 : f32 = u_xlat0.x;
  let x_1402 : f32 = x_1373.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_1400 * x_1402);
  let x_1405 : vec4<f32> = u_xlat9;
  let x_1407 : vec3<f32> = u_xlat0;
  let x_1409 : vec3<f32> = (vec3<f32>(x_1405.x, x_1405.y, x_1405.z) * vec3<f32>(x_1407.x, x_1407.x, x_1407.x));
  let x_1410 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1409.x, x_1409.y, x_1409.z, x_1410.w);
  let x_1412 : f32 = u_xlat28;
  let x_1414 : f32 = u_xlat28;
  let x_1418 : vec2<f32> = ((vec2<f32>(x_1412, x_1412) * vec2<f32>(x_1414, x_1414)) + vec2<f32>(-1.0f, 1.0f));
  let x_1419 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_1418.x, x_1419.y, x_1418.y);
  let x_1422 : f32 = u_xlat0.z;
  u_xlat28 = (1.0f / x_1422);
  let x_1424 : vec4<f32> = u_xlat5;
  let x_1427 : f32 = u_xlat45;
  let x_1429 : vec3<f32> = (-(vec3<f32>(x_1424.x, x_1424.y, x_1424.z)) + vec3<f32>(x_1427, x_1427, x_1427));
  let x_1430 : vec4<f32> = u_xlat10;
  u_xlat10 = vec4<f32>(x_1429.x, x_1429.y, x_1429.z, x_1430.w);
  let x_1432 : f32 = u_xlat16;
  let x_1434 : vec4<f32> = u_xlat10;
  let x_1437 : vec4<f32> = u_xlat5;
  let x_1439 : vec3<f32> = ((vec3<f32>(x_1432, x_1432, x_1432) * vec3<f32>(x_1434.x, x_1434.y, x_1434.z)) + vec3<f32>(x_1437.x, x_1437.y, x_1437.z));
  let x_1440 : vec4<f32> = u_xlat10;
  u_xlat10 = vec4<f32>(x_1439.x, x_1439.y, x_1439.z, x_1440.w);
  let x_1442 : f32 = u_xlat28;
  let x_1444 : vec4<f32> = u_xlat10;
  let x_1446 : vec3<f32> = (vec3<f32>(x_1442, x_1442, x_1442) * vec3<f32>(x_1444.x, x_1444.y, x_1444.z));
  let x_1447 : vec4<f32> = u_xlat10;
  u_xlat10 = vec4<f32>(x_1446.x, x_1446.y, x_1446.z, x_1447.w);
  let x_1449 : vec4<f32> = u_xlat9;
  let x_1451 : vec4<f32> = u_xlat10;
  let x_1453 : vec3<f32> = (vec3<f32>(x_1449.x, x_1449.y, x_1449.z) * vec3<f32>(x_1451.x, x_1451.y, x_1451.z));
  let x_1454 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1453.x, x_1453.y, x_1453.z, x_1454.w);
  let x_1456 : vec4<f32> = u_xlat3;
  let x_1458 : vec4<f32> = u_xlat6;
  let x_1461 : vec4<f32> = u_xlat9;
  let x_1463 : vec3<f32> = ((vec3<f32>(x_1456.x, x_1456.y, x_1456.z) * vec3<f32>(x_1458.x, x_1458.y, x_1458.z)) + vec3<f32>(x_1461.x, x_1461.y, x_1461.z));
  let x_1464 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1463.x, x_1463.y, x_1463.z, x_1464.w);
  let x_1467 : f32 = u_xlat2.x;
  let x_1469 : f32 = x_1373.unity_LightData.z;
  u_xlat28 = (x_1467 * x_1469);
  let x_1471 : vec4<f32> = u_xlat1;
  let x_1474 : vec4<f32> = x_128.x_MainLightPosition;
  u_xlat2.x = dot(vec3<f32>(x_1471.x, x_1471.y, x_1471.z), vec3<f32>(x_1474.x, x_1474.y, x_1474.z));
  let x_1479 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_1479, 0.0f, 1.0f);
  let x_1482 : f32 = u_xlat28;
  let x_1484 : f32 = u_xlat2.x;
  u_xlat28 = (x_1482 * x_1484);
  let x_1486 : f32 = u_xlat28;
  let x_1488 : vec4<f32> = u_xlat7;
  let x_1490 : vec3<f32> = (vec3<f32>(x_1486, x_1486, x_1486) * vec3<f32>(x_1488.x, x_1488.y, x_1488.z));
  let x_1491 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1490.x, x_1490.y, x_1490.z, x_1491.w);
  let x_1493 : vec4<f32> = u_xlat8;
  let x_1496 : vec4<f32> = x_128.x_MainLightPosition;
  let x_1498 : vec3<f32> = (vec3<f32>(x_1493.x, x_1493.y, x_1493.z) + vec3<f32>(x_1496.x, x_1496.y, x_1496.z));
  let x_1499 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1498.x, x_1498.y, x_1498.z, x_1499.w);
  let x_1501 : vec4<f32> = u_xlat7;
  let x_1503 : vec4<f32> = u_xlat7;
  u_xlat28 = dot(vec3<f32>(x_1501.x, x_1501.y, x_1501.z), vec3<f32>(x_1503.x, x_1503.y, x_1503.z));
  let x_1506 : f32 = u_xlat28;
  u_xlat28 = max(x_1506, 1.17549435e-37f);
  let x_1509 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_1509);
  let x_1511 : f32 = u_xlat28;
  let x_1513 : vec4<f32> = u_xlat7;
  let x_1515 : vec3<f32> = (vec3<f32>(x_1511, x_1511, x_1511) * vec3<f32>(x_1513.x, x_1513.y, x_1513.z));
  let x_1516 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1515.x, x_1515.y, x_1515.z, x_1516.w);
  let x_1518 : vec4<f32> = u_xlat1;
  let x_1520 : vec4<f32> = u_xlat7;
  u_xlat28 = dot(vec3<f32>(x_1518.x, x_1518.y, x_1518.z), vec3<f32>(x_1520.x, x_1520.y, x_1520.z));
  let x_1523 : f32 = u_xlat28;
  u_xlat28 = clamp(x_1523, 0.0f, 1.0f);
  let x_1526 : vec4<f32> = x_128.x_MainLightPosition;
  let x_1528 : vec4<f32> = u_xlat7;
  u_xlat45 = dot(vec3<f32>(x_1526.x, x_1526.y, x_1526.z), vec3<f32>(x_1528.x, x_1528.y, x_1528.z));
  let x_1531 : f32 = u_xlat45;
  u_xlat45 = clamp(x_1531, 0.0f, 1.0f);
  let x_1533 : f32 = u_xlat28;
  let x_1534 : f32 = u_xlat28;
  u_xlat28 = (x_1533 * x_1534);
  let x_1536 : f32 = u_xlat28;
  let x_1538 : f32 = u_xlat0.x;
  u_xlat28 = ((x_1536 * x_1538) + 1.000010014f);
  let x_1542 : f32 = u_xlat45;
  let x_1543 : f32 = u_xlat45;
  u_xlat45 = (x_1542 * x_1543);
  let x_1545 : f32 = u_xlat28;
  let x_1546 : f32 = u_xlat28;
  u_xlat28 = (x_1545 * x_1546);
  let x_1548 : f32 = u_xlat45;
  u_xlat45 = max(x_1548, 0.100000001f);
  let x_1551 : f32 = u_xlat28;
  let x_1552 : f32 = u_xlat45;
  u_xlat28 = (x_1551 * x_1552);
  let x_1554 : f32 = u_xlat18;
  let x_1555 : f32 = u_xlat28;
  u_xlat28 = (x_1554 * x_1555);
  let x_1557 : f32 = u_xlat44;
  let x_1558 : f32 = u_xlat28;
  u_xlat28 = (x_1557 / x_1558);
  let x_1560 : vec4<f32> = u_xlat5;
  let x_1562 : f32 = u_xlat28;
  let x_1565 : vec4<f32> = u_xlat6;
  let x_1567 : vec3<f32> = ((vec3<f32>(x_1560.x, x_1560.y, x_1560.z) * vec3<f32>(x_1562, x_1562, x_1562)) + vec3<f32>(x_1565.x, x_1565.y, x_1565.z));
  let x_1568 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1567.x, x_1567.y, x_1567.z, x_1568.w);
  let x_1570 : vec4<f32> = u_xlat2;
  let x_1572 : vec4<f32> = u_xlat7;
  let x_1574 : vec3<f32> = (vec3<f32>(x_1570.x, x_1570.y, x_1570.z) * vec3<f32>(x_1572.x, x_1572.y, x_1572.z));
  let x_1575 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1574.x, x_1574.y, x_1574.z, x_1575.w);
  let x_1578 : f32 = x_128.x_AdditionalLightsCount.x;
  let x_1580 : f32 = x_1373.unity_LightData.y;
  u_xlat28 = min(x_1578, x_1580);
  let x_1583 : f32 = u_xlat28;
  u_xlatu28 = bitcast<u32>(i32(x_1583));
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1595 : u32 = u_xlatu_loop_1;
    let x_1596 : u32 = u_xlatu28;
    if ((x_1595 < x_1596)) {
    } else {
      break;
    }
    let x_1599 : u32 = u_xlatu_loop_1;
    u_xlatu4 = (x_1599 >> 2u);
    let x_1602 : u32 = u_xlatu_loop_1;
    u_xlati46 = bitcast<i32>((x_1602 & 3u));
    let x_1605 : u32 = u_xlatu4;
    let x_1608 : vec4<f32> = x_1373.unity_LightIndices[bitcast<i32>(x_1605)];
    let x_1618 : i32 = u_xlati46;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1623 : vec4<u32> = indexable[x_1618];
    u_xlat4.x = dot(x_1608, bitcast<vec4<f32>>(x_1623));
    let x_1629 : f32 = u_xlat4.x;
    u_xlati4 = i32(x_1629);
    let x_1631 : vec3<f32> = vs_TEXCOORD7;
    let x_1643 : i32 = u_xlati4;
    let x_1645 : vec4<f32> = x_1642.x_AdditionalLightsPosition[x_1643];
    let x_1648 : i32 = u_xlati4;
    let x_1650 : vec4<f32> = x_1642.x_AdditionalLightsPosition[x_1648];
    let x_1652 : vec3<f32> = ((-(x_1631) * vec3<f32>(x_1645.w, x_1645.w, x_1645.w)) + vec3<f32>(x_1650.x, x_1650.y, x_1650.z));
    let x_1653 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1652.x, x_1652.y, x_1652.z, x_1653.w);
    let x_1656 : vec4<f32> = u_xlat9;
    let x_1658 : vec4<f32> = u_xlat9;
    u_xlat46 = dot(vec3<f32>(x_1656.x, x_1656.y, x_1656.z), vec3<f32>(x_1658.x, x_1658.y, x_1658.z));
    let x_1661 : f32 = u_xlat46;
    u_xlat46 = max(x_1661, 6.10351562e-05f);
    let x_1664 : f32 = u_xlat46;
    u_xlat47 = inverseSqrt(x_1664);
    let x_1666 : f32 = u_xlat47;
    let x_1668 : vec4<f32> = u_xlat9;
    let x_1670 : vec3<f32> = (vec3<f32>(x_1666, x_1666, x_1666) * vec3<f32>(x_1668.x, x_1668.y, x_1668.z));
    let x_1671 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1670.x, x_1670.y, x_1670.z, x_1671.w);
    let x_1674 : f32 = u_xlat46;
    u_xlat48 = (1.0f / x_1674);
    let x_1676 : f32 = u_xlat46;
    let x_1677 : i32 = u_xlati4;
    let x_1679 : f32 = x_1642.x_AdditionalLightsAttenuation[x_1677].x;
    u_xlat46 = (x_1676 * x_1679);
    let x_1681 : f32 = u_xlat46;
    let x_1683 : f32 = u_xlat46;
    u_xlat46 = ((-(x_1681) * x_1683) + 1.0f);
    let x_1686 : f32 = u_xlat46;
    u_xlat46 = max(x_1686, 0.0f);
    let x_1688 : f32 = u_xlat46;
    let x_1689 : f32 = u_xlat46;
    u_xlat46 = (x_1688 * x_1689);
    let x_1691 : f32 = u_xlat46;
    let x_1692 : f32 = u_xlat48;
    u_xlat46 = (x_1691 * x_1692);
    let x_1694 : i32 = u_xlati4;
    let x_1696 : vec4<f32> = x_1642.x_AdditionalLightsSpotDir[x_1694];
    let x_1698 : vec4<f32> = u_xlat10;
    u_xlat48 = dot(vec3<f32>(x_1696.x, x_1696.y, x_1696.z), vec3<f32>(x_1698.x, x_1698.y, x_1698.z));
    let x_1701 : f32 = u_xlat48;
    let x_1702 : i32 = u_xlati4;
    let x_1704 : f32 = x_1642.x_AdditionalLightsAttenuation[x_1702].z;
    let x_1706 : i32 = u_xlati4;
    let x_1708 : f32 = x_1642.x_AdditionalLightsAttenuation[x_1706].w;
    u_xlat48 = ((x_1701 * x_1704) + x_1708);
    let x_1710 : f32 = u_xlat48;
    u_xlat48 = clamp(x_1710, 0.0f, 1.0f);
    let x_1712 : f32 = u_xlat48;
    let x_1713 : f32 = u_xlat48;
    u_xlat48 = (x_1712 * x_1713);
    let x_1715 : f32 = u_xlat46;
    let x_1716 : f32 = u_xlat48;
    u_xlat46 = (x_1715 * x_1716);
    let x_1718 : f32 = u_xlat32;
    let x_1720 : i32 = u_xlati4;
    let x_1722 : vec4<f32> = x_1642.x_AdditionalLightsColor[x_1720];
    let x_1724 : vec3<f32> = (vec3<f32>(x_1718, x_1718, x_1718) * vec3<f32>(x_1722.x, x_1722.y, x_1722.z));
    let x_1725 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1724.x, x_1724.y, x_1724.z, x_1725.w);
    let x_1727 : vec4<f32> = u_xlat1;
    let x_1729 : vec4<f32> = u_xlat10;
    u_xlat4.x = dot(vec3<f32>(x_1727.x, x_1727.y, x_1727.z), vec3<f32>(x_1729.x, x_1729.y, x_1729.z));
    let x_1734 : f32 = u_xlat4.x;
    u_xlat4.x = clamp(x_1734, 0.0f, 1.0f);
    let x_1738 : f32 = u_xlat4.x;
    let x_1739 : f32 = u_xlat46;
    u_xlat4.x = (x_1738 * x_1739);
    let x_1742 : vec4<f32> = u_xlat4;
    let x_1744 : vec4<f32> = u_xlat11;
    let x_1746 : vec3<f32> = (vec3<f32>(x_1742.x, x_1742.x, x_1742.x) * vec3<f32>(x_1744.x, x_1744.y, x_1744.z));
    let x_1747 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1746.x, x_1746.y, x_1746.z, x_1747.w);
    let x_1749 : vec4<f32> = u_xlat9;
    let x_1751 : f32 = u_xlat47;
    let x_1754 : vec4<f32> = u_xlat8;
    let x_1756 : vec3<f32> = ((vec3<f32>(x_1749.x, x_1749.y, x_1749.z) * vec3<f32>(x_1751, x_1751, x_1751)) + vec3<f32>(x_1754.x, x_1754.y, x_1754.z));
    let x_1757 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1756.x, x_1756.y, x_1756.z, x_1757.w);
    let x_1759 : vec4<f32> = u_xlat9;
    let x_1761 : vec4<f32> = u_xlat9;
    u_xlat4.x = dot(vec3<f32>(x_1759.x, x_1759.y, x_1759.z), vec3<f32>(x_1761.x, x_1761.y, x_1761.z));
    let x_1766 : f32 = u_xlat4.x;
    u_xlat4.x = max(x_1766, 1.17549435e-37f);
    let x_1770 : f32 = u_xlat4.x;
    u_xlat4.x = inverseSqrt(x_1770);
    let x_1773 : vec4<f32> = u_xlat4;
    let x_1775 : vec4<f32> = u_xlat9;
    let x_1777 : vec3<f32> = (vec3<f32>(x_1773.x, x_1773.x, x_1773.x) * vec3<f32>(x_1775.x, x_1775.y, x_1775.z));
    let x_1778 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1777.x, x_1777.y, x_1777.z, x_1778.w);
    let x_1780 : vec4<f32> = u_xlat1;
    let x_1782 : vec4<f32> = u_xlat9;
    u_xlat4.x = dot(vec3<f32>(x_1780.x, x_1780.y, x_1780.z), vec3<f32>(x_1782.x, x_1782.y, x_1782.z));
    let x_1787 : f32 = u_xlat4.x;
    u_xlat4.x = clamp(x_1787, 0.0f, 1.0f);
    let x_1790 : vec4<f32> = u_xlat10;
    let x_1792 : vec4<f32> = u_xlat9;
    u_xlat4.w = dot(vec3<f32>(x_1790.x, x_1790.y, x_1790.z), vec3<f32>(x_1792.x, x_1792.y, x_1792.z));
    let x_1797 : f32 = u_xlat4.w;
    u_xlat4.w = clamp(x_1797, 0.0f, 1.0f);
    let x_1800 : vec4<f32> = u_xlat4;
    let x_1802 : vec4<f32> = u_xlat4;
    let x_1804 : vec2<f32> = (vec2<f32>(x_1800.x, x_1800.w) * vec2<f32>(x_1802.x, x_1802.w));
    let x_1805 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1804.x, x_1805.y, x_1805.z, x_1804.y);
    let x_1808 : f32 = u_xlat4.x;
    let x_1810 : f32 = u_xlat0.x;
    u_xlat4.x = ((x_1808 * x_1810) + 1.000010014f);
    let x_1815 : f32 = u_xlat4.x;
    let x_1817 : f32 = u_xlat4.x;
    u_xlat4.x = (x_1815 * x_1817);
    let x_1821 : f32 = u_xlat4.w;
    u_xlat46 = max(x_1821, 0.100000001f);
    let x_1823 : f32 = u_xlat46;
    let x_1825 : f32 = u_xlat4.x;
    u_xlat4.x = (x_1823 * x_1825);
    let x_1828 : f32 = u_xlat18;
    let x_1830 : f32 = u_xlat4.x;
    u_xlat4.x = (x_1828 * x_1830);
    let x_1833 : f32 = u_xlat44;
    let x_1835 : f32 = u_xlat4.x;
    u_xlat4.x = (x_1833 / x_1835);
    let x_1838 : vec4<f32> = u_xlat5;
    let x_1840 : vec4<f32> = u_xlat4;
    let x_1843 : vec4<f32> = u_xlat6;
    let x_1845 : vec3<f32> = ((vec3<f32>(x_1838.x, x_1838.y, x_1838.z) * vec3<f32>(x_1840.x, x_1840.x, x_1840.x)) + vec3<f32>(x_1843.x, x_1843.y, x_1843.z));
    let x_1846 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1845.x, x_1845.y, x_1845.z, x_1846.w);
    let x_1848 : vec4<f32> = u_xlat9;
    let x_1850 : vec4<f32> = u_xlat11;
    let x_1853 : vec4<f32> = u_xlat7;
    let x_1855 : vec3<f32> = ((vec3<f32>(x_1848.x, x_1848.y, x_1848.z) * vec3<f32>(x_1850.x, x_1850.y, x_1850.z)) + vec3<f32>(x_1853.x, x_1853.y, x_1853.z));
    let x_1856 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1855.x, x_1855.y, x_1855.z, x_1856.w);

    continuing {
      let x_1858 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1858 + bitcast<u32>(1i));
    }
  }
  let x_1860 : vec4<f32> = u_xlat3;
  let x_1862 : f32 = u_xlat14;
  let x_1865 : vec4<f32> = u_xlat2;
  u_xlat0 = ((vec3<f32>(x_1860.x, x_1860.y, x_1860.z) * vec3<f32>(x_1862, x_1862, x_1862)) + vec3<f32>(x_1865.x, x_1865.y, x_1865.z));
  let x_1868 : vec4<f32> = u_xlat7;
  let x_1870 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_1868.x, x_1868.y, x_1868.z) + x_1870);
  let x_1872 : f32 = u_xlat42;
  let x_1874 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_1872, x_1872, x_1872) * x_1874);
  let x_1876 : f32 = u_xlat43;
  let x_1877 : f32 = u_xlat43;
  u_xlat42 = (x_1876 * -(x_1877));
  let x_1880 : f32 = u_xlat42;
  u_xlat42 = exp2(x_1880);
  let x_1884 : vec3<f32> = u_xlat0;
  let x_1885 : f32 = u_xlat42;
  let x_1887 : vec3<f32> = (x_1884 * vec3<f32>(x_1885, x_1885, x_1885));
  let x_1888 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1887.x, x_1887.y, x_1887.z, x_1888.w);
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

