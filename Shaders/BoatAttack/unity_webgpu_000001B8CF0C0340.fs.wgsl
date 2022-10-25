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

@group(1) @binding(4) var<uniform> x_600 : MainLightShadows;

@group(1) @binding(2) var<uniform> x_821 : UnityPerDraw;

@group(0) @binding(6) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(7) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(12) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_2643 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat66 : f32;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlatb67 : bool;
  var u_xlat11 : vec4<f32>;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec4<f32>;
  var u_xlat67 : f32;
  var u_xlatb68 : bool;
  var u_xlat44 : f32;
  var u_xlat22 : f32;
  var u_xlatb1 : bool;
  var u_xlat23 : vec3<f32>;
  var x_573 : vec3<f32>;
  var u_xlatb3 : vec4<bool>;
  var u_xlatu67 : u32;
  var u_xlati67 : i32;
  var u_xlat68 : f32;
  var u_xlat69 : f32;
  var u_xlat70 : f32;
  var u_xlat71 : f32;
  var u_xlatb71 : bool;
  var txVec0 : vec3<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var u_xlatb28 : bool;
  var u_xlat28 : vec3<f32>;
  var u_xlat52 : vec2<f32>;
  var u_xlat54 : vec2<f32>;
  var u_xlat14 : vec4<f32>;
  var u_xlat15 : vec4<f32>;
  var u_xlat16 : vec4<f32>;
  var txVec4 : vec3<f32>;
  var u_xlat50 : f32;
  var txVec5 : vec3<f32>;
  var u_xlat72 : f32;
  var txVec6 : vec3<f32>;
  var txVec7 : vec3<f32>;
  var txVec8 : vec3<f32>;
  var txVec9 : vec3<f32>;
  var txVec10 : vec3<f32>;
  var txVec11 : vec3<f32>;
  var txVec12 : vec3<f32>;
  var u_xlat58 : vec2<f32>;
  var u_xlat17 : vec4<f32>;
  var u_xlat31 : vec3<f32>;
  var u_xlat18 : vec2<f32>;
  var u_xlat55 : vec2<f32>;
  var u_xlat19 : vec4<f32>;
  var u_xlat20 : vec4<f32>;
  var u_xlat21 : vec4<f32>;
  var txVec13 : vec3<f32>;
  var txVec14 : vec3<f32>;
  var u_xlat73 : f32;
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
  var u_xlatb25 : bool;
  var u_xlatb47 : bool;
  var x_2258 : f32;
  var u_xlat25 : f32;
  var u_xlat47 : f32;
  var u_xlatu0 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu68 : u32;
  var u_xlati71 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati68 : i32;
  var u_xlat74 : f32;
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
  u_xlat66 = dot(x_137, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
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
  u_xlatb67 = (4.0f >= x_220);
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
  let x_282 : bool = u_xlatb67;
  let x_283 : vec4<f32> = u_xlat11;
  let x_284 : vec4<f32> = u_xlat4;
  u_xlat4 = select(x_284, x_283, vec4<bool>(x_282, x_282, x_282, x_282));
  let x_289 : vec4<f32> = u_xlat4;
  u_xlat67 = dot(x_289, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_293 : f32 = u_xlat67;
  u_xlatb68 = (0.005f >= x_293);
  let x_295 : bool = u_xlatb68;
  if (((select(0i, 1i, x_295) * -1i) != 0i)) {
    discard;
  }
  let x_304 : f32 = u_xlat67;
  u_xlat67 = (x_304 + 6.10351562e-05f);
  let x_307 : vec4<f32> = u_xlat4;
  let x_308 : f32 = u_xlat67;
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
  let x_381 : f32 = x_30.x_MaskMapRemapScale0.y;
  u_xlat6.x = x_381;
  let x_384 : f32 = x_30.x_MaskMapRemapScale1.y;
  u_xlat6.y = x_384;
  let x_387 : f32 = x_30.x_MaskMapRemapScale2.y;
  u_xlat6.z = x_387;
  let x_390 : f32 = x_30.x_MaskMapRemapScale3.y;
  u_xlat6.w = x_390;
  let x_393 : f32 = x_30.x_MaskMapRemapOffset0.y;
  u_xlat7.x = x_393;
  let x_396 : f32 = x_30.x_MaskMapRemapOffset1.y;
  u_xlat7.y = x_396;
  let x_399 : f32 = x_30.x_MaskMapRemapOffset2.y;
  u_xlat7.z = x_399;
  let x_402 : f32 = x_30.x_MaskMapRemapOffset3.y;
  u_xlat7.w = x_402;
  let x_404 : vec4<f32> = u_xlat6;
  let x_405 : vec4<f32> = u_xlat7;
  u_xlat6 = (x_404 + x_405);
  let x_408 : f32 = u_xlat0.z;
  u_xlat7.x = x_408;
  let x_411 : f32 = u_xlat1.z;
  u_xlat7.y = x_411;
  let x_414 : f32 = u_xlat2.z;
  u_xlat7.z = x_414;
  let x_417 : f32 = u_xlat3.y;
  u_xlat7.w = x_417;
  let x_419 : vec4<f32> = u_xlat9;
  let x_422 : f32 = x_30.x_Smoothness0;
  let x_424 : f32 = x_30.x_Smoothness1;
  let x_426 : f32 = x_30.x_Smoothness2;
  let x_428 : f32 = x_30.x_Smoothness3;
  let x_431 : vec4<f32> = u_xlat7;
  u_xlat7 = ((-(x_419) * vec4<f32>(x_422, x_424, x_426, x_428)) + x_431);
  let x_435 : f32 = x_30.x_LayerHasMask0;
  let x_438 : f32 = x_30.x_LayerHasMask1;
  let x_441 : f32 = x_30.x_LayerHasMask2;
  let x_444 : f32 = x_30.x_LayerHasMask3;
  let x_446 : vec4<f32> = u_xlat7;
  let x_448 : vec4<f32> = u_xlat10;
  u_xlat7 = ((vec4<f32>(x_435, x_438, x_441, x_444) * x_446) + x_448);
  let x_451 : vec4<f32> = u_xlat4;
  let x_452 : vec4<f32> = u_xlat7;
  u_xlat44 = dot(x_451, x_452);
  let x_455 : f32 = u_xlat0.x;
  u_xlat7.x = x_455;
  let x_458 : f32 = u_xlat1.x;
  u_xlat7.y = x_458;
  let x_461 : f32 = u_xlat2.x;
  u_xlat7.z = x_461;
  let x_464 : f32 = u_xlat3.x;
  u_xlat7.w = x_464;
  let x_466 : vec4<f32> = u_xlat7;
  let x_469 : f32 = x_30.x_Metallic0;
  let x_472 : f32 = x_30.x_Metallic1;
  let x_475 : f32 = x_30.x_Metallic2;
  let x_478 : f32 = x_30.x_Metallic3;
  u_xlat7 = (x_466 + -(vec4<f32>(x_469, x_472, x_475, x_478)));
  let x_483 : f32 = x_30.x_LayerHasMask0;
  let x_485 : f32 = x_30.x_LayerHasMask1;
  let x_487 : f32 = x_30.x_LayerHasMask2;
  let x_489 : f32 = x_30.x_LayerHasMask3;
  let x_491 : vec4<f32> = u_xlat7;
  let x_494 : f32 = x_30.x_Metallic0;
  let x_496 : f32 = x_30.x_Metallic1;
  let x_498 : f32 = x_30.x_Metallic2;
  let x_500 : f32 = x_30.x_Metallic3;
  u_xlat7 = ((vec4<f32>(x_483, x_485, x_487, x_489) * x_491) + vec4<f32>(x_494, x_496, x_498, x_500));
  let x_503 : vec4<f32> = u_xlat4;
  let x_504 : vec4<f32> = u_xlat7;
  u_xlat0.x = dot(x_503, x_504);
  let x_508 : f32 = u_xlat0.y;
  u_xlat3.x = x_508;
  let x_511 : f32 = u_xlat1.y;
  u_xlat3.y = x_511;
  let x_514 : f32 = u_xlat2.y;
  u_xlat3.z = x_514;
  let x_516 : vec4<f32> = u_xlat6;
  let x_518 : vec4<f32> = u_xlat3;
  u_xlat1 = (-(x_516) + x_518);
  let x_521 : f32 = x_30.x_LayerHasMask0;
  let x_523 : f32 = x_30.x_LayerHasMask1;
  let x_525 : f32 = x_30.x_LayerHasMask2;
  let x_527 : f32 = x_30.x_LayerHasMask3;
  let x_529 : vec4<f32> = u_xlat1;
  let x_531 : vec4<f32> = u_xlat6;
  u_xlat1 = ((vec4<f32>(x_521, x_523, x_525, x_527) * x_529) + x_531);
  let x_534 : vec4<f32> = u_xlat4;
  let x_535 : vec4<f32> = u_xlat1;
  u_xlat22 = dot(x_534, x_535);
  let x_539 : f32 = x_128.unity_OrthoParams.w;
  u_xlatb1 = (x_539 == 0.0f);
  let x_544 : vec3<f32> = vs_TEXCOORD7;
  let x_548 : vec3<f32> = x_128.x_WorldSpaceCameraPos;
  u_xlat23 = (-(x_544) + x_548);
  let x_550 : vec3<f32> = u_xlat23;
  let x_551 : vec3<f32> = u_xlat23;
  u_xlat2.x = dot(x_550, x_551);
  let x_555 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_555);
  let x_558 : vec3<f32> = u_xlat23;
  let x_559 : vec4<f32> = u_xlat2;
  u_xlat23 = (x_558 * vec3<f32>(x_559.x, x_559.x, x_559.x));
  let x_563 : f32 = x_128.unity_MatrixV[0i].z;
  u_xlat2.x = x_563;
  let x_566 : f32 = x_128.unity_MatrixV[1i].z;
  u_xlat2.y = x_566;
  let x_570 : f32 = x_128.unity_MatrixV[2i].z;
  u_xlat2.z = x_570;
  let x_572 : bool = u_xlatb1;
  if (x_572) {
    let x_576 : vec3<f32> = u_xlat23;
    x_573 = x_576;
  } else {
    let x_578 : vec4<f32> = u_xlat2;
    x_573 = vec3<f32>(x_578.x, x_578.y, x_578.z);
  }
  let x_580 : vec3<f32> = x_573;
  let x_581 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_580.x, x_580.y, x_580.z, x_581.w);
  let x_584 : vec3<f32> = vs_TEXCOORD3;
  let x_585 : vec3<f32> = vs_TEXCOORD3;
  u_xlat67 = dot(x_584, x_585);
  let x_587 : f32 = u_xlat67;
  u_xlat67 = inverseSqrt(x_587);
  let x_589 : f32 = u_xlat67;
  let x_591 : vec3<f32> = vs_TEXCOORD3;
  let x_592 : vec3<f32> = (vec3<f32>(x_589, x_589, x_589) * x_591);
  let x_593 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_592.x, x_592.y, x_592.z, x_593.w);
  let x_595 : vec3<f32> = vs_TEXCOORD7;
  let x_602 : vec4<f32> = x_600.x_CascadeShadowSplitSpheres0;
  let x_605 : vec3<f32> = (x_595 + -(vec3<f32>(x_602.x, x_602.y, x_602.z)));
  let x_606 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_605.x, x_605.y, x_605.z, x_606.w);
  let x_608 : vec3<f32> = vs_TEXCOORD7;
  let x_610 : vec4<f32> = x_600.x_CascadeShadowSplitSpheres1;
  let x_613 : vec3<f32> = (x_608 + -(vec3<f32>(x_610.x, x_610.y, x_610.z)));
  let x_614 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_613.x, x_613.y, x_613.z, x_614.w);
  let x_616 : vec3<f32> = vs_TEXCOORD7;
  let x_619 : vec4<f32> = x_600.x_CascadeShadowSplitSpheres2;
  let x_622 : vec3<f32> = (x_616 + -(vec3<f32>(x_619.x, x_619.y, x_619.z)));
  let x_623 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_622.x, x_622.y, x_622.z, x_623.w);
  let x_625 : vec3<f32> = vs_TEXCOORD7;
  let x_627 : vec4<f32> = x_600.x_CascadeShadowSplitSpheres3;
  let x_630 : vec3<f32> = (x_625 + -(vec3<f32>(x_627.x, x_627.y, x_627.z)));
  let x_631 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_630.x, x_630.y, x_630.z, x_631.w);
  let x_633 : vec4<f32> = u_xlat3;
  let x_635 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_633.x, x_633.y, x_633.z), vec3<f32>(x_635.x, x_635.y, x_635.z));
  let x_639 : vec4<f32> = u_xlat4;
  let x_641 : vec4<f32> = u_xlat4;
  u_xlat3.y = dot(vec3<f32>(x_639.x, x_639.y, x_639.z), vec3<f32>(x_641.x, x_641.y, x_641.z));
  let x_645 : vec4<f32> = u_xlat6;
  let x_647 : vec4<f32> = u_xlat6;
  u_xlat3.z = dot(vec3<f32>(x_645.x, x_645.y, x_645.z), vec3<f32>(x_647.x, x_647.y, x_647.z));
  let x_651 : vec4<f32> = u_xlat7;
  let x_653 : vec4<f32> = u_xlat7;
  u_xlat3.w = dot(vec3<f32>(x_651.x, x_651.y, x_651.z), vec3<f32>(x_653.x, x_653.y, x_653.z));
  let x_659 : vec4<f32> = u_xlat3;
  let x_661 : vec4<f32> = x_600.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_659 < x_661);
  let x_664 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_664);
  let x_668 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_668);
  let x_672 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_672);
  let x_676 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_676);
  let x_680 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_680);
  let x_685 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_685);
  let x_689 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_689);
  let x_692 : vec4<f32> = u_xlat3;
  let x_694 : vec4<f32> = u_xlat4;
  let x_696 : vec3<f32> = (vec3<f32>(x_692.x, x_692.y, x_692.z) + vec3<f32>(x_694.y, x_694.z, x_694.w));
  let x_697 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_696.x, x_696.y, x_696.z, x_697.w);
  let x_699 : vec4<f32> = u_xlat3;
  let x_702 : vec3<f32> = max(vec3<f32>(x_699.x, x_699.y, x_699.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_703 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_703.x, x_702.x, x_702.y, x_702.z);
  let x_705 : vec4<f32> = u_xlat4;
  u_xlat67 = dot(x_705, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_710 : f32 = u_xlat67;
  u_xlat67 = (-(x_710) + 4.0f);
  let x_715 : f32 = u_xlat67;
  u_xlatu67 = u32(x_715);
  let x_719 : u32 = u_xlatu67;
  u_xlati67 = (bitcast<i32>(x_719) << bitcast<u32>(2i));
  let x_722 : vec3<f32> = vs_TEXCOORD7;
  let x_724 : i32 = u_xlati67;
  let x_727 : i32 = u_xlati67;
  let x_731 : vec4<f32> = x_600.x_MainLightWorldToShadow[((x_724 + 1i) / 4i)][((x_727 + 1i) % 4i)];
  let x_733 : vec3<f32> = (vec3<f32>(x_722.y, x_722.y, x_722.y) * vec3<f32>(x_731.x, x_731.y, x_731.z));
  let x_734 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_733.x, x_733.y, x_733.z, x_734.w);
  let x_736 : i32 = u_xlati67;
  let x_738 : i32 = u_xlati67;
  let x_741 : vec4<f32> = x_600.x_MainLightWorldToShadow[(x_736 / 4i)][(x_738 % 4i)];
  let x_743 : vec3<f32> = vs_TEXCOORD7;
  let x_746 : vec4<f32> = u_xlat3;
  let x_748 : vec3<f32> = ((vec3<f32>(x_741.x, x_741.y, x_741.z) * vec3<f32>(x_743.x, x_743.x, x_743.x)) + vec3<f32>(x_746.x, x_746.y, x_746.z));
  let x_749 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_748.x, x_748.y, x_748.z, x_749.w);
  let x_751 : i32 = u_xlati67;
  let x_754 : i32 = u_xlati67;
  let x_758 : vec4<f32> = x_600.x_MainLightWorldToShadow[((x_751 + 2i) / 4i)][((x_754 + 2i) % 4i)];
  let x_760 : vec3<f32> = vs_TEXCOORD7;
  let x_763 : vec4<f32> = u_xlat3;
  let x_765 : vec3<f32> = ((vec3<f32>(x_758.x, x_758.y, x_758.z) * vec3<f32>(x_760.z, x_760.z, x_760.z)) + vec3<f32>(x_763.x, x_763.y, x_763.z));
  let x_766 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_765.x, x_765.y, x_765.z, x_766.w);
  let x_768 : vec4<f32> = u_xlat3;
  let x_770 : i32 = u_xlati67;
  let x_773 : i32 = u_xlati67;
  let x_777 : vec4<f32> = x_600.x_MainLightWorldToShadow[((x_770 + 3i) / 4i)][((x_773 + 3i) % 4i)];
  let x_779 : vec3<f32> = (vec3<f32>(x_768.x, x_768.y, x_768.z) + vec3<f32>(x_777.x, x_777.y, x_777.z));
  let x_780 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_779.x, x_779.y, x_779.z, x_780.w);
  let x_783 : f32 = vs_TEXCOORD7.y;
  let x_785 : f32 = x_128.unity_MatrixV[1i].z;
  u_xlat67 = (x_783 * x_785);
  let x_788 : f32 = x_128.unity_MatrixV[0i].z;
  let x_790 : f32 = vs_TEXCOORD7.x;
  let x_792 : f32 = u_xlat67;
  u_xlat67 = ((x_788 * x_790) + x_792);
  let x_795 : f32 = x_128.unity_MatrixV[2i].z;
  let x_797 : f32 = vs_TEXCOORD7.z;
  let x_799 : f32 = u_xlat67;
  u_xlat67 = ((x_795 * x_797) + x_799);
  let x_801 : f32 = u_xlat67;
  let x_803 : f32 = x_128.unity_MatrixV[3i].z;
  u_xlat67 = (x_801 + x_803);
  let x_805 : f32 = u_xlat67;
  let x_808 : f32 = x_128.x_ProjectionParams.y;
  u_xlat67 = (-(x_805) + -(x_808));
  let x_811 : f32 = u_xlat67;
  u_xlat67 = max(x_811, 0.0f);
  let x_813 : f32 = u_xlat67;
  let x_815 : f32 = x_128.unity_FogParams.x;
  u_xlat67 = (x_813 * x_815);
  u_xlat2.w = 1.0f;
  let x_823 : vec4<f32> = x_821.unity_SHAr;
  let x_824 : vec4<f32> = u_xlat2;
  u_xlat4.x = dot(x_823, x_824);
  let x_828 : vec4<f32> = x_821.unity_SHAg;
  let x_829 : vec4<f32> = u_xlat2;
  u_xlat4.y = dot(x_828, x_829);
  let x_833 : vec4<f32> = x_821.unity_SHAb;
  let x_834 : vec4<f32> = u_xlat2;
  u_xlat4.z = dot(x_833, x_834);
  let x_837 : vec4<f32> = u_xlat2;
  let x_839 : vec4<f32> = u_xlat2;
  u_xlat6 = (vec4<f32>(x_837.y, x_837.z, x_837.z, x_837.x) * vec4<f32>(x_839.x, x_839.y, x_839.z, x_839.z));
  let x_843 : vec4<f32> = x_821.unity_SHBr;
  let x_844 : vec4<f32> = u_xlat6;
  u_xlat7.x = dot(x_843, x_844);
  let x_848 : vec4<f32> = x_821.unity_SHBg;
  let x_849 : vec4<f32> = u_xlat6;
  u_xlat7.y = dot(x_848, x_849);
  let x_853 : vec4<f32> = x_821.unity_SHBb;
  let x_854 : vec4<f32> = u_xlat6;
  u_xlat7.z = dot(x_853, x_854);
  let x_859 : f32 = u_xlat2.y;
  let x_861 : f32 = u_xlat2.y;
  u_xlat68 = (x_859 * x_861);
  let x_864 : f32 = u_xlat2.x;
  let x_866 : f32 = u_xlat2.x;
  let x_868 : f32 = u_xlat68;
  u_xlat68 = ((x_864 * x_866) + -(x_868));
  let x_873 : vec4<f32> = x_821.unity_SHC;
  let x_875 : f32 = u_xlat68;
  let x_878 : vec4<f32> = u_xlat7;
  let x_880 : vec3<f32> = ((vec3<f32>(x_873.x, x_873.y, x_873.z) * vec3<f32>(x_875, x_875, x_875)) + vec3<f32>(x_878.x, x_878.y, x_878.z));
  let x_881 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_880.x, x_880.y, x_880.z, x_881.w);
  let x_883 : vec4<f32> = u_xlat4;
  let x_885 : vec4<f32> = u_xlat6;
  let x_887 : vec3<f32> = (vec3<f32>(x_883.x, x_883.y, x_883.z) + vec3<f32>(x_885.x, x_885.y, x_885.z));
  let x_888 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_887.x, x_887.y, x_887.z, x_888.w);
  let x_890 : vec4<f32> = u_xlat4;
  let x_892 : vec3<f32> = max(vec3<f32>(x_890.x, x_890.y, x_890.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_893 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_892.x, x_892.y, x_892.z, x_893.w);
  let x_897 : vec4<f32> = x_128.x_ScaledScreenParams;
  let x_898 : vec2<f32> = vec2<f32>(x_897.x, x_897.y);
  let x_902 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_898.x, x_898.y));
  let x_903 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_902.x, x_902.y, x_903.z, x_903.w);
  let x_905 : vec4<f32> = u_xlat6;
  let x_907 : vec4<f32> = hlslcc_FragCoord;
  let x_909 : vec2<f32> = (vec2<f32>(x_905.x, x_905.y) * vec2<f32>(x_907.x, x_907.y));
  let x_910 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_909.x, x_909.y, x_910.z, x_910.w);
  let x_913 : f32 = u_xlat6.y;
  let x_915 : f32 = x_128.x_ScaleBiasRt.x;
  let x_918 : f32 = x_128.x_ScaleBiasRt.y;
  u_xlat68 = ((x_913 * x_915) + x_918);
  let x_920 : f32 = u_xlat68;
  u_xlat6.z = (-(x_920) + 1.0f);
  let x_925 : f32 = u_xlat0.x;
  u_xlat68 = ((-(x_925) * 0.959999979f) + 0.959999979f);
  let x_931 : f32 = u_xlat68;
  u_xlat69 = (-(x_931) + 1.0f);
  let x_934 : f32 = u_xlat68;
  let x_936 : vec4<f32> = u_xlat5;
  let x_938 : vec3<f32> = (vec3<f32>(x_934, x_934, x_934) * vec3<f32>(x_936.x, x_936.y, x_936.z));
  let x_939 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_938.x, x_938.y, x_938.z, x_939.w);
  let x_941 : vec4<f32> = u_xlat5;
  let x_945 : vec3<f32> = (vec3<f32>(x_941.x, x_941.y, x_941.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_946 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_945.x, x_945.y, x_945.z, x_946.w);
  let x_948 : vec3<f32> = u_xlat0;
  let x_950 : vec4<f32> = u_xlat5;
  let x_955 : vec3<f32> = ((vec3<f32>(x_948.x, x_948.x, x_948.x) * vec3<f32>(x_950.x, x_950.y, x_950.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_956 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_955.x, x_955.y, x_955.z, x_956.w);
  let x_958 : f32 = u_xlat44;
  u_xlat0.x = (-(x_958) + 1.0f);
  let x_963 : f32 = u_xlat0.x;
  let x_965 : f32 = u_xlat0.x;
  u_xlat68 = (x_963 * x_965);
  let x_967 : f32 = u_xlat68;
  u_xlat68 = max(x_967, 0.0078125f);
  let x_971 : f32 = u_xlat68;
  let x_972 : f32 = u_xlat68;
  u_xlat70 = (x_971 * x_972);
  let x_974 : f32 = u_xlat44;
  let x_975 : f32 = u_xlat69;
  u_xlat44 = (x_974 + x_975);
  let x_977 : f32 = u_xlat44;
  u_xlat44 = clamp(x_977, 0.0f, 1.0f);
  let x_979 : f32 = u_xlat68;
  u_xlat69 = ((x_979 * 4.0f) + 2.0f);
  let x_988 : vec4<f32> = u_xlat6;
  let x_991 : f32 = x_128.x_GlobalMipBias.x;
  let x_992 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_988.x, x_988.z), x_991);
  u_xlat71 = x_992.x;
  let x_994 : f32 = u_xlat71;
  u_xlat6.x = (x_994 + -1.0f);
  let x_998 : f32 = x_128.x_AmbientOcclusionParam.w;
  let x_1000 : f32 = u_xlat6.x;
  u_xlat6.x = ((x_998 * x_1000) + 1.0f);
  let x_1004 : f32 = u_xlat22;
  let x_1005 : f32 = u_xlat71;
  u_xlat22 = min(x_1004, x_1005);
  let x_1009 : f32 = x_600.x_MainLightShadowParams.y;
  u_xlatb71 = (0.0f < x_1009);
  let x_1011 : bool = u_xlatb71;
  if (x_1011) {
    let x_1015 : f32 = x_600.x_MainLightShadowParams.y;
    u_xlatb71 = (x_1015 == 1.0f);
    let x_1017 : bool = u_xlatb71;
    if (x_1017) {
      let x_1020 : vec4<f32> = u_xlat3;
      let x_1023 : vec4<f32> = x_600.x_MainLightShadowOffset0;
      u_xlat8 = (vec4<f32>(x_1020.x, x_1020.y, x_1020.x, x_1020.y) + x_1023);
      let x_1026 : vec4<f32> = u_xlat8;
      let x_1027 : vec2<f32> = vec2<f32>(x_1026.x, x_1026.y);
      let x_1029 : f32 = u_xlat3.z;
      txVec0 = vec3<f32>(x_1027.x, x_1027.y, x_1029);
      let x_1041 : vec3<f32> = txVec0;
      let x_1043 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1041.xy, x_1041.z);
      u_xlat9.x = x_1043;
      let x_1046 : vec4<f32> = u_xlat8;
      let x_1047 : vec2<f32> = vec2<f32>(x_1046.z, x_1046.w);
      let x_1049 : f32 = u_xlat3.z;
      txVec1 = vec3<f32>(x_1047.x, x_1047.y, x_1049);
      let x_1056 : vec3<f32> = txVec1;
      let x_1058 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1056.xy, x_1056.z);
      u_xlat9.y = x_1058;
      let x_1060 : vec4<f32> = u_xlat3;
      let x_1063 : vec4<f32> = x_600.x_MainLightShadowOffset1;
      u_xlat8 = (vec4<f32>(x_1060.x, x_1060.y, x_1060.x, x_1060.y) + x_1063);
      let x_1066 : vec4<f32> = u_xlat8;
      let x_1067 : vec2<f32> = vec2<f32>(x_1066.x, x_1066.y);
      let x_1069 : f32 = u_xlat3.z;
      txVec2 = vec3<f32>(x_1067.x, x_1067.y, x_1069);
      let x_1076 : vec3<f32> = txVec2;
      let x_1078 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1076.xy, x_1076.z);
      u_xlat9.z = x_1078;
      let x_1081 : vec4<f32> = u_xlat8;
      let x_1082 : vec2<f32> = vec2<f32>(x_1081.z, x_1081.w);
      let x_1084 : f32 = u_xlat3.z;
      txVec3 = vec3<f32>(x_1082.x, x_1082.y, x_1084);
      let x_1091 : vec3<f32> = txVec3;
      let x_1093 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1091.xy, x_1091.z);
      u_xlat9.w = x_1093;
      let x_1095 : vec4<f32> = u_xlat9;
      u_xlat71 = dot(x_1095, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_1102 : f32 = x_600.x_MainLightShadowParams.y;
      u_xlatb28 = (x_1102 == 2.0f);
      let x_1104 : bool = u_xlatb28;
      if (x_1104) {
        let x_1108 : vec4<f32> = u_xlat3;
        let x_1111 : vec4<f32> = x_600.x_MainLightShadowmapSize;
        let x_1114 : vec2<f32> = ((vec2<f32>(x_1108.x, x_1108.y) * vec2<f32>(x_1111.z, x_1111.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1115 : vec3<f32> = u_xlat28;
        u_xlat28 = vec3<f32>(x_1114.x, x_1114.y, x_1115.z);
        let x_1117 : vec3<f32> = u_xlat28;
        let x_1119 : vec2<f32> = floor(vec2<f32>(x_1117.x, x_1117.y));
        let x_1120 : vec3<f32> = u_xlat28;
        u_xlat28 = vec3<f32>(x_1119.x, x_1119.y, x_1120.z);
        let x_1122 : vec4<f32> = u_xlat3;
        let x_1125 : vec4<f32> = x_600.x_MainLightShadowmapSize;
        let x_1128 : vec3<f32> = u_xlat28;
        let x_1131 : vec2<f32> = ((vec2<f32>(x_1122.x, x_1122.y) * vec2<f32>(x_1125.z, x_1125.w)) + -(vec2<f32>(x_1128.x, x_1128.y)));
        let x_1132 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1131.x, x_1131.y, x_1132.z, x_1132.w);
        let x_1134 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1134.x, x_1134.x, x_1134.y, x_1134.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1138 : vec4<f32> = u_xlat9;
        let x_1140 : vec4<f32> = u_xlat9;
        u_xlat10 = (vec4<f32>(x_1138.x, x_1138.x, x_1138.z, x_1138.z) * vec4<f32>(x_1140.x, x_1140.x, x_1140.z, x_1140.z));
        let x_1145 : vec4<f32> = u_xlat10;
        u_xlat52 = (vec2<f32>(x_1145.y, x_1145.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_1150 : vec4<f32> = u_xlat10;
        let x_1153 : vec4<f32> = u_xlat8;
        let x_1156 : vec2<f32> = ((vec2<f32>(x_1150.x, x_1150.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_1153.x, x_1153.y)));
        let x_1157 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1156.x, x_1157.y, x_1156.y, x_1157.w);
        let x_1159 : vec4<f32> = u_xlat8;
        let x_1162 : vec2<f32> = (-(vec2<f32>(x_1159.x, x_1159.y)) + vec2<f32>(1.0f, 1.0f));
        let x_1163 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1162.x, x_1162.y, x_1163.z, x_1163.w);
        let x_1166 : vec4<f32> = u_xlat8;
        u_xlat54 = min(vec2<f32>(x_1166.x, x_1166.y), vec2<f32>(0.0f, 0.0f));
        let x_1170 : vec2<f32> = u_xlat54;
        let x_1172 : vec2<f32> = u_xlat54;
        let x_1174 : vec4<f32> = u_xlat10;
        u_xlat54 = ((-(x_1170) * x_1172) + vec2<f32>(x_1174.x, x_1174.y));
        let x_1177 : vec4<f32> = u_xlat8;
        let x_1179 : vec2<f32> = max(vec2<f32>(x_1177.x, x_1177.y), vec2<f32>(0.0f, 0.0f));
        let x_1180 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1179.x, x_1179.y, x_1180.z, x_1180.w);
        let x_1182 : vec4<f32> = u_xlat8;
        let x_1185 : vec4<f32> = u_xlat8;
        let x_1188 : vec4<f32> = u_xlat9;
        let x_1190 : vec2<f32> = ((-(vec2<f32>(x_1182.x, x_1182.y)) * vec2<f32>(x_1185.x, x_1185.y)) + vec2<f32>(x_1188.y, x_1188.w));
        let x_1191 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1190.x, x_1190.y, x_1191.z, x_1191.w);
        let x_1193 : vec2<f32> = u_xlat54;
        u_xlat54 = (x_1193 + vec2<f32>(1.0f, 1.0f));
        let x_1195 : vec4<f32> = u_xlat8;
        let x_1197 : vec2<f32> = (vec2<f32>(x_1195.x, x_1195.y) + vec2<f32>(1.0f, 1.0f));
        let x_1198 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1197.x, x_1197.y, x_1198.z, x_1198.w);
        let x_1200 : vec4<f32> = u_xlat9;
        let x_1204 : vec2<f32> = (vec2<f32>(x_1200.x, x_1200.z) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1205 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1204.x, x_1204.y, x_1205.z, x_1205.w);
        let x_1207 : vec4<f32> = u_xlat10;
        let x_1209 : vec2<f32> = (vec2<f32>(x_1207.x, x_1207.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1210 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1209.x, x_1209.y, x_1210.z, x_1210.w);
        let x_1212 : vec2<f32> = u_xlat54;
        let x_1213 : vec2<f32> = (x_1212 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1214 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1213.x, x_1213.y, x_1214.z, x_1214.w);
        let x_1216 : vec4<f32> = u_xlat8;
        let x_1218 : vec2<f32> = (vec2<f32>(x_1216.x, x_1216.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1219 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1218.x, x_1218.y, x_1219.z, x_1219.w);
        let x_1221 : vec4<f32> = u_xlat9;
        let x_1223 : vec2<f32> = (vec2<f32>(x_1221.y, x_1221.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1224 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1223.x, x_1223.y, x_1224.z, x_1224.w);
        let x_1227 : f32 = u_xlat10.x;
        u_xlat11.z = x_1227;
        let x_1230 : f32 = u_xlat8.x;
        u_xlat11.w = x_1230;
        let x_1233 : f32 = u_xlat13.x;
        u_xlat12.z = x_1233;
        let x_1236 : f32 = u_xlat52.x;
        u_xlat12.w = x_1236;
        let x_1238 : vec4<f32> = u_xlat11;
        let x_1240 : vec4<f32> = u_xlat12;
        u_xlat9 = (vec4<f32>(x_1238.z, x_1238.w, x_1238.x, x_1238.z) + vec4<f32>(x_1240.z, x_1240.w, x_1240.x, x_1240.z));
        let x_1244 : f32 = u_xlat11.y;
        u_xlat10.z = x_1244;
        let x_1247 : f32 = u_xlat8.y;
        u_xlat10.w = x_1247;
        let x_1250 : f32 = u_xlat12.y;
        u_xlat13.z = x_1250;
        let x_1253 : f32 = u_xlat52.y;
        u_xlat13.w = x_1253;
        let x_1255 : vec4<f32> = u_xlat10;
        let x_1257 : vec4<f32> = u_xlat13;
        let x_1259 : vec3<f32> = (vec3<f32>(x_1255.z, x_1255.y, x_1255.w) + vec3<f32>(x_1257.z, x_1257.y, x_1257.w));
        let x_1260 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1259.x, x_1259.y, x_1259.z, x_1260.w);
        let x_1262 : vec4<f32> = u_xlat12;
        let x_1264 : vec4<f32> = u_xlat9;
        let x_1266 : vec3<f32> = (vec3<f32>(x_1262.x, x_1262.z, x_1262.w) / vec3<f32>(x_1264.z, x_1264.w, x_1264.y));
        let x_1267 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1266.x, x_1266.y, x_1266.z, x_1267.w);
        let x_1269 : vec4<f32> = u_xlat10;
        let x_1275 : vec3<f32> = (vec3<f32>(x_1269.x, x_1269.y, x_1269.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1276 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1275.x, x_1275.y, x_1275.z, x_1276.w);
        let x_1278 : vec4<f32> = u_xlat13;
        let x_1280 : vec4<f32> = u_xlat8;
        let x_1282 : vec3<f32> = (vec3<f32>(x_1278.z, x_1278.y, x_1278.w) / vec3<f32>(x_1280.x, x_1280.y, x_1280.z));
        let x_1283 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1282.x, x_1282.y, x_1282.z, x_1283.w);
        let x_1285 : vec4<f32> = u_xlat11;
        let x_1287 : vec3<f32> = (vec3<f32>(x_1285.x, x_1285.y, x_1285.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1288 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1287.x, x_1287.y, x_1287.z, x_1288.w);
        let x_1290 : vec4<f32> = u_xlat10;
        let x_1293 : vec4<f32> = x_600.x_MainLightShadowmapSize;
        let x_1295 : vec3<f32> = (vec3<f32>(x_1290.y, x_1290.x, x_1290.z) * vec3<f32>(x_1293.x, x_1293.x, x_1293.x));
        let x_1296 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1295.x, x_1295.y, x_1295.z, x_1296.w);
        let x_1298 : vec4<f32> = u_xlat11;
        let x_1301 : vec4<f32> = x_600.x_MainLightShadowmapSize;
        let x_1303 : vec3<f32> = (vec3<f32>(x_1298.x, x_1298.y, x_1298.z) * vec3<f32>(x_1301.y, x_1301.y, x_1301.y));
        let x_1304 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1303.x, x_1303.y, x_1303.z, x_1304.w);
        let x_1307 : f32 = u_xlat11.x;
        u_xlat10.w = x_1307;
        let x_1309 : vec3<f32> = u_xlat28;
        let x_1312 : vec4<f32> = x_600.x_MainLightShadowmapSize;
        let x_1315 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1309.x, x_1309.y, x_1309.x, x_1309.y) * vec4<f32>(x_1312.x, x_1312.y, x_1312.x, x_1312.y)) + vec4<f32>(x_1315.y, x_1315.w, x_1315.x, x_1315.w));
        let x_1318 : vec3<f32> = u_xlat28;
        let x_1321 : vec4<f32> = x_600.x_MainLightShadowmapSize;
        let x_1324 : vec4<f32> = u_xlat10;
        let x_1326 : vec2<f32> = ((vec2<f32>(x_1318.x, x_1318.y) * vec2<f32>(x_1321.x, x_1321.y)) + vec2<f32>(x_1324.z, x_1324.w));
        let x_1327 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1326.x, x_1326.y, x_1327.z, x_1327.w);
        let x_1330 : f32 = u_xlat10.y;
        u_xlat11.w = x_1330;
        let x_1332 : vec4<f32> = u_xlat11;
        let x_1333 : vec2<f32> = vec2<f32>(x_1332.y, x_1332.z);
        let x_1334 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1334.x, x_1333.x, x_1334.z, x_1333.y);
        let x_1337 : vec3<f32> = u_xlat28;
        let x_1340 : vec4<f32> = x_600.x_MainLightShadowmapSize;
        let x_1343 : vec4<f32> = u_xlat10;
        u_xlat14 = ((vec4<f32>(x_1337.x, x_1337.y, x_1337.x, x_1337.y) * vec4<f32>(x_1340.x, x_1340.y, x_1340.x, x_1340.y)) + vec4<f32>(x_1343.x, x_1343.y, x_1343.z, x_1343.y));
        let x_1346 : vec3<f32> = u_xlat28;
        let x_1349 : vec4<f32> = x_600.x_MainLightShadowmapSize;
        let x_1352 : vec4<f32> = u_xlat11;
        u_xlat11 = ((vec4<f32>(x_1346.x, x_1346.y, x_1346.x, x_1346.y) * vec4<f32>(x_1349.x, x_1349.y, x_1349.x, x_1349.y)) + vec4<f32>(x_1352.w, x_1352.y, x_1352.w, x_1352.z));
        let x_1355 : vec3<f32> = u_xlat28;
        let x_1358 : vec4<f32> = x_600.x_MainLightShadowmapSize;
        let x_1361 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_1355.x, x_1355.y, x_1355.x, x_1355.y) * vec4<f32>(x_1358.x, x_1358.y, x_1358.x, x_1358.y)) + vec4<f32>(x_1361.x, x_1361.w, x_1361.z, x_1361.w));
        let x_1365 : vec4<f32> = u_xlat8;
        let x_1367 : vec4<f32> = u_xlat9;
        u_xlat15 = (vec4<f32>(x_1365.x, x_1365.x, x_1365.x, x_1365.y) * vec4<f32>(x_1367.z, x_1367.w, x_1367.y, x_1367.z));
        let x_1371 : vec4<f32> = u_xlat8;
        let x_1373 : vec4<f32> = u_xlat9;
        u_xlat16 = (vec4<f32>(x_1371.y, x_1371.y, x_1371.z, x_1371.z) * x_1373);
        let x_1376 : f32 = u_xlat8.z;
        let x_1378 : f32 = u_xlat9.y;
        u_xlat28.x = (x_1376 * x_1378);
        let x_1382 : vec4<f32> = u_xlat12;
        let x_1383 : vec2<f32> = vec2<f32>(x_1382.x, x_1382.y);
        let x_1385 : f32 = u_xlat3.z;
        txVec4 = vec3<f32>(x_1383.x, x_1383.y, x_1385);
        let x_1393 : vec3<f32> = txVec4;
        let x_1395 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1393.xy, x_1393.z);
        u_xlat50 = x_1395;
        let x_1397 : vec4<f32> = u_xlat12;
        let x_1398 : vec2<f32> = vec2<f32>(x_1397.z, x_1397.w);
        let x_1400 : f32 = u_xlat3.z;
        txVec5 = vec3<f32>(x_1398.x, x_1398.y, x_1400);
        let x_1408 : vec3<f32> = txVec5;
        let x_1410 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1408.xy, x_1408.z);
        u_xlat72 = x_1410;
        let x_1411 : f32 = u_xlat72;
        let x_1413 : f32 = u_xlat15.y;
        u_xlat72 = (x_1411 * x_1413);
        let x_1416 : f32 = u_xlat15.x;
        let x_1417 : f32 = u_xlat50;
        let x_1419 : f32 = u_xlat72;
        u_xlat50 = ((x_1416 * x_1417) + x_1419);
        let x_1422 : vec4<f32> = u_xlat13;
        let x_1423 : vec2<f32> = vec2<f32>(x_1422.x, x_1422.y);
        let x_1425 : f32 = u_xlat3.z;
        txVec6 = vec3<f32>(x_1423.x, x_1423.y, x_1425);
        let x_1432 : vec3<f32> = txVec6;
        let x_1434 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1432.xy, x_1432.z);
        u_xlat72 = x_1434;
        let x_1436 : f32 = u_xlat15.z;
        let x_1437 : f32 = u_xlat72;
        let x_1439 : f32 = u_xlat50;
        u_xlat50 = ((x_1436 * x_1437) + x_1439);
        let x_1442 : vec4<f32> = u_xlat11;
        let x_1443 : vec2<f32> = vec2<f32>(x_1442.x, x_1442.y);
        let x_1445 : f32 = u_xlat3.z;
        txVec7 = vec3<f32>(x_1443.x, x_1443.y, x_1445);
        let x_1452 : vec3<f32> = txVec7;
        let x_1454 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1452.xy, x_1452.z);
        u_xlat72 = x_1454;
        let x_1456 : f32 = u_xlat15.w;
        let x_1457 : f32 = u_xlat72;
        let x_1459 : f32 = u_xlat50;
        u_xlat50 = ((x_1456 * x_1457) + x_1459);
        let x_1462 : vec4<f32> = u_xlat14;
        let x_1463 : vec2<f32> = vec2<f32>(x_1462.x, x_1462.y);
        let x_1465 : f32 = u_xlat3.z;
        txVec8 = vec3<f32>(x_1463.x, x_1463.y, x_1465);
        let x_1472 : vec3<f32> = txVec8;
        let x_1474 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1472.xy, x_1472.z);
        u_xlat72 = x_1474;
        let x_1476 : f32 = u_xlat16.x;
        let x_1477 : f32 = u_xlat72;
        let x_1479 : f32 = u_xlat50;
        u_xlat50 = ((x_1476 * x_1477) + x_1479);
        let x_1482 : vec4<f32> = u_xlat14;
        let x_1483 : vec2<f32> = vec2<f32>(x_1482.z, x_1482.w);
        let x_1485 : f32 = u_xlat3.z;
        txVec9 = vec3<f32>(x_1483.x, x_1483.y, x_1485);
        let x_1492 : vec3<f32> = txVec9;
        let x_1494 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1492.xy, x_1492.z);
        u_xlat72 = x_1494;
        let x_1496 : f32 = u_xlat16.y;
        let x_1497 : f32 = u_xlat72;
        let x_1499 : f32 = u_xlat50;
        u_xlat50 = ((x_1496 * x_1497) + x_1499);
        let x_1502 : vec4<f32> = u_xlat11;
        let x_1503 : vec2<f32> = vec2<f32>(x_1502.z, x_1502.w);
        let x_1505 : f32 = u_xlat3.z;
        txVec10 = vec3<f32>(x_1503.x, x_1503.y, x_1505);
        let x_1512 : vec3<f32> = txVec10;
        let x_1514 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1512.xy, x_1512.z);
        u_xlat72 = x_1514;
        let x_1516 : f32 = u_xlat16.z;
        let x_1517 : f32 = u_xlat72;
        let x_1519 : f32 = u_xlat50;
        u_xlat50 = ((x_1516 * x_1517) + x_1519);
        let x_1522 : vec4<f32> = u_xlat10;
        let x_1523 : vec2<f32> = vec2<f32>(x_1522.x, x_1522.y);
        let x_1525 : f32 = u_xlat3.z;
        txVec11 = vec3<f32>(x_1523.x, x_1523.y, x_1525);
        let x_1532 : vec3<f32> = txVec11;
        let x_1534 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1532.xy, x_1532.z);
        u_xlat72 = x_1534;
        let x_1536 : f32 = u_xlat16.w;
        let x_1537 : f32 = u_xlat72;
        let x_1539 : f32 = u_xlat50;
        u_xlat50 = ((x_1536 * x_1537) + x_1539);
        let x_1542 : vec4<f32> = u_xlat10;
        let x_1543 : vec2<f32> = vec2<f32>(x_1542.z, x_1542.w);
        let x_1545 : f32 = u_xlat3.z;
        txVec12 = vec3<f32>(x_1543.x, x_1543.y, x_1545);
        let x_1552 : vec3<f32> = txVec12;
        let x_1554 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1552.xy, x_1552.z);
        u_xlat72 = x_1554;
        let x_1556 : f32 = u_xlat28.x;
        let x_1557 : f32 = u_xlat72;
        let x_1559 : f32 = u_xlat50;
        u_xlat71 = ((x_1556 * x_1557) + x_1559);
      } else {
        let x_1562 : vec4<f32> = u_xlat3;
        let x_1565 : vec4<f32> = x_600.x_MainLightShadowmapSize;
        let x_1568 : vec2<f32> = ((vec2<f32>(x_1562.x, x_1562.y) * vec2<f32>(x_1565.z, x_1565.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1569 : vec3<f32> = u_xlat28;
        u_xlat28 = vec3<f32>(x_1568.x, x_1568.y, x_1569.z);
        let x_1571 : vec3<f32> = u_xlat28;
        let x_1573 : vec2<f32> = floor(vec2<f32>(x_1571.x, x_1571.y));
        let x_1574 : vec3<f32> = u_xlat28;
        u_xlat28 = vec3<f32>(x_1573.x, x_1573.y, x_1574.z);
        let x_1576 : vec4<f32> = u_xlat3;
        let x_1579 : vec4<f32> = x_600.x_MainLightShadowmapSize;
        let x_1582 : vec3<f32> = u_xlat28;
        let x_1585 : vec2<f32> = ((vec2<f32>(x_1576.x, x_1576.y) * vec2<f32>(x_1579.z, x_1579.w)) + -(vec2<f32>(x_1582.x, x_1582.y)));
        let x_1586 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1585.x, x_1585.y, x_1586.z, x_1586.w);
        let x_1588 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1588.x, x_1588.x, x_1588.y, x_1588.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1591 : vec4<f32> = u_xlat9;
        let x_1593 : vec4<f32> = u_xlat9;
        u_xlat10 = (vec4<f32>(x_1591.x, x_1591.x, x_1591.z, x_1591.z) * vec4<f32>(x_1593.x, x_1593.x, x_1593.z, x_1593.z));
        let x_1596 : vec4<f32> = u_xlat10;
        let x_1600 : vec2<f32> = (vec2<f32>(x_1596.y, x_1596.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1601 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1601.x, x_1600.x, x_1601.z, x_1600.y);
        let x_1603 : vec4<f32> = u_xlat10;
        let x_1606 : vec4<f32> = u_xlat8;
        u_xlat52 = ((vec2<f32>(x_1603.x, x_1603.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_1606.x, x_1606.y)));
        let x_1610 : vec4<f32> = u_xlat8;
        let x_1613 : vec2<f32> = (-(vec2<f32>(x_1610.x, x_1610.y)) + vec2<f32>(1.0f, 1.0f));
        let x_1614 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1613.x, x_1614.y, x_1613.y, x_1614.w);
        let x_1616 : vec4<f32> = u_xlat8;
        let x_1618 : vec2<f32> = min(vec2<f32>(x_1616.x, x_1616.y), vec2<f32>(0.0f, 0.0f));
        let x_1619 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1618.x, x_1618.y, x_1619.z, x_1619.w);
        let x_1621 : vec4<f32> = u_xlat10;
        let x_1624 : vec4<f32> = u_xlat10;
        let x_1627 : vec4<f32> = u_xlat9;
        let x_1629 : vec2<f32> = ((-(vec2<f32>(x_1621.x, x_1621.y)) * vec2<f32>(x_1624.x, x_1624.y)) + vec2<f32>(x_1627.x, x_1627.z));
        let x_1630 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1629.x, x_1630.y, x_1629.y, x_1630.w);
        let x_1632 : vec4<f32> = u_xlat8;
        let x_1634 : vec2<f32> = max(vec2<f32>(x_1632.x, x_1632.y), vec2<f32>(0.0f, 0.0f));
        let x_1635 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1634.x, x_1634.y, x_1635.z, x_1635.w);
        let x_1637 : vec4<f32> = u_xlat10;
        let x_1640 : vec4<f32> = u_xlat10;
        let x_1643 : vec4<f32> = u_xlat9;
        let x_1645 : vec2<f32> = ((-(vec2<f32>(x_1637.x, x_1637.y)) * vec2<f32>(x_1640.x, x_1640.y)) + vec2<f32>(x_1643.y, x_1643.w));
        let x_1646 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1646.x, x_1645.x, x_1646.z, x_1645.y);
        let x_1648 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1648 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_1652 : f32 = u_xlat9.y;
        u_xlat10.z = (x_1652 * 0.081632003f);
        let x_1656 : vec2<f32> = u_xlat52;
        let x_1659 : vec2<f32> = (vec2<f32>(x_1656.y, x_1656.x) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1660 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1659.x, x_1659.y, x_1660.z, x_1660.w);
        let x_1662 : vec4<f32> = u_xlat9;
        u_xlat52 = (vec2<f32>(x_1662.x, x_1662.z) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1666 : f32 = u_xlat9.w;
        u_xlat12.z = (x_1666 * 0.081632003f);
        let x_1670 : f32 = u_xlat12.y;
        u_xlat10.x = x_1670;
        let x_1672 : vec4<f32> = u_xlat8;
        let x_1679 : vec2<f32> = ((vec2<f32>(x_1672.x, x_1672.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1680 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1680.x, x_1679.x, x_1680.z, x_1679.y);
        let x_1682 : vec4<f32> = u_xlat8;
        let x_1686 : vec2<f32> = ((vec2<f32>(x_1682.x, x_1682.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1687 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1686.x, x_1687.y, x_1686.y, x_1687.w);
        let x_1690 : f32 = u_xlat52.x;
        u_xlat9.y = x_1690;
        let x_1693 : f32 = u_xlat11.y;
        u_xlat9.w = x_1693;
        let x_1695 : vec4<f32> = u_xlat9;
        let x_1696 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1695 + x_1696);
        let x_1698 : vec4<f32> = u_xlat8;
        let x_1701 : vec2<f32> = ((vec2<f32>(x_1698.y, x_1698.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1702 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1702.x, x_1701.x, x_1702.z, x_1701.y);
        let x_1704 : vec4<f32> = u_xlat8;
        let x_1707 : vec2<f32> = ((vec2<f32>(x_1704.y, x_1704.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1708 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1707.x, x_1708.y, x_1707.y, x_1708.w);
        let x_1711 : f32 = u_xlat52.y;
        u_xlat11.y = x_1711;
        let x_1713 : vec4<f32> = u_xlat11;
        let x_1714 : vec4<f32> = u_xlat12;
        u_xlat8 = (x_1713 + x_1714);
        let x_1716 : vec4<f32> = u_xlat9;
        let x_1717 : vec4<f32> = u_xlat10;
        u_xlat9 = (x_1716 / x_1717);
        let x_1719 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1719 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1725 : vec4<f32> = u_xlat11;
        let x_1726 : vec4<f32> = u_xlat8;
        u_xlat11 = (x_1725 / x_1726);
        let x_1728 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_1728 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1730 : vec4<f32> = u_xlat9;
        let x_1733 : vec4<f32> = x_600.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1730.w, x_1730.x, x_1730.y, x_1730.z) * vec4<f32>(x_1733.x, x_1733.x, x_1733.x, x_1733.x));
        let x_1736 : vec4<f32> = u_xlat11;
        let x_1739 : vec4<f32> = x_600.x_MainLightShadowmapSize;
        u_xlat11 = (vec4<f32>(x_1736.x, x_1736.w, x_1736.y, x_1736.z) * vec4<f32>(x_1739.y, x_1739.y, x_1739.y, x_1739.y));
        let x_1742 : vec4<f32> = u_xlat9;
        let x_1743 : vec3<f32> = vec3<f32>(x_1742.y, x_1742.z, x_1742.w);
        let x_1744 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1743.x, x_1744.y, x_1743.y, x_1743.z);
        let x_1747 : f32 = u_xlat11.x;
        u_xlat12.y = x_1747;
        let x_1749 : vec3<f32> = u_xlat28;
        let x_1752 : vec4<f32> = x_600.x_MainLightShadowmapSize;
        let x_1755 : vec4<f32> = u_xlat12;
        u_xlat13 = ((vec4<f32>(x_1749.x, x_1749.y, x_1749.x, x_1749.y) * vec4<f32>(x_1752.x, x_1752.y, x_1752.x, x_1752.y)) + vec4<f32>(x_1755.x, x_1755.y, x_1755.z, x_1755.y));
        let x_1758 : vec3<f32> = u_xlat28;
        let x_1761 : vec4<f32> = x_600.x_MainLightShadowmapSize;
        let x_1764 : vec4<f32> = u_xlat12;
        let x_1766 : vec2<f32> = ((vec2<f32>(x_1758.x, x_1758.y) * vec2<f32>(x_1761.x, x_1761.y)) + vec2<f32>(x_1764.w, x_1764.y));
        let x_1767 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_1766.x, x_1766.y, x_1767.z, x_1767.w);
        let x_1770 : f32 = u_xlat12.y;
        u_xlat9.y = x_1770;
        let x_1773 : f32 = u_xlat11.z;
        u_xlat12.y = x_1773;
        let x_1775 : vec3<f32> = u_xlat28;
        let x_1778 : vec4<f32> = x_600.x_MainLightShadowmapSize;
        let x_1781 : vec4<f32> = u_xlat12;
        u_xlat15 = ((vec4<f32>(x_1775.x, x_1775.y, x_1775.x, x_1775.y) * vec4<f32>(x_1778.x, x_1778.y, x_1778.x, x_1778.y)) + vec4<f32>(x_1781.x, x_1781.y, x_1781.z, x_1781.y));
        let x_1785 : vec3<f32> = u_xlat28;
        let x_1788 : vec4<f32> = x_600.x_MainLightShadowmapSize;
        let x_1791 : vec4<f32> = u_xlat12;
        u_xlat58 = ((vec2<f32>(x_1785.x, x_1785.y) * vec2<f32>(x_1788.x, x_1788.y)) + vec2<f32>(x_1791.w, x_1791.y));
        let x_1795 : f32 = u_xlat12.y;
        u_xlat9.z = x_1795;
        let x_1797 : vec3<f32> = u_xlat28;
        let x_1800 : vec4<f32> = x_600.x_MainLightShadowmapSize;
        let x_1803 : vec4<f32> = u_xlat9;
        u_xlat16 = ((vec4<f32>(x_1797.x, x_1797.y, x_1797.x, x_1797.y) * vec4<f32>(x_1800.x, x_1800.y, x_1800.x, x_1800.y)) + vec4<f32>(x_1803.x, x_1803.y, x_1803.x, x_1803.z));
        let x_1807 : f32 = u_xlat11.w;
        u_xlat12.y = x_1807;
        let x_1810 : vec3<f32> = u_xlat28;
        let x_1813 : vec4<f32> = x_600.x_MainLightShadowmapSize;
        let x_1816 : vec4<f32> = u_xlat12;
        u_xlat17 = ((vec4<f32>(x_1810.x, x_1810.y, x_1810.x, x_1810.y) * vec4<f32>(x_1813.x, x_1813.y, x_1813.x, x_1813.y)) + vec4<f32>(x_1816.x, x_1816.y, x_1816.z, x_1816.y));
        let x_1820 : vec3<f32> = u_xlat28;
        let x_1823 : vec4<f32> = x_600.x_MainLightShadowmapSize;
        let x_1826 : vec4<f32> = u_xlat12;
        let x_1828 : vec2<f32> = ((vec2<f32>(x_1820.x, x_1820.y) * vec2<f32>(x_1823.x, x_1823.y)) + vec2<f32>(x_1826.w, x_1826.y));
        let x_1829 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_1828.x, x_1828.y, x_1829.z);
        let x_1832 : f32 = u_xlat12.y;
        u_xlat9.w = x_1832;
        let x_1835 : vec3<f32> = u_xlat28;
        let x_1838 : vec4<f32> = x_600.x_MainLightShadowmapSize;
        let x_1841 : vec4<f32> = u_xlat9;
        u_xlat18 = ((vec2<f32>(x_1835.x, x_1835.y) * vec2<f32>(x_1838.x, x_1838.y)) + vec2<f32>(x_1841.x, x_1841.w));
        let x_1844 : vec4<f32> = u_xlat12;
        let x_1845 : vec3<f32> = vec3<f32>(x_1844.x, x_1844.z, x_1844.w);
        let x_1846 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1845.x, x_1846.y, x_1845.y, x_1845.z);
        let x_1848 : vec3<f32> = u_xlat28;
        let x_1851 : vec4<f32> = x_600.x_MainLightShadowmapSize;
        let x_1854 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1848.x, x_1848.y, x_1848.x, x_1848.y) * vec4<f32>(x_1851.x, x_1851.y, x_1851.x, x_1851.y)) + vec4<f32>(x_1854.x, x_1854.y, x_1854.z, x_1854.y));
        let x_1858 : vec3<f32> = u_xlat28;
        let x_1861 : vec4<f32> = x_600.x_MainLightShadowmapSize;
        let x_1864 : vec4<f32> = u_xlat11;
        u_xlat55 = ((vec2<f32>(x_1858.x, x_1858.y) * vec2<f32>(x_1861.x, x_1861.y)) + vec2<f32>(x_1864.w, x_1864.y));
        let x_1868 : f32 = u_xlat9.x;
        u_xlat11.x = x_1868;
        let x_1870 : vec3<f32> = u_xlat28;
        let x_1873 : vec4<f32> = x_600.x_MainLightShadowmapSize;
        let x_1876 : vec4<f32> = u_xlat11;
        let x_1878 : vec2<f32> = ((vec2<f32>(x_1870.x, x_1870.y) * vec2<f32>(x_1873.x, x_1873.y)) + vec2<f32>(x_1876.x, x_1876.y));
        let x_1879 : vec3<f32> = u_xlat28;
        u_xlat28 = vec3<f32>(x_1878.x, x_1878.y, x_1879.z);
        let x_1882 : vec4<f32> = u_xlat8;
        let x_1884 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_1882.x, x_1882.x, x_1882.x, x_1882.x) * x_1884);
        let x_1887 : vec4<f32> = u_xlat8;
        let x_1889 : vec4<f32> = u_xlat10;
        u_xlat20 = (vec4<f32>(x_1887.y, x_1887.y, x_1887.y, x_1887.y) * x_1889);
        let x_1892 : vec4<f32> = u_xlat8;
        let x_1894 : vec4<f32> = u_xlat10;
        u_xlat21 = (vec4<f32>(x_1892.z, x_1892.z, x_1892.z, x_1892.z) * x_1894);
        let x_1896 : vec4<f32> = u_xlat8;
        let x_1898 : vec4<f32> = u_xlat10;
        u_xlat8 = (vec4<f32>(x_1896.w, x_1896.w, x_1896.w, x_1896.w) * x_1898);
        let x_1901 : vec4<f32> = u_xlat13;
        let x_1902 : vec2<f32> = vec2<f32>(x_1901.x, x_1901.y);
        let x_1904 : f32 = u_xlat3.z;
        txVec13 = vec3<f32>(x_1902.x, x_1902.y, x_1904);
        let x_1911 : vec3<f32> = txVec13;
        let x_1913 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1911.xy, x_1911.z);
        u_xlat72 = x_1913;
        let x_1915 : vec4<f32> = u_xlat13;
        let x_1916 : vec2<f32> = vec2<f32>(x_1915.z, x_1915.w);
        let x_1918 : f32 = u_xlat3.z;
        txVec14 = vec3<f32>(x_1916.x, x_1916.y, x_1918);
        let x_1926 : vec3<f32> = txVec14;
        let x_1928 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1926.xy, x_1926.z);
        u_xlat73 = x_1928;
        let x_1929 : f32 = u_xlat73;
        let x_1931 : f32 = u_xlat19.y;
        u_xlat73 = (x_1929 * x_1931);
        let x_1934 : f32 = u_xlat19.x;
        let x_1935 : f32 = u_xlat72;
        let x_1937 : f32 = u_xlat73;
        u_xlat72 = ((x_1934 * x_1935) + x_1937);
        let x_1940 : vec4<f32> = u_xlat14;
        let x_1941 : vec2<f32> = vec2<f32>(x_1940.x, x_1940.y);
        let x_1943 : f32 = u_xlat3.z;
        txVec15 = vec3<f32>(x_1941.x, x_1941.y, x_1943);
        let x_1950 : vec3<f32> = txVec15;
        let x_1952 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1950.xy, x_1950.z);
        u_xlat73 = x_1952;
        let x_1954 : f32 = u_xlat19.z;
        let x_1955 : f32 = u_xlat73;
        let x_1957 : f32 = u_xlat72;
        u_xlat72 = ((x_1954 * x_1955) + x_1957);
        let x_1960 : vec4<f32> = u_xlat16;
        let x_1961 : vec2<f32> = vec2<f32>(x_1960.x, x_1960.y);
        let x_1963 : f32 = u_xlat3.z;
        txVec16 = vec3<f32>(x_1961.x, x_1961.y, x_1963);
        let x_1970 : vec3<f32> = txVec16;
        let x_1972 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1970.xy, x_1970.z);
        u_xlat73 = x_1972;
        let x_1974 : f32 = u_xlat19.w;
        let x_1975 : f32 = u_xlat73;
        let x_1977 : f32 = u_xlat72;
        u_xlat72 = ((x_1974 * x_1975) + x_1977);
        let x_1980 : vec4<f32> = u_xlat15;
        let x_1981 : vec2<f32> = vec2<f32>(x_1980.x, x_1980.y);
        let x_1983 : f32 = u_xlat3.z;
        txVec17 = vec3<f32>(x_1981.x, x_1981.y, x_1983);
        let x_1990 : vec3<f32> = txVec17;
        let x_1992 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1990.xy, x_1990.z);
        u_xlat73 = x_1992;
        let x_1994 : f32 = u_xlat20.x;
        let x_1995 : f32 = u_xlat73;
        let x_1997 : f32 = u_xlat72;
        u_xlat72 = ((x_1994 * x_1995) + x_1997);
        let x_2000 : vec4<f32> = u_xlat15;
        let x_2001 : vec2<f32> = vec2<f32>(x_2000.z, x_2000.w);
        let x_2003 : f32 = u_xlat3.z;
        txVec18 = vec3<f32>(x_2001.x, x_2001.y, x_2003);
        let x_2010 : vec3<f32> = txVec18;
        let x_2012 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2010.xy, x_2010.z);
        u_xlat73 = x_2012;
        let x_2014 : f32 = u_xlat20.y;
        let x_2015 : f32 = u_xlat73;
        let x_2017 : f32 = u_xlat72;
        u_xlat72 = ((x_2014 * x_2015) + x_2017);
        let x_2020 : vec2<f32> = u_xlat58;
        let x_2022 : f32 = u_xlat3.z;
        txVec19 = vec3<f32>(x_2020.x, x_2020.y, x_2022);
        let x_2029 : vec3<f32> = txVec19;
        let x_2031 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2029.xy, x_2029.z);
        u_xlat73 = x_2031;
        let x_2033 : f32 = u_xlat20.z;
        let x_2034 : f32 = u_xlat73;
        let x_2036 : f32 = u_xlat72;
        u_xlat72 = ((x_2033 * x_2034) + x_2036);
        let x_2039 : vec4<f32> = u_xlat16;
        let x_2040 : vec2<f32> = vec2<f32>(x_2039.z, x_2039.w);
        let x_2042 : f32 = u_xlat3.z;
        txVec20 = vec3<f32>(x_2040.x, x_2040.y, x_2042);
        let x_2049 : vec3<f32> = txVec20;
        let x_2051 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2049.xy, x_2049.z);
        u_xlat73 = x_2051;
        let x_2053 : f32 = u_xlat20.w;
        let x_2054 : f32 = u_xlat73;
        let x_2056 : f32 = u_xlat72;
        u_xlat72 = ((x_2053 * x_2054) + x_2056);
        let x_2059 : vec4<f32> = u_xlat17;
        let x_2060 : vec2<f32> = vec2<f32>(x_2059.x, x_2059.y);
        let x_2062 : f32 = u_xlat3.z;
        txVec21 = vec3<f32>(x_2060.x, x_2060.y, x_2062);
        let x_2069 : vec3<f32> = txVec21;
        let x_2071 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2069.xy, x_2069.z);
        u_xlat73 = x_2071;
        let x_2073 : f32 = u_xlat21.x;
        let x_2074 : f32 = u_xlat73;
        let x_2076 : f32 = u_xlat72;
        u_xlat72 = ((x_2073 * x_2074) + x_2076);
        let x_2079 : vec4<f32> = u_xlat17;
        let x_2080 : vec2<f32> = vec2<f32>(x_2079.z, x_2079.w);
        let x_2082 : f32 = u_xlat3.z;
        txVec22 = vec3<f32>(x_2080.x, x_2080.y, x_2082);
        let x_2089 : vec3<f32> = txVec22;
        let x_2091 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2089.xy, x_2089.z);
        u_xlat73 = x_2091;
        let x_2093 : f32 = u_xlat21.y;
        let x_2094 : f32 = u_xlat73;
        let x_2096 : f32 = u_xlat72;
        u_xlat72 = ((x_2093 * x_2094) + x_2096);
        let x_2099 : vec3<f32> = u_xlat31;
        let x_2100 : vec2<f32> = vec2<f32>(x_2099.x, x_2099.y);
        let x_2102 : f32 = u_xlat3.z;
        txVec23 = vec3<f32>(x_2100.x, x_2100.y, x_2102);
        let x_2109 : vec3<f32> = txVec23;
        let x_2111 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2109.xy, x_2109.z);
        u_xlat73 = x_2111;
        let x_2113 : f32 = u_xlat21.z;
        let x_2114 : f32 = u_xlat73;
        let x_2116 : f32 = u_xlat72;
        u_xlat72 = ((x_2113 * x_2114) + x_2116);
        let x_2119 : vec2<f32> = u_xlat18;
        let x_2121 : f32 = u_xlat3.z;
        txVec24 = vec3<f32>(x_2119.x, x_2119.y, x_2121);
        let x_2128 : vec3<f32> = txVec24;
        let x_2130 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2128.xy, x_2128.z);
        u_xlat73 = x_2130;
        let x_2132 : f32 = u_xlat21.w;
        let x_2133 : f32 = u_xlat73;
        let x_2135 : f32 = u_xlat72;
        u_xlat72 = ((x_2132 * x_2133) + x_2135);
        let x_2138 : vec4<f32> = u_xlat12;
        let x_2139 : vec2<f32> = vec2<f32>(x_2138.x, x_2138.y);
        let x_2141 : f32 = u_xlat3.z;
        txVec25 = vec3<f32>(x_2139.x, x_2139.y, x_2141);
        let x_2148 : vec3<f32> = txVec25;
        let x_2150 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2148.xy, x_2148.z);
        u_xlat73 = x_2150;
        let x_2152 : f32 = u_xlat8.x;
        let x_2153 : f32 = u_xlat73;
        let x_2155 : f32 = u_xlat72;
        u_xlat72 = ((x_2152 * x_2153) + x_2155);
        let x_2158 : vec4<f32> = u_xlat12;
        let x_2159 : vec2<f32> = vec2<f32>(x_2158.z, x_2158.w);
        let x_2161 : f32 = u_xlat3.z;
        txVec26 = vec3<f32>(x_2159.x, x_2159.y, x_2161);
        let x_2168 : vec3<f32> = txVec26;
        let x_2170 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2168.xy, x_2168.z);
        u_xlat73 = x_2170;
        let x_2172 : f32 = u_xlat8.y;
        let x_2173 : f32 = u_xlat73;
        let x_2175 : f32 = u_xlat72;
        u_xlat72 = ((x_2172 * x_2173) + x_2175);
        let x_2178 : vec2<f32> = u_xlat55;
        let x_2180 : f32 = u_xlat3.z;
        txVec27 = vec3<f32>(x_2178.x, x_2178.y, x_2180);
        let x_2187 : vec3<f32> = txVec27;
        let x_2189 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2187.xy, x_2187.z);
        u_xlat73 = x_2189;
        let x_2191 : f32 = u_xlat8.z;
        let x_2192 : f32 = u_xlat73;
        let x_2194 : f32 = u_xlat72;
        u_xlat72 = ((x_2191 * x_2192) + x_2194);
        let x_2197 : vec3<f32> = u_xlat28;
        let x_2198 : vec2<f32> = vec2<f32>(x_2197.x, x_2197.y);
        let x_2200 : f32 = u_xlat3.z;
        txVec28 = vec3<f32>(x_2198.x, x_2198.y, x_2200);
        let x_2207 : vec3<f32> = txVec28;
        let x_2209 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2207.xy, x_2207.z);
        u_xlat28.x = x_2209;
        let x_2212 : f32 = u_xlat8.w;
        let x_2214 : f32 = u_xlat28.x;
        let x_2216 : f32 = u_xlat72;
        u_xlat71 = ((x_2212 * x_2214) + x_2216);
      }
    }
  } else {
    let x_2220 : vec4<f32> = u_xlat3;
    let x_2221 : vec2<f32> = vec2<f32>(x_2220.x, x_2220.y);
    let x_2223 : f32 = u_xlat3.z;
    txVec29 = vec3<f32>(x_2221.x, x_2221.y, x_2223);
    let x_2230 : vec3<f32> = txVec29;
    let x_2232 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2230.xy, x_2230.z);
    u_xlat71 = x_2232;
  }
  let x_2234 : f32 = x_600.x_MainLightShadowParams.x;
  u_xlat3.x = (-(x_2234) + 1.0f);
  let x_2238 : f32 = u_xlat71;
  let x_2240 : f32 = x_600.x_MainLightShadowParams.x;
  let x_2243 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_2238 * x_2240) + x_2243);
  let x_2248 : f32 = u_xlat3.z;
  u_xlatb25 = (0.0f >= x_2248);
  let x_2252 : f32 = u_xlat3.z;
  u_xlatb47 = (x_2252 >= 1.0f);
  let x_2254 : bool = u_xlatb47;
  let x_2255 : bool = u_xlatb25;
  u_xlatb25 = (x_2254 | x_2255);
  let x_2257 : bool = u_xlatb25;
  if (x_2257) {
    x_2258 = 1.0f;
  } else {
    let x_2263 : f32 = u_xlat3.x;
    x_2258 = x_2263;
  }
  let x_2264 : f32 = x_2258;
  u_xlat3.x = x_2264;
  let x_2266 : vec3<f32> = vs_TEXCOORD7;
  let x_2268 : vec3<f32> = x_128.x_WorldSpaceCameraPos;
  u_xlat28 = (x_2266 + -(x_2268));
  let x_2272 : vec3<f32> = u_xlat28;
  let x_2273 : vec3<f32> = u_xlat28;
  u_xlat25 = dot(x_2272, x_2273);
  let x_2275 : f32 = u_xlat25;
  let x_2277 : f32 = x_600.x_MainLightShadowParams.z;
  let x_2280 : f32 = x_600.x_MainLightShadowParams.w;
  u_xlat25 = ((x_2275 * x_2277) + x_2280);
  let x_2282 : f32 = u_xlat25;
  u_xlat25 = clamp(x_2282, 0.0f, 1.0f);
  let x_2286 : f32 = u_xlat3.x;
  u_xlat47 = (-(x_2286) + 1.0f);
  let x_2289 : f32 = u_xlat25;
  let x_2290 : f32 = u_xlat47;
  let x_2293 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_2289 * x_2290) + x_2293);
  let x_2296 : vec4<f32> = u_xlat6;
  let x_2299 : vec4<f32> = x_128.x_MainLightColor;
  u_xlat28 = (vec3<f32>(x_2296.x, x_2296.x, x_2296.x) * vec3<f32>(x_2299.x, x_2299.y, x_2299.z));
  let x_2302 : vec4<f32> = u_xlat1;
  let x_2305 : vec4<f32> = u_xlat2;
  u_xlat25 = dot(-(vec3<f32>(x_2302.x, x_2302.y, x_2302.z)), vec3<f32>(x_2305.x, x_2305.y, x_2305.z));
  let x_2308 : f32 = u_xlat25;
  let x_2309 : f32 = u_xlat25;
  u_xlat25 = (x_2308 + x_2309);
  let x_2311 : vec4<f32> = u_xlat2;
  let x_2313 : f32 = u_xlat25;
  let x_2317 : vec4<f32> = u_xlat1;
  let x_2320 : vec3<f32> = ((vec3<f32>(x_2311.x, x_2311.y, x_2311.z) * -(vec3<f32>(x_2313, x_2313, x_2313))) + -(vec3<f32>(x_2317.x, x_2317.y, x_2317.z)));
  let x_2321 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2320.x, x_2320.y, x_2320.z, x_2321.w);
  let x_2323 : vec4<f32> = u_xlat2;
  let x_2325 : vec4<f32> = u_xlat1;
  u_xlat25 = dot(vec3<f32>(x_2323.x, x_2323.y, x_2323.z), vec3<f32>(x_2325.x, x_2325.y, x_2325.z));
  let x_2328 : f32 = u_xlat25;
  u_xlat25 = clamp(x_2328, 0.0f, 1.0f);
  let x_2330 : f32 = u_xlat25;
  u_xlat25 = (-(x_2330) + 1.0f);
  let x_2333 : f32 = u_xlat25;
  let x_2334 : f32 = u_xlat25;
  u_xlat25 = (x_2333 * x_2334);
  let x_2336 : f32 = u_xlat25;
  let x_2337 : f32 = u_xlat25;
  u_xlat25 = (x_2336 * x_2337);
  let x_2340 : f32 = u_xlat0.x;
  u_xlat47 = ((-(x_2340) * 0.699999988f) + 1.700000048f);
  let x_2347 : f32 = u_xlat0.x;
  let x_2348 : f32 = u_xlat47;
  u_xlat0.x = (x_2347 * x_2348);
  let x_2352 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2352 * 6.0f);
  let x_2364 : vec4<f32> = u_xlat8;
  let x_2367 : f32 = u_xlat0.x;
  let x_2368 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2364.x, x_2364.y, x_2364.z), x_2367);
  u_xlat8 = x_2368;
  let x_2370 : f32 = u_xlat8.w;
  u_xlat0.x = (x_2370 + -1.0f);
  let x_2374 : f32 = x_821.unity_SpecCube0_HDR.w;
  let x_2376 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_2374 * x_2376) + 1.0f);
  let x_2381 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2381, 0.0f);
  let x_2385 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_2385);
  let x_2389 : f32 = u_xlat0.x;
  let x_2391 : f32 = x_821.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_2389 * x_2391);
  let x_2395 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_2395);
  let x_2399 : f32 = u_xlat0.x;
  let x_2401 : f32 = x_821.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_2399 * x_2401);
  let x_2404 : vec4<f32> = u_xlat8;
  let x_2406 : vec3<f32> = u_xlat0;
  let x_2408 : vec3<f32> = (vec3<f32>(x_2404.x, x_2404.y, x_2404.z) * vec3<f32>(x_2406.x, x_2406.x, x_2406.x));
  let x_2409 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2408.x, x_2408.y, x_2408.z, x_2409.w);
  let x_2411 : f32 = u_xlat68;
  let x_2413 : f32 = u_xlat68;
  let x_2417 : vec2<f32> = ((vec2<f32>(x_2411, x_2411) * vec2<f32>(x_2413, x_2413)) + vec2<f32>(-1.0f, 1.0f));
  let x_2418 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2417.x, x_2417.y, x_2418.z, x_2418.w);
  let x_2421 : f32 = u_xlat9.y;
  u_xlat0.x = (1.0f / x_2421);
  let x_2424 : vec4<f32> = u_xlat5;
  let x_2427 : f32 = u_xlat44;
  u_xlat31 = (-(vec3<f32>(x_2424.x, x_2424.y, x_2424.z)) + vec3<f32>(x_2427, x_2427, x_2427));
  let x_2430 : f32 = u_xlat25;
  let x_2432 : vec3<f32> = u_xlat31;
  let x_2434 : vec4<f32> = u_xlat5;
  u_xlat31 = ((vec3<f32>(x_2430, x_2430, x_2430) * x_2432) + vec3<f32>(x_2434.x, x_2434.y, x_2434.z));
  let x_2437 : vec3<f32> = u_xlat0;
  let x_2439 : vec3<f32> = u_xlat31;
  u_xlat31 = (vec3<f32>(x_2437.x, x_2437.x, x_2437.x) * x_2439);
  let x_2441 : vec4<f32> = u_xlat8;
  let x_2443 : vec3<f32> = u_xlat31;
  let x_2444 : vec3<f32> = (vec3<f32>(x_2441.x, x_2441.y, x_2441.z) * x_2443);
  let x_2445 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2444.x, x_2444.y, x_2444.z, x_2445.w);
  let x_2447 : vec4<f32> = u_xlat4;
  let x_2449 : vec4<f32> = u_xlat7;
  let x_2452 : vec4<f32> = u_xlat8;
  let x_2454 : vec3<f32> = ((vec3<f32>(x_2447.x, x_2447.y, x_2447.z) * vec3<f32>(x_2449.x, x_2449.y, x_2449.z)) + vec3<f32>(x_2452.x, x_2452.y, x_2452.z));
  let x_2455 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2454.x, x_2454.y, x_2454.z, x_2455.w);
  let x_2458 : f32 = u_xlat3.x;
  let x_2460 : f32 = x_821.unity_LightData.z;
  u_xlat0.x = (x_2458 * x_2460);
  let x_2463 : vec4<f32> = u_xlat2;
  let x_2466 : vec4<f32> = x_128.x_MainLightPosition;
  u_xlat44 = dot(vec3<f32>(x_2463.x, x_2463.y, x_2463.z), vec3<f32>(x_2466.x, x_2466.y, x_2466.z));
  let x_2469 : f32 = u_xlat44;
  u_xlat44 = clamp(x_2469, 0.0f, 1.0f);
  let x_2471 : f32 = u_xlat44;
  let x_2473 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2471 * x_2473);
  let x_2476 : vec3<f32> = u_xlat0;
  let x_2478 : vec3<f32> = u_xlat28;
  let x_2479 : vec3<f32> = (vec3<f32>(x_2476.x, x_2476.x, x_2476.x) * x_2478);
  let x_2480 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2479.x, x_2479.y, x_2479.z, x_2480.w);
  let x_2482 : vec4<f32> = u_xlat1;
  let x_2485 : vec4<f32> = x_128.x_MainLightPosition;
  u_xlat28 = (vec3<f32>(x_2482.x, x_2482.y, x_2482.z) + vec3<f32>(x_2485.x, x_2485.y, x_2485.z));
  let x_2488 : vec3<f32> = u_xlat28;
  let x_2489 : vec3<f32> = u_xlat28;
  u_xlat0.x = dot(x_2488, x_2489);
  let x_2493 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2493, 1.17549435e-37f);
  let x_2498 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_2498);
  let x_2501 : vec3<f32> = u_xlat0;
  let x_2503 : vec3<f32> = u_xlat28;
  u_xlat28 = (vec3<f32>(x_2501.x, x_2501.x, x_2501.x) * x_2503);
  let x_2505 : vec4<f32> = u_xlat2;
  let x_2507 : vec3<f32> = u_xlat28;
  u_xlat0.x = dot(vec3<f32>(x_2505.x, x_2505.y, x_2505.z), x_2507);
  let x_2511 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_2511, 0.0f, 1.0f);
  let x_2515 : vec4<f32> = x_128.x_MainLightPosition;
  let x_2517 : vec3<f32> = u_xlat28;
  u_xlat0.z = dot(vec3<f32>(x_2515.x, x_2515.y, x_2515.z), x_2517);
  let x_2521 : f32 = u_xlat0.z;
  u_xlat0.z = clamp(x_2521, 0.0f, 1.0f);
  let x_2524 : vec3<f32> = u_xlat0;
  let x_2526 : vec3<f32> = u_xlat0;
  let x_2528 : vec2<f32> = (vec2<f32>(x_2524.x, x_2524.z) * vec2<f32>(x_2526.x, x_2526.z));
  let x_2529 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_2528.x, x_2529.y, x_2528.y);
  let x_2532 : f32 = u_xlat0.x;
  let x_2534 : f32 = u_xlat9.x;
  u_xlat0.x = ((x_2532 * x_2534) + 1.000010014f);
  let x_2540 : f32 = u_xlat0.x;
  let x_2542 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2540 * x_2542);
  let x_2546 : f32 = u_xlat0.z;
  u_xlat44 = max(x_2546, 0.100000001f);
  let x_2549 : f32 = u_xlat44;
  let x_2551 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2549 * x_2551);
  let x_2554 : f32 = u_xlat69;
  let x_2556 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2554 * x_2556);
  let x_2559 : f32 = u_xlat70;
  let x_2561 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2559 / x_2561);
  let x_2564 : vec4<f32> = u_xlat5;
  let x_2566 : vec3<f32> = u_xlat0;
  let x_2569 : vec4<f32> = u_xlat7;
  u_xlat28 = ((vec3<f32>(x_2564.x, x_2564.y, x_2564.z) * vec3<f32>(x_2566.x, x_2566.x, x_2566.x)) + vec3<f32>(x_2569.x, x_2569.y, x_2569.z));
  let x_2572 : vec4<f32> = u_xlat3;
  let x_2574 : vec3<f32> = u_xlat28;
  let x_2575 : vec3<f32> = (vec3<f32>(x_2572.x, x_2572.y, x_2572.z) * x_2574);
  let x_2576 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2575.x, x_2575.y, x_2575.z, x_2576.w);
  let x_2579 : f32 = x_128.x_AdditionalLightsCount.x;
  let x_2581 : f32 = x_821.unity_LightData.y;
  u_xlat0.x = min(x_2579, x_2581);
  let x_2586 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_2586));
  u_xlat28.x = 0.0f;
  u_xlat28.y = 0.0f;
  u_xlat28.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2598 : u32 = u_xlatu_loop_1;
    let x_2599 : u32 = u_xlatu0;
    if ((x_2598 < x_2599)) {
    } else {
      break;
    }
    let x_2602 : u32 = u_xlatu_loop_1;
    u_xlatu68 = (x_2602 >> 2u);
    let x_2605 : u32 = u_xlatu_loop_1;
    u_xlati71 = bitcast<i32>((x_2605 & 3u));
    let x_2608 : u32 = u_xlatu68;
    let x_2611 : vec4<f32> = x_821.unity_LightIndices[bitcast<i32>(x_2608)];
    let x_2621 : i32 = u_xlati71;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2626 : vec4<u32> = indexable[x_2621];
    u_xlat68 = dot(x_2611, bitcast<vec4<f32>>(x_2626));
    let x_2630 : f32 = u_xlat68;
    u_xlati68 = i32(x_2630);
    let x_2632 : vec3<f32> = vs_TEXCOORD7;
    let x_2644 : i32 = u_xlati68;
    let x_2646 : vec4<f32> = x_2643.x_AdditionalLightsPosition[x_2644];
    let x_2649 : i32 = u_xlati68;
    let x_2651 : vec4<f32> = x_2643.x_AdditionalLightsPosition[x_2649];
    let x_2653 : vec3<f32> = ((-(x_2632) * vec3<f32>(x_2646.w, x_2646.w, x_2646.w)) + vec3<f32>(x_2651.x, x_2651.y, x_2651.z));
    let x_2654 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2653.x, x_2653.y, x_2653.z, x_2654.w);
    let x_2656 : vec4<f32> = u_xlat8;
    let x_2658 : vec4<f32> = u_xlat8;
    u_xlat71 = dot(vec3<f32>(x_2656.x, x_2656.y, x_2656.z), vec3<f32>(x_2658.x, x_2658.y, x_2658.z));
    let x_2661 : f32 = u_xlat71;
    u_xlat71 = max(x_2661, 6.10351562e-05f);
    let x_2663 : f32 = u_xlat71;
    u_xlat73 = inverseSqrt(x_2663);
    let x_2665 : f32 = u_xlat73;
    let x_2667 : vec4<f32> = u_xlat8;
    u_xlat31 = (vec3<f32>(x_2665, x_2665, x_2665) * vec3<f32>(x_2667.x, x_2667.y, x_2667.z));
    let x_2671 : f32 = u_xlat71;
    u_xlat74 = (1.0f / x_2671);
    let x_2673 : f32 = u_xlat71;
    let x_2674 : i32 = u_xlati68;
    let x_2676 : f32 = x_2643.x_AdditionalLightsAttenuation[x_2674].x;
    u_xlat71 = (x_2673 * x_2676);
    let x_2678 : f32 = u_xlat71;
    let x_2680 : f32 = u_xlat71;
    u_xlat71 = ((-(x_2678) * x_2680) + 1.0f);
    let x_2683 : f32 = u_xlat71;
    u_xlat71 = max(x_2683, 0.0f);
    let x_2685 : f32 = u_xlat71;
    let x_2686 : f32 = u_xlat71;
    u_xlat71 = (x_2685 * x_2686);
    let x_2688 : f32 = u_xlat71;
    let x_2689 : f32 = u_xlat74;
    u_xlat71 = (x_2688 * x_2689);
    let x_2691 : i32 = u_xlati68;
    let x_2693 : vec4<f32> = x_2643.x_AdditionalLightsSpotDir[x_2691];
    let x_2695 : vec3<f32> = u_xlat31;
    u_xlat74 = dot(vec3<f32>(x_2693.x, x_2693.y, x_2693.z), x_2695);
    let x_2697 : f32 = u_xlat74;
    let x_2698 : i32 = u_xlati68;
    let x_2700 : f32 = x_2643.x_AdditionalLightsAttenuation[x_2698].z;
    let x_2702 : i32 = u_xlati68;
    let x_2704 : f32 = x_2643.x_AdditionalLightsAttenuation[x_2702].w;
    u_xlat74 = ((x_2697 * x_2700) + x_2704);
    let x_2706 : f32 = u_xlat74;
    u_xlat74 = clamp(x_2706, 0.0f, 1.0f);
    let x_2708 : f32 = u_xlat74;
    let x_2709 : f32 = u_xlat74;
    u_xlat74 = (x_2708 * x_2709);
    let x_2711 : f32 = u_xlat71;
    let x_2712 : f32 = u_xlat74;
    u_xlat71 = (x_2711 * x_2712);
    let x_2714 : vec4<f32> = u_xlat6;
    let x_2716 : i32 = u_xlati68;
    let x_2718 : vec4<f32> = x_2643.x_AdditionalLightsColor[x_2716];
    let x_2720 : vec3<f32> = (vec3<f32>(x_2714.x, x_2714.x, x_2714.x) * vec3<f32>(x_2718.x, x_2718.y, x_2718.z));
    let x_2721 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2720.x, x_2720.y, x_2720.z, x_2721.w);
    let x_2723 : vec4<f32> = u_xlat2;
    let x_2725 : vec3<f32> = u_xlat31;
    u_xlat68 = dot(vec3<f32>(x_2723.x, x_2723.y, x_2723.z), x_2725);
    let x_2727 : f32 = u_xlat68;
    u_xlat68 = clamp(x_2727, 0.0f, 1.0f);
    let x_2729 : f32 = u_xlat68;
    let x_2730 : f32 = u_xlat71;
    u_xlat68 = (x_2729 * x_2730);
    let x_2732 : f32 = u_xlat68;
    let x_2734 : vec4<f32> = u_xlat10;
    let x_2736 : vec3<f32> = (vec3<f32>(x_2732, x_2732, x_2732) * vec3<f32>(x_2734.x, x_2734.y, x_2734.z));
    let x_2737 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2736.x, x_2736.y, x_2736.z, x_2737.w);
    let x_2739 : vec4<f32> = u_xlat8;
    let x_2741 : f32 = u_xlat73;
    let x_2744 : vec4<f32> = u_xlat1;
    let x_2746 : vec3<f32> = ((vec3<f32>(x_2739.x, x_2739.y, x_2739.z) * vec3<f32>(x_2741, x_2741, x_2741)) + vec3<f32>(x_2744.x, x_2744.y, x_2744.z));
    let x_2747 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2746.x, x_2746.y, x_2746.z, x_2747.w);
    let x_2749 : vec4<f32> = u_xlat8;
    let x_2751 : vec4<f32> = u_xlat8;
    u_xlat68 = dot(vec3<f32>(x_2749.x, x_2749.y, x_2749.z), vec3<f32>(x_2751.x, x_2751.y, x_2751.z));
    let x_2754 : f32 = u_xlat68;
    u_xlat68 = max(x_2754, 1.17549435e-37f);
    let x_2756 : f32 = u_xlat68;
    u_xlat68 = inverseSqrt(x_2756);
    let x_2758 : f32 = u_xlat68;
    let x_2760 : vec4<f32> = u_xlat8;
    let x_2762 : vec3<f32> = (vec3<f32>(x_2758, x_2758, x_2758) * vec3<f32>(x_2760.x, x_2760.y, x_2760.z));
    let x_2763 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2762.x, x_2762.y, x_2762.z, x_2763.w);
    let x_2765 : vec4<f32> = u_xlat2;
    let x_2767 : vec4<f32> = u_xlat8;
    u_xlat68 = dot(vec3<f32>(x_2765.x, x_2765.y, x_2765.z), vec3<f32>(x_2767.x, x_2767.y, x_2767.z));
    let x_2770 : f32 = u_xlat68;
    u_xlat68 = clamp(x_2770, 0.0f, 1.0f);
    let x_2772 : vec3<f32> = u_xlat31;
    let x_2773 : vec4<f32> = u_xlat8;
    u_xlat71 = dot(x_2772, vec3<f32>(x_2773.x, x_2773.y, x_2773.z));
    let x_2776 : f32 = u_xlat71;
    u_xlat71 = clamp(x_2776, 0.0f, 1.0f);
    let x_2778 : f32 = u_xlat68;
    let x_2779 : f32 = u_xlat68;
    u_xlat68 = (x_2778 * x_2779);
    let x_2781 : f32 = u_xlat68;
    let x_2783 : f32 = u_xlat9.x;
    u_xlat68 = ((x_2781 * x_2783) + 1.000010014f);
    let x_2786 : f32 = u_xlat71;
    let x_2787 : f32 = u_xlat71;
    u_xlat71 = (x_2786 * x_2787);
    let x_2789 : f32 = u_xlat68;
    let x_2790 : f32 = u_xlat68;
    u_xlat68 = (x_2789 * x_2790);
    let x_2792 : f32 = u_xlat71;
    u_xlat71 = max(x_2792, 0.100000001f);
    let x_2794 : f32 = u_xlat68;
    let x_2795 : f32 = u_xlat71;
    u_xlat68 = (x_2794 * x_2795);
    let x_2797 : f32 = u_xlat69;
    let x_2798 : f32 = u_xlat68;
    u_xlat68 = (x_2797 * x_2798);
    let x_2800 : f32 = u_xlat70;
    let x_2801 : f32 = u_xlat68;
    u_xlat68 = (x_2800 / x_2801);
    let x_2803 : vec4<f32> = u_xlat5;
    let x_2805 : f32 = u_xlat68;
    let x_2808 : vec4<f32> = u_xlat7;
    let x_2810 : vec3<f32> = ((vec3<f32>(x_2803.x, x_2803.y, x_2803.z) * vec3<f32>(x_2805, x_2805, x_2805)) + vec3<f32>(x_2808.x, x_2808.y, x_2808.z));
    let x_2811 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2810.x, x_2810.y, x_2810.z, x_2811.w);
    let x_2813 : vec4<f32> = u_xlat8;
    let x_2815 : vec4<f32> = u_xlat10;
    let x_2818 : vec3<f32> = u_xlat28;
    u_xlat28 = ((vec3<f32>(x_2813.x, x_2813.y, x_2813.z) * vec3<f32>(x_2815.x, x_2815.y, x_2815.z)) + x_2818);

    continuing {
      let x_2820 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2820 + bitcast<u32>(1i));
    }
  }
  let x_2822 : vec4<f32> = u_xlat4;
  let x_2824 : f32 = u_xlat22;
  let x_2827 : vec4<f32> = u_xlat3;
  u_xlat0 = ((vec3<f32>(x_2822.x, x_2822.y, x_2822.z) * vec3<f32>(x_2824, x_2824, x_2824)) + vec3<f32>(x_2827.x, x_2827.y, x_2827.z));
  let x_2830 : vec3<f32> = u_xlat28;
  let x_2831 : vec3<f32> = u_xlat0;
  u_xlat0 = (x_2830 + x_2831);
  let x_2833 : f32 = u_xlat66;
  let x_2835 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_2833, x_2833, x_2833) * x_2835);
  let x_2837 : f32 = u_xlat67;
  let x_2838 : f32 = u_xlat67;
  u_xlat66 = (x_2837 * -(x_2838));
  let x_2841 : f32 = u_xlat66;
  u_xlat66 = exp2(x_2841);
  let x_2845 : vec3<f32> = u_xlat0;
  let x_2846 : f32 = u_xlat66;
  let x_2848 : vec3<f32> = (x_2845 * vec3<f32>(x_2846, x_2846, x_2846));
  let x_2849 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2848.x, x_2848.y, x_2848.z, x_2849.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(4) vs_TEXCOORD7_param : vec3<f32>, @location(3) vs_TEXCOORD3_param : vec3<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  main_1();
  return main_out(SV_Target0);
}

