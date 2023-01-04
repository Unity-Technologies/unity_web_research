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
}

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

@group(1) @binding(2) var<uniform> x_635 : UnityPerDraw;

@group(0) @binding(6) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(1) @binding(4) var<uniform> x_828 : MainLightShadows;

var<private> vs_TEXCOORD8 : vec4<f32>;

@group(0) @binding(7) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(12) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_2441 : AdditionalLights;

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
  var u_xlatb65 : bool;
  var u_xlat42 : f32;
  var u_xlat21 : f32;
  var u_xlatb1 : bool;
  var u_xlat22 : vec3<f32>;
  var x_573 : vec3<f32>;
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
  var x_2056 : f32;
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
  let x_293 : f32 = u_xlat64;
  u_xlatb65 = (0.005f >= x_293);
  let x_295 : bool = u_xlatb65;
  if (((select(0i, 1i, x_295) * -1i) != 0i)) {
    discard;
  }
  let x_304 : f32 = u_xlat64;
  u_xlat64 = (x_304 + 6.10351562e-05f);
  let x_307 : vec4<f32> = u_xlat4;
  let x_308 : f32 = u_xlat64;
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
  u_xlat42 = dot(x_451, x_452);
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
  u_xlat21 = dot(x_534, x_535);
  let x_539 : f32 = x_128.unity_OrthoParams.w;
  u_xlatb1 = (x_539 == 0.0f);
  let x_544 : vec3<f32> = vs_TEXCOORD7;
  let x_548 : vec3<f32> = x_128.x_WorldSpaceCameraPos;
  u_xlat22 = (-(x_544) + x_548);
  let x_550 : vec3<f32> = u_xlat22;
  let x_551 : vec3<f32> = u_xlat22;
  u_xlat2.x = dot(x_550, x_551);
  let x_555 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_555);
  let x_558 : vec3<f32> = u_xlat22;
  let x_559 : vec4<f32> = u_xlat2;
  u_xlat22 = (x_558 * vec3<f32>(x_559.x, x_559.x, x_559.x));
  let x_563 : f32 = x_128.unity_MatrixV[0i].z;
  u_xlat2.x = x_563;
  let x_566 : f32 = x_128.unity_MatrixV[1i].z;
  u_xlat2.y = x_566;
  let x_570 : f32 = x_128.unity_MatrixV[2i].z;
  u_xlat2.z = x_570;
  let x_572 : bool = u_xlatb1;
  if (x_572) {
    let x_576 : vec3<f32> = u_xlat22;
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
  u_xlat64 = dot(x_584, x_585);
  let x_587 : f32 = u_xlat64;
  u_xlat64 = inverseSqrt(x_587);
  let x_589 : f32 = u_xlat64;
  let x_591 : vec3<f32> = vs_TEXCOORD3;
  let x_592 : vec3<f32> = (vec3<f32>(x_589, x_589, x_589) * x_591);
  let x_593 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_592.x, x_592.y, x_592.z, x_593.w);
  let x_596 : f32 = vs_TEXCOORD7.y;
  let x_598 : f32 = x_128.unity_MatrixV[1i].z;
  u_xlat64 = (x_596 * x_598);
  let x_601 : f32 = x_128.unity_MatrixV[0i].z;
  let x_603 : f32 = vs_TEXCOORD7.x;
  let x_605 : f32 = u_xlat64;
  u_xlat64 = ((x_601 * x_603) + x_605);
  let x_608 : f32 = x_128.unity_MatrixV[2i].z;
  let x_610 : f32 = vs_TEXCOORD7.z;
  let x_612 : f32 = u_xlat64;
  u_xlat64 = ((x_608 * x_610) + x_612);
  let x_614 : f32 = u_xlat64;
  let x_617 : f32 = x_128.unity_MatrixV[3i].z;
  u_xlat64 = (x_614 + x_617);
  let x_619 : f32 = u_xlat64;
  let x_622 : f32 = x_128.x_ProjectionParams.y;
  u_xlat64 = (-(x_619) + -(x_622));
  let x_625 : f32 = u_xlat64;
  u_xlat64 = max(x_625, 0.0f);
  let x_627 : f32 = u_xlat64;
  let x_629 : f32 = x_128.unity_FogParams.x;
  u_xlat64 = (x_627 * x_629);
  u_xlat2.w = 1.0f;
  let x_637 : vec4<f32> = x_635.unity_SHAr;
  let x_638 : vec4<f32> = u_xlat2;
  u_xlat3.x = dot(x_637, x_638);
  let x_642 : vec4<f32> = x_635.unity_SHAg;
  let x_643 : vec4<f32> = u_xlat2;
  u_xlat3.y = dot(x_642, x_643);
  let x_647 : vec4<f32> = x_635.unity_SHAb;
  let x_648 : vec4<f32> = u_xlat2;
  u_xlat3.z = dot(x_647, x_648);
  let x_651 : vec4<f32> = u_xlat2;
  let x_653 : vec4<f32> = u_xlat2;
  u_xlat4 = (vec4<f32>(x_651.y, x_651.z, x_651.z, x_651.x) * vec4<f32>(x_653.x, x_653.y, x_653.z, x_653.z));
  let x_657 : vec4<f32> = x_635.unity_SHBr;
  let x_658 : vec4<f32> = u_xlat4;
  u_xlat6.x = dot(x_657, x_658);
  let x_662 : vec4<f32> = x_635.unity_SHBg;
  let x_663 : vec4<f32> = u_xlat4;
  u_xlat6.y = dot(x_662, x_663);
  let x_667 : vec4<f32> = x_635.unity_SHBb;
  let x_668 : vec4<f32> = u_xlat4;
  u_xlat6.z = dot(x_667, x_668);
  let x_673 : f32 = u_xlat2.y;
  let x_675 : f32 = u_xlat2.y;
  u_xlat65 = (x_673 * x_675);
  let x_678 : f32 = u_xlat2.x;
  let x_680 : f32 = u_xlat2.x;
  let x_682 : f32 = u_xlat65;
  u_xlat65 = ((x_678 * x_680) + -(x_682));
  let x_687 : vec4<f32> = x_635.unity_SHC;
  let x_689 : f32 = u_xlat65;
  let x_692 : vec4<f32> = u_xlat6;
  let x_694 : vec3<f32> = ((vec3<f32>(x_687.x, x_687.y, x_687.z) * vec3<f32>(x_689, x_689, x_689)) + vec3<f32>(x_692.x, x_692.y, x_692.z));
  let x_695 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_694.x, x_694.y, x_694.z, x_695.w);
  let x_697 : vec4<f32> = u_xlat3;
  let x_699 : vec4<f32> = u_xlat4;
  let x_701 : vec3<f32> = (vec3<f32>(x_697.x, x_697.y, x_697.z) + vec3<f32>(x_699.x, x_699.y, x_699.z));
  let x_702 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_701.x, x_701.y, x_701.z, x_702.w);
  let x_704 : vec4<f32> = u_xlat3;
  let x_707 : vec3<f32> = max(vec3<f32>(x_704.x, x_704.y, x_704.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_708 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_707.x, x_707.y, x_707.z, x_708.w);
  let x_712 : vec4<f32> = x_128.x_ScaledScreenParams;
  let x_713 : vec2<f32> = vec2<f32>(x_712.x, x_712.y);
  let x_717 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_713.x, x_713.y));
  let x_718 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_717.x, x_717.y, x_718.z, x_718.w);
  let x_720 : vec4<f32> = u_xlat4;
  let x_722 : vec4<f32> = hlslcc_FragCoord;
  let x_724 : vec2<f32> = (vec2<f32>(x_720.x, x_720.y) * vec2<f32>(x_722.x, x_722.y));
  let x_725 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_724.x, x_724.y, x_725.z, x_725.w);
  let x_728 : f32 = u_xlat4.y;
  let x_730 : f32 = x_128.x_ScaleBiasRt.x;
  let x_733 : f32 = x_128.x_ScaleBiasRt.y;
  u_xlat65 = ((x_728 * x_730) + x_733);
  let x_735 : f32 = u_xlat65;
  u_xlat4.z = (-(x_735) + 1.0f);
  let x_740 : f32 = u_xlat0.x;
  u_xlat65 = ((-(x_740) * 0.959999979f) + 0.959999979f);
  let x_746 : f32 = u_xlat42;
  let x_747 : f32 = u_xlat65;
  u_xlat66 = (x_746 + -(x_747));
  let x_750 : f32 = u_xlat65;
  let x_752 : vec4<f32> = u_xlat5;
  let x_754 : vec3<f32> = (vec3<f32>(x_750, x_750, x_750) * vec3<f32>(x_752.x, x_752.y, x_752.z));
  let x_755 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_754.x, x_754.y, x_754.z, x_755.w);
  let x_757 : vec4<f32> = u_xlat5;
  let x_761 : vec3<f32> = (vec3<f32>(x_757.x, x_757.y, x_757.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_762 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_761.x, x_761.y, x_761.z, x_762.w);
  let x_764 : vec3<f32> = u_xlat0;
  let x_766 : vec4<f32> = u_xlat5;
  let x_771 : vec3<f32> = ((vec3<f32>(x_764.x, x_764.x, x_764.x) * vec3<f32>(x_766.x, x_766.y, x_766.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_772 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_771.x, x_771.y, x_771.z, x_772.w);
  let x_774 : f32 = u_xlat42;
  u_xlat0.x = (-(x_774) + 1.0f);
  let x_779 : f32 = u_xlat0.x;
  let x_781 : f32 = u_xlat0.x;
  u_xlat42 = (x_779 * x_781);
  let x_783 : f32 = u_xlat42;
  u_xlat42 = max(x_783, 0.0078125f);
  let x_786 : f32 = u_xlat42;
  let x_787 : f32 = u_xlat42;
  u_xlat65 = (x_786 * x_787);
  let x_789 : f32 = u_xlat66;
  u_xlat66 = (x_789 + 1.0f);
  let x_791 : f32 = u_xlat66;
  u_xlat66 = clamp(x_791, 0.0f, 1.0f);
  let x_794 : f32 = u_xlat42;
  u_xlat25 = ((x_794 * 4.0f) + 2.0f);
  let x_803 : vec4<f32> = u_xlat4;
  let x_806 : f32 = x_128.x_GlobalMipBias.x;
  let x_807 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_803.x, x_803.z), x_806);
  u_xlat4.x = x_807.x;
  let x_812 : f32 = u_xlat4.x;
  u_xlat46 = (x_812 + -1.0f);
  let x_815 : f32 = x_128.x_AmbientOcclusionParam.w;
  let x_816 : f32 = u_xlat46;
  u_xlat46 = ((x_815 * x_816) + 1.0f);
  let x_819 : f32 = u_xlat21;
  let x_821 : f32 = u_xlat4.x;
  u_xlat21 = min(x_819, x_821);
  let x_830 : f32 = x_828.x_MainLightShadowParams.y;
  u_xlatb4 = (0.0f < x_830);
  let x_832 : bool = u_xlatb4;
  if (x_832) {
    let x_836 : f32 = x_828.x_MainLightShadowParams.y;
    u_xlatb4 = (x_836 == 1.0f);
    let x_838 : bool = u_xlatb4;
    if (x_838) {
      let x_842 : vec4<f32> = vs_TEXCOORD8;
      let x_845 : vec4<f32> = x_828.x_MainLightShadowOffset0;
      u_xlat7 = (vec4<f32>(x_842.x, x_842.y, x_842.x, x_842.y) + x_845);
      let x_848 : vec4<f32> = u_xlat7;
      let x_849 : vec2<f32> = vec2<f32>(x_848.x, x_848.y);
      let x_851 : f32 = vs_TEXCOORD8.z;
      txVec0 = vec3<f32>(x_849.x, x_849.y, x_851);
      let x_863 : vec3<f32> = txVec0;
      let x_865 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_863.xy, x_863.z);
      u_xlat8.x = x_865;
      let x_868 : vec4<f32> = u_xlat7;
      let x_869 : vec2<f32> = vec2<f32>(x_868.z, x_868.w);
      let x_871 : f32 = vs_TEXCOORD8.z;
      txVec1 = vec3<f32>(x_869.x, x_869.y, x_871);
      let x_878 : vec3<f32> = txVec1;
      let x_880 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_878.xy, x_878.z);
      u_xlat8.y = x_880;
      let x_882 : vec4<f32> = vs_TEXCOORD8;
      let x_885 : vec4<f32> = x_828.x_MainLightShadowOffset1;
      u_xlat7 = (vec4<f32>(x_882.x, x_882.y, x_882.x, x_882.y) + x_885);
      let x_888 : vec4<f32> = u_xlat7;
      let x_889 : vec2<f32> = vec2<f32>(x_888.x, x_888.y);
      let x_891 : f32 = vs_TEXCOORD8.z;
      txVec2 = vec3<f32>(x_889.x, x_889.y, x_891);
      let x_898 : vec3<f32> = txVec2;
      let x_900 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_898.xy, x_898.z);
      u_xlat8.z = x_900;
      let x_903 : vec4<f32> = u_xlat7;
      let x_904 : vec2<f32> = vec2<f32>(x_903.z, x_903.w);
      let x_906 : f32 = vs_TEXCOORD8.z;
      txVec3 = vec3<f32>(x_904.x, x_904.y, x_906);
      let x_913 : vec3<f32> = txVec3;
      let x_915 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_913.xy, x_913.z);
      u_xlat8.w = x_915;
      let x_917 : vec4<f32> = u_xlat8;
      u_xlat4.x = dot(x_917, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_925 : f32 = x_828.x_MainLightShadowParams.y;
      u_xlatb67 = (x_925 == 2.0f);
      let x_927 : bool = u_xlatb67;
      if (x_927) {
        let x_930 : vec4<f32> = vs_TEXCOORD8;
        let x_933 : vec4<f32> = x_828.x_MainLightShadowmapSize;
        let x_936 : vec2<f32> = ((vec2<f32>(x_930.x, x_930.y) * vec2<f32>(x_933.z, x_933.w)) + vec2<f32>(0.5f, 0.5f));
        let x_937 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_936.x, x_936.y, x_937.z, x_937.w);
        let x_939 : vec4<f32> = u_xlat7;
        let x_941 : vec2<f32> = floor(vec2<f32>(x_939.x, x_939.y));
        let x_942 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_941.x, x_941.y, x_942.z, x_942.w);
        let x_946 : vec4<f32> = vs_TEXCOORD8;
        let x_949 : vec4<f32> = x_828.x_MainLightShadowmapSize;
        let x_952 : vec4<f32> = u_xlat7;
        u_xlat49 = ((vec2<f32>(x_946.x, x_946.y) * vec2<f32>(x_949.z, x_949.w)) + -(vec2<f32>(x_952.x, x_952.y)));
        let x_956 : vec2<f32> = u_xlat49;
        u_xlat8 = (vec4<f32>(x_956.x, x_956.x, x_956.y, x_956.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_960 : vec4<f32> = u_xlat8;
        let x_962 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_960.x, x_960.x, x_960.z, x_960.z) * vec4<f32>(x_962.x, x_962.x, x_962.z, x_962.z));
        let x_965 : vec4<f32> = u_xlat9;
        let x_969 : vec2<f32> = (vec2<f32>(x_965.y, x_965.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_970 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_969.x, x_970.y, x_969.y, x_970.w);
        let x_972 : vec4<f32> = u_xlat9;
        let x_975 : vec2<f32> = u_xlat49;
        let x_977 : vec2<f32> = ((vec2<f32>(x_972.x, x_972.z) * vec2<f32>(0.5f, 0.5f)) + -(x_975));
        let x_978 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_977.x, x_977.y, x_978.z, x_978.w);
        let x_981 : vec2<f32> = u_xlat49;
        u_xlat51 = (-(x_981) + vec2<f32>(1.0f, 1.0f));
        let x_984 : vec2<f32> = u_xlat49;
        let x_986 : vec2<f32> = min(x_984, vec2<f32>(0.0f, 0.0f));
        let x_987 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_986.x, x_986.y, x_987.z, x_987.w);
        let x_989 : vec4<f32> = u_xlat10;
        let x_992 : vec4<f32> = u_xlat10;
        let x_995 : vec2<f32> = u_xlat51;
        let x_996 : vec2<f32> = ((-(vec2<f32>(x_989.x, x_989.y)) * vec2<f32>(x_992.x, x_992.y)) + x_995);
        let x_997 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_996.x, x_996.y, x_997.z, x_997.w);
        let x_999 : vec2<f32> = u_xlat49;
        u_xlat49 = max(x_999, vec2<f32>(0.0f, 0.0f));
        let x_1001 : vec2<f32> = u_xlat49;
        let x_1003 : vec2<f32> = u_xlat49;
        let x_1005 : vec4<f32> = u_xlat8;
        u_xlat49 = ((-(x_1001) * x_1003) + vec2<f32>(x_1005.y, x_1005.w));
        let x_1008 : vec4<f32> = u_xlat10;
        let x_1010 : vec2<f32> = (vec2<f32>(x_1008.x, x_1008.y) + vec2<f32>(1.0f, 1.0f));
        let x_1011 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1010.x, x_1010.y, x_1011.z, x_1011.w);
        let x_1013 : vec2<f32> = u_xlat49;
        u_xlat49 = (x_1013 + vec2<f32>(1.0f, 1.0f));
        let x_1015 : vec4<f32> = u_xlat9;
        let x_1019 : vec2<f32> = (vec2<f32>(x_1015.x, x_1015.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1020 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1019.x, x_1019.y, x_1020.z, x_1020.w);
        let x_1022 : vec2<f32> = u_xlat51;
        let x_1023 : vec2<f32> = (x_1022 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1024 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1023.x, x_1023.y, x_1024.z, x_1024.w);
        let x_1026 : vec4<f32> = u_xlat10;
        let x_1028 : vec2<f32> = (vec2<f32>(x_1026.x, x_1026.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1029 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1028.x, x_1028.y, x_1029.z, x_1029.w);
        let x_1031 : vec2<f32> = u_xlat49;
        let x_1032 : vec2<f32> = (x_1031 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1033 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1032.x, x_1032.y, x_1033.z, x_1033.w);
        let x_1035 : vec4<f32> = u_xlat8;
        u_xlat49 = (vec2<f32>(x_1035.y, x_1035.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1039 : f32 = u_xlat10.x;
        u_xlat11.z = x_1039;
        let x_1042 : f32 = u_xlat49.x;
        u_xlat11.w = x_1042;
        let x_1045 : f32 = u_xlat12.x;
        u_xlat9.z = x_1045;
        let x_1048 : f32 = u_xlat8.x;
        u_xlat9.w = x_1048;
        let x_1050 : vec4<f32> = u_xlat9;
        let x_1052 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_1050.z, x_1050.w, x_1050.x, x_1050.z) + vec4<f32>(x_1052.z, x_1052.w, x_1052.x, x_1052.z));
        let x_1056 : f32 = u_xlat11.y;
        u_xlat10.z = x_1056;
        let x_1059 : f32 = u_xlat49.y;
        u_xlat10.w = x_1059;
        let x_1062 : f32 = u_xlat9.y;
        u_xlat12.z = x_1062;
        let x_1065 : f32 = u_xlat8.z;
        u_xlat12.w = x_1065;
        let x_1067 : vec4<f32> = u_xlat10;
        let x_1069 : vec4<f32> = u_xlat12;
        let x_1071 : vec3<f32> = (vec3<f32>(x_1067.z, x_1067.y, x_1067.w) + vec3<f32>(x_1069.z, x_1069.y, x_1069.w));
        let x_1072 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1071.x, x_1071.y, x_1071.z, x_1072.w);
        let x_1074 : vec4<f32> = u_xlat9;
        let x_1076 : vec4<f32> = u_xlat13;
        let x_1078 : vec3<f32> = (vec3<f32>(x_1074.x, x_1074.z, x_1074.w) / vec3<f32>(x_1076.z, x_1076.w, x_1076.y));
        let x_1079 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1078.x, x_1078.y, x_1078.z, x_1079.w);
        let x_1081 : vec4<f32> = u_xlat9;
        let x_1087 : vec3<f32> = (vec3<f32>(x_1081.x, x_1081.y, x_1081.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1088 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1087.x, x_1087.y, x_1087.z, x_1088.w);
        let x_1090 : vec4<f32> = u_xlat12;
        let x_1092 : vec4<f32> = u_xlat8;
        let x_1094 : vec3<f32> = (vec3<f32>(x_1090.z, x_1090.y, x_1090.w) / vec3<f32>(x_1092.x, x_1092.y, x_1092.z));
        let x_1095 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1094.x, x_1094.y, x_1094.z, x_1095.w);
        let x_1097 : vec4<f32> = u_xlat10;
        let x_1099 : vec3<f32> = (vec3<f32>(x_1097.x, x_1097.y, x_1097.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1100 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1099.x, x_1099.y, x_1099.z, x_1100.w);
        let x_1102 : vec4<f32> = u_xlat9;
        let x_1105 : vec4<f32> = x_828.x_MainLightShadowmapSize;
        let x_1107 : vec3<f32> = (vec3<f32>(x_1102.y, x_1102.x, x_1102.z) * vec3<f32>(x_1105.x, x_1105.x, x_1105.x));
        let x_1108 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1107.x, x_1107.y, x_1107.z, x_1108.w);
        let x_1110 : vec4<f32> = u_xlat10;
        let x_1113 : vec4<f32> = x_828.x_MainLightShadowmapSize;
        let x_1115 : vec3<f32> = (vec3<f32>(x_1110.x, x_1110.y, x_1110.z) * vec3<f32>(x_1113.y, x_1113.y, x_1113.y));
        let x_1116 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1115.x, x_1115.y, x_1115.z, x_1116.w);
        let x_1119 : f32 = u_xlat10.x;
        u_xlat9.w = x_1119;
        let x_1121 : vec4<f32> = u_xlat7;
        let x_1124 : vec4<f32> = x_828.x_MainLightShadowmapSize;
        let x_1127 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1121.x, x_1121.y, x_1121.x, x_1121.y) * vec4<f32>(x_1124.x, x_1124.y, x_1124.x, x_1124.y)) + vec4<f32>(x_1127.y, x_1127.w, x_1127.x, x_1127.w));
        let x_1130 : vec4<f32> = u_xlat7;
        let x_1133 : vec4<f32> = x_828.x_MainLightShadowmapSize;
        let x_1136 : vec4<f32> = u_xlat9;
        u_xlat49 = ((vec2<f32>(x_1130.x, x_1130.y) * vec2<f32>(x_1133.x, x_1133.y)) + vec2<f32>(x_1136.z, x_1136.w));
        let x_1140 : f32 = u_xlat9.y;
        u_xlat10.w = x_1140;
        let x_1142 : vec4<f32> = u_xlat10;
        let x_1143 : vec2<f32> = vec2<f32>(x_1142.y, x_1142.z);
        let x_1144 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1144.x, x_1143.x, x_1144.z, x_1143.y);
        let x_1146 : vec4<f32> = u_xlat7;
        let x_1149 : vec4<f32> = x_828.x_MainLightShadowmapSize;
        let x_1152 : vec4<f32> = u_xlat9;
        u_xlat12 = ((vec4<f32>(x_1146.x, x_1146.y, x_1146.x, x_1146.y) * vec4<f32>(x_1149.x, x_1149.y, x_1149.x, x_1149.y)) + vec4<f32>(x_1152.x, x_1152.y, x_1152.z, x_1152.y));
        let x_1155 : vec4<f32> = u_xlat7;
        let x_1158 : vec4<f32> = x_828.x_MainLightShadowmapSize;
        let x_1161 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_1155.x, x_1155.y, x_1155.x, x_1155.y) * vec4<f32>(x_1158.x, x_1158.y, x_1158.x, x_1158.y)) + vec4<f32>(x_1161.w, x_1161.y, x_1161.w, x_1161.z));
        let x_1164 : vec4<f32> = u_xlat7;
        let x_1167 : vec4<f32> = x_828.x_MainLightShadowmapSize;
        let x_1170 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1164.x, x_1164.y, x_1164.x, x_1164.y) * vec4<f32>(x_1167.x, x_1167.y, x_1167.x, x_1167.y)) + vec4<f32>(x_1170.x, x_1170.w, x_1170.z, x_1170.w));
        let x_1174 : vec4<f32> = u_xlat8;
        let x_1176 : vec4<f32> = u_xlat13;
        u_xlat14 = (vec4<f32>(x_1174.x, x_1174.x, x_1174.x, x_1174.y) * vec4<f32>(x_1176.z, x_1176.w, x_1176.y, x_1176.z));
        let x_1180 : vec4<f32> = u_xlat8;
        let x_1182 : vec4<f32> = u_xlat13;
        u_xlat15 = (vec4<f32>(x_1180.y, x_1180.y, x_1180.z, x_1180.z) * x_1182);
        let x_1186 : f32 = u_xlat8.z;
        let x_1188 : f32 = u_xlat13.y;
        u_xlat67 = (x_1186 * x_1188);
        let x_1191 : vec4<f32> = u_xlat11;
        let x_1192 : vec2<f32> = vec2<f32>(x_1191.x, x_1191.y);
        let x_1194 : f32 = vs_TEXCOORD8.z;
        txVec4 = vec3<f32>(x_1192.x, x_1192.y, x_1194);
        let x_1202 : vec3<f32> = txVec4;
        let x_1204 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1202.xy, x_1202.z);
        u_xlat68 = x_1204;
        let x_1206 : vec4<f32> = u_xlat11;
        let x_1207 : vec2<f32> = vec2<f32>(x_1206.z, x_1206.w);
        let x_1209 : f32 = vs_TEXCOORD8.z;
        txVec5 = vec3<f32>(x_1207.x, x_1207.y, x_1209);
        let x_1217 : vec3<f32> = txVec5;
        let x_1219 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1217.xy, x_1217.z);
        u_xlat69 = x_1219;
        let x_1220 : f32 = u_xlat69;
        let x_1222 : f32 = u_xlat14.y;
        u_xlat69 = (x_1220 * x_1222);
        let x_1225 : f32 = u_xlat14.x;
        let x_1226 : f32 = u_xlat68;
        let x_1228 : f32 = u_xlat69;
        u_xlat68 = ((x_1225 * x_1226) + x_1228);
        let x_1231 : vec2<f32> = u_xlat49;
        let x_1233 : f32 = vs_TEXCOORD8.z;
        txVec6 = vec3<f32>(x_1231.x, x_1231.y, x_1233);
        let x_1240 : vec3<f32> = txVec6;
        let x_1242 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1240.xy, x_1240.z);
        u_xlat69 = x_1242;
        let x_1244 : f32 = u_xlat14.z;
        let x_1245 : f32 = u_xlat69;
        let x_1247 : f32 = u_xlat68;
        u_xlat68 = ((x_1244 * x_1245) + x_1247);
        let x_1250 : vec4<f32> = u_xlat10;
        let x_1251 : vec2<f32> = vec2<f32>(x_1250.x, x_1250.y);
        let x_1253 : f32 = vs_TEXCOORD8.z;
        txVec7 = vec3<f32>(x_1251.x, x_1251.y, x_1253);
        let x_1260 : vec3<f32> = txVec7;
        let x_1262 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1260.xy, x_1260.z);
        u_xlat69 = x_1262;
        let x_1264 : f32 = u_xlat14.w;
        let x_1265 : f32 = u_xlat69;
        let x_1267 : f32 = u_xlat68;
        u_xlat68 = ((x_1264 * x_1265) + x_1267);
        let x_1270 : vec4<f32> = u_xlat12;
        let x_1271 : vec2<f32> = vec2<f32>(x_1270.x, x_1270.y);
        let x_1273 : f32 = vs_TEXCOORD8.z;
        txVec8 = vec3<f32>(x_1271.x, x_1271.y, x_1273);
        let x_1280 : vec3<f32> = txVec8;
        let x_1282 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1280.xy, x_1280.z);
        u_xlat69 = x_1282;
        let x_1284 : f32 = u_xlat15.x;
        let x_1285 : f32 = u_xlat69;
        let x_1287 : f32 = u_xlat68;
        u_xlat68 = ((x_1284 * x_1285) + x_1287);
        let x_1290 : vec4<f32> = u_xlat12;
        let x_1291 : vec2<f32> = vec2<f32>(x_1290.z, x_1290.w);
        let x_1293 : f32 = vs_TEXCOORD8.z;
        txVec9 = vec3<f32>(x_1291.x, x_1291.y, x_1293);
        let x_1300 : vec3<f32> = txVec9;
        let x_1302 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1300.xy, x_1300.z);
        u_xlat69 = x_1302;
        let x_1304 : f32 = u_xlat15.y;
        let x_1305 : f32 = u_xlat69;
        let x_1307 : f32 = u_xlat68;
        u_xlat68 = ((x_1304 * x_1305) + x_1307);
        let x_1310 : vec4<f32> = u_xlat10;
        let x_1311 : vec2<f32> = vec2<f32>(x_1310.z, x_1310.w);
        let x_1313 : f32 = vs_TEXCOORD8.z;
        txVec10 = vec3<f32>(x_1311.x, x_1311.y, x_1313);
        let x_1320 : vec3<f32> = txVec10;
        let x_1322 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1320.xy, x_1320.z);
        u_xlat69 = x_1322;
        let x_1324 : f32 = u_xlat15.z;
        let x_1325 : f32 = u_xlat69;
        let x_1327 : f32 = u_xlat68;
        u_xlat68 = ((x_1324 * x_1325) + x_1327);
        let x_1330 : vec4<f32> = u_xlat9;
        let x_1331 : vec2<f32> = vec2<f32>(x_1330.x, x_1330.y);
        let x_1333 : f32 = vs_TEXCOORD8.z;
        txVec11 = vec3<f32>(x_1331.x, x_1331.y, x_1333);
        let x_1340 : vec3<f32> = txVec11;
        let x_1342 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1340.xy, x_1340.z);
        u_xlat69 = x_1342;
        let x_1344 : f32 = u_xlat15.w;
        let x_1345 : f32 = u_xlat69;
        let x_1347 : f32 = u_xlat68;
        u_xlat68 = ((x_1344 * x_1345) + x_1347);
        let x_1350 : vec4<f32> = u_xlat9;
        let x_1351 : vec2<f32> = vec2<f32>(x_1350.z, x_1350.w);
        let x_1353 : f32 = vs_TEXCOORD8.z;
        txVec12 = vec3<f32>(x_1351.x, x_1351.y, x_1353);
        let x_1360 : vec3<f32> = txVec12;
        let x_1362 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1360.xy, x_1360.z);
        u_xlat69 = x_1362;
        let x_1363 : f32 = u_xlat67;
        let x_1364 : f32 = u_xlat69;
        let x_1366 : f32 = u_xlat68;
        u_xlat4.x = ((x_1363 * x_1364) + x_1366);
      } else {
        let x_1370 : vec4<f32> = vs_TEXCOORD8;
        let x_1373 : vec4<f32> = x_828.x_MainLightShadowmapSize;
        let x_1376 : vec2<f32> = ((vec2<f32>(x_1370.x, x_1370.y) * vec2<f32>(x_1373.z, x_1373.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1377 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1376.x, x_1376.y, x_1377.z, x_1377.w);
        let x_1379 : vec4<f32> = u_xlat7;
        let x_1381 : vec2<f32> = floor(vec2<f32>(x_1379.x, x_1379.y));
        let x_1382 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1381.x, x_1381.y, x_1382.z, x_1382.w);
        let x_1384 : vec4<f32> = vs_TEXCOORD8;
        let x_1387 : vec4<f32> = x_828.x_MainLightShadowmapSize;
        let x_1390 : vec4<f32> = u_xlat7;
        u_xlat49 = ((vec2<f32>(x_1384.x, x_1384.y) * vec2<f32>(x_1387.z, x_1387.w)) + -(vec2<f32>(x_1390.x, x_1390.y)));
        let x_1394 : vec2<f32> = u_xlat49;
        u_xlat8 = (vec4<f32>(x_1394.x, x_1394.x, x_1394.y, x_1394.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1397 : vec4<f32> = u_xlat8;
        let x_1399 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1397.x, x_1397.x, x_1397.z, x_1397.z) * vec4<f32>(x_1399.x, x_1399.x, x_1399.z, x_1399.z));
        let x_1402 : vec4<f32> = u_xlat9;
        let x_1406 : vec2<f32> = (vec2<f32>(x_1402.y, x_1402.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1407 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1407.x, x_1406.x, x_1407.z, x_1406.y);
        let x_1409 : vec4<f32> = u_xlat9;
        let x_1412 : vec2<f32> = u_xlat49;
        let x_1414 : vec2<f32> = ((vec2<f32>(x_1409.x, x_1409.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1412));
        let x_1415 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1414.x, x_1415.y, x_1414.y, x_1415.w);
        let x_1417 : vec2<f32> = u_xlat49;
        let x_1419 : vec2<f32> = (-(x_1417) + vec2<f32>(1.0f, 1.0f));
        let x_1420 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1419.x, x_1419.y, x_1420.z, x_1420.w);
        let x_1422 : vec2<f32> = u_xlat49;
        u_xlat51 = min(x_1422, vec2<f32>(0.0f, 0.0f));
        let x_1424 : vec2<f32> = u_xlat51;
        let x_1426 : vec2<f32> = u_xlat51;
        let x_1428 : vec4<f32> = u_xlat9;
        let x_1430 : vec2<f32> = ((-(x_1424) * x_1426) + vec2<f32>(x_1428.x, x_1428.y));
        let x_1431 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1430.x, x_1430.y, x_1431.z, x_1431.w);
        let x_1433 : vec2<f32> = u_xlat49;
        u_xlat51 = max(x_1433, vec2<f32>(0.0f, 0.0f));
        let x_1436 : vec2<f32> = u_xlat51;
        let x_1438 : vec2<f32> = u_xlat51;
        let x_1440 : vec4<f32> = u_xlat8;
        let x_1442 : vec2<f32> = ((-(x_1436) * x_1438) + vec2<f32>(x_1440.y, x_1440.w));
        let x_1443 : vec3<f32> = u_xlat29;
        u_xlat29 = vec3<f32>(x_1442.x, x_1443.y, x_1442.y);
        let x_1445 : vec4<f32> = u_xlat9;
        let x_1448 : vec2<f32> = (vec2<f32>(x_1445.x, x_1445.y) + vec2<f32>(2.0f, 2.0f));
        let x_1449 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1448.x, x_1448.y, x_1449.z, x_1449.w);
        let x_1451 : vec3<f32> = u_xlat29;
        let x_1453 : vec2<f32> = (vec2<f32>(x_1451.x, x_1451.z) + vec2<f32>(2.0f, 2.0f));
        let x_1454 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1454.x, x_1453.x, x_1454.z, x_1453.y);
        let x_1457 : f32 = u_xlat8.y;
        u_xlat11.z = (x_1457 * 0.081632003f);
        let x_1461 : vec4<f32> = u_xlat8;
        let x_1464 : vec3<f32> = (vec3<f32>(x_1461.z, x_1461.x, x_1461.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_1465 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1464.x, x_1464.y, x_1464.z, x_1465.w);
        let x_1467 : vec4<f32> = u_xlat9;
        let x_1470 : vec2<f32> = (vec2<f32>(x_1467.x, x_1467.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1471 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1470.x, x_1470.y, x_1471.z, x_1471.w);
        let x_1474 : f32 = u_xlat12.y;
        u_xlat11.x = x_1474;
        let x_1476 : vec2<f32> = u_xlat49;
        let x_1483 : vec2<f32> = ((vec2<f32>(x_1476.x, x_1476.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1484 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1484.x, x_1483.x, x_1484.z, x_1483.y);
        let x_1486 : vec2<f32> = u_xlat49;
        let x_1490 : vec2<f32> = ((vec2<f32>(x_1486.x, x_1486.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1491 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1490.x, x_1491.y, x_1490.y, x_1491.w);
        let x_1494 : f32 = u_xlat8.x;
        u_xlat9.y = x_1494;
        let x_1497 : f32 = u_xlat10.y;
        u_xlat9.w = x_1497;
        let x_1499 : vec4<f32> = u_xlat9;
        let x_1500 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_1499 + x_1500);
        let x_1502 : vec2<f32> = u_xlat49;
        let x_1505 : vec2<f32> = ((vec2<f32>(x_1502.y, x_1502.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1506 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1506.x, x_1505.x, x_1506.z, x_1505.y);
        let x_1508 : vec2<f32> = u_xlat49;
        let x_1511 : vec2<f32> = ((vec2<f32>(x_1508.y, x_1508.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1512 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1511.x, x_1512.y, x_1511.y, x_1512.w);
        let x_1515 : f32 = u_xlat8.y;
        u_xlat10.y = x_1515;
        let x_1517 : vec4<f32> = u_xlat10;
        let x_1518 : vec4<f32> = u_xlat12;
        u_xlat8 = (x_1517 + x_1518);
        let x_1520 : vec4<f32> = u_xlat9;
        let x_1521 : vec4<f32> = u_xlat11;
        u_xlat9 = (x_1520 / x_1521);
        let x_1523 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1523 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1529 : vec4<f32> = u_xlat10;
        let x_1530 : vec4<f32> = u_xlat8;
        u_xlat10 = (x_1529 / x_1530);
        let x_1532 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1532 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1534 : vec4<f32> = u_xlat9;
        let x_1537 : vec4<f32> = x_828.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1534.w, x_1534.x, x_1534.y, x_1534.z) * vec4<f32>(x_1537.x, x_1537.x, x_1537.x, x_1537.x));
        let x_1540 : vec4<f32> = u_xlat10;
        let x_1543 : vec4<f32> = x_828.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1540.x, x_1540.w, x_1540.y, x_1540.z) * vec4<f32>(x_1543.y, x_1543.y, x_1543.y, x_1543.y));
        let x_1546 : vec4<f32> = u_xlat9;
        let x_1547 : vec3<f32> = vec3<f32>(x_1546.y, x_1546.z, x_1546.w);
        let x_1548 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1547.x, x_1548.y, x_1547.y, x_1547.z);
        let x_1551 : f32 = u_xlat10.x;
        u_xlat12.y = x_1551;
        let x_1553 : vec4<f32> = u_xlat7;
        let x_1556 : vec4<f32> = x_828.x_MainLightShadowmapSize;
        let x_1559 : vec4<f32> = u_xlat12;
        u_xlat13 = ((vec4<f32>(x_1553.x, x_1553.y, x_1553.x, x_1553.y) * vec4<f32>(x_1556.x, x_1556.y, x_1556.x, x_1556.y)) + vec4<f32>(x_1559.x, x_1559.y, x_1559.z, x_1559.y));
        let x_1562 : vec4<f32> = u_xlat7;
        let x_1565 : vec4<f32> = x_828.x_MainLightShadowmapSize;
        let x_1568 : vec4<f32> = u_xlat12;
        u_xlat49 = ((vec2<f32>(x_1562.x, x_1562.y) * vec2<f32>(x_1565.x, x_1565.y)) + vec2<f32>(x_1568.w, x_1568.y));
        let x_1572 : f32 = u_xlat12.y;
        u_xlat9.y = x_1572;
        let x_1575 : f32 = u_xlat10.z;
        u_xlat12.y = x_1575;
        let x_1577 : vec4<f32> = u_xlat7;
        let x_1580 : vec4<f32> = x_828.x_MainLightShadowmapSize;
        let x_1583 : vec4<f32> = u_xlat12;
        u_xlat14 = ((vec4<f32>(x_1577.x, x_1577.y, x_1577.x, x_1577.y) * vec4<f32>(x_1580.x, x_1580.y, x_1580.x, x_1580.y)) + vec4<f32>(x_1583.x, x_1583.y, x_1583.z, x_1583.y));
        let x_1586 : vec4<f32> = u_xlat7;
        let x_1589 : vec4<f32> = x_828.x_MainLightShadowmapSize;
        let x_1592 : vec4<f32> = u_xlat12;
        let x_1594 : vec2<f32> = ((vec2<f32>(x_1586.x, x_1586.y) * vec2<f32>(x_1589.x, x_1589.y)) + vec2<f32>(x_1592.w, x_1592.y));
        let x_1595 : vec4<f32> = u_xlat15;
        u_xlat15 = vec4<f32>(x_1594.x, x_1594.y, x_1595.z, x_1595.w);
        let x_1598 : f32 = u_xlat12.y;
        u_xlat9.z = x_1598;
        let x_1601 : vec4<f32> = u_xlat7;
        let x_1604 : vec4<f32> = x_828.x_MainLightShadowmapSize;
        let x_1607 : vec4<f32> = u_xlat9;
        u_xlat16 = ((vec4<f32>(x_1601.x, x_1601.y, x_1601.x, x_1601.y) * vec4<f32>(x_1604.x, x_1604.y, x_1604.x, x_1604.y)) + vec4<f32>(x_1607.x, x_1607.y, x_1607.x, x_1607.z));
        let x_1611 : f32 = u_xlat10.w;
        u_xlat12.y = x_1611;
        let x_1614 : vec4<f32> = u_xlat7;
        let x_1617 : vec4<f32> = x_828.x_MainLightShadowmapSize;
        let x_1620 : vec4<f32> = u_xlat12;
        u_xlat17 = ((vec4<f32>(x_1614.x, x_1614.y, x_1614.x, x_1614.y) * vec4<f32>(x_1617.x, x_1617.y, x_1617.x, x_1617.y)) + vec4<f32>(x_1620.x, x_1620.y, x_1620.z, x_1620.y));
        let x_1624 : vec4<f32> = u_xlat7;
        let x_1627 : vec4<f32> = x_828.x_MainLightShadowmapSize;
        let x_1630 : vec4<f32> = u_xlat12;
        u_xlat30 = ((vec2<f32>(x_1624.x, x_1624.y) * vec2<f32>(x_1627.x, x_1627.y)) + vec2<f32>(x_1630.w, x_1630.y));
        let x_1634 : f32 = u_xlat12.y;
        u_xlat9.w = x_1634;
        let x_1637 : vec4<f32> = u_xlat7;
        let x_1640 : vec4<f32> = x_828.x_MainLightShadowmapSize;
        let x_1643 : vec4<f32> = u_xlat9;
        u_xlat57 = ((vec2<f32>(x_1637.x, x_1637.y) * vec2<f32>(x_1640.x, x_1640.y)) + vec2<f32>(x_1643.x, x_1643.w));
        let x_1646 : vec4<f32> = u_xlat12;
        let x_1647 : vec3<f32> = vec3<f32>(x_1646.x, x_1646.z, x_1646.w);
        let x_1648 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1647.x, x_1648.y, x_1647.y, x_1647.z);
        let x_1650 : vec4<f32> = u_xlat7;
        let x_1653 : vec4<f32> = x_828.x_MainLightShadowmapSize;
        let x_1656 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1650.x, x_1650.y, x_1650.x, x_1650.y) * vec4<f32>(x_1653.x, x_1653.y, x_1653.x, x_1653.y)) + vec4<f32>(x_1656.x, x_1656.y, x_1656.z, x_1656.y));
        let x_1660 : vec4<f32> = u_xlat7;
        let x_1663 : vec4<f32> = x_828.x_MainLightShadowmapSize;
        let x_1666 : vec4<f32> = u_xlat10;
        u_xlat52 = ((vec2<f32>(x_1660.x, x_1660.y) * vec2<f32>(x_1663.x, x_1663.y)) + vec2<f32>(x_1666.w, x_1666.y));
        let x_1670 : f32 = u_xlat9.x;
        u_xlat10.x = x_1670;
        let x_1672 : vec4<f32> = u_xlat7;
        let x_1675 : vec4<f32> = x_828.x_MainLightShadowmapSize;
        let x_1678 : vec4<f32> = u_xlat10;
        let x_1680 : vec2<f32> = ((vec2<f32>(x_1672.x, x_1672.y) * vec2<f32>(x_1675.x, x_1675.y)) + vec2<f32>(x_1678.x, x_1678.y));
        let x_1681 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1680.x, x_1680.y, x_1681.z, x_1681.w);
        let x_1684 : vec4<f32> = u_xlat8;
        let x_1686 : vec4<f32> = u_xlat11;
        u_xlat18 = (vec4<f32>(x_1684.x, x_1684.x, x_1684.x, x_1684.x) * x_1686);
        let x_1689 : vec4<f32> = u_xlat8;
        let x_1691 : vec4<f32> = u_xlat11;
        u_xlat19 = (vec4<f32>(x_1689.y, x_1689.y, x_1689.y, x_1689.y) * x_1691);
        let x_1694 : vec4<f32> = u_xlat8;
        let x_1696 : vec4<f32> = u_xlat11;
        u_xlat20 = (vec4<f32>(x_1694.z, x_1694.z, x_1694.z, x_1694.z) * x_1696);
        let x_1698 : vec4<f32> = u_xlat8;
        let x_1700 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_1698.w, x_1698.w, x_1698.w, x_1698.w) * x_1700);
        let x_1703 : vec4<f32> = u_xlat13;
        let x_1704 : vec2<f32> = vec2<f32>(x_1703.x, x_1703.y);
        let x_1706 : f32 = vs_TEXCOORD8.z;
        txVec13 = vec3<f32>(x_1704.x, x_1704.y, x_1706);
        let x_1713 : vec3<f32> = txVec13;
        let x_1715 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1713.xy, x_1713.z);
        u_xlat67 = x_1715;
        let x_1717 : vec4<f32> = u_xlat13;
        let x_1718 : vec2<f32> = vec2<f32>(x_1717.z, x_1717.w);
        let x_1720 : f32 = vs_TEXCOORD8.z;
        txVec14 = vec3<f32>(x_1718.x, x_1718.y, x_1720);
        let x_1727 : vec3<f32> = txVec14;
        let x_1729 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1727.xy, x_1727.z);
        u_xlat68 = x_1729;
        let x_1730 : f32 = u_xlat68;
        let x_1732 : f32 = u_xlat18.y;
        u_xlat68 = (x_1730 * x_1732);
        let x_1735 : f32 = u_xlat18.x;
        let x_1736 : f32 = u_xlat67;
        let x_1738 : f32 = u_xlat68;
        u_xlat67 = ((x_1735 * x_1736) + x_1738);
        let x_1741 : vec2<f32> = u_xlat49;
        let x_1743 : f32 = vs_TEXCOORD8.z;
        txVec15 = vec3<f32>(x_1741.x, x_1741.y, x_1743);
        let x_1750 : vec3<f32> = txVec15;
        let x_1752 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1750.xy, x_1750.z);
        u_xlat68 = x_1752;
        let x_1754 : f32 = u_xlat18.z;
        let x_1755 : f32 = u_xlat68;
        let x_1757 : f32 = u_xlat67;
        u_xlat67 = ((x_1754 * x_1755) + x_1757);
        let x_1760 : vec4<f32> = u_xlat16;
        let x_1761 : vec2<f32> = vec2<f32>(x_1760.x, x_1760.y);
        let x_1763 : f32 = vs_TEXCOORD8.z;
        txVec16 = vec3<f32>(x_1761.x, x_1761.y, x_1763);
        let x_1770 : vec3<f32> = txVec16;
        let x_1772 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1770.xy, x_1770.z);
        u_xlat68 = x_1772;
        let x_1774 : f32 = u_xlat18.w;
        let x_1775 : f32 = u_xlat68;
        let x_1777 : f32 = u_xlat67;
        u_xlat67 = ((x_1774 * x_1775) + x_1777);
        let x_1780 : vec4<f32> = u_xlat14;
        let x_1781 : vec2<f32> = vec2<f32>(x_1780.x, x_1780.y);
        let x_1783 : f32 = vs_TEXCOORD8.z;
        txVec17 = vec3<f32>(x_1781.x, x_1781.y, x_1783);
        let x_1790 : vec3<f32> = txVec17;
        let x_1792 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1790.xy, x_1790.z);
        u_xlat68 = x_1792;
        let x_1794 : f32 = u_xlat19.x;
        let x_1795 : f32 = u_xlat68;
        let x_1797 : f32 = u_xlat67;
        u_xlat67 = ((x_1794 * x_1795) + x_1797);
        let x_1800 : vec4<f32> = u_xlat14;
        let x_1801 : vec2<f32> = vec2<f32>(x_1800.z, x_1800.w);
        let x_1803 : f32 = vs_TEXCOORD8.z;
        txVec18 = vec3<f32>(x_1801.x, x_1801.y, x_1803);
        let x_1810 : vec3<f32> = txVec18;
        let x_1812 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1810.xy, x_1810.z);
        u_xlat68 = x_1812;
        let x_1814 : f32 = u_xlat19.y;
        let x_1815 : f32 = u_xlat68;
        let x_1817 : f32 = u_xlat67;
        u_xlat67 = ((x_1814 * x_1815) + x_1817);
        let x_1820 : vec4<f32> = u_xlat15;
        let x_1821 : vec2<f32> = vec2<f32>(x_1820.x, x_1820.y);
        let x_1823 : f32 = vs_TEXCOORD8.z;
        txVec19 = vec3<f32>(x_1821.x, x_1821.y, x_1823);
        let x_1830 : vec3<f32> = txVec19;
        let x_1832 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1830.xy, x_1830.z);
        u_xlat68 = x_1832;
        let x_1834 : f32 = u_xlat19.z;
        let x_1835 : f32 = u_xlat68;
        let x_1837 : f32 = u_xlat67;
        u_xlat67 = ((x_1834 * x_1835) + x_1837);
        let x_1840 : vec4<f32> = u_xlat16;
        let x_1841 : vec2<f32> = vec2<f32>(x_1840.z, x_1840.w);
        let x_1843 : f32 = vs_TEXCOORD8.z;
        txVec20 = vec3<f32>(x_1841.x, x_1841.y, x_1843);
        let x_1850 : vec3<f32> = txVec20;
        let x_1852 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1850.xy, x_1850.z);
        u_xlat68 = x_1852;
        let x_1854 : f32 = u_xlat19.w;
        let x_1855 : f32 = u_xlat68;
        let x_1857 : f32 = u_xlat67;
        u_xlat67 = ((x_1854 * x_1855) + x_1857);
        let x_1860 : vec4<f32> = u_xlat17;
        let x_1861 : vec2<f32> = vec2<f32>(x_1860.x, x_1860.y);
        let x_1863 : f32 = vs_TEXCOORD8.z;
        txVec21 = vec3<f32>(x_1861.x, x_1861.y, x_1863);
        let x_1870 : vec3<f32> = txVec21;
        let x_1872 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1870.xy, x_1870.z);
        u_xlat68 = x_1872;
        let x_1874 : f32 = u_xlat20.x;
        let x_1875 : f32 = u_xlat68;
        let x_1877 : f32 = u_xlat67;
        u_xlat67 = ((x_1874 * x_1875) + x_1877);
        let x_1880 : vec4<f32> = u_xlat17;
        let x_1881 : vec2<f32> = vec2<f32>(x_1880.z, x_1880.w);
        let x_1883 : f32 = vs_TEXCOORD8.z;
        txVec22 = vec3<f32>(x_1881.x, x_1881.y, x_1883);
        let x_1890 : vec3<f32> = txVec22;
        let x_1892 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1890.xy, x_1890.z);
        u_xlat68 = x_1892;
        let x_1894 : f32 = u_xlat20.y;
        let x_1895 : f32 = u_xlat68;
        let x_1897 : f32 = u_xlat67;
        u_xlat67 = ((x_1894 * x_1895) + x_1897);
        let x_1900 : vec2<f32> = u_xlat30;
        let x_1902 : f32 = vs_TEXCOORD8.z;
        txVec23 = vec3<f32>(x_1900.x, x_1900.y, x_1902);
        let x_1909 : vec3<f32> = txVec23;
        let x_1911 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1909.xy, x_1909.z);
        u_xlat68 = x_1911;
        let x_1913 : f32 = u_xlat20.z;
        let x_1914 : f32 = u_xlat68;
        let x_1916 : f32 = u_xlat67;
        u_xlat67 = ((x_1913 * x_1914) + x_1916);
        let x_1919 : vec2<f32> = u_xlat57;
        let x_1921 : f32 = vs_TEXCOORD8.z;
        txVec24 = vec3<f32>(x_1919.x, x_1919.y, x_1921);
        let x_1928 : vec3<f32> = txVec24;
        let x_1930 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1928.xy, x_1928.z);
        u_xlat68 = x_1930;
        let x_1932 : f32 = u_xlat20.w;
        let x_1933 : f32 = u_xlat68;
        let x_1935 : f32 = u_xlat67;
        u_xlat67 = ((x_1932 * x_1933) + x_1935);
        let x_1938 : vec4<f32> = u_xlat12;
        let x_1939 : vec2<f32> = vec2<f32>(x_1938.x, x_1938.y);
        let x_1941 : f32 = vs_TEXCOORD8.z;
        txVec25 = vec3<f32>(x_1939.x, x_1939.y, x_1941);
        let x_1948 : vec3<f32> = txVec25;
        let x_1950 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1948.xy, x_1948.z);
        u_xlat68 = x_1950;
        let x_1952 : f32 = u_xlat8.x;
        let x_1953 : f32 = u_xlat68;
        let x_1955 : f32 = u_xlat67;
        u_xlat67 = ((x_1952 * x_1953) + x_1955);
        let x_1958 : vec4<f32> = u_xlat12;
        let x_1959 : vec2<f32> = vec2<f32>(x_1958.z, x_1958.w);
        let x_1961 : f32 = vs_TEXCOORD8.z;
        txVec26 = vec3<f32>(x_1959.x, x_1959.y, x_1961);
        let x_1968 : vec3<f32> = txVec26;
        let x_1970 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1968.xy, x_1968.z);
        u_xlat68 = x_1970;
        let x_1972 : f32 = u_xlat8.y;
        let x_1973 : f32 = u_xlat68;
        let x_1975 : f32 = u_xlat67;
        u_xlat67 = ((x_1972 * x_1973) + x_1975);
        let x_1978 : vec2<f32> = u_xlat52;
        let x_1980 : f32 = vs_TEXCOORD8.z;
        txVec27 = vec3<f32>(x_1978.x, x_1978.y, x_1980);
        let x_1987 : vec3<f32> = txVec27;
        let x_1989 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1987.xy, x_1987.z);
        u_xlat68 = x_1989;
        let x_1991 : f32 = u_xlat8.z;
        let x_1992 : f32 = u_xlat68;
        let x_1994 : f32 = u_xlat67;
        u_xlat67 = ((x_1991 * x_1992) + x_1994);
        let x_1997 : vec4<f32> = u_xlat7;
        let x_1998 : vec2<f32> = vec2<f32>(x_1997.x, x_1997.y);
        let x_2000 : f32 = vs_TEXCOORD8.z;
        txVec28 = vec3<f32>(x_1998.x, x_1998.y, x_2000);
        let x_2007 : vec3<f32> = txVec28;
        let x_2009 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2007.xy, x_2007.z);
        u_xlat68 = x_2009;
        let x_2011 : f32 = u_xlat8.w;
        let x_2012 : f32 = u_xlat68;
        let x_2014 : f32 = u_xlat67;
        u_xlat4.x = ((x_2011 * x_2012) + x_2014);
      }
    }
  } else {
    let x_2019 : vec4<f32> = vs_TEXCOORD8;
    let x_2020 : vec2<f32> = vec2<f32>(x_2019.x, x_2019.y);
    let x_2022 : f32 = vs_TEXCOORD8.z;
    txVec29 = vec3<f32>(x_2020.x, x_2020.y, x_2022);
    let x_2029 : vec3<f32> = txVec29;
    let x_2031 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2029.xy, x_2029.z);
    u_xlat4.x = x_2031;
  }
  let x_2034 : f32 = x_828.x_MainLightShadowParams.x;
  u_xlat67 = (-(x_2034) + 1.0f);
  let x_2038 : f32 = u_xlat4.x;
  let x_2040 : f32 = x_828.x_MainLightShadowParams.x;
  let x_2042 : f32 = u_xlat67;
  u_xlat4.x = ((x_2038 * x_2040) + x_2042);
  let x_2046 : f32 = vs_TEXCOORD8.z;
  u_xlatb67 = (0.0f >= x_2046);
  let x_2050 : f32 = vs_TEXCOORD8.z;
  u_xlatb68 = (x_2050 >= 1.0f);
  let x_2052 : bool = u_xlatb67;
  let x_2053 : bool = u_xlatb68;
  u_xlatb67 = (x_2052 | x_2053);
  let x_2055 : bool = u_xlatb67;
  if (x_2055) {
    x_2056 = 1.0f;
  } else {
    let x_2061 : f32 = u_xlat4.x;
    x_2056 = x_2061;
  }
  let x_2062 : f32 = x_2056;
  u_xlat4.x = x_2062;
  let x_2064 : vec3<f32> = vs_TEXCOORD7;
  let x_2066 : vec3<f32> = x_128.x_WorldSpaceCameraPos;
  let x_2068 : vec3<f32> = (x_2064 + -(x_2066));
  let x_2069 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2068.x, x_2068.y, x_2068.z, x_2069.w);
  let x_2071 : vec4<f32> = u_xlat7;
  let x_2073 : vec4<f32> = u_xlat7;
  u_xlat67 = dot(vec3<f32>(x_2071.x, x_2071.y, x_2071.z), vec3<f32>(x_2073.x, x_2073.y, x_2073.z));
  let x_2076 : f32 = u_xlat67;
  let x_2078 : f32 = x_828.x_MainLightShadowParams.z;
  let x_2081 : f32 = x_828.x_MainLightShadowParams.w;
  u_xlat67 = ((x_2076 * x_2078) + x_2081);
  let x_2083 : f32 = u_xlat67;
  u_xlat67 = clamp(x_2083, 0.0f, 1.0f);
  let x_2086 : f32 = u_xlat4.x;
  u_xlat68 = (-(x_2086) + 1.0f);
  let x_2089 : f32 = u_xlat67;
  let x_2090 : f32 = u_xlat68;
  let x_2093 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_2089 * x_2090) + x_2093);
  let x_2096 : f32 = u_xlat46;
  let x_2099 : vec4<f32> = x_128.x_MainLightColor;
  let x_2101 : vec3<f32> = (vec3<f32>(x_2096, x_2096, x_2096) * vec3<f32>(x_2099.x, x_2099.y, x_2099.z));
  let x_2102 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2101.x, x_2101.y, x_2101.z, x_2102.w);
  let x_2104 : vec4<f32> = u_xlat1;
  let x_2107 : vec4<f32> = u_xlat2;
  u_xlat67 = dot(-(vec3<f32>(x_2104.x, x_2104.y, x_2104.z)), vec3<f32>(x_2107.x, x_2107.y, x_2107.z));
  let x_2110 : f32 = u_xlat67;
  let x_2111 : f32 = u_xlat67;
  u_xlat67 = (x_2110 + x_2111);
  let x_2113 : vec4<f32> = u_xlat2;
  let x_2115 : f32 = u_xlat67;
  let x_2119 : vec4<f32> = u_xlat1;
  let x_2122 : vec3<f32> = ((vec3<f32>(x_2113.x, x_2113.y, x_2113.z) * -(vec3<f32>(x_2115, x_2115, x_2115))) + -(vec3<f32>(x_2119.x, x_2119.y, x_2119.z)));
  let x_2123 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2122.x, x_2122.y, x_2122.z, x_2123.w);
  let x_2125 : vec4<f32> = u_xlat2;
  let x_2127 : vec4<f32> = u_xlat1;
  u_xlat67 = dot(vec3<f32>(x_2125.x, x_2125.y, x_2125.z), vec3<f32>(x_2127.x, x_2127.y, x_2127.z));
  let x_2130 : f32 = u_xlat67;
  u_xlat67 = clamp(x_2130, 0.0f, 1.0f);
  let x_2132 : f32 = u_xlat67;
  u_xlat67 = (-(x_2132) + 1.0f);
  let x_2135 : f32 = u_xlat67;
  let x_2136 : f32 = u_xlat67;
  u_xlat67 = (x_2135 * x_2136);
  let x_2138 : f32 = u_xlat67;
  let x_2139 : f32 = u_xlat67;
  u_xlat67 = (x_2138 * x_2139);
  let x_2142 : f32 = u_xlat0.x;
  u_xlat68 = ((-(x_2142) * 0.699999988f) + 1.700000048f);
  let x_2149 : f32 = u_xlat0.x;
  let x_2150 : f32 = u_xlat68;
  u_xlat0.x = (x_2149 * x_2150);
  let x_2154 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2154 * 6.0f);
  let x_2166 : vec4<f32> = u_xlat8;
  let x_2169 : f32 = u_xlat0.x;
  let x_2170 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2166.x, x_2166.y, x_2166.z), x_2169);
  u_xlat8 = x_2170;
  let x_2172 : f32 = u_xlat8.w;
  u_xlat0.x = (x_2172 + -1.0f);
  let x_2176 : f32 = x_635.unity_SpecCube0_HDR.w;
  let x_2178 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_2176 * x_2178) + 1.0f);
  let x_2183 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2183, 0.0f);
  let x_2187 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_2187);
  let x_2191 : f32 = u_xlat0.x;
  let x_2193 : f32 = x_635.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_2191 * x_2193);
  let x_2197 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_2197);
  let x_2201 : f32 = u_xlat0.x;
  let x_2203 : f32 = x_635.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_2201 * x_2203);
  let x_2206 : vec4<f32> = u_xlat8;
  let x_2208 : vec3<f32> = u_xlat0;
  let x_2210 : vec3<f32> = (vec3<f32>(x_2206.x, x_2206.y, x_2206.z) * vec3<f32>(x_2208.x, x_2208.x, x_2208.x));
  let x_2211 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2210.x, x_2210.y, x_2210.z, x_2211.w);
  let x_2213 : f32 = u_xlat42;
  let x_2215 : f32 = u_xlat42;
  let x_2219 : vec2<f32> = ((vec2<f32>(x_2213, x_2213) * vec2<f32>(x_2215, x_2215)) + vec2<f32>(-1.0f, 1.0f));
  let x_2220 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_2219.x, x_2220.y, x_2219.y);
  let x_2223 : f32 = u_xlat0.z;
  u_xlat42 = (1.0f / x_2223);
  let x_2225 : vec4<f32> = u_xlat5;
  let x_2228 : f32 = u_xlat66;
  let x_2230 : vec3<f32> = (-(vec3<f32>(x_2225.x, x_2225.y, x_2225.z)) + vec3<f32>(x_2228, x_2228, x_2228));
  let x_2231 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2230.x, x_2230.y, x_2230.z, x_2231.w);
  let x_2233 : f32 = u_xlat67;
  let x_2235 : vec4<f32> = u_xlat9;
  let x_2238 : vec4<f32> = u_xlat5;
  let x_2240 : vec3<f32> = ((vec3<f32>(x_2233, x_2233, x_2233) * vec3<f32>(x_2235.x, x_2235.y, x_2235.z)) + vec3<f32>(x_2238.x, x_2238.y, x_2238.z));
  let x_2241 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2240.x, x_2240.y, x_2240.z, x_2241.w);
  let x_2243 : f32 = u_xlat42;
  let x_2245 : vec4<f32> = u_xlat9;
  let x_2247 : vec3<f32> = (vec3<f32>(x_2243, x_2243, x_2243) * vec3<f32>(x_2245.x, x_2245.y, x_2245.z));
  let x_2248 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2247.x, x_2247.y, x_2247.z, x_2248.w);
  let x_2250 : vec4<f32> = u_xlat8;
  let x_2252 : vec4<f32> = u_xlat9;
  let x_2254 : vec3<f32> = (vec3<f32>(x_2250.x, x_2250.y, x_2250.z) * vec3<f32>(x_2252.x, x_2252.y, x_2252.z));
  let x_2255 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2254.x, x_2254.y, x_2254.z, x_2255.w);
  let x_2257 : vec4<f32> = u_xlat3;
  let x_2259 : vec4<f32> = u_xlat6;
  let x_2262 : vec4<f32> = u_xlat8;
  let x_2264 : vec3<f32> = ((vec3<f32>(x_2257.x, x_2257.y, x_2257.z) * vec3<f32>(x_2259.x, x_2259.y, x_2259.z)) + vec3<f32>(x_2262.x, x_2262.y, x_2262.z));
  let x_2265 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2264.x, x_2264.y, x_2264.z, x_2265.w);
  let x_2268 : f32 = u_xlat4.x;
  let x_2270 : f32 = x_635.unity_LightData.z;
  u_xlat42 = (x_2268 * x_2270);
  let x_2272 : vec4<f32> = u_xlat2;
  let x_2275 : vec4<f32> = x_128.x_MainLightPosition;
  u_xlat66 = dot(vec3<f32>(x_2272.x, x_2272.y, x_2272.z), vec3<f32>(x_2275.x, x_2275.y, x_2275.z));
  let x_2278 : f32 = u_xlat66;
  u_xlat66 = clamp(x_2278, 0.0f, 1.0f);
  let x_2280 : f32 = u_xlat42;
  let x_2281 : f32 = u_xlat66;
  u_xlat42 = (x_2280 * x_2281);
  let x_2283 : f32 = u_xlat42;
  let x_2285 : vec4<f32> = u_xlat7;
  let x_2287 : vec3<f32> = (vec3<f32>(x_2283, x_2283, x_2283) * vec3<f32>(x_2285.x, x_2285.y, x_2285.z));
  let x_2288 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2287.x, x_2287.y, x_2287.z, x_2288.w);
  let x_2290 : vec4<f32> = u_xlat1;
  let x_2293 : vec4<f32> = x_128.x_MainLightPosition;
  let x_2295 : vec3<f32> = (vec3<f32>(x_2290.x, x_2290.y, x_2290.z) + vec3<f32>(x_2293.x, x_2293.y, x_2293.z));
  let x_2296 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2295.x, x_2295.y, x_2295.z, x_2296.w);
  let x_2298 : vec4<f32> = u_xlat8;
  let x_2300 : vec4<f32> = u_xlat8;
  u_xlat42 = dot(vec3<f32>(x_2298.x, x_2298.y, x_2298.z), vec3<f32>(x_2300.x, x_2300.y, x_2300.z));
  let x_2303 : f32 = u_xlat42;
  u_xlat42 = max(x_2303, 1.17549435e-37f);
  let x_2306 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_2306);
  let x_2308 : f32 = u_xlat42;
  let x_2310 : vec4<f32> = u_xlat8;
  let x_2312 : vec3<f32> = (vec3<f32>(x_2308, x_2308, x_2308) * vec3<f32>(x_2310.x, x_2310.y, x_2310.z));
  let x_2313 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2312.x, x_2312.y, x_2312.z, x_2313.w);
  let x_2315 : vec4<f32> = u_xlat2;
  let x_2317 : vec4<f32> = u_xlat8;
  u_xlat42 = dot(vec3<f32>(x_2315.x, x_2315.y, x_2315.z), vec3<f32>(x_2317.x, x_2317.y, x_2317.z));
  let x_2320 : f32 = u_xlat42;
  u_xlat42 = clamp(x_2320, 0.0f, 1.0f);
  let x_2323 : vec4<f32> = x_128.x_MainLightPosition;
  let x_2325 : vec4<f32> = u_xlat8;
  u_xlat66 = dot(vec3<f32>(x_2323.x, x_2323.y, x_2323.z), vec3<f32>(x_2325.x, x_2325.y, x_2325.z));
  let x_2328 : f32 = u_xlat66;
  u_xlat66 = clamp(x_2328, 0.0f, 1.0f);
  let x_2330 : f32 = u_xlat42;
  let x_2331 : f32 = u_xlat42;
  u_xlat42 = (x_2330 * x_2331);
  let x_2333 : f32 = u_xlat42;
  let x_2335 : f32 = u_xlat0.x;
  u_xlat42 = ((x_2333 * x_2335) + 1.000010014f);
  let x_2339 : f32 = u_xlat66;
  let x_2340 : f32 = u_xlat66;
  u_xlat66 = (x_2339 * x_2340);
  let x_2342 : f32 = u_xlat42;
  let x_2343 : f32 = u_xlat42;
  u_xlat42 = (x_2342 * x_2343);
  let x_2345 : f32 = u_xlat66;
  u_xlat66 = max(x_2345, 0.100000001f);
  let x_2348 : f32 = u_xlat42;
  let x_2349 : f32 = u_xlat66;
  u_xlat42 = (x_2348 * x_2349);
  let x_2351 : f32 = u_xlat25;
  let x_2352 : f32 = u_xlat42;
  u_xlat42 = (x_2351 * x_2352);
  let x_2354 : f32 = u_xlat65;
  let x_2355 : f32 = u_xlat42;
  u_xlat42 = (x_2354 / x_2355);
  let x_2357 : vec4<f32> = u_xlat5;
  let x_2359 : f32 = u_xlat42;
  let x_2362 : vec4<f32> = u_xlat6;
  let x_2364 : vec3<f32> = ((vec3<f32>(x_2357.x, x_2357.y, x_2357.z) * vec3<f32>(x_2359, x_2359, x_2359)) + vec3<f32>(x_2362.x, x_2362.y, x_2362.z));
  let x_2365 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2364.x, x_2364.y, x_2364.z, x_2365.w);
  let x_2367 : vec4<f32> = u_xlat7;
  let x_2369 : vec4<f32> = u_xlat8;
  let x_2371 : vec3<f32> = (vec3<f32>(x_2367.x, x_2367.y, x_2367.z) * vec3<f32>(x_2369.x, x_2369.y, x_2369.z));
  let x_2372 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2371.x, x_2371.y, x_2371.z, x_2372.w);
  let x_2375 : f32 = x_128.x_AdditionalLightsCount.x;
  let x_2377 : f32 = x_635.unity_LightData.y;
  u_xlat42 = min(x_2375, x_2377);
  let x_2381 : f32 = u_xlat42;
  u_xlatu42 = bitcast<u32>(i32(x_2381));
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2393 : u32 = u_xlatu_loop_1;
    let x_2394 : u32 = u_xlatu42;
    if ((x_2393 < x_2394)) {
    } else {
      break;
    }
    let x_2397 : u32 = u_xlatu_loop_1;
    u_xlatu4 = (x_2397 >> 2u);
    let x_2401 : u32 = u_xlatu_loop_1;
    u_xlati67 = bitcast<i32>((x_2401 & 3u));
    let x_2404 : u32 = u_xlatu4;
    let x_2407 : vec4<f32> = x_635.unity_LightIndices[bitcast<i32>(x_2404)];
    let x_2417 : i32 = u_xlati67;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2422 : vec4<u32> = indexable[x_2417];
    u_xlat4.x = dot(x_2407, bitcast<vec4<f32>>(x_2422));
    let x_2428 : f32 = u_xlat4.x;
    u_xlati4 = i32(x_2428);
    let x_2430 : vec3<f32> = vs_TEXCOORD7;
    let x_2442 : i32 = u_xlati4;
    let x_2444 : vec4<f32> = x_2441.x_AdditionalLightsPosition[x_2442];
    let x_2447 : i32 = u_xlati4;
    let x_2449 : vec4<f32> = x_2441.x_AdditionalLightsPosition[x_2447];
    let x_2451 : vec3<f32> = ((-(x_2430) * vec3<f32>(x_2444.w, x_2444.w, x_2444.w)) + vec3<f32>(x_2449.x, x_2449.y, x_2449.z));
    let x_2452 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2451.x, x_2451.y, x_2451.z, x_2452.w);
    let x_2454 : vec4<f32> = u_xlat9;
    let x_2456 : vec4<f32> = u_xlat9;
    u_xlat67 = dot(vec3<f32>(x_2454.x, x_2454.y, x_2454.z), vec3<f32>(x_2456.x, x_2456.y, x_2456.z));
    let x_2459 : f32 = u_xlat67;
    u_xlat67 = max(x_2459, 6.10351562e-05f);
    let x_2461 : f32 = u_xlat67;
    u_xlat68 = inverseSqrt(x_2461);
    let x_2463 : f32 = u_xlat68;
    let x_2465 : vec4<f32> = u_xlat9;
    let x_2467 : vec3<f32> = (vec3<f32>(x_2463, x_2463, x_2463) * vec3<f32>(x_2465.x, x_2465.y, x_2465.z));
    let x_2468 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2467.x, x_2467.y, x_2467.z, x_2468.w);
    let x_2470 : f32 = u_xlat67;
    u_xlat69 = (1.0f / x_2470);
    let x_2472 : f32 = u_xlat67;
    let x_2473 : i32 = u_xlati4;
    let x_2475 : f32 = x_2441.x_AdditionalLightsAttenuation[x_2473].x;
    u_xlat67 = (x_2472 * x_2475);
    let x_2477 : f32 = u_xlat67;
    let x_2479 : f32 = u_xlat67;
    u_xlat67 = ((-(x_2477) * x_2479) + 1.0f);
    let x_2482 : f32 = u_xlat67;
    u_xlat67 = max(x_2482, 0.0f);
    let x_2484 : f32 = u_xlat67;
    let x_2485 : f32 = u_xlat67;
    u_xlat67 = (x_2484 * x_2485);
    let x_2487 : f32 = u_xlat67;
    let x_2488 : f32 = u_xlat69;
    u_xlat67 = (x_2487 * x_2488);
    let x_2490 : i32 = u_xlati4;
    let x_2492 : vec4<f32> = x_2441.x_AdditionalLightsSpotDir[x_2490];
    let x_2494 : vec4<f32> = u_xlat10;
    u_xlat69 = dot(vec3<f32>(x_2492.x, x_2492.y, x_2492.z), vec3<f32>(x_2494.x, x_2494.y, x_2494.z));
    let x_2497 : f32 = u_xlat69;
    let x_2498 : i32 = u_xlati4;
    let x_2500 : f32 = x_2441.x_AdditionalLightsAttenuation[x_2498].z;
    let x_2502 : i32 = u_xlati4;
    let x_2504 : f32 = x_2441.x_AdditionalLightsAttenuation[x_2502].w;
    u_xlat69 = ((x_2497 * x_2500) + x_2504);
    let x_2506 : f32 = u_xlat69;
    u_xlat69 = clamp(x_2506, 0.0f, 1.0f);
    let x_2508 : f32 = u_xlat69;
    let x_2509 : f32 = u_xlat69;
    u_xlat69 = (x_2508 * x_2509);
    let x_2511 : f32 = u_xlat67;
    let x_2512 : f32 = u_xlat69;
    u_xlat67 = (x_2511 * x_2512);
    let x_2514 : f32 = u_xlat46;
    let x_2516 : i32 = u_xlati4;
    let x_2518 : vec4<f32> = x_2441.x_AdditionalLightsColor[x_2516];
    let x_2520 : vec3<f32> = (vec3<f32>(x_2514, x_2514, x_2514) * vec3<f32>(x_2518.x, x_2518.y, x_2518.z));
    let x_2521 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2520.x, x_2520.y, x_2520.z, x_2521.w);
    let x_2523 : vec4<f32> = u_xlat2;
    let x_2525 : vec4<f32> = u_xlat10;
    u_xlat4.x = dot(vec3<f32>(x_2523.x, x_2523.y, x_2523.z), vec3<f32>(x_2525.x, x_2525.y, x_2525.z));
    let x_2530 : f32 = u_xlat4.x;
    u_xlat4.x = clamp(x_2530, 0.0f, 1.0f);
    let x_2534 : f32 = u_xlat4.x;
    let x_2535 : f32 = u_xlat67;
    u_xlat4.x = (x_2534 * x_2535);
    let x_2538 : vec4<f32> = u_xlat4;
    let x_2540 : vec4<f32> = u_xlat11;
    let x_2542 : vec3<f32> = (vec3<f32>(x_2538.x, x_2538.x, x_2538.x) * vec3<f32>(x_2540.x, x_2540.y, x_2540.z));
    let x_2543 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2542.x, x_2542.y, x_2542.z, x_2543.w);
    let x_2545 : vec4<f32> = u_xlat9;
    let x_2547 : f32 = u_xlat68;
    let x_2550 : vec4<f32> = u_xlat1;
    let x_2552 : vec3<f32> = ((vec3<f32>(x_2545.x, x_2545.y, x_2545.z) * vec3<f32>(x_2547, x_2547, x_2547)) + vec3<f32>(x_2550.x, x_2550.y, x_2550.z));
    let x_2553 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2552.x, x_2552.y, x_2552.z, x_2553.w);
    let x_2555 : vec4<f32> = u_xlat9;
    let x_2557 : vec4<f32> = u_xlat9;
    u_xlat4.x = dot(vec3<f32>(x_2555.x, x_2555.y, x_2555.z), vec3<f32>(x_2557.x, x_2557.y, x_2557.z));
    let x_2562 : f32 = u_xlat4.x;
    u_xlat4.x = max(x_2562, 1.17549435e-37f);
    let x_2566 : f32 = u_xlat4.x;
    u_xlat4.x = inverseSqrt(x_2566);
    let x_2569 : vec4<f32> = u_xlat4;
    let x_2571 : vec4<f32> = u_xlat9;
    let x_2573 : vec3<f32> = (vec3<f32>(x_2569.x, x_2569.x, x_2569.x) * vec3<f32>(x_2571.x, x_2571.y, x_2571.z));
    let x_2574 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2573.x, x_2573.y, x_2573.z, x_2574.w);
    let x_2576 : vec4<f32> = u_xlat2;
    let x_2578 : vec4<f32> = u_xlat9;
    u_xlat4.x = dot(vec3<f32>(x_2576.x, x_2576.y, x_2576.z), vec3<f32>(x_2578.x, x_2578.y, x_2578.z));
    let x_2583 : f32 = u_xlat4.x;
    u_xlat4.x = clamp(x_2583, 0.0f, 1.0f);
    let x_2586 : vec4<f32> = u_xlat10;
    let x_2588 : vec4<f32> = u_xlat9;
    u_xlat4.w = dot(vec3<f32>(x_2586.x, x_2586.y, x_2586.z), vec3<f32>(x_2588.x, x_2588.y, x_2588.z));
    let x_2593 : f32 = u_xlat4.w;
    u_xlat4.w = clamp(x_2593, 0.0f, 1.0f);
    let x_2596 : vec4<f32> = u_xlat4;
    let x_2598 : vec4<f32> = u_xlat4;
    let x_2600 : vec2<f32> = (vec2<f32>(x_2596.x, x_2596.w) * vec2<f32>(x_2598.x, x_2598.w));
    let x_2601 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_2600.x, x_2601.y, x_2601.z, x_2600.y);
    let x_2604 : f32 = u_xlat4.x;
    let x_2606 : f32 = u_xlat0.x;
    u_xlat4.x = ((x_2604 * x_2606) + 1.000010014f);
    let x_2611 : f32 = u_xlat4.x;
    let x_2613 : f32 = u_xlat4.x;
    u_xlat4.x = (x_2611 * x_2613);
    let x_2617 : f32 = u_xlat4.w;
    u_xlat67 = max(x_2617, 0.100000001f);
    let x_2619 : f32 = u_xlat67;
    let x_2621 : f32 = u_xlat4.x;
    u_xlat4.x = (x_2619 * x_2621);
    let x_2624 : f32 = u_xlat25;
    let x_2626 : f32 = u_xlat4.x;
    u_xlat4.x = (x_2624 * x_2626);
    let x_2629 : f32 = u_xlat65;
    let x_2631 : f32 = u_xlat4.x;
    u_xlat4.x = (x_2629 / x_2631);
    let x_2634 : vec4<f32> = u_xlat5;
    let x_2636 : vec4<f32> = u_xlat4;
    let x_2639 : vec4<f32> = u_xlat6;
    let x_2641 : vec3<f32> = ((vec3<f32>(x_2634.x, x_2634.y, x_2634.z) * vec3<f32>(x_2636.x, x_2636.x, x_2636.x)) + vec3<f32>(x_2639.x, x_2639.y, x_2639.z));
    let x_2642 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2641.x, x_2641.y, x_2641.z, x_2642.w);
    let x_2644 : vec4<f32> = u_xlat9;
    let x_2646 : vec4<f32> = u_xlat11;
    let x_2649 : vec4<f32> = u_xlat8;
    let x_2651 : vec3<f32> = ((vec3<f32>(x_2644.x, x_2644.y, x_2644.z) * vec3<f32>(x_2646.x, x_2646.y, x_2646.z)) + vec3<f32>(x_2649.x, x_2649.y, x_2649.z));
    let x_2652 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2651.x, x_2651.y, x_2651.z, x_2652.w);

    continuing {
      let x_2654 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2654 + bitcast<u32>(1i));
    }
  }
  let x_2656 : vec4<f32> = u_xlat3;
  let x_2658 : f32 = u_xlat21;
  let x_2661 : vec4<f32> = u_xlat7;
  u_xlat0 = ((vec3<f32>(x_2656.x, x_2656.y, x_2656.z) * vec3<f32>(x_2658, x_2658, x_2658)) + vec3<f32>(x_2661.x, x_2661.y, x_2661.z));
  let x_2664 : vec4<f32> = u_xlat8;
  let x_2666 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_2664.x, x_2664.y, x_2664.z) + x_2666);
  let x_2668 : f32 = u_xlat63;
  let x_2670 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_2668, x_2668, x_2668) * x_2670);
  let x_2672 : f32 = u_xlat64;
  let x_2673 : f32 = u_xlat64;
  u_xlat63 = (x_2672 * -(x_2673));
  let x_2676 : f32 = u_xlat63;
  u_xlat63 = exp2(x_2676);
  let x_2680 : vec3<f32> = u_xlat0;
  let x_2681 : f32 = u_xlat63;
  let x_2683 : vec3<f32> = (x_2680 * vec3<f32>(x_2681, x_2681, x_2681));
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

