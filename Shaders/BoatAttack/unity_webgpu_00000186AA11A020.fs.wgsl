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
  unity_OrthoParams : vec4<f32>,
  x_ScaleBiasRt : vec4<f32>,
  unity_FogParams : vec4<f32>,
  unity_FogColor : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
}

type Arr = array<vec4<f32>, 2u>;

struct UnityPerDraw {
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_LODFade : vec4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_RenderingLayer : vec4<f32>,
  unity_LightData : vec4<f32>,
  unity_LightIndices : Arr,
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

type Arr_1 = array<mat4x4<f32>, 5u>;

struct MainLightShadows {
  x_MainLightWorldToShadow : Arr_1,
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

@group(0) @binding(9) var sampler_Control : sampler;

@group(1) @binding(0) var<uniform> x_128 : PGlobals;

@group(0) @binding(2) var x_Splat0 : texture_2d<f32>;

@group(0) @binding(10) var sampler_Splat0 : sampler;

var<private> vs_TEXCOORD1 : vec4<f32>;

@group(0) @binding(3) var x_Splat1 : texture_2d<f32>;

@group(0) @binding(4) var x_Splat2 : texture_2d<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

@group(0) @binding(5) var x_Splat3 : texture_2d<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_623 : UnityPerDraw;

@group(0) @binding(6) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(1) @binding(4) var<uniform> x_816 : MainLightShadows;

var<private> vs_TEXCOORD8 : vec4<f32>;

@group(0) @binding(7) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(12) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_2429 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat63 : f32;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlatb64 : bool;
  var u_xlat11 : vec4<f32>;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec4<f32>;
  var u_xlat64 : f32;
  var u_xlat42 : f32;
  var u_xlat21 : f32;
  var u_xlatb1 : bool;
  var u_xlat22 : vec3<f32>;
  var x_561 : vec3<f32>;
  var u_xlat65 : f32;
  var u_xlat66 : f32;
  var u_xlat25 : f32;
  var u_xlat46 : f32;
  var u_xlatb4 : bool;
  var txVec0 : vec3<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var u_xlatb67 : bool;
  var u_xlat49 : vec2<f32>;
  var u_xlat51 : vec2<f32>;
  var u_xlat14 : vec4<f32>;
  var u_xlat15 : vec4<f32>;
  var u_xlat67 : f32;
  var txVec4 : vec3<f32>;
  var u_xlat68 : f32;
  var txVec5 : vec3<f32>;
  var u_xlat69 : f32;
  var txVec6 : vec3<f32>;
  var txVec7 : vec3<f32>;
  var txVec8 : vec3<f32>;
  var txVec9 : vec3<f32>;
  var txVec10 : vec3<f32>;
  var txVec11 : vec3<f32>;
  var txVec12 : vec3<f32>;
  var u_xlat29 : vec3<f32>;
  var u_xlat16 : vec4<f32>;
  var u_xlat17 : vec4<f32>;
  var u_xlat30 : vec2<f32>;
  var u_xlat57 : vec2<f32>;
  var u_xlat52 : vec2<f32>;
  var u_xlat18 : vec4<f32>;
  var u_xlat19 : vec4<f32>;
  var u_xlat20 : vec4<f32>;
  var txVec13 : vec3<f32>;
  var txVec14 : vec3<f32>;
  var txVec15 : vec3<f32>;
  var txVec16 : vec3<f32>;
  var txVec17 : vec3<f32>;
  var txVec18 : vec3<f32>;
  var txVec19 : vec3<f32>;
  var txVec20 : vec3<f32>;
  var txVec21 : vec3<f32>;
  var txVec22 : vec3<f32>;
  var txVec23 : vec3<f32>;
  var txVec24 : vec3<f32>;
  var txVec25 : vec3<f32>;
  var txVec26 : vec3<f32>;
  var txVec27 : vec3<f32>;
  var txVec28 : vec3<f32>;
  var txVec29 : vec3<f32>;
  var u_xlatb68 : bool;
  var x_2044 : f32;
  var u_xlatu42 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu4 : u32;
  var u_xlati67 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati4 : i32;
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
  u_xlat63 = dot(x_137, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
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
  u_xlatb64 = (4.0f >= x_220);
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
  let x_282 : bool = u_xlatb64;
  let x_283 : vec4<f32> = u_xlat11;
  let x_284 : vec4<f32> = u_xlat4;
  u_xlat4 = select(x_284, x_283, vec4<bool>(x_282, x_282, x_282, x_282));
  let x_289 : vec4<f32> = u_xlat4;
  u_xlat64 = dot(x_289, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_291 : f32 = u_xlat64;
  u_xlat64 = (x_291 + 6.10351562e-05f);
  let x_294 : vec4<f32> = u_xlat4;
  let x_295 : f32 = u_xlat64;
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
  let x_368 : f32 = x_30.x_MaskMapRemapScale0.y;
  u_xlat6.x = x_368;
  let x_371 : f32 = x_30.x_MaskMapRemapScale1.y;
  u_xlat6.y = x_371;
  let x_374 : f32 = x_30.x_MaskMapRemapScale2.y;
  u_xlat6.z = x_374;
  let x_377 : f32 = x_30.x_MaskMapRemapScale3.y;
  u_xlat6.w = x_377;
  let x_380 : f32 = x_30.x_MaskMapRemapOffset0.y;
  u_xlat7.x = x_380;
  let x_383 : f32 = x_30.x_MaskMapRemapOffset1.y;
  u_xlat7.y = x_383;
  let x_386 : f32 = x_30.x_MaskMapRemapOffset2.y;
  u_xlat7.z = x_386;
  let x_389 : f32 = x_30.x_MaskMapRemapOffset3.y;
  u_xlat7.w = x_389;
  let x_391 : vec4<f32> = u_xlat6;
  let x_392 : vec4<f32> = u_xlat7;
  u_xlat6 = (x_391 + x_392);
  let x_395 : f32 = u_xlat0.z;
  u_xlat7.x = x_395;
  let x_398 : f32 = u_xlat1.z;
  u_xlat7.y = x_398;
  let x_401 : f32 = u_xlat2.z;
  u_xlat7.z = x_401;
  let x_404 : f32 = u_xlat3.y;
  u_xlat7.w = x_404;
  let x_406 : vec4<f32> = u_xlat9;
  let x_409 : f32 = x_30.x_Smoothness0;
  let x_411 : f32 = x_30.x_Smoothness1;
  let x_413 : f32 = x_30.x_Smoothness2;
  let x_415 : f32 = x_30.x_Smoothness3;
  let x_418 : vec4<f32> = u_xlat7;
  u_xlat7 = ((-(x_406) * vec4<f32>(x_409, x_411, x_413, x_415)) + x_418);
  let x_422 : f32 = x_30.x_LayerHasMask0;
  let x_425 : f32 = x_30.x_LayerHasMask1;
  let x_428 : f32 = x_30.x_LayerHasMask2;
  let x_431 : f32 = x_30.x_LayerHasMask3;
  let x_433 : vec4<f32> = u_xlat7;
  let x_435 : vec4<f32> = u_xlat10;
  u_xlat7 = ((vec4<f32>(x_422, x_425, x_428, x_431) * x_433) + x_435);
  let x_438 : vec4<f32> = u_xlat4;
  let x_439 : vec4<f32> = u_xlat7;
  u_xlat42 = dot(x_438, x_439);
  let x_442 : f32 = u_xlat0.x;
  u_xlat7.x = x_442;
  let x_445 : f32 = u_xlat1.x;
  u_xlat7.y = x_445;
  let x_448 : f32 = u_xlat2.x;
  u_xlat7.z = x_448;
  let x_451 : f32 = u_xlat3.x;
  u_xlat7.w = x_451;
  let x_453 : vec4<f32> = u_xlat7;
  let x_456 : f32 = x_30.x_Metallic0;
  let x_459 : f32 = x_30.x_Metallic1;
  let x_462 : f32 = x_30.x_Metallic2;
  let x_465 : f32 = x_30.x_Metallic3;
  u_xlat7 = (x_453 + -(vec4<f32>(x_456, x_459, x_462, x_465)));
  let x_470 : f32 = x_30.x_LayerHasMask0;
  let x_472 : f32 = x_30.x_LayerHasMask1;
  let x_474 : f32 = x_30.x_LayerHasMask2;
  let x_476 : f32 = x_30.x_LayerHasMask3;
  let x_478 : vec4<f32> = u_xlat7;
  let x_481 : f32 = x_30.x_Metallic0;
  let x_483 : f32 = x_30.x_Metallic1;
  let x_485 : f32 = x_30.x_Metallic2;
  let x_487 : f32 = x_30.x_Metallic3;
  u_xlat7 = ((vec4<f32>(x_470, x_472, x_474, x_476) * x_478) + vec4<f32>(x_481, x_483, x_485, x_487));
  let x_490 : vec4<f32> = u_xlat4;
  let x_491 : vec4<f32> = u_xlat7;
  u_xlat0.x = dot(x_490, x_491);
  let x_495 : f32 = u_xlat0.y;
  u_xlat3.x = x_495;
  let x_498 : f32 = u_xlat1.y;
  u_xlat3.y = x_498;
  let x_501 : f32 = u_xlat2.y;
  u_xlat3.z = x_501;
  let x_503 : vec4<f32> = u_xlat6;
  let x_505 : vec4<f32> = u_xlat3;
  u_xlat1 = (-(x_503) + x_505);
  let x_508 : f32 = x_30.x_LayerHasMask0;
  let x_510 : f32 = x_30.x_LayerHasMask1;
  let x_512 : f32 = x_30.x_LayerHasMask2;
  let x_514 : f32 = x_30.x_LayerHasMask3;
  let x_516 : vec4<f32> = u_xlat1;
  let x_518 : vec4<f32> = u_xlat6;
  u_xlat1 = ((vec4<f32>(x_508, x_510, x_512, x_514) * x_516) + x_518);
  let x_521 : vec4<f32> = u_xlat4;
  let x_522 : vec4<f32> = u_xlat1;
  u_xlat21 = dot(x_521, x_522);
  let x_526 : f32 = x_128.unity_OrthoParams.w;
  u_xlatb1 = (x_526 == 0.0f);
  let x_531 : vec3<f32> = vs_TEXCOORD7;
  let x_535 : vec3<f32> = x_128.x_WorldSpaceCameraPos;
  u_xlat22 = (-(x_531) + x_535);
  let x_537 : vec3<f32> = u_xlat22;
  let x_538 : vec3<f32> = u_xlat22;
  u_xlat2.x = dot(x_537, x_538);
  let x_542 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_542);
  let x_545 : vec3<f32> = u_xlat22;
  let x_546 : vec4<f32> = u_xlat2;
  u_xlat22 = (x_545 * vec3<f32>(x_546.x, x_546.x, x_546.x));
  let x_551 : f32 = x_128.unity_MatrixV[0i].z;
  u_xlat2.x = x_551;
  let x_554 : f32 = x_128.unity_MatrixV[1i].z;
  u_xlat2.y = x_554;
  let x_558 : f32 = x_128.unity_MatrixV[2i].z;
  u_xlat2.z = x_558;
  let x_560 : bool = u_xlatb1;
  if (x_560) {
    let x_564 : vec3<f32> = u_xlat22;
    x_561 = x_564;
  } else {
    let x_566 : vec4<f32> = u_xlat2;
    x_561 = vec3<f32>(x_566.x, x_566.y, x_566.z);
  }
  let x_568 : vec3<f32> = x_561;
  let x_569 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_568.x, x_568.y, x_568.z, x_569.w);
  let x_572 : vec3<f32> = vs_TEXCOORD3;
  let x_573 : vec3<f32> = vs_TEXCOORD3;
  u_xlat64 = dot(x_572, x_573);
  let x_575 : f32 = u_xlat64;
  u_xlat64 = inverseSqrt(x_575);
  let x_577 : f32 = u_xlat64;
  let x_579 : vec3<f32> = vs_TEXCOORD3;
  let x_580 : vec3<f32> = (vec3<f32>(x_577, x_577, x_577) * x_579);
  let x_581 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_580.x, x_580.y, x_580.z, x_581.w);
  let x_584 : f32 = vs_TEXCOORD7.y;
  let x_586 : f32 = x_128.unity_MatrixV[1i].z;
  u_xlat64 = (x_584 * x_586);
  let x_589 : f32 = x_128.unity_MatrixV[0i].z;
  let x_591 : f32 = vs_TEXCOORD7.x;
  let x_593 : f32 = u_xlat64;
  u_xlat64 = ((x_589 * x_591) + x_593);
  let x_596 : f32 = x_128.unity_MatrixV[2i].z;
  let x_598 : f32 = vs_TEXCOORD7.z;
  let x_600 : f32 = u_xlat64;
  u_xlat64 = ((x_596 * x_598) + x_600);
  let x_602 : f32 = u_xlat64;
  let x_605 : f32 = x_128.unity_MatrixV[3i].z;
  u_xlat64 = (x_602 + x_605);
  let x_607 : f32 = u_xlat64;
  let x_610 : f32 = x_128.x_ProjectionParams.y;
  u_xlat64 = (-(x_607) + -(x_610));
  let x_613 : f32 = u_xlat64;
  u_xlat64 = max(x_613, 0.0f);
  let x_615 : f32 = u_xlat64;
  let x_617 : f32 = x_128.unity_FogParams.x;
  u_xlat64 = (x_615 * x_617);
  u_xlat2.w = 1.0f;
  let x_625 : vec4<f32> = x_623.unity_SHAr;
  let x_626 : vec4<f32> = u_xlat2;
  u_xlat3.x = dot(x_625, x_626);
  let x_630 : vec4<f32> = x_623.unity_SHAg;
  let x_631 : vec4<f32> = u_xlat2;
  u_xlat3.y = dot(x_630, x_631);
  let x_635 : vec4<f32> = x_623.unity_SHAb;
  let x_636 : vec4<f32> = u_xlat2;
  u_xlat3.z = dot(x_635, x_636);
  let x_639 : vec4<f32> = u_xlat2;
  let x_641 : vec4<f32> = u_xlat2;
  u_xlat4 = (vec4<f32>(x_639.y, x_639.z, x_639.z, x_639.x) * vec4<f32>(x_641.x, x_641.y, x_641.z, x_641.z));
  let x_645 : vec4<f32> = x_623.unity_SHBr;
  let x_646 : vec4<f32> = u_xlat4;
  u_xlat6.x = dot(x_645, x_646);
  let x_650 : vec4<f32> = x_623.unity_SHBg;
  let x_651 : vec4<f32> = u_xlat4;
  u_xlat6.y = dot(x_650, x_651);
  let x_655 : vec4<f32> = x_623.unity_SHBb;
  let x_656 : vec4<f32> = u_xlat4;
  u_xlat6.z = dot(x_655, x_656);
  let x_661 : f32 = u_xlat2.y;
  let x_663 : f32 = u_xlat2.y;
  u_xlat65 = (x_661 * x_663);
  let x_666 : f32 = u_xlat2.x;
  let x_668 : f32 = u_xlat2.x;
  let x_670 : f32 = u_xlat65;
  u_xlat65 = ((x_666 * x_668) + -(x_670));
  let x_675 : vec4<f32> = x_623.unity_SHC;
  let x_677 : f32 = u_xlat65;
  let x_680 : vec4<f32> = u_xlat6;
  let x_682 : vec3<f32> = ((vec3<f32>(x_675.x, x_675.y, x_675.z) * vec3<f32>(x_677, x_677, x_677)) + vec3<f32>(x_680.x, x_680.y, x_680.z));
  let x_683 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_682.x, x_682.y, x_682.z, x_683.w);
  let x_685 : vec4<f32> = u_xlat3;
  let x_687 : vec4<f32> = u_xlat4;
  let x_689 : vec3<f32> = (vec3<f32>(x_685.x, x_685.y, x_685.z) + vec3<f32>(x_687.x, x_687.y, x_687.z));
  let x_690 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_689.x, x_689.y, x_689.z, x_690.w);
  let x_692 : vec4<f32> = u_xlat3;
  let x_695 : vec3<f32> = max(vec3<f32>(x_692.x, x_692.y, x_692.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_696 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_695.x, x_695.y, x_695.z, x_696.w);
  let x_700 : vec4<f32> = x_128.x_ScaledScreenParams;
  let x_701 : vec2<f32> = vec2<f32>(x_700.x, x_700.y);
  let x_705 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_701.x, x_701.y));
  let x_706 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_705.x, x_705.y, x_706.z, x_706.w);
  let x_708 : vec4<f32> = u_xlat4;
  let x_710 : vec4<f32> = hlslcc_FragCoord;
  let x_712 : vec2<f32> = (vec2<f32>(x_708.x, x_708.y) * vec2<f32>(x_710.x, x_710.y));
  let x_713 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_712.x, x_712.y, x_713.z, x_713.w);
  let x_716 : f32 = u_xlat4.y;
  let x_718 : f32 = x_128.x_ScaleBiasRt.x;
  let x_721 : f32 = x_128.x_ScaleBiasRt.y;
  u_xlat65 = ((x_716 * x_718) + x_721);
  let x_723 : f32 = u_xlat65;
  u_xlat4.z = (-(x_723) + 1.0f);
  let x_728 : f32 = u_xlat0.x;
  u_xlat65 = ((-(x_728) * 0.959999979f) + 0.959999979f);
  let x_734 : f32 = u_xlat42;
  let x_735 : f32 = u_xlat65;
  u_xlat66 = (x_734 + -(x_735));
  let x_738 : f32 = u_xlat65;
  let x_740 : vec4<f32> = u_xlat5;
  let x_742 : vec3<f32> = (vec3<f32>(x_738, x_738, x_738) * vec3<f32>(x_740.x, x_740.y, x_740.z));
  let x_743 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_742.x, x_742.y, x_742.z, x_743.w);
  let x_745 : vec4<f32> = u_xlat5;
  let x_749 : vec3<f32> = (vec3<f32>(x_745.x, x_745.y, x_745.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_750 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_749.x, x_749.y, x_749.z, x_750.w);
  let x_752 : vec3<f32> = u_xlat0;
  let x_754 : vec4<f32> = u_xlat5;
  let x_759 : vec3<f32> = ((vec3<f32>(x_752.x, x_752.x, x_752.x) * vec3<f32>(x_754.x, x_754.y, x_754.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_760 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_759.x, x_759.y, x_759.z, x_760.w);
  let x_762 : f32 = u_xlat42;
  u_xlat0.x = (-(x_762) + 1.0f);
  let x_767 : f32 = u_xlat0.x;
  let x_769 : f32 = u_xlat0.x;
  u_xlat42 = (x_767 * x_769);
  let x_771 : f32 = u_xlat42;
  u_xlat42 = max(x_771, 0.0078125f);
  let x_774 : f32 = u_xlat42;
  let x_775 : f32 = u_xlat42;
  u_xlat65 = (x_774 * x_775);
  let x_777 : f32 = u_xlat66;
  u_xlat66 = (x_777 + 1.0f);
  let x_779 : f32 = u_xlat66;
  u_xlat66 = clamp(x_779, 0.0f, 1.0f);
  let x_782 : f32 = u_xlat42;
  u_xlat25 = ((x_782 * 4.0f) + 2.0f);
  let x_791 : vec4<f32> = u_xlat4;
  let x_794 : f32 = x_128.x_GlobalMipBias.x;
  let x_795 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_791.x, x_791.z), x_794);
  u_xlat4.x = x_795.x;
  let x_800 : f32 = u_xlat4.x;
  u_xlat46 = (x_800 + -1.0f);
  let x_803 : f32 = x_128.x_AmbientOcclusionParam.w;
  let x_804 : f32 = u_xlat46;
  u_xlat46 = ((x_803 * x_804) + 1.0f);
  let x_807 : f32 = u_xlat21;
  let x_809 : f32 = u_xlat4.x;
  u_xlat21 = min(x_807, x_809);
  let x_818 : f32 = x_816.x_MainLightShadowParams.y;
  u_xlatb4 = (0.0f < x_818);
  let x_820 : bool = u_xlatb4;
  if (x_820) {
    let x_824 : f32 = x_816.x_MainLightShadowParams.y;
    u_xlatb4 = (x_824 == 1.0f);
    let x_826 : bool = u_xlatb4;
    if (x_826) {
      let x_830 : vec4<f32> = vs_TEXCOORD8;
      let x_833 : vec4<f32> = x_816.x_MainLightShadowOffset0;
      u_xlat7 = (vec4<f32>(x_830.x, x_830.y, x_830.x, x_830.y) + x_833);
      let x_836 : vec4<f32> = u_xlat7;
      let x_837 : vec2<f32> = vec2<f32>(x_836.x, x_836.y);
      let x_839 : f32 = vs_TEXCOORD8.z;
      txVec0 = vec3<f32>(x_837.x, x_837.y, x_839);
      let x_851 : vec3<f32> = txVec0;
      let x_853 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_851.xy, x_851.z);
      u_xlat8.x = x_853;
      let x_856 : vec4<f32> = u_xlat7;
      let x_857 : vec2<f32> = vec2<f32>(x_856.z, x_856.w);
      let x_859 : f32 = vs_TEXCOORD8.z;
      txVec1 = vec3<f32>(x_857.x, x_857.y, x_859);
      let x_866 : vec3<f32> = txVec1;
      let x_868 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_866.xy, x_866.z);
      u_xlat8.y = x_868;
      let x_870 : vec4<f32> = vs_TEXCOORD8;
      let x_873 : vec4<f32> = x_816.x_MainLightShadowOffset1;
      u_xlat7 = (vec4<f32>(x_870.x, x_870.y, x_870.x, x_870.y) + x_873);
      let x_876 : vec4<f32> = u_xlat7;
      let x_877 : vec2<f32> = vec2<f32>(x_876.x, x_876.y);
      let x_879 : f32 = vs_TEXCOORD8.z;
      txVec2 = vec3<f32>(x_877.x, x_877.y, x_879);
      let x_886 : vec3<f32> = txVec2;
      let x_888 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_886.xy, x_886.z);
      u_xlat8.z = x_888;
      let x_891 : vec4<f32> = u_xlat7;
      let x_892 : vec2<f32> = vec2<f32>(x_891.z, x_891.w);
      let x_894 : f32 = vs_TEXCOORD8.z;
      txVec3 = vec3<f32>(x_892.x, x_892.y, x_894);
      let x_901 : vec3<f32> = txVec3;
      let x_903 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_901.xy, x_901.z);
      u_xlat8.w = x_903;
      let x_905 : vec4<f32> = u_xlat8;
      u_xlat4.x = dot(x_905, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_913 : f32 = x_816.x_MainLightShadowParams.y;
      u_xlatb67 = (x_913 == 2.0f);
      let x_915 : bool = u_xlatb67;
      if (x_915) {
        let x_918 : vec4<f32> = vs_TEXCOORD8;
        let x_921 : vec4<f32> = x_816.x_MainLightShadowmapSize;
        let x_924 : vec2<f32> = ((vec2<f32>(x_918.x, x_918.y) * vec2<f32>(x_921.z, x_921.w)) + vec2<f32>(0.5f, 0.5f));
        let x_925 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_924.x, x_924.y, x_925.z, x_925.w);
        let x_927 : vec4<f32> = u_xlat7;
        let x_929 : vec2<f32> = floor(vec2<f32>(x_927.x, x_927.y));
        let x_930 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_929.x, x_929.y, x_930.z, x_930.w);
        let x_934 : vec4<f32> = vs_TEXCOORD8;
        let x_937 : vec4<f32> = x_816.x_MainLightShadowmapSize;
        let x_940 : vec4<f32> = u_xlat7;
        u_xlat49 = ((vec2<f32>(x_934.x, x_934.y) * vec2<f32>(x_937.z, x_937.w)) + -(vec2<f32>(x_940.x, x_940.y)));
        let x_944 : vec2<f32> = u_xlat49;
        u_xlat8 = (vec4<f32>(x_944.x, x_944.x, x_944.y, x_944.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_948 : vec4<f32> = u_xlat8;
        let x_950 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_948.x, x_948.x, x_948.z, x_948.z) * vec4<f32>(x_950.x, x_950.x, x_950.z, x_950.z));
        let x_953 : vec4<f32> = u_xlat9;
        let x_957 : vec2<f32> = (vec2<f32>(x_953.y, x_953.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_958 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_957.x, x_958.y, x_957.y, x_958.w);
        let x_960 : vec4<f32> = u_xlat9;
        let x_963 : vec2<f32> = u_xlat49;
        let x_965 : vec2<f32> = ((vec2<f32>(x_960.x, x_960.z) * vec2<f32>(0.5f, 0.5f)) + -(x_963));
        let x_966 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_965.x, x_965.y, x_966.z, x_966.w);
        let x_969 : vec2<f32> = u_xlat49;
        u_xlat51 = (-(x_969) + vec2<f32>(1.0f, 1.0f));
        let x_972 : vec2<f32> = u_xlat49;
        let x_974 : vec2<f32> = min(x_972, vec2<f32>(0.0f, 0.0f));
        let x_975 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_974.x, x_974.y, x_975.z, x_975.w);
        let x_977 : vec4<f32> = u_xlat10;
        let x_980 : vec4<f32> = u_xlat10;
        let x_983 : vec2<f32> = u_xlat51;
        let x_984 : vec2<f32> = ((-(vec2<f32>(x_977.x, x_977.y)) * vec2<f32>(x_980.x, x_980.y)) + x_983);
        let x_985 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_984.x, x_984.y, x_985.z, x_985.w);
        let x_987 : vec2<f32> = u_xlat49;
        u_xlat49 = max(x_987, vec2<f32>(0.0f, 0.0f));
        let x_989 : vec2<f32> = u_xlat49;
        let x_991 : vec2<f32> = u_xlat49;
        let x_993 : vec4<f32> = u_xlat8;
        u_xlat49 = ((-(x_989) * x_991) + vec2<f32>(x_993.y, x_993.w));
        let x_996 : vec4<f32> = u_xlat10;
        let x_998 : vec2<f32> = (vec2<f32>(x_996.x, x_996.y) + vec2<f32>(1.0f, 1.0f));
        let x_999 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_998.x, x_998.y, x_999.z, x_999.w);
        let x_1001 : vec2<f32> = u_xlat49;
        u_xlat49 = (x_1001 + vec2<f32>(1.0f, 1.0f));
        let x_1003 : vec4<f32> = u_xlat9;
        let x_1007 : vec2<f32> = (vec2<f32>(x_1003.x, x_1003.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1008 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1007.x, x_1007.y, x_1008.z, x_1008.w);
        let x_1010 : vec2<f32> = u_xlat51;
        let x_1011 : vec2<f32> = (x_1010 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1012 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1011.x, x_1011.y, x_1012.z, x_1012.w);
        let x_1014 : vec4<f32> = u_xlat10;
        let x_1016 : vec2<f32> = (vec2<f32>(x_1014.x, x_1014.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1017 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1016.x, x_1016.y, x_1017.z, x_1017.w);
        let x_1019 : vec2<f32> = u_xlat49;
        let x_1020 : vec2<f32> = (x_1019 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1021 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1020.x, x_1020.y, x_1021.z, x_1021.w);
        let x_1023 : vec4<f32> = u_xlat8;
        u_xlat49 = (vec2<f32>(x_1023.y, x_1023.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1027 : f32 = u_xlat10.x;
        u_xlat11.z = x_1027;
        let x_1030 : f32 = u_xlat49.x;
        u_xlat11.w = x_1030;
        let x_1033 : f32 = u_xlat12.x;
        u_xlat9.z = x_1033;
        let x_1036 : f32 = u_xlat8.x;
        u_xlat9.w = x_1036;
        let x_1038 : vec4<f32> = u_xlat9;
        let x_1040 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_1038.z, x_1038.w, x_1038.x, x_1038.z) + vec4<f32>(x_1040.z, x_1040.w, x_1040.x, x_1040.z));
        let x_1044 : f32 = u_xlat11.y;
        u_xlat10.z = x_1044;
        let x_1047 : f32 = u_xlat49.y;
        u_xlat10.w = x_1047;
        let x_1050 : f32 = u_xlat9.y;
        u_xlat12.z = x_1050;
        let x_1053 : f32 = u_xlat8.z;
        u_xlat12.w = x_1053;
        let x_1055 : vec4<f32> = u_xlat10;
        let x_1057 : vec4<f32> = u_xlat12;
        let x_1059 : vec3<f32> = (vec3<f32>(x_1055.z, x_1055.y, x_1055.w) + vec3<f32>(x_1057.z, x_1057.y, x_1057.w));
        let x_1060 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1059.x, x_1059.y, x_1059.z, x_1060.w);
        let x_1062 : vec4<f32> = u_xlat9;
        let x_1064 : vec4<f32> = u_xlat13;
        let x_1066 : vec3<f32> = (vec3<f32>(x_1062.x, x_1062.z, x_1062.w) / vec3<f32>(x_1064.z, x_1064.w, x_1064.y));
        let x_1067 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1066.x, x_1066.y, x_1066.z, x_1067.w);
        let x_1069 : vec4<f32> = u_xlat9;
        let x_1075 : vec3<f32> = (vec3<f32>(x_1069.x, x_1069.y, x_1069.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1076 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1075.x, x_1075.y, x_1075.z, x_1076.w);
        let x_1078 : vec4<f32> = u_xlat12;
        let x_1080 : vec4<f32> = u_xlat8;
        let x_1082 : vec3<f32> = (vec3<f32>(x_1078.z, x_1078.y, x_1078.w) / vec3<f32>(x_1080.x, x_1080.y, x_1080.z));
        let x_1083 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1082.x, x_1082.y, x_1082.z, x_1083.w);
        let x_1085 : vec4<f32> = u_xlat10;
        let x_1087 : vec3<f32> = (vec3<f32>(x_1085.x, x_1085.y, x_1085.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1088 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1087.x, x_1087.y, x_1087.z, x_1088.w);
        let x_1090 : vec4<f32> = u_xlat9;
        let x_1093 : vec4<f32> = x_816.x_MainLightShadowmapSize;
        let x_1095 : vec3<f32> = (vec3<f32>(x_1090.y, x_1090.x, x_1090.z) * vec3<f32>(x_1093.x, x_1093.x, x_1093.x));
        let x_1096 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1095.x, x_1095.y, x_1095.z, x_1096.w);
        let x_1098 : vec4<f32> = u_xlat10;
        let x_1101 : vec4<f32> = x_816.x_MainLightShadowmapSize;
        let x_1103 : vec3<f32> = (vec3<f32>(x_1098.x, x_1098.y, x_1098.z) * vec3<f32>(x_1101.y, x_1101.y, x_1101.y));
        let x_1104 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1103.x, x_1103.y, x_1103.z, x_1104.w);
        let x_1107 : f32 = u_xlat10.x;
        u_xlat9.w = x_1107;
        let x_1109 : vec4<f32> = u_xlat7;
        let x_1112 : vec4<f32> = x_816.x_MainLightShadowmapSize;
        let x_1115 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1109.x, x_1109.y, x_1109.x, x_1109.y) * vec4<f32>(x_1112.x, x_1112.y, x_1112.x, x_1112.y)) + vec4<f32>(x_1115.y, x_1115.w, x_1115.x, x_1115.w));
        let x_1118 : vec4<f32> = u_xlat7;
        let x_1121 : vec4<f32> = x_816.x_MainLightShadowmapSize;
        let x_1124 : vec4<f32> = u_xlat9;
        u_xlat49 = ((vec2<f32>(x_1118.x, x_1118.y) * vec2<f32>(x_1121.x, x_1121.y)) + vec2<f32>(x_1124.z, x_1124.w));
        let x_1128 : f32 = u_xlat9.y;
        u_xlat10.w = x_1128;
        let x_1130 : vec4<f32> = u_xlat10;
        let x_1131 : vec2<f32> = vec2<f32>(x_1130.y, x_1130.z);
        let x_1132 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1132.x, x_1131.x, x_1132.z, x_1131.y);
        let x_1134 : vec4<f32> = u_xlat7;
        let x_1137 : vec4<f32> = x_816.x_MainLightShadowmapSize;
        let x_1140 : vec4<f32> = u_xlat9;
        u_xlat12 = ((vec4<f32>(x_1134.x, x_1134.y, x_1134.x, x_1134.y) * vec4<f32>(x_1137.x, x_1137.y, x_1137.x, x_1137.y)) + vec4<f32>(x_1140.x, x_1140.y, x_1140.z, x_1140.y));
        let x_1143 : vec4<f32> = u_xlat7;
        let x_1146 : vec4<f32> = x_816.x_MainLightShadowmapSize;
        let x_1149 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_1143.x, x_1143.y, x_1143.x, x_1143.y) * vec4<f32>(x_1146.x, x_1146.y, x_1146.x, x_1146.y)) + vec4<f32>(x_1149.w, x_1149.y, x_1149.w, x_1149.z));
        let x_1152 : vec4<f32> = u_xlat7;
        let x_1155 : vec4<f32> = x_816.x_MainLightShadowmapSize;
        let x_1158 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1152.x, x_1152.y, x_1152.x, x_1152.y) * vec4<f32>(x_1155.x, x_1155.y, x_1155.x, x_1155.y)) + vec4<f32>(x_1158.x, x_1158.w, x_1158.z, x_1158.w));
        let x_1162 : vec4<f32> = u_xlat8;
        let x_1164 : vec4<f32> = u_xlat13;
        u_xlat14 = (vec4<f32>(x_1162.x, x_1162.x, x_1162.x, x_1162.y) * vec4<f32>(x_1164.z, x_1164.w, x_1164.y, x_1164.z));
        let x_1168 : vec4<f32> = u_xlat8;
        let x_1170 : vec4<f32> = u_xlat13;
        u_xlat15 = (vec4<f32>(x_1168.y, x_1168.y, x_1168.z, x_1168.z) * x_1170);
        let x_1174 : f32 = u_xlat8.z;
        let x_1176 : f32 = u_xlat13.y;
        u_xlat67 = (x_1174 * x_1176);
        let x_1179 : vec4<f32> = u_xlat11;
        let x_1180 : vec2<f32> = vec2<f32>(x_1179.x, x_1179.y);
        let x_1182 : f32 = vs_TEXCOORD8.z;
        txVec4 = vec3<f32>(x_1180.x, x_1180.y, x_1182);
        let x_1190 : vec3<f32> = txVec4;
        let x_1192 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1190.xy, x_1190.z);
        u_xlat68 = x_1192;
        let x_1194 : vec4<f32> = u_xlat11;
        let x_1195 : vec2<f32> = vec2<f32>(x_1194.z, x_1194.w);
        let x_1197 : f32 = vs_TEXCOORD8.z;
        txVec5 = vec3<f32>(x_1195.x, x_1195.y, x_1197);
        let x_1205 : vec3<f32> = txVec5;
        let x_1207 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1205.xy, x_1205.z);
        u_xlat69 = x_1207;
        let x_1208 : f32 = u_xlat69;
        let x_1210 : f32 = u_xlat14.y;
        u_xlat69 = (x_1208 * x_1210);
        let x_1213 : f32 = u_xlat14.x;
        let x_1214 : f32 = u_xlat68;
        let x_1216 : f32 = u_xlat69;
        u_xlat68 = ((x_1213 * x_1214) + x_1216);
        let x_1219 : vec2<f32> = u_xlat49;
        let x_1221 : f32 = vs_TEXCOORD8.z;
        txVec6 = vec3<f32>(x_1219.x, x_1219.y, x_1221);
        let x_1228 : vec3<f32> = txVec6;
        let x_1230 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1228.xy, x_1228.z);
        u_xlat69 = x_1230;
        let x_1232 : f32 = u_xlat14.z;
        let x_1233 : f32 = u_xlat69;
        let x_1235 : f32 = u_xlat68;
        u_xlat68 = ((x_1232 * x_1233) + x_1235);
        let x_1238 : vec4<f32> = u_xlat10;
        let x_1239 : vec2<f32> = vec2<f32>(x_1238.x, x_1238.y);
        let x_1241 : f32 = vs_TEXCOORD8.z;
        txVec7 = vec3<f32>(x_1239.x, x_1239.y, x_1241);
        let x_1248 : vec3<f32> = txVec7;
        let x_1250 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1248.xy, x_1248.z);
        u_xlat69 = x_1250;
        let x_1252 : f32 = u_xlat14.w;
        let x_1253 : f32 = u_xlat69;
        let x_1255 : f32 = u_xlat68;
        u_xlat68 = ((x_1252 * x_1253) + x_1255);
        let x_1258 : vec4<f32> = u_xlat12;
        let x_1259 : vec2<f32> = vec2<f32>(x_1258.x, x_1258.y);
        let x_1261 : f32 = vs_TEXCOORD8.z;
        txVec8 = vec3<f32>(x_1259.x, x_1259.y, x_1261);
        let x_1268 : vec3<f32> = txVec8;
        let x_1270 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1268.xy, x_1268.z);
        u_xlat69 = x_1270;
        let x_1272 : f32 = u_xlat15.x;
        let x_1273 : f32 = u_xlat69;
        let x_1275 : f32 = u_xlat68;
        u_xlat68 = ((x_1272 * x_1273) + x_1275);
        let x_1278 : vec4<f32> = u_xlat12;
        let x_1279 : vec2<f32> = vec2<f32>(x_1278.z, x_1278.w);
        let x_1281 : f32 = vs_TEXCOORD8.z;
        txVec9 = vec3<f32>(x_1279.x, x_1279.y, x_1281);
        let x_1288 : vec3<f32> = txVec9;
        let x_1290 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1288.xy, x_1288.z);
        u_xlat69 = x_1290;
        let x_1292 : f32 = u_xlat15.y;
        let x_1293 : f32 = u_xlat69;
        let x_1295 : f32 = u_xlat68;
        u_xlat68 = ((x_1292 * x_1293) + x_1295);
        let x_1298 : vec4<f32> = u_xlat10;
        let x_1299 : vec2<f32> = vec2<f32>(x_1298.z, x_1298.w);
        let x_1301 : f32 = vs_TEXCOORD8.z;
        txVec10 = vec3<f32>(x_1299.x, x_1299.y, x_1301);
        let x_1308 : vec3<f32> = txVec10;
        let x_1310 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1308.xy, x_1308.z);
        u_xlat69 = x_1310;
        let x_1312 : f32 = u_xlat15.z;
        let x_1313 : f32 = u_xlat69;
        let x_1315 : f32 = u_xlat68;
        u_xlat68 = ((x_1312 * x_1313) + x_1315);
        let x_1318 : vec4<f32> = u_xlat9;
        let x_1319 : vec2<f32> = vec2<f32>(x_1318.x, x_1318.y);
        let x_1321 : f32 = vs_TEXCOORD8.z;
        txVec11 = vec3<f32>(x_1319.x, x_1319.y, x_1321);
        let x_1328 : vec3<f32> = txVec11;
        let x_1330 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1328.xy, x_1328.z);
        u_xlat69 = x_1330;
        let x_1332 : f32 = u_xlat15.w;
        let x_1333 : f32 = u_xlat69;
        let x_1335 : f32 = u_xlat68;
        u_xlat68 = ((x_1332 * x_1333) + x_1335);
        let x_1338 : vec4<f32> = u_xlat9;
        let x_1339 : vec2<f32> = vec2<f32>(x_1338.z, x_1338.w);
        let x_1341 : f32 = vs_TEXCOORD8.z;
        txVec12 = vec3<f32>(x_1339.x, x_1339.y, x_1341);
        let x_1348 : vec3<f32> = txVec12;
        let x_1350 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1348.xy, x_1348.z);
        u_xlat69 = x_1350;
        let x_1351 : f32 = u_xlat67;
        let x_1352 : f32 = u_xlat69;
        let x_1354 : f32 = u_xlat68;
        u_xlat4.x = ((x_1351 * x_1352) + x_1354);
      } else {
        let x_1358 : vec4<f32> = vs_TEXCOORD8;
        let x_1361 : vec4<f32> = x_816.x_MainLightShadowmapSize;
        let x_1364 : vec2<f32> = ((vec2<f32>(x_1358.x, x_1358.y) * vec2<f32>(x_1361.z, x_1361.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1365 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1364.x, x_1364.y, x_1365.z, x_1365.w);
        let x_1367 : vec4<f32> = u_xlat7;
        let x_1369 : vec2<f32> = floor(vec2<f32>(x_1367.x, x_1367.y));
        let x_1370 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1369.x, x_1369.y, x_1370.z, x_1370.w);
        let x_1372 : vec4<f32> = vs_TEXCOORD8;
        let x_1375 : vec4<f32> = x_816.x_MainLightShadowmapSize;
        let x_1378 : vec4<f32> = u_xlat7;
        u_xlat49 = ((vec2<f32>(x_1372.x, x_1372.y) * vec2<f32>(x_1375.z, x_1375.w)) + -(vec2<f32>(x_1378.x, x_1378.y)));
        let x_1382 : vec2<f32> = u_xlat49;
        u_xlat8 = (vec4<f32>(x_1382.x, x_1382.x, x_1382.y, x_1382.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1385 : vec4<f32> = u_xlat8;
        let x_1387 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1385.x, x_1385.x, x_1385.z, x_1385.z) * vec4<f32>(x_1387.x, x_1387.x, x_1387.z, x_1387.z));
        let x_1390 : vec4<f32> = u_xlat9;
        let x_1394 : vec2<f32> = (vec2<f32>(x_1390.y, x_1390.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1395 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1395.x, x_1394.x, x_1395.z, x_1394.y);
        let x_1397 : vec4<f32> = u_xlat9;
        let x_1400 : vec2<f32> = u_xlat49;
        let x_1402 : vec2<f32> = ((vec2<f32>(x_1397.x, x_1397.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1400));
        let x_1403 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1402.x, x_1403.y, x_1402.y, x_1403.w);
        let x_1405 : vec2<f32> = u_xlat49;
        let x_1407 : vec2<f32> = (-(x_1405) + vec2<f32>(1.0f, 1.0f));
        let x_1408 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1407.x, x_1407.y, x_1408.z, x_1408.w);
        let x_1410 : vec2<f32> = u_xlat49;
        u_xlat51 = min(x_1410, vec2<f32>(0.0f, 0.0f));
        let x_1412 : vec2<f32> = u_xlat51;
        let x_1414 : vec2<f32> = u_xlat51;
        let x_1416 : vec4<f32> = u_xlat9;
        let x_1418 : vec2<f32> = ((-(x_1412) * x_1414) + vec2<f32>(x_1416.x, x_1416.y));
        let x_1419 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1418.x, x_1418.y, x_1419.z, x_1419.w);
        let x_1421 : vec2<f32> = u_xlat49;
        u_xlat51 = max(x_1421, vec2<f32>(0.0f, 0.0f));
        let x_1424 : vec2<f32> = u_xlat51;
        let x_1426 : vec2<f32> = u_xlat51;
        let x_1428 : vec4<f32> = u_xlat8;
        let x_1430 : vec2<f32> = ((-(x_1424) * x_1426) + vec2<f32>(x_1428.y, x_1428.w));
        let x_1431 : vec3<f32> = u_xlat29;
        u_xlat29 = vec3<f32>(x_1430.x, x_1431.y, x_1430.y);
        let x_1433 : vec4<f32> = u_xlat9;
        let x_1436 : vec2<f32> = (vec2<f32>(x_1433.x, x_1433.y) + vec2<f32>(2.0f, 2.0f));
        let x_1437 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1436.x, x_1436.y, x_1437.z, x_1437.w);
        let x_1439 : vec3<f32> = u_xlat29;
        let x_1441 : vec2<f32> = (vec2<f32>(x_1439.x, x_1439.z) + vec2<f32>(2.0f, 2.0f));
        let x_1442 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1442.x, x_1441.x, x_1442.z, x_1441.y);
        let x_1445 : f32 = u_xlat8.y;
        u_xlat11.z = (x_1445 * 0.081632003f);
        let x_1449 : vec4<f32> = u_xlat8;
        let x_1452 : vec3<f32> = (vec3<f32>(x_1449.z, x_1449.x, x_1449.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_1453 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1452.x, x_1452.y, x_1452.z, x_1453.w);
        let x_1455 : vec4<f32> = u_xlat9;
        let x_1458 : vec2<f32> = (vec2<f32>(x_1455.x, x_1455.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1459 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1458.x, x_1458.y, x_1459.z, x_1459.w);
        let x_1462 : f32 = u_xlat12.y;
        u_xlat11.x = x_1462;
        let x_1464 : vec2<f32> = u_xlat49;
        let x_1471 : vec2<f32> = ((vec2<f32>(x_1464.x, x_1464.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1472 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1472.x, x_1471.x, x_1472.z, x_1471.y);
        let x_1474 : vec2<f32> = u_xlat49;
        let x_1478 : vec2<f32> = ((vec2<f32>(x_1474.x, x_1474.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1479 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1478.x, x_1479.y, x_1478.y, x_1479.w);
        let x_1482 : f32 = u_xlat8.x;
        u_xlat9.y = x_1482;
        let x_1485 : f32 = u_xlat10.y;
        u_xlat9.w = x_1485;
        let x_1487 : vec4<f32> = u_xlat9;
        let x_1488 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_1487 + x_1488);
        let x_1490 : vec2<f32> = u_xlat49;
        let x_1493 : vec2<f32> = ((vec2<f32>(x_1490.y, x_1490.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1494 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1494.x, x_1493.x, x_1494.z, x_1493.y);
        let x_1496 : vec2<f32> = u_xlat49;
        let x_1499 : vec2<f32> = ((vec2<f32>(x_1496.y, x_1496.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1500 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1499.x, x_1500.y, x_1499.y, x_1500.w);
        let x_1503 : f32 = u_xlat8.y;
        u_xlat10.y = x_1503;
        let x_1505 : vec4<f32> = u_xlat10;
        let x_1506 : vec4<f32> = u_xlat12;
        u_xlat8 = (x_1505 + x_1506);
        let x_1508 : vec4<f32> = u_xlat9;
        let x_1509 : vec4<f32> = u_xlat11;
        u_xlat9 = (x_1508 / x_1509);
        let x_1511 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1511 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1517 : vec4<f32> = u_xlat10;
        let x_1518 : vec4<f32> = u_xlat8;
        u_xlat10 = (x_1517 / x_1518);
        let x_1520 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1520 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1522 : vec4<f32> = u_xlat9;
        let x_1525 : vec4<f32> = x_816.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1522.w, x_1522.x, x_1522.y, x_1522.z) * vec4<f32>(x_1525.x, x_1525.x, x_1525.x, x_1525.x));
        let x_1528 : vec4<f32> = u_xlat10;
        let x_1531 : vec4<f32> = x_816.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1528.x, x_1528.w, x_1528.y, x_1528.z) * vec4<f32>(x_1531.y, x_1531.y, x_1531.y, x_1531.y));
        let x_1534 : vec4<f32> = u_xlat9;
        let x_1535 : vec3<f32> = vec3<f32>(x_1534.y, x_1534.z, x_1534.w);
        let x_1536 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1535.x, x_1536.y, x_1535.y, x_1535.z);
        let x_1539 : f32 = u_xlat10.x;
        u_xlat12.y = x_1539;
        let x_1541 : vec4<f32> = u_xlat7;
        let x_1544 : vec4<f32> = x_816.x_MainLightShadowmapSize;
        let x_1547 : vec4<f32> = u_xlat12;
        u_xlat13 = ((vec4<f32>(x_1541.x, x_1541.y, x_1541.x, x_1541.y) * vec4<f32>(x_1544.x, x_1544.y, x_1544.x, x_1544.y)) + vec4<f32>(x_1547.x, x_1547.y, x_1547.z, x_1547.y));
        let x_1550 : vec4<f32> = u_xlat7;
        let x_1553 : vec4<f32> = x_816.x_MainLightShadowmapSize;
        let x_1556 : vec4<f32> = u_xlat12;
        u_xlat49 = ((vec2<f32>(x_1550.x, x_1550.y) * vec2<f32>(x_1553.x, x_1553.y)) + vec2<f32>(x_1556.w, x_1556.y));
        let x_1560 : f32 = u_xlat12.y;
        u_xlat9.y = x_1560;
        let x_1563 : f32 = u_xlat10.z;
        u_xlat12.y = x_1563;
        let x_1565 : vec4<f32> = u_xlat7;
        let x_1568 : vec4<f32> = x_816.x_MainLightShadowmapSize;
        let x_1571 : vec4<f32> = u_xlat12;
        u_xlat14 = ((vec4<f32>(x_1565.x, x_1565.y, x_1565.x, x_1565.y) * vec4<f32>(x_1568.x, x_1568.y, x_1568.x, x_1568.y)) + vec4<f32>(x_1571.x, x_1571.y, x_1571.z, x_1571.y));
        let x_1574 : vec4<f32> = u_xlat7;
        let x_1577 : vec4<f32> = x_816.x_MainLightShadowmapSize;
        let x_1580 : vec4<f32> = u_xlat12;
        let x_1582 : vec2<f32> = ((vec2<f32>(x_1574.x, x_1574.y) * vec2<f32>(x_1577.x, x_1577.y)) + vec2<f32>(x_1580.w, x_1580.y));
        let x_1583 : vec4<f32> = u_xlat15;
        u_xlat15 = vec4<f32>(x_1582.x, x_1582.y, x_1583.z, x_1583.w);
        let x_1586 : f32 = u_xlat12.y;
        u_xlat9.z = x_1586;
        let x_1589 : vec4<f32> = u_xlat7;
        let x_1592 : vec4<f32> = x_816.x_MainLightShadowmapSize;
        let x_1595 : vec4<f32> = u_xlat9;
        u_xlat16 = ((vec4<f32>(x_1589.x, x_1589.y, x_1589.x, x_1589.y) * vec4<f32>(x_1592.x, x_1592.y, x_1592.x, x_1592.y)) + vec4<f32>(x_1595.x, x_1595.y, x_1595.x, x_1595.z));
        let x_1599 : f32 = u_xlat10.w;
        u_xlat12.y = x_1599;
        let x_1602 : vec4<f32> = u_xlat7;
        let x_1605 : vec4<f32> = x_816.x_MainLightShadowmapSize;
        let x_1608 : vec4<f32> = u_xlat12;
        u_xlat17 = ((vec4<f32>(x_1602.x, x_1602.y, x_1602.x, x_1602.y) * vec4<f32>(x_1605.x, x_1605.y, x_1605.x, x_1605.y)) + vec4<f32>(x_1608.x, x_1608.y, x_1608.z, x_1608.y));
        let x_1612 : vec4<f32> = u_xlat7;
        let x_1615 : vec4<f32> = x_816.x_MainLightShadowmapSize;
        let x_1618 : vec4<f32> = u_xlat12;
        u_xlat30 = ((vec2<f32>(x_1612.x, x_1612.y) * vec2<f32>(x_1615.x, x_1615.y)) + vec2<f32>(x_1618.w, x_1618.y));
        let x_1622 : f32 = u_xlat12.y;
        u_xlat9.w = x_1622;
        let x_1625 : vec4<f32> = u_xlat7;
        let x_1628 : vec4<f32> = x_816.x_MainLightShadowmapSize;
        let x_1631 : vec4<f32> = u_xlat9;
        u_xlat57 = ((vec2<f32>(x_1625.x, x_1625.y) * vec2<f32>(x_1628.x, x_1628.y)) + vec2<f32>(x_1631.x, x_1631.w));
        let x_1634 : vec4<f32> = u_xlat12;
        let x_1635 : vec3<f32> = vec3<f32>(x_1634.x, x_1634.z, x_1634.w);
        let x_1636 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1635.x, x_1636.y, x_1635.y, x_1635.z);
        let x_1638 : vec4<f32> = u_xlat7;
        let x_1641 : vec4<f32> = x_816.x_MainLightShadowmapSize;
        let x_1644 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1638.x, x_1638.y, x_1638.x, x_1638.y) * vec4<f32>(x_1641.x, x_1641.y, x_1641.x, x_1641.y)) + vec4<f32>(x_1644.x, x_1644.y, x_1644.z, x_1644.y));
        let x_1648 : vec4<f32> = u_xlat7;
        let x_1651 : vec4<f32> = x_816.x_MainLightShadowmapSize;
        let x_1654 : vec4<f32> = u_xlat10;
        u_xlat52 = ((vec2<f32>(x_1648.x, x_1648.y) * vec2<f32>(x_1651.x, x_1651.y)) + vec2<f32>(x_1654.w, x_1654.y));
        let x_1658 : f32 = u_xlat9.x;
        u_xlat10.x = x_1658;
        let x_1660 : vec4<f32> = u_xlat7;
        let x_1663 : vec4<f32> = x_816.x_MainLightShadowmapSize;
        let x_1666 : vec4<f32> = u_xlat10;
        let x_1668 : vec2<f32> = ((vec2<f32>(x_1660.x, x_1660.y) * vec2<f32>(x_1663.x, x_1663.y)) + vec2<f32>(x_1666.x, x_1666.y));
        let x_1669 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1668.x, x_1668.y, x_1669.z, x_1669.w);
        let x_1672 : vec4<f32> = u_xlat8;
        let x_1674 : vec4<f32> = u_xlat11;
        u_xlat18 = (vec4<f32>(x_1672.x, x_1672.x, x_1672.x, x_1672.x) * x_1674);
        let x_1677 : vec4<f32> = u_xlat8;
        let x_1679 : vec4<f32> = u_xlat11;
        u_xlat19 = (vec4<f32>(x_1677.y, x_1677.y, x_1677.y, x_1677.y) * x_1679);
        let x_1682 : vec4<f32> = u_xlat8;
        let x_1684 : vec4<f32> = u_xlat11;
        u_xlat20 = (vec4<f32>(x_1682.z, x_1682.z, x_1682.z, x_1682.z) * x_1684);
        let x_1686 : vec4<f32> = u_xlat8;
        let x_1688 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_1686.w, x_1686.w, x_1686.w, x_1686.w) * x_1688);
        let x_1691 : vec4<f32> = u_xlat13;
        let x_1692 : vec2<f32> = vec2<f32>(x_1691.x, x_1691.y);
        let x_1694 : f32 = vs_TEXCOORD8.z;
        txVec13 = vec3<f32>(x_1692.x, x_1692.y, x_1694);
        let x_1701 : vec3<f32> = txVec13;
        let x_1703 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1701.xy, x_1701.z);
        u_xlat67 = x_1703;
        let x_1705 : vec4<f32> = u_xlat13;
        let x_1706 : vec2<f32> = vec2<f32>(x_1705.z, x_1705.w);
        let x_1708 : f32 = vs_TEXCOORD8.z;
        txVec14 = vec3<f32>(x_1706.x, x_1706.y, x_1708);
        let x_1715 : vec3<f32> = txVec14;
        let x_1717 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1715.xy, x_1715.z);
        u_xlat68 = x_1717;
        let x_1718 : f32 = u_xlat68;
        let x_1720 : f32 = u_xlat18.y;
        u_xlat68 = (x_1718 * x_1720);
        let x_1723 : f32 = u_xlat18.x;
        let x_1724 : f32 = u_xlat67;
        let x_1726 : f32 = u_xlat68;
        u_xlat67 = ((x_1723 * x_1724) + x_1726);
        let x_1729 : vec2<f32> = u_xlat49;
        let x_1731 : f32 = vs_TEXCOORD8.z;
        txVec15 = vec3<f32>(x_1729.x, x_1729.y, x_1731);
        let x_1738 : vec3<f32> = txVec15;
        let x_1740 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1738.xy, x_1738.z);
        u_xlat68 = x_1740;
        let x_1742 : f32 = u_xlat18.z;
        let x_1743 : f32 = u_xlat68;
        let x_1745 : f32 = u_xlat67;
        u_xlat67 = ((x_1742 * x_1743) + x_1745);
        let x_1748 : vec4<f32> = u_xlat16;
        let x_1749 : vec2<f32> = vec2<f32>(x_1748.x, x_1748.y);
        let x_1751 : f32 = vs_TEXCOORD8.z;
        txVec16 = vec3<f32>(x_1749.x, x_1749.y, x_1751);
        let x_1758 : vec3<f32> = txVec16;
        let x_1760 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1758.xy, x_1758.z);
        u_xlat68 = x_1760;
        let x_1762 : f32 = u_xlat18.w;
        let x_1763 : f32 = u_xlat68;
        let x_1765 : f32 = u_xlat67;
        u_xlat67 = ((x_1762 * x_1763) + x_1765);
        let x_1768 : vec4<f32> = u_xlat14;
        let x_1769 : vec2<f32> = vec2<f32>(x_1768.x, x_1768.y);
        let x_1771 : f32 = vs_TEXCOORD8.z;
        txVec17 = vec3<f32>(x_1769.x, x_1769.y, x_1771);
        let x_1778 : vec3<f32> = txVec17;
        let x_1780 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1778.xy, x_1778.z);
        u_xlat68 = x_1780;
        let x_1782 : f32 = u_xlat19.x;
        let x_1783 : f32 = u_xlat68;
        let x_1785 : f32 = u_xlat67;
        u_xlat67 = ((x_1782 * x_1783) + x_1785);
        let x_1788 : vec4<f32> = u_xlat14;
        let x_1789 : vec2<f32> = vec2<f32>(x_1788.z, x_1788.w);
        let x_1791 : f32 = vs_TEXCOORD8.z;
        txVec18 = vec3<f32>(x_1789.x, x_1789.y, x_1791);
        let x_1798 : vec3<f32> = txVec18;
        let x_1800 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1798.xy, x_1798.z);
        u_xlat68 = x_1800;
        let x_1802 : f32 = u_xlat19.y;
        let x_1803 : f32 = u_xlat68;
        let x_1805 : f32 = u_xlat67;
        u_xlat67 = ((x_1802 * x_1803) + x_1805);
        let x_1808 : vec4<f32> = u_xlat15;
        let x_1809 : vec2<f32> = vec2<f32>(x_1808.x, x_1808.y);
        let x_1811 : f32 = vs_TEXCOORD8.z;
        txVec19 = vec3<f32>(x_1809.x, x_1809.y, x_1811);
        let x_1818 : vec3<f32> = txVec19;
        let x_1820 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1818.xy, x_1818.z);
        u_xlat68 = x_1820;
        let x_1822 : f32 = u_xlat19.z;
        let x_1823 : f32 = u_xlat68;
        let x_1825 : f32 = u_xlat67;
        u_xlat67 = ((x_1822 * x_1823) + x_1825);
        let x_1828 : vec4<f32> = u_xlat16;
        let x_1829 : vec2<f32> = vec2<f32>(x_1828.z, x_1828.w);
        let x_1831 : f32 = vs_TEXCOORD8.z;
        txVec20 = vec3<f32>(x_1829.x, x_1829.y, x_1831);
        let x_1838 : vec3<f32> = txVec20;
        let x_1840 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1838.xy, x_1838.z);
        u_xlat68 = x_1840;
        let x_1842 : f32 = u_xlat19.w;
        let x_1843 : f32 = u_xlat68;
        let x_1845 : f32 = u_xlat67;
        u_xlat67 = ((x_1842 * x_1843) + x_1845);
        let x_1848 : vec4<f32> = u_xlat17;
        let x_1849 : vec2<f32> = vec2<f32>(x_1848.x, x_1848.y);
        let x_1851 : f32 = vs_TEXCOORD8.z;
        txVec21 = vec3<f32>(x_1849.x, x_1849.y, x_1851);
        let x_1858 : vec3<f32> = txVec21;
        let x_1860 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1858.xy, x_1858.z);
        u_xlat68 = x_1860;
        let x_1862 : f32 = u_xlat20.x;
        let x_1863 : f32 = u_xlat68;
        let x_1865 : f32 = u_xlat67;
        u_xlat67 = ((x_1862 * x_1863) + x_1865);
        let x_1868 : vec4<f32> = u_xlat17;
        let x_1869 : vec2<f32> = vec2<f32>(x_1868.z, x_1868.w);
        let x_1871 : f32 = vs_TEXCOORD8.z;
        txVec22 = vec3<f32>(x_1869.x, x_1869.y, x_1871);
        let x_1878 : vec3<f32> = txVec22;
        let x_1880 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1878.xy, x_1878.z);
        u_xlat68 = x_1880;
        let x_1882 : f32 = u_xlat20.y;
        let x_1883 : f32 = u_xlat68;
        let x_1885 : f32 = u_xlat67;
        u_xlat67 = ((x_1882 * x_1883) + x_1885);
        let x_1888 : vec2<f32> = u_xlat30;
        let x_1890 : f32 = vs_TEXCOORD8.z;
        txVec23 = vec3<f32>(x_1888.x, x_1888.y, x_1890);
        let x_1897 : vec3<f32> = txVec23;
        let x_1899 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1897.xy, x_1897.z);
        u_xlat68 = x_1899;
        let x_1901 : f32 = u_xlat20.z;
        let x_1902 : f32 = u_xlat68;
        let x_1904 : f32 = u_xlat67;
        u_xlat67 = ((x_1901 * x_1902) + x_1904);
        let x_1907 : vec2<f32> = u_xlat57;
        let x_1909 : f32 = vs_TEXCOORD8.z;
        txVec24 = vec3<f32>(x_1907.x, x_1907.y, x_1909);
        let x_1916 : vec3<f32> = txVec24;
        let x_1918 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1916.xy, x_1916.z);
        u_xlat68 = x_1918;
        let x_1920 : f32 = u_xlat20.w;
        let x_1921 : f32 = u_xlat68;
        let x_1923 : f32 = u_xlat67;
        u_xlat67 = ((x_1920 * x_1921) + x_1923);
        let x_1926 : vec4<f32> = u_xlat12;
        let x_1927 : vec2<f32> = vec2<f32>(x_1926.x, x_1926.y);
        let x_1929 : f32 = vs_TEXCOORD8.z;
        txVec25 = vec3<f32>(x_1927.x, x_1927.y, x_1929);
        let x_1936 : vec3<f32> = txVec25;
        let x_1938 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1936.xy, x_1936.z);
        u_xlat68 = x_1938;
        let x_1940 : f32 = u_xlat8.x;
        let x_1941 : f32 = u_xlat68;
        let x_1943 : f32 = u_xlat67;
        u_xlat67 = ((x_1940 * x_1941) + x_1943);
        let x_1946 : vec4<f32> = u_xlat12;
        let x_1947 : vec2<f32> = vec2<f32>(x_1946.z, x_1946.w);
        let x_1949 : f32 = vs_TEXCOORD8.z;
        txVec26 = vec3<f32>(x_1947.x, x_1947.y, x_1949);
        let x_1956 : vec3<f32> = txVec26;
        let x_1958 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1956.xy, x_1956.z);
        u_xlat68 = x_1958;
        let x_1960 : f32 = u_xlat8.y;
        let x_1961 : f32 = u_xlat68;
        let x_1963 : f32 = u_xlat67;
        u_xlat67 = ((x_1960 * x_1961) + x_1963);
        let x_1966 : vec2<f32> = u_xlat52;
        let x_1968 : f32 = vs_TEXCOORD8.z;
        txVec27 = vec3<f32>(x_1966.x, x_1966.y, x_1968);
        let x_1975 : vec3<f32> = txVec27;
        let x_1977 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1975.xy, x_1975.z);
        u_xlat68 = x_1977;
        let x_1979 : f32 = u_xlat8.z;
        let x_1980 : f32 = u_xlat68;
        let x_1982 : f32 = u_xlat67;
        u_xlat67 = ((x_1979 * x_1980) + x_1982);
        let x_1985 : vec4<f32> = u_xlat7;
        let x_1986 : vec2<f32> = vec2<f32>(x_1985.x, x_1985.y);
        let x_1988 : f32 = vs_TEXCOORD8.z;
        txVec28 = vec3<f32>(x_1986.x, x_1986.y, x_1988);
        let x_1995 : vec3<f32> = txVec28;
        let x_1997 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1995.xy, x_1995.z);
        u_xlat68 = x_1997;
        let x_1999 : f32 = u_xlat8.w;
        let x_2000 : f32 = u_xlat68;
        let x_2002 : f32 = u_xlat67;
        u_xlat4.x = ((x_1999 * x_2000) + x_2002);
      }
    }
  } else {
    let x_2007 : vec4<f32> = vs_TEXCOORD8;
    let x_2008 : vec2<f32> = vec2<f32>(x_2007.x, x_2007.y);
    let x_2010 : f32 = vs_TEXCOORD8.z;
    txVec29 = vec3<f32>(x_2008.x, x_2008.y, x_2010);
    let x_2017 : vec3<f32> = txVec29;
    let x_2019 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2017.xy, x_2017.z);
    u_xlat4.x = x_2019;
  }
  let x_2022 : f32 = x_816.x_MainLightShadowParams.x;
  u_xlat67 = (-(x_2022) + 1.0f);
  let x_2026 : f32 = u_xlat4.x;
  let x_2028 : f32 = x_816.x_MainLightShadowParams.x;
  let x_2030 : f32 = u_xlat67;
  u_xlat4.x = ((x_2026 * x_2028) + x_2030);
  let x_2034 : f32 = vs_TEXCOORD8.z;
  u_xlatb67 = (0.0f >= x_2034);
  let x_2038 : f32 = vs_TEXCOORD8.z;
  u_xlatb68 = (x_2038 >= 1.0f);
  let x_2040 : bool = u_xlatb67;
  let x_2041 : bool = u_xlatb68;
  u_xlatb67 = (x_2040 | x_2041);
  let x_2043 : bool = u_xlatb67;
  if (x_2043) {
    x_2044 = 1.0f;
  } else {
    let x_2049 : f32 = u_xlat4.x;
    x_2044 = x_2049;
  }
  let x_2050 : f32 = x_2044;
  u_xlat4.x = x_2050;
  let x_2052 : vec3<f32> = vs_TEXCOORD7;
  let x_2054 : vec3<f32> = x_128.x_WorldSpaceCameraPos;
  let x_2056 : vec3<f32> = (x_2052 + -(x_2054));
  let x_2057 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2056.x, x_2056.y, x_2056.z, x_2057.w);
  let x_2059 : vec4<f32> = u_xlat7;
  let x_2061 : vec4<f32> = u_xlat7;
  u_xlat67 = dot(vec3<f32>(x_2059.x, x_2059.y, x_2059.z), vec3<f32>(x_2061.x, x_2061.y, x_2061.z));
  let x_2064 : f32 = u_xlat67;
  let x_2066 : f32 = x_816.x_MainLightShadowParams.z;
  let x_2069 : f32 = x_816.x_MainLightShadowParams.w;
  u_xlat67 = ((x_2064 * x_2066) + x_2069);
  let x_2071 : f32 = u_xlat67;
  u_xlat67 = clamp(x_2071, 0.0f, 1.0f);
  let x_2074 : f32 = u_xlat4.x;
  u_xlat68 = (-(x_2074) + 1.0f);
  let x_2077 : f32 = u_xlat67;
  let x_2078 : f32 = u_xlat68;
  let x_2081 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_2077 * x_2078) + x_2081);
  let x_2084 : f32 = u_xlat46;
  let x_2087 : vec4<f32> = x_128.x_MainLightColor;
  let x_2089 : vec3<f32> = (vec3<f32>(x_2084, x_2084, x_2084) * vec3<f32>(x_2087.x, x_2087.y, x_2087.z));
  let x_2090 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2089.x, x_2089.y, x_2089.z, x_2090.w);
  let x_2092 : vec4<f32> = u_xlat1;
  let x_2095 : vec4<f32> = u_xlat2;
  u_xlat67 = dot(-(vec3<f32>(x_2092.x, x_2092.y, x_2092.z)), vec3<f32>(x_2095.x, x_2095.y, x_2095.z));
  let x_2098 : f32 = u_xlat67;
  let x_2099 : f32 = u_xlat67;
  u_xlat67 = (x_2098 + x_2099);
  let x_2101 : vec4<f32> = u_xlat2;
  let x_2103 : f32 = u_xlat67;
  let x_2107 : vec4<f32> = u_xlat1;
  let x_2110 : vec3<f32> = ((vec3<f32>(x_2101.x, x_2101.y, x_2101.z) * -(vec3<f32>(x_2103, x_2103, x_2103))) + -(vec3<f32>(x_2107.x, x_2107.y, x_2107.z)));
  let x_2111 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2110.x, x_2110.y, x_2110.z, x_2111.w);
  let x_2113 : vec4<f32> = u_xlat2;
  let x_2115 : vec4<f32> = u_xlat1;
  u_xlat67 = dot(vec3<f32>(x_2113.x, x_2113.y, x_2113.z), vec3<f32>(x_2115.x, x_2115.y, x_2115.z));
  let x_2118 : f32 = u_xlat67;
  u_xlat67 = clamp(x_2118, 0.0f, 1.0f);
  let x_2120 : f32 = u_xlat67;
  u_xlat67 = (-(x_2120) + 1.0f);
  let x_2123 : f32 = u_xlat67;
  let x_2124 : f32 = u_xlat67;
  u_xlat67 = (x_2123 * x_2124);
  let x_2126 : f32 = u_xlat67;
  let x_2127 : f32 = u_xlat67;
  u_xlat67 = (x_2126 * x_2127);
  let x_2130 : f32 = u_xlat0.x;
  u_xlat68 = ((-(x_2130) * 0.699999988f) + 1.700000048f);
  let x_2137 : f32 = u_xlat0.x;
  let x_2138 : f32 = u_xlat68;
  u_xlat0.x = (x_2137 * x_2138);
  let x_2142 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2142 * 6.0f);
  let x_2154 : vec4<f32> = u_xlat8;
  let x_2157 : f32 = u_xlat0.x;
  let x_2158 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2154.x, x_2154.y, x_2154.z), x_2157);
  u_xlat8 = x_2158;
  let x_2160 : f32 = u_xlat8.w;
  u_xlat0.x = (x_2160 + -1.0f);
  let x_2164 : f32 = x_623.unity_SpecCube0_HDR.w;
  let x_2166 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_2164 * x_2166) + 1.0f);
  let x_2171 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2171, 0.0f);
  let x_2175 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_2175);
  let x_2179 : f32 = u_xlat0.x;
  let x_2181 : f32 = x_623.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_2179 * x_2181);
  let x_2185 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_2185);
  let x_2189 : f32 = u_xlat0.x;
  let x_2191 : f32 = x_623.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_2189 * x_2191);
  let x_2194 : vec4<f32> = u_xlat8;
  let x_2196 : vec3<f32> = u_xlat0;
  let x_2198 : vec3<f32> = (vec3<f32>(x_2194.x, x_2194.y, x_2194.z) * vec3<f32>(x_2196.x, x_2196.x, x_2196.x));
  let x_2199 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2198.x, x_2198.y, x_2198.z, x_2199.w);
  let x_2201 : f32 = u_xlat42;
  let x_2203 : f32 = u_xlat42;
  let x_2207 : vec2<f32> = ((vec2<f32>(x_2201, x_2201) * vec2<f32>(x_2203, x_2203)) + vec2<f32>(-1.0f, 1.0f));
  let x_2208 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_2207.x, x_2208.y, x_2207.y);
  let x_2211 : f32 = u_xlat0.z;
  u_xlat42 = (1.0f / x_2211);
  let x_2213 : vec4<f32> = u_xlat5;
  let x_2216 : f32 = u_xlat66;
  let x_2218 : vec3<f32> = (-(vec3<f32>(x_2213.x, x_2213.y, x_2213.z)) + vec3<f32>(x_2216, x_2216, x_2216));
  let x_2219 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2218.x, x_2218.y, x_2218.z, x_2219.w);
  let x_2221 : f32 = u_xlat67;
  let x_2223 : vec4<f32> = u_xlat9;
  let x_2226 : vec4<f32> = u_xlat5;
  let x_2228 : vec3<f32> = ((vec3<f32>(x_2221, x_2221, x_2221) * vec3<f32>(x_2223.x, x_2223.y, x_2223.z)) + vec3<f32>(x_2226.x, x_2226.y, x_2226.z));
  let x_2229 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2228.x, x_2228.y, x_2228.z, x_2229.w);
  let x_2231 : f32 = u_xlat42;
  let x_2233 : vec4<f32> = u_xlat9;
  let x_2235 : vec3<f32> = (vec3<f32>(x_2231, x_2231, x_2231) * vec3<f32>(x_2233.x, x_2233.y, x_2233.z));
  let x_2236 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2235.x, x_2235.y, x_2235.z, x_2236.w);
  let x_2238 : vec4<f32> = u_xlat8;
  let x_2240 : vec4<f32> = u_xlat9;
  let x_2242 : vec3<f32> = (vec3<f32>(x_2238.x, x_2238.y, x_2238.z) * vec3<f32>(x_2240.x, x_2240.y, x_2240.z));
  let x_2243 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2242.x, x_2242.y, x_2242.z, x_2243.w);
  let x_2245 : vec4<f32> = u_xlat3;
  let x_2247 : vec4<f32> = u_xlat6;
  let x_2250 : vec4<f32> = u_xlat8;
  let x_2252 : vec3<f32> = ((vec3<f32>(x_2245.x, x_2245.y, x_2245.z) * vec3<f32>(x_2247.x, x_2247.y, x_2247.z)) + vec3<f32>(x_2250.x, x_2250.y, x_2250.z));
  let x_2253 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2252.x, x_2252.y, x_2252.z, x_2253.w);
  let x_2256 : f32 = u_xlat4.x;
  let x_2258 : f32 = x_623.unity_LightData.z;
  u_xlat42 = (x_2256 * x_2258);
  let x_2260 : vec4<f32> = u_xlat2;
  let x_2263 : vec4<f32> = x_128.x_MainLightPosition;
  u_xlat66 = dot(vec3<f32>(x_2260.x, x_2260.y, x_2260.z), vec3<f32>(x_2263.x, x_2263.y, x_2263.z));
  let x_2266 : f32 = u_xlat66;
  u_xlat66 = clamp(x_2266, 0.0f, 1.0f);
  let x_2268 : f32 = u_xlat42;
  let x_2269 : f32 = u_xlat66;
  u_xlat42 = (x_2268 * x_2269);
  let x_2271 : f32 = u_xlat42;
  let x_2273 : vec4<f32> = u_xlat7;
  let x_2275 : vec3<f32> = (vec3<f32>(x_2271, x_2271, x_2271) * vec3<f32>(x_2273.x, x_2273.y, x_2273.z));
  let x_2276 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2275.x, x_2275.y, x_2275.z, x_2276.w);
  let x_2278 : vec4<f32> = u_xlat1;
  let x_2281 : vec4<f32> = x_128.x_MainLightPosition;
  let x_2283 : vec3<f32> = (vec3<f32>(x_2278.x, x_2278.y, x_2278.z) + vec3<f32>(x_2281.x, x_2281.y, x_2281.z));
  let x_2284 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2283.x, x_2283.y, x_2283.z, x_2284.w);
  let x_2286 : vec4<f32> = u_xlat8;
  let x_2288 : vec4<f32> = u_xlat8;
  u_xlat42 = dot(vec3<f32>(x_2286.x, x_2286.y, x_2286.z), vec3<f32>(x_2288.x, x_2288.y, x_2288.z));
  let x_2291 : f32 = u_xlat42;
  u_xlat42 = max(x_2291, 1.17549435e-37f);
  let x_2294 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_2294);
  let x_2296 : f32 = u_xlat42;
  let x_2298 : vec4<f32> = u_xlat8;
  let x_2300 : vec3<f32> = (vec3<f32>(x_2296, x_2296, x_2296) * vec3<f32>(x_2298.x, x_2298.y, x_2298.z));
  let x_2301 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2300.x, x_2300.y, x_2300.z, x_2301.w);
  let x_2303 : vec4<f32> = u_xlat2;
  let x_2305 : vec4<f32> = u_xlat8;
  u_xlat42 = dot(vec3<f32>(x_2303.x, x_2303.y, x_2303.z), vec3<f32>(x_2305.x, x_2305.y, x_2305.z));
  let x_2308 : f32 = u_xlat42;
  u_xlat42 = clamp(x_2308, 0.0f, 1.0f);
  let x_2311 : vec4<f32> = x_128.x_MainLightPosition;
  let x_2313 : vec4<f32> = u_xlat8;
  u_xlat66 = dot(vec3<f32>(x_2311.x, x_2311.y, x_2311.z), vec3<f32>(x_2313.x, x_2313.y, x_2313.z));
  let x_2316 : f32 = u_xlat66;
  u_xlat66 = clamp(x_2316, 0.0f, 1.0f);
  let x_2318 : f32 = u_xlat42;
  let x_2319 : f32 = u_xlat42;
  u_xlat42 = (x_2318 * x_2319);
  let x_2321 : f32 = u_xlat42;
  let x_2323 : f32 = u_xlat0.x;
  u_xlat42 = ((x_2321 * x_2323) + 1.000010014f);
  let x_2327 : f32 = u_xlat66;
  let x_2328 : f32 = u_xlat66;
  u_xlat66 = (x_2327 * x_2328);
  let x_2330 : f32 = u_xlat42;
  let x_2331 : f32 = u_xlat42;
  u_xlat42 = (x_2330 * x_2331);
  let x_2333 : f32 = u_xlat66;
  u_xlat66 = max(x_2333, 0.100000001f);
  let x_2336 : f32 = u_xlat42;
  let x_2337 : f32 = u_xlat66;
  u_xlat42 = (x_2336 * x_2337);
  let x_2339 : f32 = u_xlat25;
  let x_2340 : f32 = u_xlat42;
  u_xlat42 = (x_2339 * x_2340);
  let x_2342 : f32 = u_xlat65;
  let x_2343 : f32 = u_xlat42;
  u_xlat42 = (x_2342 / x_2343);
  let x_2345 : vec4<f32> = u_xlat5;
  let x_2347 : f32 = u_xlat42;
  let x_2350 : vec4<f32> = u_xlat6;
  let x_2352 : vec3<f32> = ((vec3<f32>(x_2345.x, x_2345.y, x_2345.z) * vec3<f32>(x_2347, x_2347, x_2347)) + vec3<f32>(x_2350.x, x_2350.y, x_2350.z));
  let x_2353 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2352.x, x_2352.y, x_2352.z, x_2353.w);
  let x_2355 : vec4<f32> = u_xlat7;
  let x_2357 : vec4<f32> = u_xlat8;
  let x_2359 : vec3<f32> = (vec3<f32>(x_2355.x, x_2355.y, x_2355.z) * vec3<f32>(x_2357.x, x_2357.y, x_2357.z));
  let x_2360 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2359.x, x_2359.y, x_2359.z, x_2360.w);
  let x_2363 : f32 = x_128.x_AdditionalLightsCount.x;
  let x_2365 : f32 = x_623.unity_LightData.y;
  u_xlat42 = min(x_2363, x_2365);
  let x_2369 : f32 = u_xlat42;
  u_xlatu42 = bitcast<u32>(i32(x_2369));
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2381 : u32 = u_xlatu_loop_1;
    let x_2382 : u32 = u_xlatu42;
    if ((x_2381 < x_2382)) {
    } else {
      break;
    }
    let x_2385 : u32 = u_xlatu_loop_1;
    u_xlatu4 = (x_2385 >> 2u);
    let x_2389 : u32 = u_xlatu_loop_1;
    u_xlati67 = bitcast<i32>((x_2389 & 3u));
    let x_2392 : u32 = u_xlatu4;
    let x_2395 : vec4<f32> = x_623.unity_LightIndices[bitcast<i32>(x_2392)];
    let x_2405 : i32 = u_xlati67;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2410 : vec4<u32> = indexable[x_2405];
    u_xlat4.x = dot(x_2395, bitcast<vec4<f32>>(x_2410));
    let x_2416 : f32 = u_xlat4.x;
    u_xlati4 = i32(x_2416);
    let x_2418 : vec3<f32> = vs_TEXCOORD7;
    let x_2430 : i32 = u_xlati4;
    let x_2432 : vec4<f32> = x_2429.x_AdditionalLightsPosition[x_2430];
    let x_2435 : i32 = u_xlati4;
    let x_2437 : vec4<f32> = x_2429.x_AdditionalLightsPosition[x_2435];
    let x_2439 : vec3<f32> = ((-(x_2418) * vec3<f32>(x_2432.w, x_2432.w, x_2432.w)) + vec3<f32>(x_2437.x, x_2437.y, x_2437.z));
    let x_2440 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2439.x, x_2439.y, x_2439.z, x_2440.w);
    let x_2442 : vec4<f32> = u_xlat9;
    let x_2444 : vec4<f32> = u_xlat9;
    u_xlat67 = dot(vec3<f32>(x_2442.x, x_2442.y, x_2442.z), vec3<f32>(x_2444.x, x_2444.y, x_2444.z));
    let x_2447 : f32 = u_xlat67;
    u_xlat67 = max(x_2447, 6.10351562e-05f);
    let x_2449 : f32 = u_xlat67;
    u_xlat68 = inverseSqrt(x_2449);
    let x_2451 : f32 = u_xlat68;
    let x_2453 : vec4<f32> = u_xlat9;
    let x_2455 : vec3<f32> = (vec3<f32>(x_2451, x_2451, x_2451) * vec3<f32>(x_2453.x, x_2453.y, x_2453.z));
    let x_2456 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2455.x, x_2455.y, x_2455.z, x_2456.w);
    let x_2458 : f32 = u_xlat67;
    u_xlat69 = (1.0f / x_2458);
    let x_2460 : f32 = u_xlat67;
    let x_2461 : i32 = u_xlati4;
    let x_2463 : f32 = x_2429.x_AdditionalLightsAttenuation[x_2461].x;
    u_xlat67 = (x_2460 * x_2463);
    let x_2465 : f32 = u_xlat67;
    let x_2467 : f32 = u_xlat67;
    u_xlat67 = ((-(x_2465) * x_2467) + 1.0f);
    let x_2470 : f32 = u_xlat67;
    u_xlat67 = max(x_2470, 0.0f);
    let x_2472 : f32 = u_xlat67;
    let x_2473 : f32 = u_xlat67;
    u_xlat67 = (x_2472 * x_2473);
    let x_2475 : f32 = u_xlat67;
    let x_2476 : f32 = u_xlat69;
    u_xlat67 = (x_2475 * x_2476);
    let x_2478 : i32 = u_xlati4;
    let x_2480 : vec4<f32> = x_2429.x_AdditionalLightsSpotDir[x_2478];
    let x_2482 : vec4<f32> = u_xlat10;
    u_xlat69 = dot(vec3<f32>(x_2480.x, x_2480.y, x_2480.z), vec3<f32>(x_2482.x, x_2482.y, x_2482.z));
    let x_2485 : f32 = u_xlat69;
    let x_2486 : i32 = u_xlati4;
    let x_2488 : f32 = x_2429.x_AdditionalLightsAttenuation[x_2486].z;
    let x_2490 : i32 = u_xlati4;
    let x_2492 : f32 = x_2429.x_AdditionalLightsAttenuation[x_2490].w;
    u_xlat69 = ((x_2485 * x_2488) + x_2492);
    let x_2494 : f32 = u_xlat69;
    u_xlat69 = clamp(x_2494, 0.0f, 1.0f);
    let x_2496 : f32 = u_xlat69;
    let x_2497 : f32 = u_xlat69;
    u_xlat69 = (x_2496 * x_2497);
    let x_2499 : f32 = u_xlat67;
    let x_2500 : f32 = u_xlat69;
    u_xlat67 = (x_2499 * x_2500);
    let x_2502 : f32 = u_xlat46;
    let x_2504 : i32 = u_xlati4;
    let x_2506 : vec4<f32> = x_2429.x_AdditionalLightsColor[x_2504];
    let x_2508 : vec3<f32> = (vec3<f32>(x_2502, x_2502, x_2502) * vec3<f32>(x_2506.x, x_2506.y, x_2506.z));
    let x_2509 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2508.x, x_2508.y, x_2508.z, x_2509.w);
    let x_2511 : vec4<f32> = u_xlat2;
    let x_2513 : vec4<f32> = u_xlat10;
    u_xlat4.x = dot(vec3<f32>(x_2511.x, x_2511.y, x_2511.z), vec3<f32>(x_2513.x, x_2513.y, x_2513.z));
    let x_2518 : f32 = u_xlat4.x;
    u_xlat4.x = clamp(x_2518, 0.0f, 1.0f);
    let x_2522 : f32 = u_xlat4.x;
    let x_2523 : f32 = u_xlat67;
    u_xlat4.x = (x_2522 * x_2523);
    let x_2526 : vec4<f32> = u_xlat4;
    let x_2528 : vec4<f32> = u_xlat11;
    let x_2530 : vec3<f32> = (vec3<f32>(x_2526.x, x_2526.x, x_2526.x) * vec3<f32>(x_2528.x, x_2528.y, x_2528.z));
    let x_2531 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2530.x, x_2530.y, x_2530.z, x_2531.w);
    let x_2533 : vec4<f32> = u_xlat9;
    let x_2535 : f32 = u_xlat68;
    let x_2538 : vec4<f32> = u_xlat1;
    let x_2540 : vec3<f32> = ((vec3<f32>(x_2533.x, x_2533.y, x_2533.z) * vec3<f32>(x_2535, x_2535, x_2535)) + vec3<f32>(x_2538.x, x_2538.y, x_2538.z));
    let x_2541 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2540.x, x_2540.y, x_2540.z, x_2541.w);
    let x_2543 : vec4<f32> = u_xlat9;
    let x_2545 : vec4<f32> = u_xlat9;
    u_xlat4.x = dot(vec3<f32>(x_2543.x, x_2543.y, x_2543.z), vec3<f32>(x_2545.x, x_2545.y, x_2545.z));
    let x_2550 : f32 = u_xlat4.x;
    u_xlat4.x = max(x_2550, 1.17549435e-37f);
    let x_2554 : f32 = u_xlat4.x;
    u_xlat4.x = inverseSqrt(x_2554);
    let x_2557 : vec4<f32> = u_xlat4;
    let x_2559 : vec4<f32> = u_xlat9;
    let x_2561 : vec3<f32> = (vec3<f32>(x_2557.x, x_2557.x, x_2557.x) * vec3<f32>(x_2559.x, x_2559.y, x_2559.z));
    let x_2562 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2561.x, x_2561.y, x_2561.z, x_2562.w);
    let x_2564 : vec4<f32> = u_xlat2;
    let x_2566 : vec4<f32> = u_xlat9;
    u_xlat4.x = dot(vec3<f32>(x_2564.x, x_2564.y, x_2564.z), vec3<f32>(x_2566.x, x_2566.y, x_2566.z));
    let x_2571 : f32 = u_xlat4.x;
    u_xlat4.x = clamp(x_2571, 0.0f, 1.0f);
    let x_2574 : vec4<f32> = u_xlat10;
    let x_2576 : vec4<f32> = u_xlat9;
    u_xlat4.w = dot(vec3<f32>(x_2574.x, x_2574.y, x_2574.z), vec3<f32>(x_2576.x, x_2576.y, x_2576.z));
    let x_2581 : f32 = u_xlat4.w;
    u_xlat4.w = clamp(x_2581, 0.0f, 1.0f);
    let x_2584 : vec4<f32> = u_xlat4;
    let x_2586 : vec4<f32> = u_xlat4;
    let x_2588 : vec2<f32> = (vec2<f32>(x_2584.x, x_2584.w) * vec2<f32>(x_2586.x, x_2586.w));
    let x_2589 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_2588.x, x_2589.y, x_2589.z, x_2588.y);
    let x_2592 : f32 = u_xlat4.x;
    let x_2594 : f32 = u_xlat0.x;
    u_xlat4.x = ((x_2592 * x_2594) + 1.000010014f);
    let x_2599 : f32 = u_xlat4.x;
    let x_2601 : f32 = u_xlat4.x;
    u_xlat4.x = (x_2599 * x_2601);
    let x_2605 : f32 = u_xlat4.w;
    u_xlat67 = max(x_2605, 0.100000001f);
    let x_2607 : f32 = u_xlat67;
    let x_2609 : f32 = u_xlat4.x;
    u_xlat4.x = (x_2607 * x_2609);
    let x_2612 : f32 = u_xlat25;
    let x_2614 : f32 = u_xlat4.x;
    u_xlat4.x = (x_2612 * x_2614);
    let x_2617 : f32 = u_xlat65;
    let x_2619 : f32 = u_xlat4.x;
    u_xlat4.x = (x_2617 / x_2619);
    let x_2622 : vec4<f32> = u_xlat5;
    let x_2624 : vec4<f32> = u_xlat4;
    let x_2627 : vec4<f32> = u_xlat6;
    let x_2629 : vec3<f32> = ((vec3<f32>(x_2622.x, x_2622.y, x_2622.z) * vec3<f32>(x_2624.x, x_2624.x, x_2624.x)) + vec3<f32>(x_2627.x, x_2627.y, x_2627.z));
    let x_2630 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2629.x, x_2629.y, x_2629.z, x_2630.w);
    let x_2632 : vec4<f32> = u_xlat9;
    let x_2634 : vec4<f32> = u_xlat11;
    let x_2637 : vec4<f32> = u_xlat8;
    let x_2639 : vec3<f32> = ((vec3<f32>(x_2632.x, x_2632.y, x_2632.z) * vec3<f32>(x_2634.x, x_2634.y, x_2634.z)) + vec3<f32>(x_2637.x, x_2637.y, x_2637.z));
    let x_2640 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2639.x, x_2639.y, x_2639.z, x_2640.w);

    continuing {
      let x_2642 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2642 + bitcast<u32>(1i));
    }
  }
  let x_2644 : vec4<f32> = u_xlat3;
  let x_2646 : f32 = u_xlat21;
  let x_2649 : vec4<f32> = u_xlat7;
  u_xlat0 = ((vec3<f32>(x_2644.x, x_2644.y, x_2644.z) * vec3<f32>(x_2646, x_2646, x_2646)) + vec3<f32>(x_2649.x, x_2649.y, x_2649.z));
  let x_2652 : vec4<f32> = u_xlat8;
  let x_2654 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_2652.x, x_2652.y, x_2652.z) + x_2654);
  let x_2656 : f32 = u_xlat64;
  let x_2657 : f32 = u_xlat64;
  u_xlat1.x = (x_2656 * -(x_2657));
  let x_2662 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_2662);
  let x_2665 : vec3<f32> = u_xlat0;
  let x_2666 : f32 = u_xlat63;
  let x_2670 : vec4<f32> = x_128.unity_FogColor;
  u_xlat0 = ((x_2665 * vec3<f32>(x_2666, x_2666, x_2666)) + -(vec3<f32>(x_2670.x, x_2670.y, x_2670.z)));
  let x_2676 : vec4<f32> = u_xlat1;
  let x_2678 : vec3<f32> = u_xlat0;
  let x_2681 : vec4<f32> = x_128.unity_FogColor;
  let x_2683 : vec3<f32> = ((vec3<f32>(x_2676.x, x_2676.x, x_2676.x) * x_2678) + vec3<f32>(x_2681.x, x_2681.y, x_2681.z));
  let x_2684 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2683.x, x_2683.y, x_2683.z, x_2684.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(4) vs_TEXCOORD7_param : vec3<f32>, @location(3) vs_TEXCOORD3_param : vec3<f32>, @location(5) vs_TEXCOORD8_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD8 = vs_TEXCOORD8_param;
  main_1();
  return main_out(SV_Target0);
}

