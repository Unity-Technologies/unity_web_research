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
  unity_OrthoParams : vec4<f32>,
  x_ScaleBiasRt : vec4<f32>,
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

@group(0) @binding(11) var sampler_Control : sampler;

@group(1) @binding(0) var<uniform> x_126 : PGlobals;

@group(0) @binding(3) var x_Splat0 : texture_2d<f32>;

@group(0) @binding(12) var sampler_Splat0 : sampler;

var<private> vs_TEXCOORD1 : vec4<f32>;

@group(0) @binding(4) var x_Splat1 : texture_2d<f32>;

@group(0) @binding(5) var x_Splat2 : texture_2d<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

@group(0) @binding(6) var x_Splat3 : texture_2d<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_614 : MainLightShadows;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(10) var samplerunity_Lightmap : sampler;

@group(0) @binding(7) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(8) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(14) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_2315 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_2577 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec3<f32>;
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
  var x_561 : f32;
  var x_572 : f32;
  var x_583 : f32;
  var u_xlatb3 : vec4<bool>;
  var u_xlatu64 : u32;
  var u_xlati64 : i32;
  var u_xlat65 : f32;
  var u_xlat66 : f32;
  var u_xlat67 : f32;
  var u_xlat68 : f32;
  var u_xlatb67 : bool;
  var txVec0 : vec3<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var u_xlatb6 : bool;
  var u_xlat48 : vec2<f32>;
  var u_xlat51 : vec2<f32>;
  var u_xlat14 : vec4<f32>;
  var u_xlat15 : vec4<f32>;
  var txVec4 : vec3<f32>;
  var u_xlat27 : f32;
  var txVec5 : vec3<f32>;
  var u_xlat70 : f32;
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
  var u_xlat69 : f32;
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
  var u_xlatb24 : bool;
  var u_xlatb45 : bool;
  var x_2194 : f32;
  var u_xlat24 : f32;
  var u_xlat45 : f32;
  var u_xlatu42 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu67 : u32;
  var u_xlati69 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati67 : i32;
  var u_xlat71 : f32;
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
  u_xlat2 = ((vec3<f32>(x_61.x, x_61.y, x_61.w) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(x_66.x, x_66.y, x_66.w));
  let x_72 : vec4<f32> = x_30.x_MaskMapRemapScale3;
  let x_77 : vec4<f32> = x_30.x_MaskMapRemapOffset3;
  let x_79 : vec3<f32> = ((vec3<f32>(x_72.x, x_72.w, x_72.y) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(x_77.x, x_77.w, x_77.y));
  let x_80 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_79.x, x_79.y, x_80.z, x_79.z);
  let x_86 : vec4<f32> = x_30.x_Control_TexelSize;
  let x_90 : vec2<f32> = (vec2<f32>(x_86.z, x_86.w) + vec2<f32>(-1.0f, -1.0f));
  let x_91 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_90.x, x_90.y, x_91.z, x_91.w);
  let x_94 : vec4<f32> = vs_TEXCOORD0;
  let x_96 : vec4<f32> = u_xlat4;
  let x_100 : vec2<f32> = ((vec2<f32>(x_94.x, x_94.y) * vec2<f32>(x_96.x, x_96.y)) + vec2<f32>(0.5f, 0.5f));
  let x_101 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_100.x, x_100.y, x_101.z, x_101.w);
  let x_103 : vec4<f32> = u_xlat4;
  let x_106 : vec4<f32> = x_30.x_Control_TexelSize;
  let x_108 : vec2<f32> = (vec2<f32>(x_103.x, x_103.y) * vec2<f32>(x_106.x, x_106.y));
  let x_109 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_108.x, x_108.y, x_109.z, x_109.w);
  let x_121 : vec4<f32> = u_xlat4;
  let x_131 : f32 = x_126.x_GlobalMipBias.x;
  let x_132 : vec4<f32> = textureSampleBias(x_Control, sampler_Control, vec2<f32>(x_121.x, x_121.y), x_131);
  u_xlat4 = x_132;
  let x_135 : vec4<f32> = u_xlat4;
  u_xlat63 = dot(x_135, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_145 : vec4<f32> = vs_TEXCOORD1;
  let x_148 : f32 = x_126.x_GlobalMipBias.x;
  let x_149 : vec4<f32> = textureSampleBias(x_Splat0, sampler_Splat0, vec2<f32>(x_145.x, x_145.y), x_148);
  u_xlat5 = x_149;
  let x_155 : vec4<f32> = vs_TEXCOORD1;
  let x_158 : f32 = x_126.x_GlobalMipBias.x;
  let x_159 : vec4<f32> = textureSampleBias(x_Splat1, sampler_Splat0, vec2<f32>(x_155.z, x_155.w), x_158);
  u_xlat6 = x_159;
  let x_166 : vec4<f32> = vs_TEXCOORD2;
  let x_169 : f32 = x_126.x_GlobalMipBias.x;
  let x_170 : vec4<f32> = textureSampleBias(x_Splat2, sampler_Splat0, vec2<f32>(x_166.x, x_166.y), x_169);
  u_xlat7 = x_170;
  let x_176 : vec4<f32> = vs_TEXCOORD2;
  let x_179 : f32 = x_126.x_GlobalMipBias.x;
  let x_180 : vec4<f32> = textureSampleBias(x_Splat3, sampler_Splat0, vec2<f32>(x_176.z, x_176.w), x_179);
  u_xlat8 = x_180;
  let x_183 : f32 = u_xlat5.w;
  u_xlat9.x = x_183;
  let x_186 : f32 = u_xlat6.w;
  u_xlat9.y = x_186;
  let x_190 : f32 = u_xlat7.w;
  u_xlat9.z = x_190;
  let x_194 : f32 = u_xlat8.w;
  u_xlat9.w = x_194;
  let x_197 : vec4<f32> = u_xlat9;
  let x_200 : f32 = x_30.x_Smoothness0;
  let x_203 : f32 = x_30.x_Smoothness1;
  let x_206 : f32 = x_30.x_Smoothness2;
  let x_209 : f32 = x_30.x_Smoothness3;
  u_xlat10 = (x_197 * vec4<f32>(x_200, x_203, x_206, x_209));
  let x_218 : f32 = x_30.x_NumLayersCount;
  u_xlatb64 = (4.0f >= x_218);
  let x_221 : vec4<f32> = u_xlat4;
  u_xlat11 = (-(x_221) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_224 : vec4<f32> = u_xlat9;
  let x_225 : vec4<f32> = u_xlat11;
  u_xlat11 = (x_224 + -(x_225));
  let x_228 : vec4<f32> = u_xlat11;
  u_xlat11 = (x_228 * vec4<f32>(20.0f, 20.0f, 20.0f, 20.0f));
  let x_232 : vec4<f32> = u_xlat11;
  u_xlat11 = clamp(x_232, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_237 : vec4<f32> = u_xlat4;
  let x_241 : vec4<f32> = u_xlat11;
  u_xlat11 = ((x_237 * vec4<f32>(0.001f, 0.001f, 0.001f, 0.001f)) + x_241);
  let x_244 : vec4<f32> = u_xlat4;
  let x_245 : vec4<f32> = u_xlat11;
  u_xlat12 = (x_244 + -(x_245));
  let x_250 : f32 = u_xlat12.x;
  let x_253 : f32 = x_30.x_DiffuseRemapScale0.w;
  u_xlat13.x = (x_250 * x_253);
  let x_257 : f32 = u_xlat12.y;
  let x_260 : f32 = x_30.x_DiffuseRemapScale1.w;
  u_xlat13.y = (x_257 * x_260);
  let x_264 : f32 = u_xlat12.z;
  let x_267 : f32 = x_30.x_DiffuseRemapScale2.w;
  u_xlat13.z = (x_264 * x_267);
  let x_271 : f32 = u_xlat12.w;
  let x_274 : f32 = x_30.x_DiffuseRemapScale3.w;
  u_xlat13.w = (x_271 * x_274);
  let x_277 : vec4<f32> = u_xlat11;
  let x_278 : vec4<f32> = u_xlat13;
  u_xlat11 = (x_277 + x_278);
  let x_280 : bool = u_xlatb64;
  let x_281 : vec4<f32> = u_xlat11;
  let x_282 : vec4<f32> = u_xlat4;
  u_xlat4 = select(x_282, x_281, vec4<bool>(x_280, x_280, x_280, x_280));
  let x_287 : vec4<f32> = u_xlat4;
  u_xlat64 = dot(x_287, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_291 : f32 = u_xlat64;
  u_xlatb65 = (0.005f >= x_291);
  let x_293 : bool = u_xlatb65;
  if (((select(0i, 1i, x_293) * -1i) != 0i)) {
    discard;
  }
  let x_302 : f32 = u_xlat64;
  u_xlat64 = (x_302 + 6.10351562e-05f);
  let x_305 : vec4<f32> = u_xlat4;
  let x_306 : f32 = u_xlat64;
  u_xlat4 = (x_305 / vec4<f32>(x_306, x_306, x_306, x_306));
  let x_309 : vec4<f32> = u_xlat4;
  let x_312 : vec4<f32> = x_30.x_DiffuseRemapScale0;
  let x_314 : vec3<f32> = (vec3<f32>(x_309.x, x_309.x, x_309.x) * vec3<f32>(x_312.x, x_312.y, x_312.z));
  let x_315 : vec4<f32> = u_xlat11;
  u_xlat11 = vec4<f32>(x_314.x, x_314.y, x_314.z, x_315.w);
  let x_317 : vec4<f32> = u_xlat4;
  let x_320 : vec4<f32> = x_30.x_DiffuseRemapScale1;
  let x_322 : vec3<f32> = (vec3<f32>(x_317.y, x_317.y, x_317.y) * vec3<f32>(x_320.x, x_320.y, x_320.z));
  let x_323 : vec4<f32> = u_xlat12;
  u_xlat12 = vec4<f32>(x_322.x, x_322.y, x_322.z, x_323.w);
  let x_325 : vec4<f32> = u_xlat6;
  let x_327 : vec4<f32> = u_xlat12;
  let x_329 : vec3<f32> = (vec3<f32>(x_325.x, x_325.y, x_325.z) * vec3<f32>(x_327.x, x_327.y, x_327.z));
  let x_330 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_329.x, x_329.y, x_329.z, x_330.w);
  let x_332 : vec4<f32> = u_xlat5;
  let x_334 : vec4<f32> = u_xlat11;
  let x_337 : vec4<f32> = u_xlat6;
  let x_339 : vec3<f32> = ((vec3<f32>(x_332.x, x_332.y, x_332.z) * vec3<f32>(x_334.x, x_334.y, x_334.z)) + vec3<f32>(x_337.x, x_337.y, x_337.z));
  let x_340 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_339.x, x_339.y, x_339.z, x_340.w);
  let x_342 : vec4<f32> = u_xlat4;
  let x_345 : vec4<f32> = x_30.x_DiffuseRemapScale2;
  let x_347 : vec3<f32> = (vec3<f32>(x_342.z, x_342.z, x_342.z) * vec3<f32>(x_345.x, x_345.y, x_345.z));
  let x_348 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_347.x, x_347.y, x_347.z, x_348.w);
  let x_350 : vec4<f32> = u_xlat7;
  let x_352 : vec4<f32> = u_xlat6;
  let x_355 : vec4<f32> = u_xlat5;
  let x_357 : vec3<f32> = ((vec3<f32>(x_350.x, x_350.y, x_350.z) * vec3<f32>(x_352.x, x_352.y, x_352.z)) + vec3<f32>(x_355.x, x_355.y, x_355.z));
  let x_358 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_357.x, x_357.y, x_357.z, x_358.w);
  let x_360 : vec4<f32> = u_xlat4;
  let x_363 : vec4<f32> = x_30.x_DiffuseRemapScale3;
  let x_365 : vec3<f32> = (vec3<f32>(x_360.w, x_360.w, x_360.w) * vec3<f32>(x_363.x, x_363.y, x_363.z));
  let x_366 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_365.x, x_365.y, x_365.z, x_366.w);
  let x_368 : vec4<f32> = u_xlat8;
  let x_370 : vec4<f32> = u_xlat6;
  let x_373 : vec4<f32> = u_xlat5;
  let x_375 : vec3<f32> = ((vec3<f32>(x_368.x, x_368.y, x_368.z) * vec3<f32>(x_370.x, x_370.y, x_370.z)) + vec3<f32>(x_373.x, x_373.y, x_373.z));
  let x_376 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_375.x, x_375.y, x_375.z, x_376.w);
  let x_379 : f32 = x_30.x_MaskMapRemapScale0.y;
  u_xlat6.x = x_379;
  let x_382 : f32 = x_30.x_MaskMapRemapScale1.y;
  u_xlat6.y = x_382;
  let x_385 : f32 = x_30.x_MaskMapRemapScale2.y;
  u_xlat6.z = x_385;
  let x_388 : f32 = x_30.x_MaskMapRemapScale3.y;
  u_xlat6.w = x_388;
  let x_391 : f32 = x_30.x_MaskMapRemapOffset0.y;
  u_xlat7.x = x_391;
  let x_394 : f32 = x_30.x_MaskMapRemapOffset1.y;
  u_xlat7.y = x_394;
  let x_397 : f32 = x_30.x_MaskMapRemapOffset2.y;
  u_xlat7.z = x_397;
  let x_400 : f32 = x_30.x_MaskMapRemapOffset3.y;
  u_xlat7.w = x_400;
  let x_402 : vec4<f32> = u_xlat6;
  let x_403 : vec4<f32> = u_xlat7;
  u_xlat6 = (x_402 + x_403);
  let x_406 : f32 = u_xlat0.z;
  u_xlat7.x = x_406;
  let x_409 : f32 = u_xlat1.z;
  u_xlat7.y = x_409;
  let x_412 : f32 = u_xlat2.z;
  u_xlat7.z = x_412;
  let x_415 : f32 = u_xlat3.y;
  u_xlat7.w = x_415;
  let x_417 : vec4<f32> = u_xlat9;
  let x_420 : f32 = x_30.x_Smoothness0;
  let x_422 : f32 = x_30.x_Smoothness1;
  let x_424 : f32 = x_30.x_Smoothness2;
  let x_426 : f32 = x_30.x_Smoothness3;
  let x_429 : vec4<f32> = u_xlat7;
  u_xlat7 = ((-(x_417) * vec4<f32>(x_420, x_422, x_424, x_426)) + x_429);
  let x_433 : f32 = x_30.x_LayerHasMask0;
  let x_436 : f32 = x_30.x_LayerHasMask1;
  let x_439 : f32 = x_30.x_LayerHasMask2;
  let x_442 : f32 = x_30.x_LayerHasMask3;
  let x_444 : vec4<f32> = u_xlat7;
  let x_446 : vec4<f32> = u_xlat10;
  u_xlat7 = ((vec4<f32>(x_433, x_436, x_439, x_442) * x_444) + x_446);
  let x_449 : vec4<f32> = u_xlat4;
  let x_450 : vec4<f32> = u_xlat7;
  u_xlat42 = dot(x_449, x_450);
  let x_453 : f32 = u_xlat0.x;
  u_xlat7.x = x_453;
  let x_456 : f32 = u_xlat1.x;
  u_xlat7.y = x_456;
  let x_459 : f32 = u_xlat2.x;
  u_xlat7.z = x_459;
  let x_462 : f32 = u_xlat3.x;
  u_xlat7.w = x_462;
  let x_464 : vec4<f32> = u_xlat7;
  let x_467 : f32 = x_30.x_Metallic0;
  let x_470 : f32 = x_30.x_Metallic1;
  let x_473 : f32 = x_30.x_Metallic2;
  let x_476 : f32 = x_30.x_Metallic3;
  u_xlat7 = (x_464 + -(vec4<f32>(x_467, x_470, x_473, x_476)));
  let x_481 : f32 = x_30.x_LayerHasMask0;
  let x_483 : f32 = x_30.x_LayerHasMask1;
  let x_485 : f32 = x_30.x_LayerHasMask2;
  let x_487 : f32 = x_30.x_LayerHasMask3;
  let x_489 : vec4<f32> = u_xlat7;
  let x_492 : f32 = x_30.x_Metallic0;
  let x_494 : f32 = x_30.x_Metallic1;
  let x_496 : f32 = x_30.x_Metallic2;
  let x_498 : f32 = x_30.x_Metallic3;
  u_xlat7 = ((vec4<f32>(x_481, x_483, x_485, x_487) * x_489) + vec4<f32>(x_492, x_494, x_496, x_498));
  let x_501 : vec4<f32> = u_xlat4;
  let x_502 : vec4<f32> = u_xlat7;
  u_xlat0.x = dot(x_501, x_502);
  let x_506 : f32 = u_xlat0.y;
  u_xlat3.x = x_506;
  let x_509 : f32 = u_xlat1.y;
  u_xlat3.y = x_509;
  let x_512 : f32 = u_xlat2.y;
  u_xlat3.z = x_512;
  let x_514 : vec4<f32> = u_xlat6;
  let x_516 : vec4<f32> = u_xlat3;
  u_xlat1 = (-(x_514) + x_516);
  let x_519 : f32 = x_30.x_LayerHasMask0;
  let x_521 : f32 = x_30.x_LayerHasMask1;
  let x_523 : f32 = x_30.x_LayerHasMask2;
  let x_525 : f32 = x_30.x_LayerHasMask3;
  let x_527 : vec4<f32> = u_xlat1;
  let x_529 : vec4<f32> = u_xlat6;
  u_xlat1 = ((vec4<f32>(x_519, x_521, x_523, x_525) * x_527) + x_529);
  let x_532 : vec4<f32> = u_xlat4;
  let x_533 : vec4<f32> = u_xlat1;
  u_xlat21 = dot(x_532, x_533);
  let x_537 : f32 = x_126.unity_OrthoParams.w;
  u_xlatb1 = (x_537 == 0.0f);
  let x_542 : vec3<f32> = vs_TEXCOORD7;
  let x_546 : vec3<f32> = x_126.x_WorldSpaceCameraPos;
  u_xlat22 = (-(x_542) + x_546);
  let x_548 : vec3<f32> = u_xlat22;
  let x_549 : vec3<f32> = u_xlat22;
  u_xlat2.x = dot(x_548, x_549);
  let x_553 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_553);
  let x_556 : vec3<f32> = u_xlat22;
  let x_557 : vec3<f32> = u_xlat2;
  u_xlat22 = (x_556 * vec3<f32>(x_557.x, x_557.x, x_557.x));
  let x_560 : bool = u_xlatb1;
  if (x_560) {
    let x_565 : f32 = u_xlat22.x;
    x_561 = x_565;
  } else {
    let x_568 : f32 = x_126.unity_MatrixV[0i].z;
    x_561 = x_568;
  }
  let x_569 : f32 = x_561;
  u_xlat2.x = x_569;
  let x_571 : bool = u_xlatb1;
  if (x_571) {
    let x_576 : f32 = u_xlat22.y;
    x_572 = x_576;
  } else {
    let x_579 : f32 = x_126.unity_MatrixV[1i].z;
    x_572 = x_579;
  }
  let x_580 : f32 = x_572;
  u_xlat2.y = x_580;
  let x_582 : bool = u_xlatb1;
  if (x_582) {
    let x_587 : f32 = u_xlat22.z;
    x_583 = x_587;
  } else {
    let x_591 : f32 = x_126.unity_MatrixV[2i].z;
    x_583 = x_591;
  }
  let x_592 : f32 = x_583;
  u_xlat2.z = x_592;
  let x_595 : vec3<f32> = vs_TEXCOORD3;
  let x_596 : vec3<f32> = vs_TEXCOORD3;
  u_xlat1.x = dot(x_595, x_596);
  let x_600 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_600);
  let x_603 : vec4<f32> = u_xlat1;
  let x_605 : vec3<f32> = vs_TEXCOORD3;
  let x_606 : vec3<f32> = (vec3<f32>(x_603.x, x_603.x, x_603.x) * x_605);
  let x_607 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_606.x, x_606.y, x_606.z, x_607.w);
  let x_609 : vec3<f32> = vs_TEXCOORD7;
  let x_616 : vec4<f32> = x_614.x_CascadeShadowSplitSpheres0;
  let x_619 : vec3<f32> = (x_609 + -(vec3<f32>(x_616.x, x_616.y, x_616.z)));
  let x_620 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_619.x, x_619.y, x_619.z, x_620.w);
  let x_622 : vec3<f32> = vs_TEXCOORD7;
  let x_624 : vec4<f32> = x_614.x_CascadeShadowSplitSpheres1;
  let x_627 : vec3<f32> = (x_622 + -(vec3<f32>(x_624.x, x_624.y, x_624.z)));
  let x_628 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_627.x, x_627.y, x_627.z, x_628.w);
  let x_630 : vec3<f32> = vs_TEXCOORD7;
  let x_633 : vec4<f32> = x_614.x_CascadeShadowSplitSpheres2;
  let x_636 : vec3<f32> = (x_630 + -(vec3<f32>(x_633.x, x_633.y, x_633.z)));
  let x_637 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_636.x, x_636.y, x_636.z, x_637.w);
  let x_639 : vec3<f32> = vs_TEXCOORD7;
  let x_641 : vec4<f32> = x_614.x_CascadeShadowSplitSpheres3;
  let x_644 : vec3<f32> = (x_639 + -(vec3<f32>(x_641.x, x_641.y, x_641.z)));
  let x_645 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_644.x, x_644.y, x_644.z, x_645.w);
  let x_647 : vec4<f32> = u_xlat3;
  let x_649 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_647.x, x_647.y, x_647.z), vec3<f32>(x_649.x, x_649.y, x_649.z));
  let x_653 : vec4<f32> = u_xlat4;
  let x_655 : vec4<f32> = u_xlat4;
  u_xlat3.y = dot(vec3<f32>(x_653.x, x_653.y, x_653.z), vec3<f32>(x_655.x, x_655.y, x_655.z));
  let x_659 : vec4<f32> = u_xlat6;
  let x_661 : vec4<f32> = u_xlat6;
  u_xlat3.z = dot(vec3<f32>(x_659.x, x_659.y, x_659.z), vec3<f32>(x_661.x, x_661.y, x_661.z));
  let x_665 : vec4<f32> = u_xlat7;
  let x_667 : vec4<f32> = u_xlat7;
  u_xlat3.w = dot(vec3<f32>(x_665.x, x_665.y, x_665.z), vec3<f32>(x_667.x, x_667.y, x_667.z));
  let x_673 : vec4<f32> = u_xlat3;
  let x_675 : vec4<f32> = x_614.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_673 < x_675);
  let x_678 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_678);
  let x_682 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_682);
  let x_686 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_686);
  let x_690 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_690);
  let x_694 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_694);
  let x_699 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_699);
  let x_703 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_703);
  let x_706 : vec4<f32> = u_xlat3;
  let x_708 : vec4<f32> = u_xlat4;
  let x_710 : vec3<f32> = (vec3<f32>(x_706.x, x_706.y, x_706.z) + vec3<f32>(x_708.y, x_708.z, x_708.w));
  let x_711 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_710.x, x_710.y, x_710.z, x_711.w);
  let x_713 : vec4<f32> = u_xlat3;
  let x_716 : vec3<f32> = max(vec3<f32>(x_713.x, x_713.y, x_713.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_717 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_717.x, x_716.x, x_716.y, x_716.z);
  let x_719 : vec4<f32> = u_xlat4;
  u_xlat64 = dot(x_719, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_724 : f32 = u_xlat64;
  u_xlat64 = (-(x_724) + 4.0f);
  let x_729 : f32 = u_xlat64;
  u_xlatu64 = u32(x_729);
  let x_733 : u32 = u_xlatu64;
  u_xlati64 = (bitcast<i32>(x_733) << bitcast<u32>(2i));
  let x_736 : vec3<f32> = vs_TEXCOORD7;
  let x_738 : i32 = u_xlati64;
  let x_741 : i32 = u_xlati64;
  let x_745 : vec4<f32> = x_614.x_MainLightWorldToShadow[((x_738 + 1i) / 4i)][((x_741 + 1i) % 4i)];
  let x_747 : vec3<f32> = (vec3<f32>(x_736.y, x_736.y, x_736.y) * vec3<f32>(x_745.x, x_745.y, x_745.z));
  let x_748 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_747.x, x_747.y, x_747.z, x_748.w);
  let x_750 : i32 = u_xlati64;
  let x_752 : i32 = u_xlati64;
  let x_755 : vec4<f32> = x_614.x_MainLightWorldToShadow[(x_750 / 4i)][(x_752 % 4i)];
  let x_757 : vec3<f32> = vs_TEXCOORD7;
  let x_760 : vec4<f32> = u_xlat3;
  let x_762 : vec3<f32> = ((vec3<f32>(x_755.x, x_755.y, x_755.z) * vec3<f32>(x_757.x, x_757.x, x_757.x)) + vec3<f32>(x_760.x, x_760.y, x_760.z));
  let x_763 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_762.x, x_762.y, x_762.z, x_763.w);
  let x_765 : i32 = u_xlati64;
  let x_768 : i32 = u_xlati64;
  let x_772 : vec4<f32> = x_614.x_MainLightWorldToShadow[((x_765 + 2i) / 4i)][((x_768 + 2i) % 4i)];
  let x_774 : vec3<f32> = vs_TEXCOORD7;
  let x_777 : vec4<f32> = u_xlat3;
  let x_779 : vec3<f32> = ((vec3<f32>(x_772.x, x_772.y, x_772.z) * vec3<f32>(x_774.z, x_774.z, x_774.z)) + vec3<f32>(x_777.x, x_777.y, x_777.z));
  let x_780 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_779.x, x_779.y, x_779.z, x_780.w);
  let x_782 : vec4<f32> = u_xlat3;
  let x_784 : i32 = u_xlati64;
  let x_787 : i32 = u_xlati64;
  let x_791 : vec4<f32> = x_614.x_MainLightWorldToShadow[((x_784 + 3i) / 4i)][((x_787 + 3i) % 4i)];
  let x_793 : vec3<f32> = (vec3<f32>(x_782.x, x_782.y, x_782.z) + vec3<f32>(x_791.x, x_791.y, x_791.z));
  let x_794 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_793.x, x_793.y, x_793.z, x_794.w);
  let x_801 : vec4<f32> = vs_TEXCOORD0;
  let x_804 : f32 = x_126.x_GlobalMipBias.x;
  let x_805 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_801.z, x_801.w), x_804);
  let x_806 : vec3<f32> = vec3<f32>(x_805.x, x_805.y, x_805.z);
  let x_807 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_806.x, x_806.y, x_806.z, x_807.w);
  let x_811 : vec4<f32> = x_126.x_ScaledScreenParams;
  let x_812 : vec2<f32> = vec2<f32>(x_811.x, x_811.y);
  let x_816 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_812.x, x_812.y));
  let x_817 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_816.x, x_816.y, x_817.z, x_817.w);
  let x_819 : vec4<f32> = u_xlat6;
  let x_821 : vec4<f32> = hlslcc_FragCoord;
  let x_823 : vec2<f32> = (vec2<f32>(x_819.x, x_819.y) * vec2<f32>(x_821.x, x_821.y));
  let x_824 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_823.x, x_823.y, x_824.z, x_824.w);
  let x_827 : f32 = u_xlat6.y;
  let x_829 : f32 = x_126.x_ScaleBiasRt.x;
  let x_832 : f32 = x_126.x_ScaleBiasRt.y;
  u_xlat64 = ((x_827 * x_829) + x_832);
  let x_834 : f32 = u_xlat64;
  u_xlat6.z = (-(x_834) + 1.0f);
  let x_839 : f32 = u_xlat0.x;
  u_xlat64 = ((-(x_839) * 0.959999979f) + 0.959999979f);
  let x_845 : f32 = u_xlat42;
  let x_846 : f32 = u_xlat64;
  u_xlat65 = (x_845 + -(x_846));
  let x_849 : f32 = u_xlat64;
  let x_851 : vec4<f32> = u_xlat5;
  let x_853 : vec3<f32> = (vec3<f32>(x_849, x_849, x_849) * vec3<f32>(x_851.x, x_851.y, x_851.z));
  let x_854 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_853.x, x_853.y, x_853.z, x_854.w);
  let x_856 : vec4<f32> = u_xlat5;
  let x_860 : vec3<f32> = (vec3<f32>(x_856.x, x_856.y, x_856.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_861 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_860.x, x_860.y, x_860.z, x_861.w);
  let x_863 : vec3<f32> = u_xlat0;
  let x_865 : vec4<f32> = u_xlat5;
  let x_870 : vec3<f32> = ((vec3<f32>(x_863.x, x_863.x, x_863.x) * vec3<f32>(x_865.x, x_865.y, x_865.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_871 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_870.x, x_870.y, x_870.z, x_871.w);
  let x_873 : f32 = u_xlat42;
  u_xlat0.x = (-(x_873) + 1.0f);
  let x_878 : f32 = u_xlat0.x;
  let x_880 : f32 = u_xlat0.x;
  u_xlat42 = (x_878 * x_880);
  let x_882 : f32 = u_xlat42;
  u_xlat42 = max(x_882, 0.0078125f);
  let x_885 : f32 = u_xlat42;
  let x_886 : f32 = u_xlat42;
  u_xlat64 = (x_885 * x_886);
  let x_888 : f32 = u_xlat65;
  u_xlat65 = (x_888 + 1.0f);
  let x_890 : f32 = u_xlat65;
  u_xlat65 = clamp(x_890, 0.0f, 1.0f);
  let x_893 : f32 = u_xlat42;
  u_xlat66 = ((x_893 * 4.0f) + 2.0f);
  let x_902 : vec4<f32> = u_xlat6;
  let x_905 : f32 = x_126.x_GlobalMipBias.x;
  let x_906 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_902.x, x_902.z), x_905);
  u_xlat67 = x_906.x;
  let x_909 : f32 = u_xlat67;
  u_xlat68 = (x_909 + -1.0f);
  let x_912 : f32 = x_126.x_AmbientOcclusionParam.w;
  let x_913 : f32 = u_xlat68;
  u_xlat68 = ((x_912 * x_913) + 1.0f);
  let x_916 : f32 = u_xlat21;
  let x_917 : f32 = u_xlat67;
  u_xlat21 = min(x_916, x_917);
  let x_921 : f32 = x_614.x_MainLightShadowParams.y;
  u_xlatb67 = (0.0f < x_921);
  let x_923 : bool = u_xlatb67;
  if (x_923) {
    let x_927 : f32 = x_614.x_MainLightShadowParams.y;
    u_xlatb67 = (x_927 == 1.0f);
    let x_929 : bool = u_xlatb67;
    if (x_929) {
      let x_932 : vec4<f32> = u_xlat3;
      let x_935 : vec4<f32> = x_614.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_932.x, x_932.y, x_932.x, x_932.y) + x_935);
      let x_938 : vec4<f32> = u_xlat6;
      let x_939 : vec2<f32> = vec2<f32>(x_938.x, x_938.y);
      let x_941 : f32 = u_xlat3.z;
      txVec0 = vec3<f32>(x_939.x, x_939.y, x_941);
      let x_953 : vec3<f32> = txVec0;
      let x_955 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_953.xy, x_953.z);
      u_xlat8.x = x_955;
      let x_958 : vec4<f32> = u_xlat6;
      let x_959 : vec2<f32> = vec2<f32>(x_958.z, x_958.w);
      let x_961 : f32 = u_xlat3.z;
      txVec1 = vec3<f32>(x_959.x, x_959.y, x_961);
      let x_968 : vec3<f32> = txVec1;
      let x_970 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_968.xy, x_968.z);
      u_xlat8.y = x_970;
      let x_972 : vec4<f32> = u_xlat3;
      let x_975 : vec4<f32> = x_614.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_972.x, x_972.y, x_972.x, x_972.y) + x_975);
      let x_978 : vec4<f32> = u_xlat6;
      let x_979 : vec2<f32> = vec2<f32>(x_978.x, x_978.y);
      let x_981 : f32 = u_xlat3.z;
      txVec2 = vec3<f32>(x_979.x, x_979.y, x_981);
      let x_988 : vec3<f32> = txVec2;
      let x_990 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_988.xy, x_988.z);
      u_xlat8.z = x_990;
      let x_993 : vec4<f32> = u_xlat6;
      let x_994 : vec2<f32> = vec2<f32>(x_993.z, x_993.w);
      let x_996 : f32 = u_xlat3.z;
      txVec3 = vec3<f32>(x_994.x, x_994.y, x_996);
      let x_1003 : vec3<f32> = txVec3;
      let x_1005 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1003.xy, x_1003.z);
      u_xlat8.w = x_1005;
      let x_1007 : vec4<f32> = u_xlat8;
      u_xlat67 = dot(x_1007, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_1014 : f32 = x_614.x_MainLightShadowParams.y;
      u_xlatb6 = (x_1014 == 2.0f);
      let x_1016 : bool = u_xlatb6;
      if (x_1016) {
        let x_1019 : vec4<f32> = u_xlat3;
        let x_1022 : vec4<f32> = x_614.x_MainLightShadowmapSize;
        let x_1025 : vec2<f32> = ((vec2<f32>(x_1019.x, x_1019.y) * vec2<f32>(x_1022.z, x_1022.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1026 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1025.x, x_1025.y, x_1026.z, x_1026.w);
        let x_1028 : vec4<f32> = u_xlat6;
        let x_1030 : vec2<f32> = floor(vec2<f32>(x_1028.x, x_1028.y));
        let x_1031 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1030.x, x_1030.y, x_1031.z, x_1031.w);
        let x_1035 : vec4<f32> = u_xlat3;
        let x_1038 : vec4<f32> = x_614.x_MainLightShadowmapSize;
        let x_1041 : vec4<f32> = u_xlat6;
        u_xlat48 = ((vec2<f32>(x_1035.x, x_1035.y) * vec2<f32>(x_1038.z, x_1038.w)) + -(vec2<f32>(x_1041.x, x_1041.y)));
        let x_1045 : vec2<f32> = u_xlat48;
        u_xlat8 = (vec4<f32>(x_1045.x, x_1045.x, x_1045.y, x_1045.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1049 : vec4<f32> = u_xlat8;
        let x_1051 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1049.x, x_1049.x, x_1049.z, x_1049.z) * vec4<f32>(x_1051.x, x_1051.x, x_1051.z, x_1051.z));
        let x_1054 : vec4<f32> = u_xlat9;
        let x_1058 : vec2<f32> = (vec2<f32>(x_1054.y, x_1054.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_1059 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1058.x, x_1059.y, x_1058.y, x_1059.w);
        let x_1061 : vec4<f32> = u_xlat9;
        let x_1064 : vec2<f32> = u_xlat48;
        let x_1066 : vec2<f32> = ((vec2<f32>(x_1061.x, x_1061.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1064));
        let x_1067 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1066.x, x_1066.y, x_1067.z, x_1067.w);
        let x_1070 : vec2<f32> = u_xlat48;
        u_xlat51 = (-(x_1070) + vec2<f32>(1.0f, 1.0f));
        let x_1073 : vec2<f32> = u_xlat48;
        let x_1075 : vec2<f32> = min(x_1073, vec2<f32>(0.0f, 0.0f));
        let x_1076 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1075.x, x_1075.y, x_1076.z, x_1076.w);
        let x_1078 : vec4<f32> = u_xlat10;
        let x_1081 : vec4<f32> = u_xlat10;
        let x_1084 : vec2<f32> = u_xlat51;
        let x_1085 : vec2<f32> = ((-(vec2<f32>(x_1078.x, x_1078.y)) * vec2<f32>(x_1081.x, x_1081.y)) + x_1084);
        let x_1086 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1085.x, x_1085.y, x_1086.z, x_1086.w);
        let x_1088 : vec2<f32> = u_xlat48;
        u_xlat48 = max(x_1088, vec2<f32>(0.0f, 0.0f));
        let x_1090 : vec2<f32> = u_xlat48;
        let x_1092 : vec2<f32> = u_xlat48;
        let x_1094 : vec4<f32> = u_xlat8;
        u_xlat48 = ((-(x_1090) * x_1092) + vec2<f32>(x_1094.y, x_1094.w));
        let x_1097 : vec4<f32> = u_xlat10;
        let x_1099 : vec2<f32> = (vec2<f32>(x_1097.x, x_1097.y) + vec2<f32>(1.0f, 1.0f));
        let x_1100 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1099.x, x_1099.y, x_1100.z, x_1100.w);
        let x_1102 : vec2<f32> = u_xlat48;
        u_xlat48 = (x_1102 + vec2<f32>(1.0f, 1.0f));
        let x_1104 : vec4<f32> = u_xlat9;
        let x_1108 : vec2<f32> = (vec2<f32>(x_1104.x, x_1104.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1109 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1108.x, x_1108.y, x_1109.z, x_1109.w);
        let x_1111 : vec2<f32> = u_xlat51;
        let x_1112 : vec2<f32> = (x_1111 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1113 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1112.x, x_1112.y, x_1113.z, x_1113.w);
        let x_1115 : vec4<f32> = u_xlat10;
        let x_1117 : vec2<f32> = (vec2<f32>(x_1115.x, x_1115.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1118 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1117.x, x_1117.y, x_1118.z, x_1118.w);
        let x_1120 : vec2<f32> = u_xlat48;
        let x_1121 : vec2<f32> = (x_1120 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1122 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1121.x, x_1121.y, x_1122.z, x_1122.w);
        let x_1124 : vec4<f32> = u_xlat8;
        u_xlat48 = (vec2<f32>(x_1124.y, x_1124.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1128 : f32 = u_xlat10.x;
        u_xlat11.z = x_1128;
        let x_1131 : f32 = u_xlat48.x;
        u_xlat11.w = x_1131;
        let x_1134 : f32 = u_xlat12.x;
        u_xlat9.z = x_1134;
        let x_1137 : f32 = u_xlat8.x;
        u_xlat9.w = x_1137;
        let x_1139 : vec4<f32> = u_xlat9;
        let x_1141 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_1139.z, x_1139.w, x_1139.x, x_1139.z) + vec4<f32>(x_1141.z, x_1141.w, x_1141.x, x_1141.z));
        let x_1145 : f32 = u_xlat11.y;
        u_xlat10.z = x_1145;
        let x_1148 : f32 = u_xlat48.y;
        u_xlat10.w = x_1148;
        let x_1151 : f32 = u_xlat9.y;
        u_xlat12.z = x_1151;
        let x_1154 : f32 = u_xlat8.z;
        u_xlat12.w = x_1154;
        let x_1156 : vec4<f32> = u_xlat10;
        let x_1158 : vec4<f32> = u_xlat12;
        let x_1160 : vec3<f32> = (vec3<f32>(x_1156.z, x_1156.y, x_1156.w) + vec3<f32>(x_1158.z, x_1158.y, x_1158.w));
        let x_1161 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1160.x, x_1160.y, x_1160.z, x_1161.w);
        let x_1163 : vec4<f32> = u_xlat9;
        let x_1165 : vec4<f32> = u_xlat13;
        let x_1167 : vec3<f32> = (vec3<f32>(x_1163.x, x_1163.z, x_1163.w) / vec3<f32>(x_1165.z, x_1165.w, x_1165.y));
        let x_1168 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1167.x, x_1167.y, x_1167.z, x_1168.w);
        let x_1170 : vec4<f32> = u_xlat9;
        let x_1176 : vec3<f32> = (vec3<f32>(x_1170.x, x_1170.y, x_1170.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1177 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1176.x, x_1176.y, x_1176.z, x_1177.w);
        let x_1179 : vec4<f32> = u_xlat12;
        let x_1181 : vec4<f32> = u_xlat8;
        let x_1183 : vec3<f32> = (vec3<f32>(x_1179.z, x_1179.y, x_1179.w) / vec3<f32>(x_1181.x, x_1181.y, x_1181.z));
        let x_1184 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1183.x, x_1183.y, x_1183.z, x_1184.w);
        let x_1186 : vec4<f32> = u_xlat10;
        let x_1188 : vec3<f32> = (vec3<f32>(x_1186.x, x_1186.y, x_1186.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1189 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1188.x, x_1188.y, x_1188.z, x_1189.w);
        let x_1191 : vec4<f32> = u_xlat9;
        let x_1194 : vec4<f32> = x_614.x_MainLightShadowmapSize;
        let x_1196 : vec3<f32> = (vec3<f32>(x_1191.y, x_1191.x, x_1191.z) * vec3<f32>(x_1194.x, x_1194.x, x_1194.x));
        let x_1197 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1196.x, x_1196.y, x_1196.z, x_1197.w);
        let x_1199 : vec4<f32> = u_xlat10;
        let x_1202 : vec4<f32> = x_614.x_MainLightShadowmapSize;
        let x_1204 : vec3<f32> = (vec3<f32>(x_1199.x, x_1199.y, x_1199.z) * vec3<f32>(x_1202.y, x_1202.y, x_1202.y));
        let x_1205 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1204.x, x_1204.y, x_1204.z, x_1205.w);
        let x_1208 : f32 = u_xlat10.x;
        u_xlat9.w = x_1208;
        let x_1210 : vec4<f32> = u_xlat6;
        let x_1213 : vec4<f32> = x_614.x_MainLightShadowmapSize;
        let x_1216 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1210.x, x_1210.y, x_1210.x, x_1210.y) * vec4<f32>(x_1213.x, x_1213.y, x_1213.x, x_1213.y)) + vec4<f32>(x_1216.y, x_1216.w, x_1216.x, x_1216.w));
        let x_1219 : vec4<f32> = u_xlat6;
        let x_1222 : vec4<f32> = x_614.x_MainLightShadowmapSize;
        let x_1225 : vec4<f32> = u_xlat9;
        u_xlat48 = ((vec2<f32>(x_1219.x, x_1219.y) * vec2<f32>(x_1222.x, x_1222.y)) + vec2<f32>(x_1225.z, x_1225.w));
        let x_1229 : f32 = u_xlat9.y;
        u_xlat10.w = x_1229;
        let x_1231 : vec4<f32> = u_xlat10;
        let x_1232 : vec2<f32> = vec2<f32>(x_1231.y, x_1231.z);
        let x_1233 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1233.x, x_1232.x, x_1233.z, x_1232.y);
        let x_1235 : vec4<f32> = u_xlat6;
        let x_1238 : vec4<f32> = x_614.x_MainLightShadowmapSize;
        let x_1241 : vec4<f32> = u_xlat9;
        u_xlat12 = ((vec4<f32>(x_1235.x, x_1235.y, x_1235.x, x_1235.y) * vec4<f32>(x_1238.x, x_1238.y, x_1238.x, x_1238.y)) + vec4<f32>(x_1241.x, x_1241.y, x_1241.z, x_1241.y));
        let x_1244 : vec4<f32> = u_xlat6;
        let x_1247 : vec4<f32> = x_614.x_MainLightShadowmapSize;
        let x_1250 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_1244.x, x_1244.y, x_1244.x, x_1244.y) * vec4<f32>(x_1247.x, x_1247.y, x_1247.x, x_1247.y)) + vec4<f32>(x_1250.w, x_1250.y, x_1250.w, x_1250.z));
        let x_1253 : vec4<f32> = u_xlat6;
        let x_1256 : vec4<f32> = x_614.x_MainLightShadowmapSize;
        let x_1259 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1253.x, x_1253.y, x_1253.x, x_1253.y) * vec4<f32>(x_1256.x, x_1256.y, x_1256.x, x_1256.y)) + vec4<f32>(x_1259.x, x_1259.w, x_1259.z, x_1259.w));
        let x_1263 : vec4<f32> = u_xlat8;
        let x_1265 : vec4<f32> = u_xlat13;
        u_xlat14 = (vec4<f32>(x_1263.x, x_1263.x, x_1263.x, x_1263.y) * vec4<f32>(x_1265.z, x_1265.w, x_1265.y, x_1265.z));
        let x_1269 : vec4<f32> = u_xlat8;
        let x_1271 : vec4<f32> = u_xlat13;
        u_xlat15 = (vec4<f32>(x_1269.y, x_1269.y, x_1269.z, x_1269.z) * x_1271);
        let x_1274 : f32 = u_xlat8.z;
        let x_1276 : f32 = u_xlat13.y;
        u_xlat6.x = (x_1274 * x_1276);
        let x_1280 : vec4<f32> = u_xlat11;
        let x_1281 : vec2<f32> = vec2<f32>(x_1280.x, x_1280.y);
        let x_1283 : f32 = u_xlat3.z;
        txVec4 = vec3<f32>(x_1281.x, x_1281.y, x_1283);
        let x_1291 : vec3<f32> = txVec4;
        let x_1293 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1291.xy, x_1291.z);
        u_xlat27 = x_1293;
        let x_1295 : vec4<f32> = u_xlat11;
        let x_1296 : vec2<f32> = vec2<f32>(x_1295.z, x_1295.w);
        let x_1298 : f32 = u_xlat3.z;
        txVec5 = vec3<f32>(x_1296.x, x_1296.y, x_1298);
        let x_1306 : vec3<f32> = txVec5;
        let x_1308 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1306.xy, x_1306.z);
        u_xlat70 = x_1308;
        let x_1309 : f32 = u_xlat70;
        let x_1311 : f32 = u_xlat14.y;
        u_xlat70 = (x_1309 * x_1311);
        let x_1314 : f32 = u_xlat14.x;
        let x_1315 : f32 = u_xlat27;
        let x_1317 : f32 = u_xlat70;
        u_xlat27 = ((x_1314 * x_1315) + x_1317);
        let x_1320 : vec2<f32> = u_xlat48;
        let x_1322 : f32 = u_xlat3.z;
        txVec6 = vec3<f32>(x_1320.x, x_1320.y, x_1322);
        let x_1329 : vec3<f32> = txVec6;
        let x_1331 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1329.xy, x_1329.z);
        u_xlat48.x = x_1331;
        let x_1334 : f32 = u_xlat14.z;
        let x_1336 : f32 = u_xlat48.x;
        let x_1338 : f32 = u_xlat27;
        u_xlat27 = ((x_1334 * x_1336) + x_1338);
        let x_1341 : vec4<f32> = u_xlat10;
        let x_1342 : vec2<f32> = vec2<f32>(x_1341.x, x_1341.y);
        let x_1344 : f32 = u_xlat3.z;
        txVec7 = vec3<f32>(x_1342.x, x_1342.y, x_1344);
        let x_1351 : vec3<f32> = txVec7;
        let x_1353 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1351.xy, x_1351.z);
        u_xlat48.x = x_1353;
        let x_1356 : f32 = u_xlat14.w;
        let x_1358 : f32 = u_xlat48.x;
        let x_1360 : f32 = u_xlat27;
        u_xlat27 = ((x_1356 * x_1358) + x_1360);
        let x_1363 : vec4<f32> = u_xlat12;
        let x_1364 : vec2<f32> = vec2<f32>(x_1363.x, x_1363.y);
        let x_1366 : f32 = u_xlat3.z;
        txVec8 = vec3<f32>(x_1364.x, x_1364.y, x_1366);
        let x_1373 : vec3<f32> = txVec8;
        let x_1375 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1373.xy, x_1373.z);
        u_xlat48.x = x_1375;
        let x_1378 : f32 = u_xlat15.x;
        let x_1380 : f32 = u_xlat48.x;
        let x_1382 : f32 = u_xlat27;
        u_xlat27 = ((x_1378 * x_1380) + x_1382);
        let x_1385 : vec4<f32> = u_xlat12;
        let x_1386 : vec2<f32> = vec2<f32>(x_1385.z, x_1385.w);
        let x_1388 : f32 = u_xlat3.z;
        txVec9 = vec3<f32>(x_1386.x, x_1386.y, x_1388);
        let x_1395 : vec3<f32> = txVec9;
        let x_1397 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1395.xy, x_1395.z);
        u_xlat48.x = x_1397;
        let x_1400 : f32 = u_xlat15.y;
        let x_1402 : f32 = u_xlat48.x;
        let x_1404 : f32 = u_xlat27;
        u_xlat27 = ((x_1400 * x_1402) + x_1404);
        let x_1407 : vec4<f32> = u_xlat10;
        let x_1408 : vec2<f32> = vec2<f32>(x_1407.z, x_1407.w);
        let x_1410 : f32 = u_xlat3.z;
        txVec10 = vec3<f32>(x_1408.x, x_1408.y, x_1410);
        let x_1417 : vec3<f32> = txVec10;
        let x_1419 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1417.xy, x_1417.z);
        u_xlat48.x = x_1419;
        let x_1422 : f32 = u_xlat15.z;
        let x_1424 : f32 = u_xlat48.x;
        let x_1426 : f32 = u_xlat27;
        u_xlat27 = ((x_1422 * x_1424) + x_1426);
        let x_1429 : vec4<f32> = u_xlat9;
        let x_1430 : vec2<f32> = vec2<f32>(x_1429.x, x_1429.y);
        let x_1432 : f32 = u_xlat3.z;
        txVec11 = vec3<f32>(x_1430.x, x_1430.y, x_1432);
        let x_1439 : vec3<f32> = txVec11;
        let x_1441 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1439.xy, x_1439.z);
        u_xlat48.x = x_1441;
        let x_1444 : f32 = u_xlat15.w;
        let x_1446 : f32 = u_xlat48.x;
        let x_1448 : f32 = u_xlat27;
        u_xlat27 = ((x_1444 * x_1446) + x_1448);
        let x_1451 : vec4<f32> = u_xlat9;
        let x_1452 : vec2<f32> = vec2<f32>(x_1451.z, x_1451.w);
        let x_1454 : f32 = u_xlat3.z;
        txVec12 = vec3<f32>(x_1452.x, x_1452.y, x_1454);
        let x_1461 : vec3<f32> = txVec12;
        let x_1463 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1461.xy, x_1461.z);
        u_xlat48.x = x_1463;
        let x_1466 : f32 = u_xlat6.x;
        let x_1468 : f32 = u_xlat48.x;
        let x_1470 : f32 = u_xlat27;
        u_xlat67 = ((x_1466 * x_1468) + x_1470);
      } else {
        let x_1473 : vec4<f32> = u_xlat3;
        let x_1476 : vec4<f32> = x_614.x_MainLightShadowmapSize;
        let x_1479 : vec2<f32> = ((vec2<f32>(x_1473.x, x_1473.y) * vec2<f32>(x_1476.z, x_1476.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1480 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1479.x, x_1479.y, x_1480.z, x_1480.w);
        let x_1482 : vec4<f32> = u_xlat6;
        let x_1484 : vec2<f32> = floor(vec2<f32>(x_1482.x, x_1482.y));
        let x_1485 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1484.x, x_1484.y, x_1485.z, x_1485.w);
        let x_1487 : vec4<f32> = u_xlat3;
        let x_1490 : vec4<f32> = x_614.x_MainLightShadowmapSize;
        let x_1493 : vec4<f32> = u_xlat6;
        u_xlat48 = ((vec2<f32>(x_1487.x, x_1487.y) * vec2<f32>(x_1490.z, x_1490.w)) + -(vec2<f32>(x_1493.x, x_1493.y)));
        let x_1497 : vec2<f32> = u_xlat48;
        u_xlat8 = (vec4<f32>(x_1497.x, x_1497.x, x_1497.y, x_1497.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1500 : vec4<f32> = u_xlat8;
        let x_1502 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1500.x, x_1500.x, x_1500.z, x_1500.z) * vec4<f32>(x_1502.x, x_1502.x, x_1502.z, x_1502.z));
        let x_1505 : vec4<f32> = u_xlat9;
        let x_1509 : vec2<f32> = (vec2<f32>(x_1505.y, x_1505.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1510 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1510.x, x_1509.x, x_1510.z, x_1509.y);
        let x_1512 : vec4<f32> = u_xlat9;
        let x_1515 : vec2<f32> = u_xlat48;
        let x_1517 : vec2<f32> = ((vec2<f32>(x_1512.x, x_1512.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1515));
        let x_1518 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1517.x, x_1518.y, x_1517.y, x_1518.w);
        let x_1520 : vec2<f32> = u_xlat48;
        let x_1522 : vec2<f32> = (-(x_1520) + vec2<f32>(1.0f, 1.0f));
        let x_1523 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1522.x, x_1522.y, x_1523.z, x_1523.w);
        let x_1525 : vec2<f32> = u_xlat48;
        u_xlat51 = min(x_1525, vec2<f32>(0.0f, 0.0f));
        let x_1527 : vec2<f32> = u_xlat51;
        let x_1529 : vec2<f32> = u_xlat51;
        let x_1531 : vec4<f32> = u_xlat9;
        let x_1533 : vec2<f32> = ((-(x_1527) * x_1529) + vec2<f32>(x_1531.x, x_1531.y));
        let x_1534 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1533.x, x_1533.y, x_1534.z, x_1534.w);
        let x_1536 : vec2<f32> = u_xlat48;
        u_xlat51 = max(x_1536, vec2<f32>(0.0f, 0.0f));
        let x_1539 : vec2<f32> = u_xlat51;
        let x_1541 : vec2<f32> = u_xlat51;
        let x_1543 : vec4<f32> = u_xlat8;
        let x_1545 : vec2<f32> = ((-(x_1539) * x_1541) + vec2<f32>(x_1543.y, x_1543.w));
        let x_1546 : vec3<f32> = u_xlat29;
        u_xlat29 = vec3<f32>(x_1545.x, x_1546.y, x_1545.y);
        let x_1548 : vec4<f32> = u_xlat9;
        let x_1551 : vec2<f32> = (vec2<f32>(x_1548.x, x_1548.y) + vec2<f32>(2.0f, 2.0f));
        let x_1552 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1551.x, x_1551.y, x_1552.z, x_1552.w);
        let x_1554 : vec3<f32> = u_xlat29;
        let x_1556 : vec2<f32> = (vec2<f32>(x_1554.x, x_1554.z) + vec2<f32>(2.0f, 2.0f));
        let x_1557 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1557.x, x_1556.x, x_1557.z, x_1556.y);
        let x_1560 : f32 = u_xlat8.y;
        u_xlat11.z = (x_1560 * 0.081632003f);
        let x_1564 : vec4<f32> = u_xlat8;
        let x_1567 : vec3<f32> = (vec3<f32>(x_1564.z, x_1564.x, x_1564.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_1568 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1567.x, x_1567.y, x_1567.z, x_1568.w);
        let x_1570 : vec4<f32> = u_xlat9;
        let x_1573 : vec2<f32> = (vec2<f32>(x_1570.x, x_1570.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1574 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1573.x, x_1573.y, x_1574.z, x_1574.w);
        let x_1577 : f32 = u_xlat12.y;
        u_xlat11.x = x_1577;
        let x_1579 : vec2<f32> = u_xlat48;
        let x_1586 : vec2<f32> = ((vec2<f32>(x_1579.x, x_1579.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1587 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1587.x, x_1586.x, x_1587.z, x_1586.y);
        let x_1589 : vec2<f32> = u_xlat48;
        let x_1593 : vec2<f32> = ((vec2<f32>(x_1589.x, x_1589.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1594 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1593.x, x_1594.y, x_1593.y, x_1594.w);
        let x_1597 : f32 = u_xlat8.x;
        u_xlat9.y = x_1597;
        let x_1600 : f32 = u_xlat10.y;
        u_xlat9.w = x_1600;
        let x_1602 : vec4<f32> = u_xlat9;
        let x_1603 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_1602 + x_1603);
        let x_1605 : vec2<f32> = u_xlat48;
        let x_1608 : vec2<f32> = ((vec2<f32>(x_1605.y, x_1605.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1609 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1609.x, x_1608.x, x_1609.z, x_1608.y);
        let x_1611 : vec2<f32> = u_xlat48;
        let x_1614 : vec2<f32> = ((vec2<f32>(x_1611.y, x_1611.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1615 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1614.x, x_1615.y, x_1614.y, x_1615.w);
        let x_1618 : f32 = u_xlat8.y;
        u_xlat10.y = x_1618;
        let x_1620 : vec4<f32> = u_xlat10;
        let x_1621 : vec4<f32> = u_xlat12;
        u_xlat8 = (x_1620 + x_1621);
        let x_1623 : vec4<f32> = u_xlat9;
        let x_1624 : vec4<f32> = u_xlat11;
        u_xlat9 = (x_1623 / x_1624);
        let x_1626 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1626 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1632 : vec4<f32> = u_xlat10;
        let x_1633 : vec4<f32> = u_xlat8;
        u_xlat10 = (x_1632 / x_1633);
        let x_1635 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1635 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1637 : vec4<f32> = u_xlat9;
        let x_1640 : vec4<f32> = x_614.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1637.w, x_1637.x, x_1637.y, x_1637.z) * vec4<f32>(x_1640.x, x_1640.x, x_1640.x, x_1640.x));
        let x_1643 : vec4<f32> = u_xlat10;
        let x_1646 : vec4<f32> = x_614.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1643.x, x_1643.w, x_1643.y, x_1643.z) * vec4<f32>(x_1646.y, x_1646.y, x_1646.y, x_1646.y));
        let x_1649 : vec4<f32> = u_xlat9;
        let x_1650 : vec3<f32> = vec3<f32>(x_1649.y, x_1649.z, x_1649.w);
        let x_1651 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1650.x, x_1651.y, x_1650.y, x_1650.z);
        let x_1654 : f32 = u_xlat10.x;
        u_xlat12.y = x_1654;
        let x_1656 : vec4<f32> = u_xlat6;
        let x_1659 : vec4<f32> = x_614.x_MainLightShadowmapSize;
        let x_1662 : vec4<f32> = u_xlat12;
        u_xlat13 = ((vec4<f32>(x_1656.x, x_1656.y, x_1656.x, x_1656.y) * vec4<f32>(x_1659.x, x_1659.y, x_1659.x, x_1659.y)) + vec4<f32>(x_1662.x, x_1662.y, x_1662.z, x_1662.y));
        let x_1665 : vec4<f32> = u_xlat6;
        let x_1668 : vec4<f32> = x_614.x_MainLightShadowmapSize;
        let x_1671 : vec4<f32> = u_xlat12;
        u_xlat48 = ((vec2<f32>(x_1665.x, x_1665.y) * vec2<f32>(x_1668.x, x_1668.y)) + vec2<f32>(x_1671.w, x_1671.y));
        let x_1675 : f32 = u_xlat12.y;
        u_xlat9.y = x_1675;
        let x_1678 : f32 = u_xlat10.z;
        u_xlat12.y = x_1678;
        let x_1680 : vec4<f32> = u_xlat6;
        let x_1683 : vec4<f32> = x_614.x_MainLightShadowmapSize;
        let x_1686 : vec4<f32> = u_xlat12;
        u_xlat14 = ((vec4<f32>(x_1680.x, x_1680.y, x_1680.x, x_1680.y) * vec4<f32>(x_1683.x, x_1683.y, x_1683.x, x_1683.y)) + vec4<f32>(x_1686.x, x_1686.y, x_1686.z, x_1686.y));
        let x_1689 : vec4<f32> = u_xlat6;
        let x_1692 : vec4<f32> = x_614.x_MainLightShadowmapSize;
        let x_1695 : vec4<f32> = u_xlat12;
        let x_1697 : vec2<f32> = ((vec2<f32>(x_1689.x, x_1689.y) * vec2<f32>(x_1692.x, x_1692.y)) + vec2<f32>(x_1695.w, x_1695.y));
        let x_1698 : vec4<f32> = u_xlat15;
        u_xlat15 = vec4<f32>(x_1697.x, x_1697.y, x_1698.z, x_1698.w);
        let x_1701 : f32 = u_xlat12.y;
        u_xlat9.z = x_1701;
        let x_1704 : vec4<f32> = u_xlat6;
        let x_1707 : vec4<f32> = x_614.x_MainLightShadowmapSize;
        let x_1710 : vec4<f32> = u_xlat9;
        u_xlat16 = ((vec4<f32>(x_1704.x, x_1704.y, x_1704.x, x_1704.y) * vec4<f32>(x_1707.x, x_1707.y, x_1707.x, x_1707.y)) + vec4<f32>(x_1710.x, x_1710.y, x_1710.x, x_1710.z));
        let x_1714 : f32 = u_xlat10.w;
        u_xlat12.y = x_1714;
        let x_1717 : vec4<f32> = u_xlat6;
        let x_1720 : vec4<f32> = x_614.x_MainLightShadowmapSize;
        let x_1723 : vec4<f32> = u_xlat12;
        u_xlat17 = ((vec4<f32>(x_1717.x, x_1717.y, x_1717.x, x_1717.y) * vec4<f32>(x_1720.x, x_1720.y, x_1720.x, x_1720.y)) + vec4<f32>(x_1723.x, x_1723.y, x_1723.z, x_1723.y));
        let x_1727 : vec4<f32> = u_xlat6;
        let x_1730 : vec4<f32> = x_614.x_MainLightShadowmapSize;
        let x_1733 : vec4<f32> = u_xlat12;
        u_xlat30 = ((vec2<f32>(x_1727.x, x_1727.y) * vec2<f32>(x_1730.x, x_1730.y)) + vec2<f32>(x_1733.w, x_1733.y));
        let x_1737 : f32 = u_xlat12.y;
        u_xlat9.w = x_1737;
        let x_1740 : vec4<f32> = u_xlat6;
        let x_1743 : vec4<f32> = x_614.x_MainLightShadowmapSize;
        let x_1746 : vec4<f32> = u_xlat9;
        u_xlat57 = ((vec2<f32>(x_1740.x, x_1740.y) * vec2<f32>(x_1743.x, x_1743.y)) + vec2<f32>(x_1746.x, x_1746.w));
        let x_1749 : vec4<f32> = u_xlat12;
        let x_1750 : vec3<f32> = vec3<f32>(x_1749.x, x_1749.z, x_1749.w);
        let x_1751 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1750.x, x_1751.y, x_1750.y, x_1750.z);
        let x_1753 : vec4<f32> = u_xlat6;
        let x_1756 : vec4<f32> = x_614.x_MainLightShadowmapSize;
        let x_1759 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1753.x, x_1753.y, x_1753.x, x_1753.y) * vec4<f32>(x_1756.x, x_1756.y, x_1756.x, x_1756.y)) + vec4<f32>(x_1759.x, x_1759.y, x_1759.z, x_1759.y));
        let x_1763 : vec4<f32> = u_xlat6;
        let x_1766 : vec4<f32> = x_614.x_MainLightShadowmapSize;
        let x_1769 : vec4<f32> = u_xlat10;
        u_xlat52 = ((vec2<f32>(x_1763.x, x_1763.y) * vec2<f32>(x_1766.x, x_1766.y)) + vec2<f32>(x_1769.w, x_1769.y));
        let x_1773 : f32 = u_xlat9.x;
        u_xlat10.x = x_1773;
        let x_1775 : vec4<f32> = u_xlat6;
        let x_1778 : vec4<f32> = x_614.x_MainLightShadowmapSize;
        let x_1781 : vec4<f32> = u_xlat10;
        let x_1783 : vec2<f32> = ((vec2<f32>(x_1775.x, x_1775.y) * vec2<f32>(x_1778.x, x_1778.y)) + vec2<f32>(x_1781.x, x_1781.y));
        let x_1784 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1783.x, x_1783.y, x_1784.z, x_1784.w);
        let x_1787 : vec4<f32> = u_xlat8;
        let x_1789 : vec4<f32> = u_xlat11;
        u_xlat18 = (vec4<f32>(x_1787.x, x_1787.x, x_1787.x, x_1787.x) * x_1789);
        let x_1792 : vec4<f32> = u_xlat8;
        let x_1794 : vec4<f32> = u_xlat11;
        u_xlat19 = (vec4<f32>(x_1792.y, x_1792.y, x_1792.y, x_1792.y) * x_1794);
        let x_1797 : vec4<f32> = u_xlat8;
        let x_1799 : vec4<f32> = u_xlat11;
        u_xlat20 = (vec4<f32>(x_1797.z, x_1797.z, x_1797.z, x_1797.z) * x_1799);
        let x_1801 : vec4<f32> = u_xlat8;
        let x_1803 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_1801.w, x_1801.w, x_1801.w, x_1801.w) * x_1803);
        let x_1806 : vec4<f32> = u_xlat13;
        let x_1807 : vec2<f32> = vec2<f32>(x_1806.x, x_1806.y);
        let x_1809 : f32 = u_xlat3.z;
        txVec13 = vec3<f32>(x_1807.x, x_1807.y, x_1809);
        let x_1816 : vec3<f32> = txVec13;
        let x_1818 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1816.xy, x_1816.z);
        u_xlat70 = x_1818;
        let x_1820 : vec4<f32> = u_xlat13;
        let x_1821 : vec2<f32> = vec2<f32>(x_1820.z, x_1820.w);
        let x_1823 : f32 = u_xlat3.z;
        txVec14 = vec3<f32>(x_1821.x, x_1821.y, x_1823);
        let x_1830 : vec3<f32> = txVec14;
        let x_1832 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1830.xy, x_1830.z);
        u_xlat9.x = x_1832;
        let x_1835 : f32 = u_xlat9.x;
        let x_1837 : f32 = u_xlat18.y;
        u_xlat9.x = (x_1835 * x_1837);
        let x_1841 : f32 = u_xlat18.x;
        let x_1842 : f32 = u_xlat70;
        let x_1845 : f32 = u_xlat9.x;
        u_xlat70 = ((x_1841 * x_1842) + x_1845);
        let x_1848 : vec2<f32> = u_xlat48;
        let x_1850 : f32 = u_xlat3.z;
        txVec15 = vec3<f32>(x_1848.x, x_1848.y, x_1850);
        let x_1857 : vec3<f32> = txVec15;
        let x_1859 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1857.xy, x_1857.z);
        u_xlat48.x = x_1859;
        let x_1862 : f32 = u_xlat18.z;
        let x_1864 : f32 = u_xlat48.x;
        let x_1866 : f32 = u_xlat70;
        u_xlat48.x = ((x_1862 * x_1864) + x_1866);
        let x_1870 : vec4<f32> = u_xlat16;
        let x_1871 : vec2<f32> = vec2<f32>(x_1870.x, x_1870.y);
        let x_1873 : f32 = u_xlat3.z;
        txVec16 = vec3<f32>(x_1871.x, x_1871.y, x_1873);
        let x_1881 : vec3<f32> = txVec16;
        let x_1883 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1881.xy, x_1881.z);
        u_xlat69 = x_1883;
        let x_1885 : f32 = u_xlat18.w;
        let x_1886 : f32 = u_xlat69;
        let x_1889 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_1885 * x_1886) + x_1889);
        let x_1893 : vec4<f32> = u_xlat14;
        let x_1894 : vec2<f32> = vec2<f32>(x_1893.x, x_1893.y);
        let x_1896 : f32 = u_xlat3.z;
        txVec17 = vec3<f32>(x_1894.x, x_1894.y, x_1896);
        let x_1903 : vec3<f32> = txVec17;
        let x_1905 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1903.xy, x_1903.z);
        u_xlat69 = x_1905;
        let x_1907 : f32 = u_xlat19.x;
        let x_1908 : f32 = u_xlat69;
        let x_1911 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_1907 * x_1908) + x_1911);
        let x_1915 : vec4<f32> = u_xlat14;
        let x_1916 : vec2<f32> = vec2<f32>(x_1915.z, x_1915.w);
        let x_1918 : f32 = u_xlat3.z;
        txVec18 = vec3<f32>(x_1916.x, x_1916.y, x_1918);
        let x_1925 : vec3<f32> = txVec18;
        let x_1927 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1925.xy, x_1925.z);
        u_xlat69 = x_1927;
        let x_1929 : f32 = u_xlat19.y;
        let x_1930 : f32 = u_xlat69;
        let x_1933 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_1929 * x_1930) + x_1933);
        let x_1937 : vec4<f32> = u_xlat15;
        let x_1938 : vec2<f32> = vec2<f32>(x_1937.x, x_1937.y);
        let x_1940 : f32 = u_xlat3.z;
        txVec19 = vec3<f32>(x_1938.x, x_1938.y, x_1940);
        let x_1947 : vec3<f32> = txVec19;
        let x_1949 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1947.xy, x_1947.z);
        u_xlat69 = x_1949;
        let x_1951 : f32 = u_xlat19.z;
        let x_1952 : f32 = u_xlat69;
        let x_1955 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_1951 * x_1952) + x_1955);
        let x_1959 : vec4<f32> = u_xlat16;
        let x_1960 : vec2<f32> = vec2<f32>(x_1959.z, x_1959.w);
        let x_1962 : f32 = u_xlat3.z;
        txVec20 = vec3<f32>(x_1960.x, x_1960.y, x_1962);
        let x_1969 : vec3<f32> = txVec20;
        let x_1971 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1969.xy, x_1969.z);
        u_xlat69 = x_1971;
        let x_1973 : f32 = u_xlat19.w;
        let x_1974 : f32 = u_xlat69;
        let x_1977 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_1973 * x_1974) + x_1977);
        let x_1981 : vec4<f32> = u_xlat17;
        let x_1982 : vec2<f32> = vec2<f32>(x_1981.x, x_1981.y);
        let x_1984 : f32 = u_xlat3.z;
        txVec21 = vec3<f32>(x_1982.x, x_1982.y, x_1984);
        let x_1991 : vec3<f32> = txVec21;
        let x_1993 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1991.xy, x_1991.z);
        u_xlat69 = x_1993;
        let x_1995 : f32 = u_xlat20.x;
        let x_1996 : f32 = u_xlat69;
        let x_1999 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_1995 * x_1996) + x_1999);
        let x_2003 : vec4<f32> = u_xlat17;
        let x_2004 : vec2<f32> = vec2<f32>(x_2003.z, x_2003.w);
        let x_2006 : f32 = u_xlat3.z;
        txVec22 = vec3<f32>(x_2004.x, x_2004.y, x_2006);
        let x_2013 : vec3<f32> = txVec22;
        let x_2015 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2013.xy, x_2013.z);
        u_xlat69 = x_2015;
        let x_2017 : f32 = u_xlat20.y;
        let x_2018 : f32 = u_xlat69;
        let x_2021 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_2017 * x_2018) + x_2021);
        let x_2025 : vec2<f32> = u_xlat30;
        let x_2027 : f32 = u_xlat3.z;
        txVec23 = vec3<f32>(x_2025.x, x_2025.y, x_2027);
        let x_2034 : vec3<f32> = txVec23;
        let x_2036 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2034.xy, x_2034.z);
        u_xlat69 = x_2036;
        let x_2038 : f32 = u_xlat20.z;
        let x_2039 : f32 = u_xlat69;
        let x_2042 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_2038 * x_2039) + x_2042);
        let x_2046 : vec2<f32> = u_xlat57;
        let x_2048 : f32 = u_xlat3.z;
        txVec24 = vec3<f32>(x_2046.x, x_2046.y, x_2048);
        let x_2055 : vec3<f32> = txVec24;
        let x_2057 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2055.xy, x_2055.z);
        u_xlat69 = x_2057;
        let x_2059 : f32 = u_xlat20.w;
        let x_2060 : f32 = u_xlat69;
        let x_2063 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_2059 * x_2060) + x_2063);
        let x_2067 : vec4<f32> = u_xlat12;
        let x_2068 : vec2<f32> = vec2<f32>(x_2067.x, x_2067.y);
        let x_2070 : f32 = u_xlat3.z;
        txVec25 = vec3<f32>(x_2068.x, x_2068.y, x_2070);
        let x_2077 : vec3<f32> = txVec25;
        let x_2079 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2077.xy, x_2077.z);
        u_xlat69 = x_2079;
        let x_2081 : f32 = u_xlat8.x;
        let x_2082 : f32 = u_xlat69;
        let x_2085 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_2081 * x_2082) + x_2085);
        let x_2089 : vec4<f32> = u_xlat12;
        let x_2090 : vec2<f32> = vec2<f32>(x_2089.z, x_2089.w);
        let x_2092 : f32 = u_xlat3.z;
        txVec26 = vec3<f32>(x_2090.x, x_2090.y, x_2092);
        let x_2099 : vec3<f32> = txVec26;
        let x_2101 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2099.xy, x_2099.z);
        u_xlat69 = x_2101;
        let x_2103 : f32 = u_xlat8.y;
        let x_2104 : f32 = u_xlat69;
        let x_2107 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_2103 * x_2104) + x_2107);
        let x_2111 : vec2<f32> = u_xlat52;
        let x_2113 : f32 = u_xlat3.z;
        txVec27 = vec3<f32>(x_2111.x, x_2111.y, x_2113);
        let x_2120 : vec3<f32> = txVec27;
        let x_2122 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2120.xy, x_2120.z);
        u_xlat69 = x_2122;
        let x_2124 : f32 = u_xlat8.z;
        let x_2125 : f32 = u_xlat69;
        let x_2128 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_2124 * x_2125) + x_2128);
        let x_2132 : vec4<f32> = u_xlat6;
        let x_2133 : vec2<f32> = vec2<f32>(x_2132.x, x_2132.y);
        let x_2135 : f32 = u_xlat3.z;
        txVec28 = vec3<f32>(x_2133.x, x_2133.y, x_2135);
        let x_2142 : vec3<f32> = txVec28;
        let x_2144 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2142.xy, x_2142.z);
        u_xlat6.x = x_2144;
        let x_2147 : f32 = u_xlat8.w;
        let x_2149 : f32 = u_xlat6.x;
        let x_2152 : f32 = u_xlat48.x;
        u_xlat67 = ((x_2147 * x_2149) + x_2152);
      }
    }
  } else {
    let x_2156 : vec4<f32> = u_xlat3;
    let x_2157 : vec2<f32> = vec2<f32>(x_2156.x, x_2156.y);
    let x_2159 : f32 = u_xlat3.z;
    txVec29 = vec3<f32>(x_2157.x, x_2157.y, x_2159);
    let x_2166 : vec3<f32> = txVec29;
    let x_2168 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2166.xy, x_2166.z);
    u_xlat67 = x_2168;
  }
  let x_2170 : f32 = x_614.x_MainLightShadowParams.x;
  u_xlat3.x = (-(x_2170) + 1.0f);
  let x_2174 : f32 = u_xlat67;
  let x_2176 : f32 = x_614.x_MainLightShadowParams.x;
  let x_2179 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_2174 * x_2176) + x_2179);
  let x_2184 : f32 = u_xlat3.z;
  u_xlatb24 = (0.0f >= x_2184);
  let x_2188 : f32 = u_xlat3.z;
  u_xlatb45 = (x_2188 >= 1.0f);
  let x_2190 : bool = u_xlatb45;
  let x_2191 : bool = u_xlatb24;
  u_xlatb24 = (x_2190 | x_2191);
  let x_2193 : bool = u_xlatb24;
  if (x_2193) {
    x_2194 = 1.0f;
  } else {
    let x_2199 : f32 = u_xlat3.x;
    x_2194 = x_2199;
  }
  let x_2200 : f32 = x_2194;
  u_xlat3.x = x_2200;
  let x_2202 : vec3<f32> = vs_TEXCOORD7;
  let x_2204 : vec3<f32> = x_126.x_WorldSpaceCameraPos;
  let x_2206 : vec3<f32> = (x_2202 + -(x_2204));
  let x_2207 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2206.x, x_2206.y, x_2206.z, x_2207.w);
  let x_2210 : vec4<f32> = u_xlat6;
  let x_2212 : vec4<f32> = u_xlat6;
  u_xlat24 = dot(vec3<f32>(x_2210.x, x_2210.y, x_2210.z), vec3<f32>(x_2212.x, x_2212.y, x_2212.z));
  let x_2215 : f32 = u_xlat24;
  let x_2217 : f32 = x_614.x_MainLightShadowParams.z;
  let x_2220 : f32 = x_614.x_MainLightShadowParams.w;
  u_xlat24 = ((x_2215 * x_2217) + x_2220);
  let x_2222 : f32 = u_xlat24;
  u_xlat24 = clamp(x_2222, 0.0f, 1.0f);
  let x_2226 : f32 = u_xlat3.x;
  u_xlat45 = (-(x_2226) + 1.0f);
  let x_2229 : f32 = u_xlat24;
  let x_2230 : f32 = u_xlat45;
  let x_2233 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_2229 * x_2230) + x_2233);
  let x_2236 : f32 = u_xlat68;
  let x_2239 : vec4<f32> = x_126.x_MainLightColor;
  let x_2241 : vec3<f32> = (vec3<f32>(x_2236, x_2236, x_2236) * vec3<f32>(x_2239.x, x_2239.y, x_2239.z));
  let x_2242 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2241.x, x_2241.y, x_2241.z, x_2242.w);
  let x_2244 : vec3<f32> = u_xlat2;
  let x_2246 : vec4<f32> = u_xlat1;
  u_xlat24 = dot(-(x_2244), vec3<f32>(x_2246.x, x_2246.y, x_2246.z));
  let x_2249 : f32 = u_xlat24;
  let x_2250 : f32 = u_xlat24;
  u_xlat24 = (x_2249 + x_2250);
  let x_2252 : vec4<f32> = u_xlat1;
  let x_2254 : f32 = u_xlat24;
  let x_2258 : vec3<f32> = u_xlat2;
  let x_2260 : vec3<f32> = ((vec3<f32>(x_2252.x, x_2252.y, x_2252.z) * -(vec3<f32>(x_2254, x_2254, x_2254))) + -(x_2258));
  let x_2261 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2260.x, x_2260.y, x_2260.z, x_2261.w);
  let x_2263 : vec4<f32> = u_xlat1;
  let x_2265 : vec3<f32> = u_xlat2;
  u_xlat24 = dot(vec3<f32>(x_2263.x, x_2263.y, x_2263.z), x_2265);
  let x_2267 : f32 = u_xlat24;
  u_xlat24 = clamp(x_2267, 0.0f, 1.0f);
  let x_2269 : f32 = u_xlat24;
  u_xlat24 = (-(x_2269) + 1.0f);
  let x_2272 : f32 = u_xlat24;
  let x_2273 : f32 = u_xlat24;
  u_xlat24 = (x_2272 * x_2273);
  let x_2275 : f32 = u_xlat24;
  let x_2276 : f32 = u_xlat24;
  u_xlat24 = (x_2275 * x_2276);
  let x_2279 : f32 = u_xlat0.x;
  u_xlat45 = ((-(x_2279) * 0.699999988f) + 1.700000048f);
  let x_2286 : f32 = u_xlat0.x;
  let x_2287 : f32 = u_xlat45;
  u_xlat0.x = (x_2286 * x_2287);
  let x_2291 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2291 * 6.0f);
  let x_2303 : vec4<f32> = u_xlat8;
  let x_2306 : f32 = u_xlat0.x;
  let x_2307 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2303.x, x_2303.y, x_2303.z), x_2306);
  u_xlat8 = x_2307;
  let x_2309 : f32 = u_xlat8.w;
  u_xlat0.x = (x_2309 + -1.0f);
  let x_2317 : f32 = x_2315.unity_SpecCube0_HDR.w;
  let x_2319 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_2317 * x_2319) + 1.0f);
  let x_2324 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2324, 0.0f);
  let x_2328 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_2328);
  let x_2332 : f32 = u_xlat0.x;
  let x_2334 : f32 = x_2315.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_2332 * x_2334);
  let x_2338 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_2338);
  let x_2342 : f32 = u_xlat0.x;
  let x_2344 : f32 = x_2315.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_2342 * x_2344);
  let x_2347 : vec4<f32> = u_xlat8;
  let x_2349 : vec3<f32> = u_xlat0;
  let x_2351 : vec3<f32> = (vec3<f32>(x_2347.x, x_2347.y, x_2347.z) * vec3<f32>(x_2349.x, x_2349.x, x_2349.x));
  let x_2352 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2351.x, x_2351.y, x_2351.z, x_2352.w);
  let x_2354 : f32 = u_xlat42;
  let x_2356 : f32 = u_xlat42;
  let x_2360 : vec2<f32> = ((vec2<f32>(x_2354, x_2354) * vec2<f32>(x_2356, x_2356)) + vec2<f32>(-1.0f, 1.0f));
  let x_2361 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_2360.x, x_2361.y, x_2360.y);
  let x_2364 : f32 = u_xlat0.z;
  u_xlat42 = (1.0f / x_2364);
  let x_2366 : vec4<f32> = u_xlat5;
  let x_2369 : f32 = u_xlat65;
  let x_2371 : vec3<f32> = (-(vec3<f32>(x_2366.x, x_2366.y, x_2366.z)) + vec3<f32>(x_2369, x_2369, x_2369));
  let x_2372 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2371.x, x_2371.y, x_2371.z, x_2372.w);
  let x_2374 : f32 = u_xlat24;
  let x_2376 : vec4<f32> = u_xlat9;
  let x_2379 : vec4<f32> = u_xlat5;
  let x_2381 : vec3<f32> = ((vec3<f32>(x_2374, x_2374, x_2374) * vec3<f32>(x_2376.x, x_2376.y, x_2376.z)) + vec3<f32>(x_2379.x, x_2379.y, x_2379.z));
  let x_2382 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2381.x, x_2381.y, x_2381.z, x_2382.w);
  let x_2384 : f32 = u_xlat42;
  let x_2386 : vec4<f32> = u_xlat9;
  let x_2388 : vec3<f32> = (vec3<f32>(x_2384, x_2384, x_2384) * vec3<f32>(x_2386.x, x_2386.y, x_2386.z));
  let x_2389 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2388.x, x_2388.y, x_2388.z, x_2389.w);
  let x_2391 : vec4<f32> = u_xlat8;
  let x_2393 : vec4<f32> = u_xlat9;
  let x_2395 : vec3<f32> = (vec3<f32>(x_2391.x, x_2391.y, x_2391.z) * vec3<f32>(x_2393.x, x_2393.y, x_2393.z));
  let x_2396 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2395.x, x_2395.y, x_2395.z, x_2396.w);
  let x_2398 : vec4<f32> = u_xlat4;
  let x_2400 : vec4<f32> = u_xlat7;
  let x_2403 : vec4<f32> = u_xlat8;
  let x_2405 : vec3<f32> = ((vec3<f32>(x_2398.x, x_2398.y, x_2398.z) * vec3<f32>(x_2400.x, x_2400.y, x_2400.z)) + vec3<f32>(x_2403.x, x_2403.y, x_2403.z));
  let x_2406 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2405.x, x_2405.y, x_2405.z, x_2406.w);
  let x_2409 : f32 = u_xlat3.x;
  let x_2411 : f32 = x_2315.unity_LightData.z;
  u_xlat42 = (x_2409 * x_2411);
  let x_2413 : vec4<f32> = u_xlat1;
  let x_2416 : vec4<f32> = x_126.x_MainLightPosition;
  u_xlat65 = dot(vec3<f32>(x_2413.x, x_2413.y, x_2413.z), vec3<f32>(x_2416.x, x_2416.y, x_2416.z));
  let x_2419 : f32 = u_xlat65;
  u_xlat65 = clamp(x_2419, 0.0f, 1.0f);
  let x_2421 : f32 = u_xlat42;
  let x_2422 : f32 = u_xlat65;
  u_xlat42 = (x_2421 * x_2422);
  let x_2424 : f32 = u_xlat42;
  let x_2426 : vec4<f32> = u_xlat6;
  let x_2428 : vec3<f32> = (vec3<f32>(x_2424, x_2424, x_2424) * vec3<f32>(x_2426.x, x_2426.y, x_2426.z));
  let x_2429 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2428.x, x_2428.y, x_2428.z, x_2429.w);
  let x_2431 : vec3<f32> = u_xlat2;
  let x_2433 : vec4<f32> = x_126.x_MainLightPosition;
  let x_2435 : vec3<f32> = (x_2431 + vec3<f32>(x_2433.x, x_2433.y, x_2433.z));
  let x_2436 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2435.x, x_2435.y, x_2435.z, x_2436.w);
  let x_2438 : vec4<f32> = u_xlat6;
  let x_2440 : vec4<f32> = u_xlat6;
  u_xlat42 = dot(vec3<f32>(x_2438.x, x_2438.y, x_2438.z), vec3<f32>(x_2440.x, x_2440.y, x_2440.z));
  let x_2443 : f32 = u_xlat42;
  u_xlat42 = max(x_2443, 1.17549435e-37f);
  let x_2446 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_2446);
  let x_2448 : f32 = u_xlat42;
  let x_2450 : vec4<f32> = u_xlat6;
  let x_2452 : vec3<f32> = (vec3<f32>(x_2448, x_2448, x_2448) * vec3<f32>(x_2450.x, x_2450.y, x_2450.z));
  let x_2453 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2452.x, x_2452.y, x_2452.z, x_2453.w);
  let x_2455 : vec4<f32> = u_xlat1;
  let x_2457 : vec4<f32> = u_xlat6;
  u_xlat42 = dot(vec3<f32>(x_2455.x, x_2455.y, x_2455.z), vec3<f32>(x_2457.x, x_2457.y, x_2457.z));
  let x_2460 : f32 = u_xlat42;
  u_xlat42 = clamp(x_2460, 0.0f, 1.0f);
  let x_2463 : vec4<f32> = x_126.x_MainLightPosition;
  let x_2465 : vec4<f32> = u_xlat6;
  u_xlat65 = dot(vec3<f32>(x_2463.x, x_2463.y, x_2463.z), vec3<f32>(x_2465.x, x_2465.y, x_2465.z));
  let x_2468 : f32 = u_xlat65;
  u_xlat65 = clamp(x_2468, 0.0f, 1.0f);
  let x_2470 : f32 = u_xlat42;
  let x_2471 : f32 = u_xlat42;
  u_xlat42 = (x_2470 * x_2471);
  let x_2473 : f32 = u_xlat42;
  let x_2475 : f32 = u_xlat0.x;
  u_xlat42 = ((x_2473 * x_2475) + 1.000010014f);
  let x_2479 : f32 = u_xlat65;
  let x_2480 : f32 = u_xlat65;
  u_xlat65 = (x_2479 * x_2480);
  let x_2482 : f32 = u_xlat42;
  let x_2483 : f32 = u_xlat42;
  u_xlat42 = (x_2482 * x_2483);
  let x_2485 : f32 = u_xlat65;
  u_xlat65 = max(x_2485, 0.100000001f);
  let x_2488 : f32 = u_xlat42;
  let x_2489 : f32 = u_xlat65;
  u_xlat42 = (x_2488 * x_2489);
  let x_2491 : f32 = u_xlat66;
  let x_2492 : f32 = u_xlat42;
  u_xlat42 = (x_2491 * x_2492);
  let x_2494 : f32 = u_xlat64;
  let x_2495 : f32 = u_xlat42;
  u_xlat42 = (x_2494 / x_2495);
  let x_2497 : vec4<f32> = u_xlat5;
  let x_2499 : f32 = u_xlat42;
  let x_2502 : vec4<f32> = u_xlat7;
  let x_2504 : vec3<f32> = ((vec3<f32>(x_2497.x, x_2497.y, x_2497.z) * vec3<f32>(x_2499, x_2499, x_2499)) + vec3<f32>(x_2502.x, x_2502.y, x_2502.z));
  let x_2505 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2504.x, x_2504.y, x_2504.z, x_2505.w);
  let x_2507 : vec4<f32> = u_xlat3;
  let x_2509 : vec4<f32> = u_xlat6;
  let x_2511 : vec3<f32> = (vec3<f32>(x_2507.x, x_2507.y, x_2507.z) * vec3<f32>(x_2509.x, x_2509.y, x_2509.z));
  let x_2512 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2511.x, x_2511.y, x_2511.z, x_2512.w);
  let x_2515 : f32 = x_126.x_AdditionalLightsCount.x;
  let x_2517 : f32 = x_2315.unity_LightData.y;
  u_xlat42 = min(x_2515, x_2517);
  let x_2520 : f32 = u_xlat42;
  u_xlatu42 = bitcast<u32>(i32(x_2520));
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2532 : u32 = u_xlatu_loop_1;
    let x_2533 : u32 = u_xlatu42;
    if ((x_2532 < x_2533)) {
    } else {
      break;
    }
    let x_2536 : u32 = u_xlatu_loop_1;
    u_xlatu67 = (x_2536 >> 2u);
    let x_2539 : u32 = u_xlatu_loop_1;
    u_xlati69 = bitcast<i32>((x_2539 & 3u));
    let x_2542 : u32 = u_xlatu67;
    let x_2545 : vec4<f32> = x_2315.unity_LightIndices[bitcast<i32>(x_2542)];
    let x_2555 : i32 = u_xlati69;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2560 : vec4<u32> = indexable[x_2555];
    u_xlat67 = dot(x_2545, bitcast<vec4<f32>>(x_2560));
    let x_2564 : f32 = u_xlat67;
    u_xlati67 = i32(x_2564);
    let x_2566 : vec3<f32> = vs_TEXCOORD7;
    let x_2578 : i32 = u_xlati67;
    let x_2580 : vec4<f32> = x_2577.x_AdditionalLightsPosition[x_2578];
    let x_2583 : i32 = u_xlati67;
    let x_2585 : vec4<f32> = x_2577.x_AdditionalLightsPosition[x_2583];
    let x_2587 : vec3<f32> = ((-(x_2566) * vec3<f32>(x_2580.w, x_2580.w, x_2580.w)) + vec3<f32>(x_2585.x, x_2585.y, x_2585.z));
    let x_2588 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2587.x, x_2587.y, x_2587.z, x_2588.w);
    let x_2590 : vec4<f32> = u_xlat8;
    let x_2592 : vec4<f32> = u_xlat8;
    u_xlat69 = dot(vec3<f32>(x_2590.x, x_2590.y, x_2590.z), vec3<f32>(x_2592.x, x_2592.y, x_2592.z));
    let x_2595 : f32 = u_xlat69;
    u_xlat69 = max(x_2595, 6.10351562e-05f);
    let x_2597 : f32 = u_xlat69;
    u_xlat70 = inverseSqrt(x_2597);
    let x_2599 : f32 = u_xlat70;
    let x_2601 : vec4<f32> = u_xlat8;
    let x_2603 : vec3<f32> = (vec3<f32>(x_2599, x_2599, x_2599) * vec3<f32>(x_2601.x, x_2601.y, x_2601.z));
    let x_2604 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2603.x, x_2603.y, x_2603.z, x_2604.w);
    let x_2607 : f32 = u_xlat69;
    u_xlat71 = (1.0f / x_2607);
    let x_2609 : f32 = u_xlat69;
    let x_2610 : i32 = u_xlati67;
    let x_2612 : f32 = x_2577.x_AdditionalLightsAttenuation[x_2610].x;
    u_xlat69 = (x_2609 * x_2612);
    let x_2614 : f32 = u_xlat69;
    let x_2616 : f32 = u_xlat69;
    u_xlat69 = ((-(x_2614) * x_2616) + 1.0f);
    let x_2619 : f32 = u_xlat69;
    u_xlat69 = max(x_2619, 0.0f);
    let x_2621 : f32 = u_xlat69;
    let x_2622 : f32 = u_xlat69;
    u_xlat69 = (x_2621 * x_2622);
    let x_2624 : f32 = u_xlat69;
    let x_2625 : f32 = u_xlat71;
    u_xlat69 = (x_2624 * x_2625);
    let x_2627 : i32 = u_xlati67;
    let x_2629 : vec4<f32> = x_2577.x_AdditionalLightsSpotDir[x_2627];
    let x_2631 : vec4<f32> = u_xlat9;
    u_xlat71 = dot(vec3<f32>(x_2629.x, x_2629.y, x_2629.z), vec3<f32>(x_2631.x, x_2631.y, x_2631.z));
    let x_2634 : f32 = u_xlat71;
    let x_2635 : i32 = u_xlati67;
    let x_2637 : f32 = x_2577.x_AdditionalLightsAttenuation[x_2635].z;
    let x_2639 : i32 = u_xlati67;
    let x_2641 : f32 = x_2577.x_AdditionalLightsAttenuation[x_2639].w;
    u_xlat71 = ((x_2634 * x_2637) + x_2641);
    let x_2643 : f32 = u_xlat71;
    u_xlat71 = clamp(x_2643, 0.0f, 1.0f);
    let x_2645 : f32 = u_xlat71;
    let x_2646 : f32 = u_xlat71;
    u_xlat71 = (x_2645 * x_2646);
    let x_2648 : f32 = u_xlat69;
    let x_2649 : f32 = u_xlat71;
    u_xlat69 = (x_2648 * x_2649);
    let x_2651 : f32 = u_xlat68;
    let x_2653 : i32 = u_xlati67;
    let x_2655 : vec4<f32> = x_2577.x_AdditionalLightsColor[x_2653];
    let x_2657 : vec3<f32> = (vec3<f32>(x_2651, x_2651, x_2651) * vec3<f32>(x_2655.x, x_2655.y, x_2655.z));
    let x_2658 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2657.x, x_2657.y, x_2657.z, x_2658.w);
    let x_2660 : vec4<f32> = u_xlat1;
    let x_2662 : vec4<f32> = u_xlat9;
    u_xlat67 = dot(vec3<f32>(x_2660.x, x_2660.y, x_2660.z), vec3<f32>(x_2662.x, x_2662.y, x_2662.z));
    let x_2665 : f32 = u_xlat67;
    u_xlat67 = clamp(x_2665, 0.0f, 1.0f);
    let x_2667 : f32 = u_xlat67;
    let x_2668 : f32 = u_xlat69;
    u_xlat67 = (x_2667 * x_2668);
    let x_2670 : f32 = u_xlat67;
    let x_2672 : vec4<f32> = u_xlat10;
    let x_2674 : vec3<f32> = (vec3<f32>(x_2670, x_2670, x_2670) * vec3<f32>(x_2672.x, x_2672.y, x_2672.z));
    let x_2675 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2674.x, x_2674.y, x_2674.z, x_2675.w);
    let x_2677 : vec4<f32> = u_xlat8;
    let x_2679 : f32 = u_xlat70;
    let x_2682 : vec3<f32> = u_xlat2;
    let x_2683 : vec3<f32> = ((vec3<f32>(x_2677.x, x_2677.y, x_2677.z) * vec3<f32>(x_2679, x_2679, x_2679)) + x_2682);
    let x_2684 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2683.x, x_2683.y, x_2683.z, x_2684.w);
    let x_2686 : vec4<f32> = u_xlat8;
    let x_2688 : vec4<f32> = u_xlat8;
    u_xlat67 = dot(vec3<f32>(x_2686.x, x_2686.y, x_2686.z), vec3<f32>(x_2688.x, x_2688.y, x_2688.z));
    let x_2691 : f32 = u_xlat67;
    u_xlat67 = max(x_2691, 1.17549435e-37f);
    let x_2693 : f32 = u_xlat67;
    u_xlat67 = inverseSqrt(x_2693);
    let x_2695 : f32 = u_xlat67;
    let x_2697 : vec4<f32> = u_xlat8;
    let x_2699 : vec3<f32> = (vec3<f32>(x_2695, x_2695, x_2695) * vec3<f32>(x_2697.x, x_2697.y, x_2697.z));
    let x_2700 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2699.x, x_2699.y, x_2699.z, x_2700.w);
    let x_2702 : vec4<f32> = u_xlat1;
    let x_2704 : vec4<f32> = u_xlat8;
    u_xlat67 = dot(vec3<f32>(x_2702.x, x_2702.y, x_2702.z), vec3<f32>(x_2704.x, x_2704.y, x_2704.z));
    let x_2707 : f32 = u_xlat67;
    u_xlat67 = clamp(x_2707, 0.0f, 1.0f);
    let x_2709 : vec4<f32> = u_xlat9;
    let x_2711 : vec4<f32> = u_xlat8;
    u_xlat69 = dot(vec3<f32>(x_2709.x, x_2709.y, x_2709.z), vec3<f32>(x_2711.x, x_2711.y, x_2711.z));
    let x_2714 : f32 = u_xlat69;
    u_xlat69 = clamp(x_2714, 0.0f, 1.0f);
    let x_2716 : f32 = u_xlat67;
    let x_2717 : f32 = u_xlat67;
    u_xlat67 = (x_2716 * x_2717);
    let x_2719 : f32 = u_xlat67;
    let x_2721 : f32 = u_xlat0.x;
    u_xlat67 = ((x_2719 * x_2721) + 1.000010014f);
    let x_2724 : f32 = u_xlat69;
    let x_2725 : f32 = u_xlat69;
    u_xlat69 = (x_2724 * x_2725);
    let x_2727 : f32 = u_xlat67;
    let x_2728 : f32 = u_xlat67;
    u_xlat67 = (x_2727 * x_2728);
    let x_2730 : f32 = u_xlat69;
    u_xlat69 = max(x_2730, 0.100000001f);
    let x_2732 : f32 = u_xlat67;
    let x_2733 : f32 = u_xlat69;
    u_xlat67 = (x_2732 * x_2733);
    let x_2735 : f32 = u_xlat66;
    let x_2736 : f32 = u_xlat67;
    u_xlat67 = (x_2735 * x_2736);
    let x_2738 : f32 = u_xlat64;
    let x_2739 : f32 = u_xlat67;
    u_xlat67 = (x_2738 / x_2739);
    let x_2741 : vec4<f32> = u_xlat5;
    let x_2743 : f32 = u_xlat67;
    let x_2746 : vec4<f32> = u_xlat7;
    let x_2748 : vec3<f32> = ((vec3<f32>(x_2741.x, x_2741.y, x_2741.z) * vec3<f32>(x_2743, x_2743, x_2743)) + vec3<f32>(x_2746.x, x_2746.y, x_2746.z));
    let x_2749 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2748.x, x_2748.y, x_2748.z, x_2749.w);
    let x_2751 : vec4<f32> = u_xlat8;
    let x_2753 : vec4<f32> = u_xlat10;
    let x_2756 : vec4<f32> = u_xlat6;
    let x_2758 : vec3<f32> = ((vec3<f32>(x_2751.x, x_2751.y, x_2751.z) * vec3<f32>(x_2753.x, x_2753.y, x_2753.z)) + vec3<f32>(x_2756.x, x_2756.y, x_2756.z));
    let x_2759 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2758.x, x_2758.y, x_2758.z, x_2759.w);

    continuing {
      let x_2761 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2761 + bitcast<u32>(1i));
    }
  }
  let x_2763 : vec4<f32> = u_xlat4;
  let x_2765 : f32 = u_xlat21;
  let x_2768 : vec4<f32> = u_xlat3;
  u_xlat0 = ((vec3<f32>(x_2763.x, x_2763.y, x_2763.z) * vec3<f32>(x_2765, x_2765, x_2765)) + vec3<f32>(x_2768.x, x_2768.y, x_2768.z));
  let x_2771 : vec4<f32> = u_xlat6;
  let x_2773 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_2771.x, x_2771.y, x_2771.z) + x_2773);
  let x_2777 : f32 = u_xlat63;
  let x_2779 : vec3<f32> = u_xlat0;
  let x_2780 : vec3<f32> = (vec3<f32>(x_2777, x_2777, x_2777) * x_2779);
  let x_2781 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2780.x, x_2780.y, x_2780.z, x_2781.w);
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

