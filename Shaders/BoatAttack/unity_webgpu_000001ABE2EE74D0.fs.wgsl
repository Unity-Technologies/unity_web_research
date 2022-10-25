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

@group(1) @binding(0) var<uniform> x_126 : PGlobals;

@group(0) @binding(2) var x_Splat0 : texture_2d<f32>;

@group(0) @binding(10) var sampler_Splat0 : sampler;

var<private> vs_TEXCOORD1 : vec4<f32>;

@group(0) @binding(3) var x_Splat1 : texture_2d<f32>;

@group(0) @binding(4) var x_Splat2 : texture_2d<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

@group(0) @binding(5) var x_Splat3 : texture_2d<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_613 : UnityPerDraw;

@group(0) @binding(6) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(1) @binding(4) var<uniform> x_805 : MainLightShadows;

var<private> vs_TEXCOORD8 : vec4<f32>;

@group(0) @binding(7) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(12) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_2436 : AdditionalLights;

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
  var u_xlat65 : f32;
  var u_xlat66 : f32;
  var u_xlat25 : f32;
  var u_xlatb4 : bool;
  var txVec0 : vec3<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var u_xlatb46 : bool;
  var u_xlat46 : vec2<f32>;
  var u_xlat49 : vec2<f32>;
  var u_xlat51 : vec2<f32>;
  var u_xlat14 : vec4<f32>;
  var u_xlat15 : vec4<f32>;
  var txVec4 : vec3<f32>;
  var u_xlat67 : f32;
  var txVec5 : vec3<f32>;
  var u_xlat68 : f32;
  var txVec6 : vec3<f32>;
  var txVec7 : vec3<f32>;
  var txVec8 : vec3<f32>;
  var txVec9 : vec3<f32>;
  var txVec10 : vec3<f32>;
  var txVec11 : vec3<f32>;
  var txVec12 : vec3<f32>;
  var u_xlat55 : vec2<f32>;
  var u_xlat16 : vec4<f32>;
  var u_xlat29 : vec2<f32>;
  var u_xlat17 : vec2<f32>;
  var u_xlat52 : vec2<f32>;
  var u_xlat18 : vec4<f32>;
  var u_xlat19 : vec4<f32>;
  var u_xlat20 : vec4<f32>;
  var txVec13 : vec3<f32>;
  var txVec14 : vec3<f32>;
  var u_xlat69 : f32;
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
  var u_xlatb67 : bool;
  var x_2035 : f32;
  var u_xlatu42 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu68 : u32;
  var u_xlati69 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati68 : i32;
  var u_xlat70 : f32;
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
  u_xlat1.w = 1.0f;
  let x_615 : vec4<f32> = x_613.unity_SHAr;
  let x_616 : vec4<f32> = u_xlat1;
  u_xlat3.x = dot(x_615, x_616);
  let x_620 : vec4<f32> = x_613.unity_SHAg;
  let x_621 : vec4<f32> = u_xlat1;
  u_xlat3.y = dot(x_620, x_621);
  let x_625 : vec4<f32> = x_613.unity_SHAb;
  let x_626 : vec4<f32> = u_xlat1;
  u_xlat3.z = dot(x_625, x_626);
  let x_629 : vec4<f32> = u_xlat1;
  let x_631 : vec4<f32> = u_xlat1;
  u_xlat4 = (vec4<f32>(x_629.y, x_629.z, x_629.z, x_629.x) * vec4<f32>(x_631.x, x_631.y, x_631.z, x_631.z));
  let x_635 : vec4<f32> = x_613.unity_SHBr;
  let x_636 : vec4<f32> = u_xlat4;
  u_xlat6.x = dot(x_635, x_636);
  let x_640 : vec4<f32> = x_613.unity_SHBg;
  let x_641 : vec4<f32> = u_xlat4;
  u_xlat6.y = dot(x_640, x_641);
  let x_645 : vec4<f32> = x_613.unity_SHBb;
  let x_646 : vec4<f32> = u_xlat4;
  u_xlat6.z = dot(x_645, x_646);
  let x_650 : f32 = u_xlat1.y;
  let x_652 : f32 = u_xlat1.y;
  u_xlat64 = (x_650 * x_652);
  let x_655 : f32 = u_xlat1.x;
  let x_657 : f32 = u_xlat1.x;
  let x_659 : f32 = u_xlat64;
  u_xlat64 = ((x_655 * x_657) + -(x_659));
  let x_664 : vec4<f32> = x_613.unity_SHC;
  let x_666 : f32 = u_xlat64;
  let x_669 : vec4<f32> = u_xlat6;
  let x_671 : vec3<f32> = ((vec3<f32>(x_664.x, x_664.y, x_664.z) * vec3<f32>(x_666, x_666, x_666)) + vec3<f32>(x_669.x, x_669.y, x_669.z));
  let x_672 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_671.x, x_671.y, x_671.z, x_672.w);
  let x_674 : vec4<f32> = u_xlat3;
  let x_676 : vec4<f32> = u_xlat4;
  let x_678 : vec3<f32> = (vec3<f32>(x_674.x, x_674.y, x_674.z) + vec3<f32>(x_676.x, x_676.y, x_676.z));
  let x_679 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_678.x, x_678.y, x_678.z, x_679.w);
  let x_681 : vec4<f32> = u_xlat3;
  let x_684 : vec3<f32> = max(vec3<f32>(x_681.x, x_681.y, x_681.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_685 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_684.x, x_684.y, x_684.z, x_685.w);
  let x_689 : vec4<f32> = x_126.x_ScaledScreenParams;
  let x_690 : vec2<f32> = vec2<f32>(x_689.x, x_689.y);
  let x_694 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_690.x, x_690.y));
  let x_695 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_694.x, x_694.y, x_695.z, x_695.w);
  let x_697 : vec4<f32> = u_xlat4;
  let x_699 : vec4<f32> = hlslcc_FragCoord;
  let x_701 : vec2<f32> = (vec2<f32>(x_697.x, x_697.y) * vec2<f32>(x_699.x, x_699.y));
  let x_702 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_701.x, x_701.y, x_702.z, x_702.w);
  let x_705 : f32 = u_xlat4.y;
  let x_707 : f32 = x_126.x_ScaleBiasRt.x;
  let x_710 : f32 = x_126.x_ScaleBiasRt.y;
  u_xlat64 = ((x_705 * x_707) + x_710);
  let x_712 : f32 = u_xlat64;
  u_xlat4.z = (-(x_712) + 1.0f);
  let x_717 : f32 = u_xlat0.x;
  u_xlat64 = ((-(x_717) * 0.959999979f) + 0.959999979f);
  let x_723 : f32 = u_xlat42;
  let x_724 : f32 = u_xlat64;
  u_xlat65 = (x_723 + -(x_724));
  let x_727 : f32 = u_xlat64;
  let x_729 : vec4<f32> = u_xlat5;
  let x_731 : vec3<f32> = (vec3<f32>(x_727, x_727, x_727) * vec3<f32>(x_729.x, x_729.y, x_729.z));
  let x_732 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_731.x, x_731.y, x_731.z, x_732.w);
  let x_734 : vec4<f32> = u_xlat5;
  let x_738 : vec3<f32> = (vec3<f32>(x_734.x, x_734.y, x_734.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_739 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_738.x, x_738.y, x_738.z, x_739.w);
  let x_741 : vec3<f32> = u_xlat0;
  let x_743 : vec4<f32> = u_xlat5;
  let x_748 : vec3<f32> = ((vec3<f32>(x_741.x, x_741.x, x_741.x) * vec3<f32>(x_743.x, x_743.y, x_743.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_749 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_748.x, x_748.y, x_748.z, x_749.w);
  let x_751 : f32 = u_xlat42;
  u_xlat0.x = (-(x_751) + 1.0f);
  let x_756 : f32 = u_xlat0.x;
  let x_758 : f32 = u_xlat0.x;
  u_xlat42 = (x_756 * x_758);
  let x_760 : f32 = u_xlat42;
  u_xlat42 = max(x_760, 0.0078125f);
  let x_763 : f32 = u_xlat42;
  let x_764 : f32 = u_xlat42;
  u_xlat64 = (x_763 * x_764);
  let x_766 : f32 = u_xlat65;
  u_xlat65 = (x_766 + 1.0f);
  let x_768 : f32 = u_xlat65;
  u_xlat65 = clamp(x_768, 0.0f, 1.0f);
  let x_771 : f32 = u_xlat42;
  u_xlat66 = ((x_771 * 4.0f) + 2.0f);
  let x_780 : vec4<f32> = u_xlat4;
  let x_783 : f32 = x_126.x_GlobalMipBias.x;
  let x_784 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_780.x, x_780.z), x_783);
  u_xlat4.x = x_784.x;
  let x_789 : f32 = u_xlat4.x;
  u_xlat25 = (x_789 + -1.0f);
  let x_792 : f32 = x_126.x_AmbientOcclusionParam.w;
  let x_793 : f32 = u_xlat25;
  u_xlat25 = ((x_792 * x_793) + 1.0f);
  let x_796 : f32 = u_xlat21;
  let x_798 : f32 = u_xlat4.x;
  u_xlat21 = min(x_796, x_798);
  let x_807 : f32 = x_805.x_MainLightShadowParams.y;
  u_xlatb4 = (0.0f < x_807);
  let x_809 : bool = u_xlatb4;
  if (x_809) {
    let x_813 : f32 = x_805.x_MainLightShadowParams.y;
    u_xlatb4 = (x_813 == 1.0f);
    let x_815 : bool = u_xlatb4;
    if (x_815) {
      let x_819 : vec4<f32> = vs_TEXCOORD8;
      let x_822 : vec4<f32> = x_805.x_MainLightShadowOffset0;
      u_xlat7 = (vec4<f32>(x_819.x, x_819.y, x_819.x, x_819.y) + x_822);
      let x_825 : vec4<f32> = u_xlat7;
      let x_826 : vec2<f32> = vec2<f32>(x_825.x, x_825.y);
      let x_828 : f32 = vs_TEXCOORD8.z;
      txVec0 = vec3<f32>(x_826.x, x_826.y, x_828);
      let x_840 : vec3<f32> = txVec0;
      let x_842 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_840.xy, x_840.z);
      u_xlat8.x = x_842;
      let x_845 : vec4<f32> = u_xlat7;
      let x_846 : vec2<f32> = vec2<f32>(x_845.z, x_845.w);
      let x_848 : f32 = vs_TEXCOORD8.z;
      txVec1 = vec3<f32>(x_846.x, x_846.y, x_848);
      let x_855 : vec3<f32> = txVec1;
      let x_857 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_855.xy, x_855.z);
      u_xlat8.y = x_857;
      let x_859 : vec4<f32> = vs_TEXCOORD8;
      let x_862 : vec4<f32> = x_805.x_MainLightShadowOffset1;
      u_xlat7 = (vec4<f32>(x_859.x, x_859.y, x_859.x, x_859.y) + x_862);
      let x_865 : vec4<f32> = u_xlat7;
      let x_866 : vec2<f32> = vec2<f32>(x_865.x, x_865.y);
      let x_868 : f32 = vs_TEXCOORD8.z;
      txVec2 = vec3<f32>(x_866.x, x_866.y, x_868);
      let x_875 : vec3<f32> = txVec2;
      let x_877 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_875.xy, x_875.z);
      u_xlat8.z = x_877;
      let x_880 : vec4<f32> = u_xlat7;
      let x_881 : vec2<f32> = vec2<f32>(x_880.z, x_880.w);
      let x_883 : f32 = vs_TEXCOORD8.z;
      txVec3 = vec3<f32>(x_881.x, x_881.y, x_883);
      let x_890 : vec3<f32> = txVec3;
      let x_892 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_890.xy, x_890.z);
      u_xlat8.w = x_892;
      let x_894 : vec4<f32> = u_xlat8;
      u_xlat4.x = dot(x_894, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_902 : f32 = x_805.x_MainLightShadowParams.y;
      u_xlatb46 = (x_902 == 2.0f);
      let x_904 : bool = u_xlatb46;
      if (x_904) {
        let x_909 : vec4<f32> = vs_TEXCOORD8;
        let x_912 : vec4<f32> = x_805.x_MainLightShadowmapSize;
        u_xlat46 = ((vec2<f32>(x_909.x, x_909.y) * vec2<f32>(x_912.z, x_912.w)) + vec2<f32>(0.5f, 0.5f));
        let x_916 : vec2<f32> = u_xlat46;
        u_xlat46 = floor(x_916);
        let x_918 : vec4<f32> = vs_TEXCOORD8;
        let x_921 : vec4<f32> = x_805.x_MainLightShadowmapSize;
        let x_924 : vec2<f32> = u_xlat46;
        let x_926 : vec2<f32> = ((vec2<f32>(x_918.x, x_918.y) * vec2<f32>(x_921.z, x_921.w)) + -(x_924));
        let x_927 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_926.x, x_926.y, x_927.z, x_927.w);
        let x_929 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_929.x, x_929.x, x_929.y, x_929.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_933 : vec4<f32> = u_xlat8;
        let x_935 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_933.x, x_933.x, x_933.z, x_933.z) * vec4<f32>(x_935.x, x_935.x, x_935.z, x_935.z));
        let x_939 : vec4<f32> = u_xlat9;
        u_xlat49 = (vec2<f32>(x_939.y, x_939.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_944 : vec4<f32> = u_xlat9;
        let x_947 : vec4<f32> = u_xlat7;
        let x_950 : vec2<f32> = ((vec2<f32>(x_944.x, x_944.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_947.x, x_947.y)));
        let x_951 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_950.x, x_951.y, x_950.y, x_951.w);
        let x_953 : vec4<f32> = u_xlat7;
        let x_956 : vec2<f32> = (-(vec2<f32>(x_953.x, x_953.y)) + vec2<f32>(1.0f, 1.0f));
        let x_957 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_956.x, x_956.y, x_957.z, x_957.w);
        let x_960 : vec4<f32> = u_xlat7;
        u_xlat51 = min(vec2<f32>(x_960.x, x_960.y), vec2<f32>(0.0f, 0.0f));
        let x_964 : vec2<f32> = u_xlat51;
        let x_966 : vec2<f32> = u_xlat51;
        let x_968 : vec4<f32> = u_xlat9;
        u_xlat51 = ((-(x_964) * x_966) + vec2<f32>(x_968.x, x_968.y));
        let x_971 : vec4<f32> = u_xlat7;
        let x_973 : vec2<f32> = max(vec2<f32>(x_971.x, x_971.y), vec2<f32>(0.0f, 0.0f));
        let x_974 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_973.x, x_973.y, x_974.z, x_974.w);
        let x_976 : vec4<f32> = u_xlat7;
        let x_979 : vec4<f32> = u_xlat7;
        let x_982 : vec4<f32> = u_xlat8;
        let x_984 : vec2<f32> = ((-(vec2<f32>(x_976.x, x_976.y)) * vec2<f32>(x_979.x, x_979.y)) + vec2<f32>(x_982.y, x_982.w));
        let x_985 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_984.x, x_984.y, x_985.z, x_985.w);
        let x_987 : vec2<f32> = u_xlat51;
        u_xlat51 = (x_987 + vec2<f32>(1.0f, 1.0f));
        let x_989 : vec4<f32> = u_xlat7;
        let x_991 : vec2<f32> = (vec2<f32>(x_989.x, x_989.y) + vec2<f32>(1.0f, 1.0f));
        let x_992 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_991.x, x_991.y, x_992.z, x_992.w);
        let x_994 : vec4<f32> = u_xlat8;
        let x_998 : vec2<f32> = (vec2<f32>(x_994.x, x_994.z) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_999 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_998.x, x_998.y, x_999.z, x_999.w);
        let x_1001 : vec4<f32> = u_xlat9;
        let x_1003 : vec2<f32> = (vec2<f32>(x_1001.x, x_1001.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1004 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1003.x, x_1003.y, x_1004.z, x_1004.w);
        let x_1006 : vec2<f32> = u_xlat51;
        let x_1007 : vec2<f32> = (x_1006 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1008 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1007.x, x_1007.y, x_1008.z, x_1008.w);
        let x_1010 : vec4<f32> = u_xlat7;
        let x_1012 : vec2<f32> = (vec2<f32>(x_1010.x, x_1010.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1013 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1012.x, x_1012.y, x_1013.z, x_1013.w);
        let x_1015 : vec4<f32> = u_xlat8;
        let x_1017 : vec2<f32> = (vec2<f32>(x_1015.y, x_1015.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1018 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1017.x, x_1017.y, x_1018.z, x_1018.w);
        let x_1021 : f32 = u_xlat9.x;
        u_xlat10.z = x_1021;
        let x_1024 : f32 = u_xlat7.x;
        u_xlat10.w = x_1024;
        let x_1027 : f32 = u_xlat12.x;
        u_xlat11.z = x_1027;
        let x_1030 : f32 = u_xlat49.x;
        u_xlat11.w = x_1030;
        let x_1032 : vec4<f32> = u_xlat10;
        let x_1034 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_1032.z, x_1032.w, x_1032.x, x_1032.z) + vec4<f32>(x_1034.z, x_1034.w, x_1034.x, x_1034.z));
        let x_1038 : f32 = u_xlat10.y;
        u_xlat9.z = x_1038;
        let x_1041 : f32 = u_xlat7.y;
        u_xlat9.w = x_1041;
        let x_1044 : f32 = u_xlat11.y;
        u_xlat12.z = x_1044;
        let x_1047 : f32 = u_xlat49.y;
        u_xlat12.w = x_1047;
        let x_1049 : vec4<f32> = u_xlat9;
        let x_1051 : vec4<f32> = u_xlat12;
        let x_1053 : vec3<f32> = (vec3<f32>(x_1049.z, x_1049.y, x_1049.w) + vec3<f32>(x_1051.z, x_1051.y, x_1051.w));
        let x_1054 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1053.x, x_1053.y, x_1053.z, x_1054.w);
        let x_1056 : vec4<f32> = u_xlat11;
        let x_1058 : vec4<f32> = u_xlat8;
        let x_1060 : vec3<f32> = (vec3<f32>(x_1056.x, x_1056.z, x_1056.w) / vec3<f32>(x_1058.z, x_1058.w, x_1058.y));
        let x_1061 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1060.x, x_1060.y, x_1060.z, x_1061.w);
        let x_1063 : vec4<f32> = u_xlat9;
        let x_1069 : vec3<f32> = (vec3<f32>(x_1063.x, x_1063.y, x_1063.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1070 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1069.x, x_1069.y, x_1069.z, x_1070.w);
        let x_1072 : vec4<f32> = u_xlat12;
        let x_1074 : vec4<f32> = u_xlat7;
        let x_1076 : vec3<f32> = (vec3<f32>(x_1072.z, x_1072.y, x_1072.w) / vec3<f32>(x_1074.x, x_1074.y, x_1074.z));
        let x_1077 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1076.x, x_1076.y, x_1076.z, x_1077.w);
        let x_1079 : vec4<f32> = u_xlat10;
        let x_1081 : vec3<f32> = (vec3<f32>(x_1079.x, x_1079.y, x_1079.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1082 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1081.x, x_1081.y, x_1081.z, x_1082.w);
        let x_1084 : vec4<f32> = u_xlat9;
        let x_1087 : vec4<f32> = x_805.x_MainLightShadowmapSize;
        let x_1089 : vec3<f32> = (vec3<f32>(x_1084.y, x_1084.x, x_1084.z) * vec3<f32>(x_1087.x, x_1087.x, x_1087.x));
        let x_1090 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1089.x, x_1089.y, x_1089.z, x_1090.w);
        let x_1092 : vec4<f32> = u_xlat10;
        let x_1095 : vec4<f32> = x_805.x_MainLightShadowmapSize;
        let x_1097 : vec3<f32> = (vec3<f32>(x_1092.x, x_1092.y, x_1092.z) * vec3<f32>(x_1095.y, x_1095.y, x_1095.y));
        let x_1098 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1097.x, x_1097.y, x_1097.z, x_1098.w);
        let x_1101 : f32 = u_xlat10.x;
        u_xlat9.w = x_1101;
        let x_1103 : vec2<f32> = u_xlat46;
        let x_1106 : vec4<f32> = x_805.x_MainLightShadowmapSize;
        let x_1109 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1103.x, x_1103.y, x_1103.x, x_1103.y) * vec4<f32>(x_1106.x, x_1106.y, x_1106.x, x_1106.y)) + vec4<f32>(x_1109.y, x_1109.w, x_1109.x, x_1109.w));
        let x_1112 : vec2<f32> = u_xlat46;
        let x_1114 : vec4<f32> = x_805.x_MainLightShadowmapSize;
        let x_1117 : vec4<f32> = u_xlat9;
        let x_1119 : vec2<f32> = ((x_1112 * vec2<f32>(x_1114.x, x_1114.y)) + vec2<f32>(x_1117.z, x_1117.w));
        let x_1120 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1119.x, x_1119.y, x_1120.z, x_1120.w);
        let x_1123 : f32 = u_xlat9.y;
        u_xlat10.w = x_1123;
        let x_1125 : vec4<f32> = u_xlat10;
        let x_1126 : vec2<f32> = vec2<f32>(x_1125.y, x_1125.z);
        let x_1127 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1127.x, x_1126.x, x_1127.z, x_1126.y);
        let x_1129 : vec2<f32> = u_xlat46;
        let x_1132 : vec4<f32> = x_805.x_MainLightShadowmapSize;
        let x_1135 : vec4<f32> = u_xlat9;
        u_xlat13 = ((vec4<f32>(x_1129.x, x_1129.y, x_1129.x, x_1129.y) * vec4<f32>(x_1132.x, x_1132.y, x_1132.x, x_1132.y)) + vec4<f32>(x_1135.x, x_1135.y, x_1135.z, x_1135.y));
        let x_1138 : vec2<f32> = u_xlat46;
        let x_1141 : vec4<f32> = x_805.x_MainLightShadowmapSize;
        let x_1144 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_1138.x, x_1138.y, x_1138.x, x_1138.y) * vec4<f32>(x_1141.x, x_1141.y, x_1141.x, x_1141.y)) + vec4<f32>(x_1144.w, x_1144.y, x_1144.w, x_1144.z));
        let x_1147 : vec2<f32> = u_xlat46;
        let x_1150 : vec4<f32> = x_805.x_MainLightShadowmapSize;
        let x_1153 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1147.x, x_1147.y, x_1147.x, x_1147.y) * vec4<f32>(x_1150.x, x_1150.y, x_1150.x, x_1150.y)) + vec4<f32>(x_1153.x, x_1153.w, x_1153.z, x_1153.w));
        let x_1157 : vec4<f32> = u_xlat7;
        let x_1159 : vec4<f32> = u_xlat8;
        u_xlat14 = (vec4<f32>(x_1157.x, x_1157.x, x_1157.x, x_1157.y) * vec4<f32>(x_1159.z, x_1159.w, x_1159.y, x_1159.z));
        let x_1163 : vec4<f32> = u_xlat7;
        let x_1165 : vec4<f32> = u_xlat8;
        u_xlat15 = (vec4<f32>(x_1163.y, x_1163.y, x_1163.z, x_1163.z) * x_1165);
        let x_1168 : f32 = u_xlat7.z;
        let x_1170 : f32 = u_xlat8.y;
        u_xlat46.x = (x_1168 * x_1170);
        let x_1174 : vec4<f32> = u_xlat11;
        let x_1175 : vec2<f32> = vec2<f32>(x_1174.x, x_1174.y);
        let x_1177 : f32 = vs_TEXCOORD8.z;
        txVec4 = vec3<f32>(x_1175.x, x_1175.y, x_1177);
        let x_1185 : vec3<f32> = txVec4;
        let x_1187 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1185.xy, x_1185.z);
        u_xlat67 = x_1187;
        let x_1189 : vec4<f32> = u_xlat11;
        let x_1190 : vec2<f32> = vec2<f32>(x_1189.z, x_1189.w);
        let x_1192 : f32 = vs_TEXCOORD8.z;
        txVec5 = vec3<f32>(x_1190.x, x_1190.y, x_1192);
        let x_1200 : vec3<f32> = txVec5;
        let x_1202 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1200.xy, x_1200.z);
        u_xlat68 = x_1202;
        let x_1203 : f32 = u_xlat68;
        let x_1205 : f32 = u_xlat14.y;
        u_xlat68 = (x_1203 * x_1205);
        let x_1208 : f32 = u_xlat14.x;
        let x_1209 : f32 = u_xlat67;
        let x_1211 : f32 = u_xlat68;
        u_xlat67 = ((x_1208 * x_1209) + x_1211);
        let x_1214 : vec4<f32> = u_xlat12;
        let x_1215 : vec2<f32> = vec2<f32>(x_1214.x, x_1214.y);
        let x_1217 : f32 = vs_TEXCOORD8.z;
        txVec6 = vec3<f32>(x_1215.x, x_1215.y, x_1217);
        let x_1224 : vec3<f32> = txVec6;
        let x_1226 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1224.xy, x_1224.z);
        u_xlat68 = x_1226;
        let x_1228 : f32 = u_xlat14.z;
        let x_1229 : f32 = u_xlat68;
        let x_1231 : f32 = u_xlat67;
        u_xlat67 = ((x_1228 * x_1229) + x_1231);
        let x_1234 : vec4<f32> = u_xlat10;
        let x_1235 : vec2<f32> = vec2<f32>(x_1234.x, x_1234.y);
        let x_1237 : f32 = vs_TEXCOORD8.z;
        txVec7 = vec3<f32>(x_1235.x, x_1235.y, x_1237);
        let x_1244 : vec3<f32> = txVec7;
        let x_1246 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1244.xy, x_1244.z);
        u_xlat68 = x_1246;
        let x_1248 : f32 = u_xlat14.w;
        let x_1249 : f32 = u_xlat68;
        let x_1251 : f32 = u_xlat67;
        u_xlat67 = ((x_1248 * x_1249) + x_1251);
        let x_1254 : vec4<f32> = u_xlat13;
        let x_1255 : vec2<f32> = vec2<f32>(x_1254.x, x_1254.y);
        let x_1257 : f32 = vs_TEXCOORD8.z;
        txVec8 = vec3<f32>(x_1255.x, x_1255.y, x_1257);
        let x_1264 : vec3<f32> = txVec8;
        let x_1266 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1264.xy, x_1264.z);
        u_xlat68 = x_1266;
        let x_1268 : f32 = u_xlat15.x;
        let x_1269 : f32 = u_xlat68;
        let x_1271 : f32 = u_xlat67;
        u_xlat67 = ((x_1268 * x_1269) + x_1271);
        let x_1274 : vec4<f32> = u_xlat13;
        let x_1275 : vec2<f32> = vec2<f32>(x_1274.z, x_1274.w);
        let x_1277 : f32 = vs_TEXCOORD8.z;
        txVec9 = vec3<f32>(x_1275.x, x_1275.y, x_1277);
        let x_1284 : vec3<f32> = txVec9;
        let x_1286 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1284.xy, x_1284.z);
        u_xlat68 = x_1286;
        let x_1288 : f32 = u_xlat15.y;
        let x_1289 : f32 = u_xlat68;
        let x_1291 : f32 = u_xlat67;
        u_xlat67 = ((x_1288 * x_1289) + x_1291);
        let x_1294 : vec4<f32> = u_xlat10;
        let x_1295 : vec2<f32> = vec2<f32>(x_1294.z, x_1294.w);
        let x_1297 : f32 = vs_TEXCOORD8.z;
        txVec10 = vec3<f32>(x_1295.x, x_1295.y, x_1297);
        let x_1304 : vec3<f32> = txVec10;
        let x_1306 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1304.xy, x_1304.z);
        u_xlat68 = x_1306;
        let x_1308 : f32 = u_xlat15.z;
        let x_1309 : f32 = u_xlat68;
        let x_1311 : f32 = u_xlat67;
        u_xlat67 = ((x_1308 * x_1309) + x_1311);
        let x_1314 : vec4<f32> = u_xlat9;
        let x_1315 : vec2<f32> = vec2<f32>(x_1314.x, x_1314.y);
        let x_1317 : f32 = vs_TEXCOORD8.z;
        txVec11 = vec3<f32>(x_1315.x, x_1315.y, x_1317);
        let x_1324 : vec3<f32> = txVec11;
        let x_1326 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1324.xy, x_1324.z);
        u_xlat68 = x_1326;
        let x_1328 : f32 = u_xlat15.w;
        let x_1329 : f32 = u_xlat68;
        let x_1331 : f32 = u_xlat67;
        u_xlat67 = ((x_1328 * x_1329) + x_1331);
        let x_1334 : vec4<f32> = u_xlat9;
        let x_1335 : vec2<f32> = vec2<f32>(x_1334.z, x_1334.w);
        let x_1337 : f32 = vs_TEXCOORD8.z;
        txVec12 = vec3<f32>(x_1335.x, x_1335.y, x_1337);
        let x_1344 : vec3<f32> = txVec12;
        let x_1346 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1344.xy, x_1344.z);
        u_xlat68 = x_1346;
        let x_1348 : f32 = u_xlat46.x;
        let x_1349 : f32 = u_xlat68;
        let x_1351 : f32 = u_xlat67;
        u_xlat4.x = ((x_1348 * x_1349) + x_1351);
      } else {
        let x_1355 : vec4<f32> = vs_TEXCOORD8;
        let x_1358 : vec4<f32> = x_805.x_MainLightShadowmapSize;
        u_xlat46 = ((vec2<f32>(x_1355.x, x_1355.y) * vec2<f32>(x_1358.z, x_1358.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1362 : vec2<f32> = u_xlat46;
        u_xlat46 = floor(x_1362);
        let x_1364 : vec4<f32> = vs_TEXCOORD8;
        let x_1367 : vec4<f32> = x_805.x_MainLightShadowmapSize;
        let x_1370 : vec2<f32> = u_xlat46;
        let x_1372 : vec2<f32> = ((vec2<f32>(x_1364.x, x_1364.y) * vec2<f32>(x_1367.z, x_1367.w)) + -(x_1370));
        let x_1373 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1372.x, x_1372.y, x_1373.z, x_1373.w);
        let x_1375 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1375.x, x_1375.x, x_1375.y, x_1375.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1378 : vec4<f32> = u_xlat8;
        let x_1380 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1378.x, x_1378.x, x_1378.z, x_1378.z) * vec4<f32>(x_1380.x, x_1380.x, x_1380.z, x_1380.z));
        let x_1383 : vec4<f32> = u_xlat9;
        let x_1387 : vec2<f32> = (vec2<f32>(x_1383.y, x_1383.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1388 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1388.x, x_1387.x, x_1388.z, x_1387.y);
        let x_1390 : vec4<f32> = u_xlat9;
        let x_1393 : vec4<f32> = u_xlat7;
        u_xlat49 = ((vec2<f32>(x_1390.x, x_1390.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_1393.x, x_1393.y)));
        let x_1397 : vec4<f32> = u_xlat7;
        let x_1400 : vec2<f32> = (-(vec2<f32>(x_1397.x, x_1397.y)) + vec2<f32>(1.0f, 1.0f));
        let x_1401 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1400.x, x_1401.y, x_1400.y, x_1401.w);
        let x_1403 : vec4<f32> = u_xlat7;
        let x_1405 : vec2<f32> = min(vec2<f32>(x_1403.x, x_1403.y), vec2<f32>(0.0f, 0.0f));
        let x_1406 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1405.x, x_1405.y, x_1406.z, x_1406.w);
        let x_1408 : vec4<f32> = u_xlat9;
        let x_1411 : vec4<f32> = u_xlat9;
        let x_1414 : vec4<f32> = u_xlat8;
        let x_1416 : vec2<f32> = ((-(vec2<f32>(x_1408.x, x_1408.y)) * vec2<f32>(x_1411.x, x_1411.y)) + vec2<f32>(x_1414.x, x_1414.z));
        let x_1417 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1416.x, x_1417.y, x_1416.y, x_1417.w);
        let x_1419 : vec4<f32> = u_xlat7;
        let x_1421 : vec2<f32> = max(vec2<f32>(x_1419.x, x_1419.y), vec2<f32>(0.0f, 0.0f));
        let x_1422 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1421.x, x_1421.y, x_1422.z, x_1422.w);
        let x_1424 : vec4<f32> = u_xlat9;
        let x_1427 : vec4<f32> = u_xlat9;
        let x_1430 : vec4<f32> = u_xlat8;
        let x_1432 : vec2<f32> = ((-(vec2<f32>(x_1424.x, x_1424.y)) * vec2<f32>(x_1427.x, x_1427.y)) + vec2<f32>(x_1430.y, x_1430.w));
        let x_1433 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1433.x, x_1432.x, x_1433.z, x_1432.y);
        let x_1435 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1435 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_1439 : f32 = u_xlat8.y;
        u_xlat9.z = (x_1439 * 0.081632003f);
        let x_1443 : vec2<f32> = u_xlat49;
        let x_1446 : vec2<f32> = (vec2<f32>(x_1443.y, x_1443.x) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1447 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1446.x, x_1446.y, x_1447.z, x_1447.w);
        let x_1449 : vec4<f32> = u_xlat8;
        u_xlat49 = (vec2<f32>(x_1449.x, x_1449.z) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1453 : f32 = u_xlat8.w;
        u_xlat11.z = (x_1453 * 0.081632003f);
        let x_1457 : f32 = u_xlat11.y;
        u_xlat9.x = x_1457;
        let x_1459 : vec4<f32> = u_xlat7;
        let x_1466 : vec2<f32> = ((vec2<f32>(x_1459.x, x_1459.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1467 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1467.x, x_1466.x, x_1467.z, x_1466.y);
        let x_1469 : vec4<f32> = u_xlat7;
        let x_1473 : vec2<f32> = ((vec2<f32>(x_1469.x, x_1469.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1474 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1473.x, x_1474.y, x_1473.y, x_1474.w);
        let x_1477 : f32 = u_xlat49.x;
        u_xlat8.y = x_1477;
        let x_1480 : f32 = u_xlat10.y;
        u_xlat8.w = x_1480;
        let x_1482 : vec4<f32> = u_xlat8;
        let x_1483 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1482 + x_1483);
        let x_1485 : vec4<f32> = u_xlat7;
        let x_1488 : vec2<f32> = ((vec2<f32>(x_1485.y, x_1485.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1489 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1489.x, x_1488.x, x_1489.z, x_1488.y);
        let x_1491 : vec4<f32> = u_xlat7;
        let x_1494 : vec2<f32> = ((vec2<f32>(x_1491.y, x_1491.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1495 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1494.x, x_1495.y, x_1494.y, x_1495.w);
        let x_1498 : f32 = u_xlat49.y;
        u_xlat10.y = x_1498;
        let x_1500 : vec4<f32> = u_xlat10;
        let x_1501 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1500 + x_1501);
        let x_1503 : vec4<f32> = u_xlat8;
        let x_1504 : vec4<f32> = u_xlat9;
        u_xlat8 = (x_1503 / x_1504);
        let x_1506 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1506 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1512 : vec4<f32> = u_xlat10;
        let x_1513 : vec4<f32> = u_xlat7;
        u_xlat10 = (x_1512 / x_1513);
        let x_1515 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1515 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1517 : vec4<f32> = u_xlat8;
        let x_1520 : vec4<f32> = x_805.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1517.w, x_1517.x, x_1517.y, x_1517.z) * vec4<f32>(x_1520.x, x_1520.x, x_1520.x, x_1520.x));
        let x_1523 : vec4<f32> = u_xlat10;
        let x_1526 : vec4<f32> = x_805.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1523.x, x_1523.w, x_1523.y, x_1523.z) * vec4<f32>(x_1526.y, x_1526.y, x_1526.y, x_1526.y));
        let x_1529 : vec4<f32> = u_xlat8;
        let x_1530 : vec3<f32> = vec3<f32>(x_1529.y, x_1529.z, x_1529.w);
        let x_1531 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1530.x, x_1531.y, x_1530.y, x_1530.z);
        let x_1534 : f32 = u_xlat10.x;
        u_xlat11.y = x_1534;
        let x_1536 : vec2<f32> = u_xlat46;
        let x_1539 : vec4<f32> = x_805.x_MainLightShadowmapSize;
        let x_1542 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1536.x, x_1536.y, x_1536.x, x_1536.y) * vec4<f32>(x_1539.x, x_1539.y, x_1539.x, x_1539.y)) + vec4<f32>(x_1542.x, x_1542.y, x_1542.z, x_1542.y));
        let x_1545 : vec2<f32> = u_xlat46;
        let x_1547 : vec4<f32> = x_805.x_MainLightShadowmapSize;
        let x_1550 : vec4<f32> = u_xlat11;
        let x_1552 : vec2<f32> = ((x_1545 * vec2<f32>(x_1547.x, x_1547.y)) + vec2<f32>(x_1550.w, x_1550.y));
        let x_1553 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1552.x, x_1552.y, x_1553.z, x_1553.w);
        let x_1556 : f32 = u_xlat11.y;
        u_xlat8.y = x_1556;
        let x_1559 : f32 = u_xlat10.z;
        u_xlat11.y = x_1559;
        let x_1561 : vec2<f32> = u_xlat46;
        let x_1564 : vec4<f32> = x_805.x_MainLightShadowmapSize;
        let x_1567 : vec4<f32> = u_xlat11;
        u_xlat14 = ((vec4<f32>(x_1561.x, x_1561.y, x_1561.x, x_1561.y) * vec4<f32>(x_1564.x, x_1564.y, x_1564.x, x_1564.y)) + vec4<f32>(x_1567.x, x_1567.y, x_1567.z, x_1567.y));
        let x_1571 : vec2<f32> = u_xlat46;
        let x_1573 : vec4<f32> = x_805.x_MainLightShadowmapSize;
        let x_1576 : vec4<f32> = u_xlat11;
        u_xlat55 = ((x_1571 * vec2<f32>(x_1573.x, x_1573.y)) + vec2<f32>(x_1576.w, x_1576.y));
        let x_1580 : f32 = u_xlat11.y;
        u_xlat8.z = x_1580;
        let x_1582 : vec2<f32> = u_xlat46;
        let x_1585 : vec4<f32> = x_805.x_MainLightShadowmapSize;
        let x_1588 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1582.x, x_1582.y, x_1582.x, x_1582.y) * vec4<f32>(x_1585.x, x_1585.y, x_1585.x, x_1585.y)) + vec4<f32>(x_1588.x, x_1588.y, x_1588.x, x_1588.z));
        let x_1592 : f32 = u_xlat10.w;
        u_xlat11.y = x_1592;
        let x_1595 : vec2<f32> = u_xlat46;
        let x_1598 : vec4<f32> = x_805.x_MainLightShadowmapSize;
        let x_1601 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1595.x, x_1595.y, x_1595.x, x_1595.y) * vec4<f32>(x_1598.x, x_1598.y, x_1598.x, x_1598.y)) + vec4<f32>(x_1601.x, x_1601.y, x_1601.z, x_1601.y));
        let x_1605 : vec2<f32> = u_xlat46;
        let x_1607 : vec4<f32> = x_805.x_MainLightShadowmapSize;
        let x_1610 : vec4<f32> = u_xlat11;
        u_xlat29 = ((x_1605 * vec2<f32>(x_1607.x, x_1607.y)) + vec2<f32>(x_1610.w, x_1610.y));
        let x_1614 : f32 = u_xlat11.y;
        u_xlat8.w = x_1614;
        let x_1617 : vec2<f32> = u_xlat46;
        let x_1619 : vec4<f32> = x_805.x_MainLightShadowmapSize;
        let x_1622 : vec4<f32> = u_xlat8;
        u_xlat17 = ((x_1617 * vec2<f32>(x_1619.x, x_1619.y)) + vec2<f32>(x_1622.x, x_1622.w));
        let x_1625 : vec4<f32> = u_xlat11;
        let x_1626 : vec3<f32> = vec3<f32>(x_1625.x, x_1625.z, x_1625.w);
        let x_1627 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1626.x, x_1627.y, x_1626.y, x_1626.z);
        let x_1629 : vec2<f32> = u_xlat46;
        let x_1632 : vec4<f32> = x_805.x_MainLightShadowmapSize;
        let x_1635 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1629.x, x_1629.y, x_1629.x, x_1629.y) * vec4<f32>(x_1632.x, x_1632.y, x_1632.x, x_1632.y)) + vec4<f32>(x_1635.x, x_1635.y, x_1635.z, x_1635.y));
        let x_1639 : vec2<f32> = u_xlat46;
        let x_1641 : vec4<f32> = x_805.x_MainLightShadowmapSize;
        let x_1644 : vec4<f32> = u_xlat10;
        u_xlat52 = ((x_1639 * vec2<f32>(x_1641.x, x_1641.y)) + vec2<f32>(x_1644.w, x_1644.y));
        let x_1648 : f32 = u_xlat8.x;
        u_xlat10.x = x_1648;
        let x_1650 : vec2<f32> = u_xlat46;
        let x_1652 : vec4<f32> = x_805.x_MainLightShadowmapSize;
        let x_1655 : vec4<f32> = u_xlat10;
        u_xlat46 = ((x_1650 * vec2<f32>(x_1652.x, x_1652.y)) + vec2<f32>(x_1655.x, x_1655.y));
        let x_1659 : vec4<f32> = u_xlat7;
        let x_1661 : vec4<f32> = u_xlat9;
        u_xlat18 = (vec4<f32>(x_1659.x, x_1659.x, x_1659.x, x_1659.x) * x_1661);
        let x_1664 : vec4<f32> = u_xlat7;
        let x_1666 : vec4<f32> = u_xlat9;
        u_xlat19 = (vec4<f32>(x_1664.y, x_1664.y, x_1664.y, x_1664.y) * x_1666);
        let x_1669 : vec4<f32> = u_xlat7;
        let x_1671 : vec4<f32> = u_xlat9;
        u_xlat20 = (vec4<f32>(x_1669.z, x_1669.z, x_1669.z, x_1669.z) * x_1671);
        let x_1673 : vec4<f32> = u_xlat7;
        let x_1675 : vec4<f32> = u_xlat9;
        u_xlat7 = (vec4<f32>(x_1673.w, x_1673.w, x_1673.w, x_1673.w) * x_1675);
        let x_1678 : vec4<f32> = u_xlat12;
        let x_1679 : vec2<f32> = vec2<f32>(x_1678.x, x_1678.y);
        let x_1681 : f32 = vs_TEXCOORD8.z;
        txVec13 = vec3<f32>(x_1679.x, x_1679.y, x_1681);
        let x_1688 : vec3<f32> = txVec13;
        let x_1690 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1688.xy, x_1688.z);
        u_xlat68 = x_1690;
        let x_1692 : vec4<f32> = u_xlat12;
        let x_1693 : vec2<f32> = vec2<f32>(x_1692.z, x_1692.w);
        let x_1695 : f32 = vs_TEXCOORD8.z;
        txVec14 = vec3<f32>(x_1693.x, x_1693.y, x_1695);
        let x_1703 : vec3<f32> = txVec14;
        let x_1705 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1703.xy, x_1703.z);
        u_xlat69 = x_1705;
        let x_1706 : f32 = u_xlat69;
        let x_1708 : f32 = u_xlat18.y;
        u_xlat69 = (x_1706 * x_1708);
        let x_1711 : f32 = u_xlat18.x;
        let x_1712 : f32 = u_xlat68;
        let x_1714 : f32 = u_xlat69;
        u_xlat68 = ((x_1711 * x_1712) + x_1714);
        let x_1717 : vec4<f32> = u_xlat13;
        let x_1718 : vec2<f32> = vec2<f32>(x_1717.x, x_1717.y);
        let x_1720 : f32 = vs_TEXCOORD8.z;
        txVec15 = vec3<f32>(x_1718.x, x_1718.y, x_1720);
        let x_1727 : vec3<f32> = txVec15;
        let x_1729 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1727.xy, x_1727.z);
        u_xlat69 = x_1729;
        let x_1731 : f32 = u_xlat18.z;
        let x_1732 : f32 = u_xlat69;
        let x_1734 : f32 = u_xlat68;
        u_xlat68 = ((x_1731 * x_1732) + x_1734);
        let x_1737 : vec4<f32> = u_xlat15;
        let x_1738 : vec2<f32> = vec2<f32>(x_1737.x, x_1737.y);
        let x_1740 : f32 = vs_TEXCOORD8.z;
        txVec16 = vec3<f32>(x_1738.x, x_1738.y, x_1740);
        let x_1747 : vec3<f32> = txVec16;
        let x_1749 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1747.xy, x_1747.z);
        u_xlat69 = x_1749;
        let x_1751 : f32 = u_xlat18.w;
        let x_1752 : f32 = u_xlat69;
        let x_1754 : f32 = u_xlat68;
        u_xlat68 = ((x_1751 * x_1752) + x_1754);
        let x_1757 : vec4<f32> = u_xlat14;
        let x_1758 : vec2<f32> = vec2<f32>(x_1757.x, x_1757.y);
        let x_1760 : f32 = vs_TEXCOORD8.z;
        txVec17 = vec3<f32>(x_1758.x, x_1758.y, x_1760);
        let x_1767 : vec3<f32> = txVec17;
        let x_1769 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1767.xy, x_1767.z);
        u_xlat69 = x_1769;
        let x_1771 : f32 = u_xlat19.x;
        let x_1772 : f32 = u_xlat69;
        let x_1774 : f32 = u_xlat68;
        u_xlat68 = ((x_1771 * x_1772) + x_1774);
        let x_1777 : vec4<f32> = u_xlat14;
        let x_1778 : vec2<f32> = vec2<f32>(x_1777.z, x_1777.w);
        let x_1780 : f32 = vs_TEXCOORD8.z;
        txVec18 = vec3<f32>(x_1778.x, x_1778.y, x_1780);
        let x_1787 : vec3<f32> = txVec18;
        let x_1789 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1787.xy, x_1787.z);
        u_xlat69 = x_1789;
        let x_1791 : f32 = u_xlat19.y;
        let x_1792 : f32 = u_xlat69;
        let x_1794 : f32 = u_xlat68;
        u_xlat68 = ((x_1791 * x_1792) + x_1794);
        let x_1797 : vec2<f32> = u_xlat55;
        let x_1799 : f32 = vs_TEXCOORD8.z;
        txVec19 = vec3<f32>(x_1797.x, x_1797.y, x_1799);
        let x_1806 : vec3<f32> = txVec19;
        let x_1808 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1806.xy, x_1806.z);
        u_xlat69 = x_1808;
        let x_1810 : f32 = u_xlat19.z;
        let x_1811 : f32 = u_xlat69;
        let x_1813 : f32 = u_xlat68;
        u_xlat68 = ((x_1810 * x_1811) + x_1813);
        let x_1816 : vec4<f32> = u_xlat15;
        let x_1817 : vec2<f32> = vec2<f32>(x_1816.z, x_1816.w);
        let x_1819 : f32 = vs_TEXCOORD8.z;
        txVec20 = vec3<f32>(x_1817.x, x_1817.y, x_1819);
        let x_1826 : vec3<f32> = txVec20;
        let x_1828 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1826.xy, x_1826.z);
        u_xlat69 = x_1828;
        let x_1830 : f32 = u_xlat19.w;
        let x_1831 : f32 = u_xlat69;
        let x_1833 : f32 = u_xlat68;
        u_xlat68 = ((x_1830 * x_1831) + x_1833);
        let x_1836 : vec4<f32> = u_xlat16;
        let x_1837 : vec2<f32> = vec2<f32>(x_1836.x, x_1836.y);
        let x_1839 : f32 = vs_TEXCOORD8.z;
        txVec21 = vec3<f32>(x_1837.x, x_1837.y, x_1839);
        let x_1846 : vec3<f32> = txVec21;
        let x_1848 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1846.xy, x_1846.z);
        u_xlat69 = x_1848;
        let x_1850 : f32 = u_xlat20.x;
        let x_1851 : f32 = u_xlat69;
        let x_1853 : f32 = u_xlat68;
        u_xlat68 = ((x_1850 * x_1851) + x_1853);
        let x_1856 : vec4<f32> = u_xlat16;
        let x_1857 : vec2<f32> = vec2<f32>(x_1856.z, x_1856.w);
        let x_1859 : f32 = vs_TEXCOORD8.z;
        txVec22 = vec3<f32>(x_1857.x, x_1857.y, x_1859);
        let x_1866 : vec3<f32> = txVec22;
        let x_1868 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1866.xy, x_1866.z);
        u_xlat69 = x_1868;
        let x_1870 : f32 = u_xlat20.y;
        let x_1871 : f32 = u_xlat69;
        let x_1873 : f32 = u_xlat68;
        u_xlat68 = ((x_1870 * x_1871) + x_1873);
        let x_1876 : vec2<f32> = u_xlat29;
        let x_1878 : f32 = vs_TEXCOORD8.z;
        txVec23 = vec3<f32>(x_1876.x, x_1876.y, x_1878);
        let x_1885 : vec3<f32> = txVec23;
        let x_1887 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1885.xy, x_1885.z);
        u_xlat69 = x_1887;
        let x_1889 : f32 = u_xlat20.z;
        let x_1890 : f32 = u_xlat69;
        let x_1892 : f32 = u_xlat68;
        u_xlat68 = ((x_1889 * x_1890) + x_1892);
        let x_1895 : vec2<f32> = u_xlat17;
        let x_1897 : f32 = vs_TEXCOORD8.z;
        txVec24 = vec3<f32>(x_1895.x, x_1895.y, x_1897);
        let x_1904 : vec3<f32> = txVec24;
        let x_1906 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1904.xy, x_1904.z);
        u_xlat69 = x_1906;
        let x_1908 : f32 = u_xlat20.w;
        let x_1909 : f32 = u_xlat69;
        let x_1911 : f32 = u_xlat68;
        u_xlat68 = ((x_1908 * x_1909) + x_1911);
        let x_1914 : vec4<f32> = u_xlat11;
        let x_1915 : vec2<f32> = vec2<f32>(x_1914.x, x_1914.y);
        let x_1917 : f32 = vs_TEXCOORD8.z;
        txVec25 = vec3<f32>(x_1915.x, x_1915.y, x_1917);
        let x_1924 : vec3<f32> = txVec25;
        let x_1926 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1924.xy, x_1924.z);
        u_xlat69 = x_1926;
        let x_1928 : f32 = u_xlat7.x;
        let x_1929 : f32 = u_xlat69;
        let x_1931 : f32 = u_xlat68;
        u_xlat68 = ((x_1928 * x_1929) + x_1931);
        let x_1934 : vec4<f32> = u_xlat11;
        let x_1935 : vec2<f32> = vec2<f32>(x_1934.z, x_1934.w);
        let x_1937 : f32 = vs_TEXCOORD8.z;
        txVec26 = vec3<f32>(x_1935.x, x_1935.y, x_1937);
        let x_1944 : vec3<f32> = txVec26;
        let x_1946 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1944.xy, x_1944.z);
        u_xlat69 = x_1946;
        let x_1948 : f32 = u_xlat7.y;
        let x_1949 : f32 = u_xlat69;
        let x_1951 : f32 = u_xlat68;
        u_xlat68 = ((x_1948 * x_1949) + x_1951);
        let x_1954 : vec2<f32> = u_xlat52;
        let x_1956 : f32 = vs_TEXCOORD8.z;
        txVec27 = vec3<f32>(x_1954.x, x_1954.y, x_1956);
        let x_1963 : vec3<f32> = txVec27;
        let x_1965 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1963.xy, x_1963.z);
        u_xlat69 = x_1965;
        let x_1967 : f32 = u_xlat7.z;
        let x_1968 : f32 = u_xlat69;
        let x_1970 : f32 = u_xlat68;
        u_xlat68 = ((x_1967 * x_1968) + x_1970);
        let x_1973 : vec2<f32> = u_xlat46;
        let x_1975 : f32 = vs_TEXCOORD8.z;
        txVec28 = vec3<f32>(x_1973.x, x_1973.y, x_1975);
        let x_1982 : vec3<f32> = txVec28;
        let x_1984 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1982.xy, x_1982.z);
        u_xlat46.x = x_1984;
        let x_1987 : f32 = u_xlat7.w;
        let x_1989 : f32 = u_xlat46.x;
        let x_1991 : f32 = u_xlat68;
        u_xlat4.x = ((x_1987 * x_1989) + x_1991);
      }
    }
  } else {
    let x_1996 : vec4<f32> = vs_TEXCOORD8;
    let x_1997 : vec2<f32> = vec2<f32>(x_1996.x, x_1996.y);
    let x_1999 : f32 = vs_TEXCOORD8.z;
    txVec29 = vec3<f32>(x_1997.x, x_1997.y, x_1999);
    let x_2006 : vec3<f32> = txVec29;
    let x_2008 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2006.xy, x_2006.z);
    u_xlat4.x = x_2008;
  }
  let x_2011 : f32 = x_805.x_MainLightShadowParams.x;
  u_xlat46.x = (-(x_2011) + 1.0f);
  let x_2016 : f32 = u_xlat4.x;
  let x_2018 : f32 = x_805.x_MainLightShadowParams.x;
  let x_2021 : f32 = u_xlat46.x;
  u_xlat4.x = ((x_2016 * x_2018) + x_2021);
  let x_2025 : f32 = vs_TEXCOORD8.z;
  u_xlatb46 = (0.0f >= x_2025);
  let x_2029 : f32 = vs_TEXCOORD8.z;
  u_xlatb67 = (x_2029 >= 1.0f);
  let x_2031 : bool = u_xlatb67;
  let x_2032 : bool = u_xlatb46;
  u_xlatb46 = (x_2031 | x_2032);
  let x_2034 : bool = u_xlatb46;
  if (x_2034) {
    x_2035 = 1.0f;
  } else {
    let x_2040 : f32 = u_xlat4.x;
    x_2035 = x_2040;
  }
  let x_2041 : f32 = x_2035;
  u_xlat4.x = x_2041;
  let x_2043 : vec3<f32> = vs_TEXCOORD7;
  let x_2045 : vec3<f32> = x_126.x_WorldSpaceCameraPos;
  let x_2047 : vec3<f32> = (x_2043 + -(x_2045));
  let x_2048 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2047.x, x_2047.y, x_2047.z, x_2048.w);
  let x_2050 : vec4<f32> = u_xlat7;
  let x_2052 : vec4<f32> = u_xlat7;
  u_xlat46.x = dot(vec3<f32>(x_2050.x, x_2050.y, x_2050.z), vec3<f32>(x_2052.x, x_2052.y, x_2052.z));
  let x_2057 : f32 = u_xlat46.x;
  let x_2059 : f32 = x_805.x_MainLightShadowParams.z;
  let x_2062 : f32 = x_805.x_MainLightShadowParams.w;
  u_xlat46.x = ((x_2057 * x_2059) + x_2062);
  let x_2066 : f32 = u_xlat46.x;
  u_xlat46.x = clamp(x_2066, 0.0f, 1.0f);
  let x_2070 : f32 = u_xlat4.x;
  u_xlat67 = (-(x_2070) + 1.0f);
  let x_2074 : f32 = u_xlat46.x;
  let x_2075 : f32 = u_xlat67;
  let x_2078 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_2074 * x_2075) + x_2078);
  let x_2081 : f32 = u_xlat25;
  let x_2085 : vec4<f32> = x_126.x_MainLightColor;
  let x_2087 : vec3<f32> = (vec3<f32>(x_2081, x_2081, x_2081) * vec3<f32>(x_2085.x, x_2085.y, x_2085.z));
  let x_2088 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2087.x, x_2087.y, x_2087.z, x_2088.w);
  let x_2090 : vec3<f32> = u_xlat2;
  let x_2092 : vec4<f32> = u_xlat1;
  u_xlat46.x = dot(-(x_2090), vec3<f32>(x_2092.x, x_2092.y, x_2092.z));
  let x_2097 : f32 = u_xlat46.x;
  let x_2099 : f32 = u_xlat46.x;
  u_xlat46.x = (x_2097 + x_2099);
  let x_2102 : vec4<f32> = u_xlat1;
  let x_2104 : vec2<f32> = u_xlat46;
  let x_2108 : vec3<f32> = u_xlat2;
  let x_2110 : vec3<f32> = ((vec3<f32>(x_2102.x, x_2102.y, x_2102.z) * -(vec3<f32>(x_2104.x, x_2104.x, x_2104.x))) + -(x_2108));
  let x_2111 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2110.x, x_2110.y, x_2110.z, x_2111.w);
  let x_2113 : vec4<f32> = u_xlat1;
  let x_2115 : vec3<f32> = u_xlat2;
  u_xlat46.x = dot(vec3<f32>(x_2113.x, x_2113.y, x_2113.z), x_2115);
  let x_2119 : f32 = u_xlat46.x;
  u_xlat46.x = clamp(x_2119, 0.0f, 1.0f);
  let x_2123 : f32 = u_xlat46.x;
  u_xlat46.x = (-(x_2123) + 1.0f);
  let x_2128 : f32 = u_xlat46.x;
  let x_2130 : f32 = u_xlat46.x;
  u_xlat46.x = (x_2128 * x_2130);
  let x_2134 : f32 = u_xlat46.x;
  let x_2136 : f32 = u_xlat46.x;
  u_xlat46.x = (x_2134 * x_2136);
  let x_2140 : f32 = u_xlat0.x;
  u_xlat67 = ((-(x_2140) * 0.699999988f) + 1.700000048f);
  let x_2147 : f32 = u_xlat0.x;
  let x_2148 : f32 = u_xlat67;
  u_xlat0.x = (x_2147 * x_2148);
  let x_2152 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2152 * 6.0f);
  let x_2164 : vec4<f32> = u_xlat8;
  let x_2167 : f32 = u_xlat0.x;
  let x_2168 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2164.x, x_2164.y, x_2164.z), x_2167);
  u_xlat8 = x_2168;
  let x_2170 : f32 = u_xlat8.w;
  u_xlat0.x = (x_2170 + -1.0f);
  let x_2174 : f32 = x_613.unity_SpecCube0_HDR.w;
  let x_2176 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_2174 * x_2176) + 1.0f);
  let x_2181 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2181, 0.0f);
  let x_2185 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_2185);
  let x_2189 : f32 = u_xlat0.x;
  let x_2191 : f32 = x_613.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_2189 * x_2191);
  let x_2195 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_2195);
  let x_2199 : f32 = u_xlat0.x;
  let x_2201 : f32 = x_613.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_2199 * x_2201);
  let x_2204 : vec4<f32> = u_xlat8;
  let x_2206 : vec3<f32> = u_xlat0;
  let x_2208 : vec3<f32> = (vec3<f32>(x_2204.x, x_2204.y, x_2204.z) * vec3<f32>(x_2206.x, x_2206.x, x_2206.x));
  let x_2209 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2208.x, x_2208.y, x_2208.z, x_2209.w);
  let x_2211 : f32 = u_xlat42;
  let x_2213 : f32 = u_xlat42;
  let x_2217 : vec2<f32> = ((vec2<f32>(x_2211, x_2211) * vec2<f32>(x_2213, x_2213)) + vec2<f32>(-1.0f, 1.0f));
  let x_2218 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_2217.x, x_2218.y, x_2217.y);
  let x_2221 : f32 = u_xlat0.z;
  u_xlat42 = (1.0f / x_2221);
  let x_2223 : vec4<f32> = u_xlat5;
  let x_2226 : f32 = u_xlat65;
  let x_2228 : vec3<f32> = (-(vec3<f32>(x_2223.x, x_2223.y, x_2223.z)) + vec3<f32>(x_2226, x_2226, x_2226));
  let x_2229 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2228.x, x_2228.y, x_2228.z, x_2229.w);
  let x_2231 : vec2<f32> = u_xlat46;
  let x_2233 : vec4<f32> = u_xlat9;
  let x_2236 : vec4<f32> = u_xlat5;
  let x_2238 : vec3<f32> = ((vec3<f32>(x_2231.x, x_2231.x, x_2231.x) * vec3<f32>(x_2233.x, x_2233.y, x_2233.z)) + vec3<f32>(x_2236.x, x_2236.y, x_2236.z));
  let x_2239 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2238.x, x_2238.y, x_2238.z, x_2239.w);
  let x_2241 : f32 = u_xlat42;
  let x_2243 : vec4<f32> = u_xlat9;
  let x_2245 : vec3<f32> = (vec3<f32>(x_2241, x_2241, x_2241) * vec3<f32>(x_2243.x, x_2243.y, x_2243.z));
  let x_2246 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2245.x, x_2245.y, x_2245.z, x_2246.w);
  let x_2248 : vec4<f32> = u_xlat8;
  let x_2250 : vec4<f32> = u_xlat9;
  let x_2252 : vec3<f32> = (vec3<f32>(x_2248.x, x_2248.y, x_2248.z) * vec3<f32>(x_2250.x, x_2250.y, x_2250.z));
  let x_2253 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2252.x, x_2252.y, x_2252.z, x_2253.w);
  let x_2255 : vec4<f32> = u_xlat3;
  let x_2257 : vec4<f32> = u_xlat6;
  let x_2260 : vec4<f32> = u_xlat8;
  let x_2262 : vec3<f32> = ((vec3<f32>(x_2255.x, x_2255.y, x_2255.z) * vec3<f32>(x_2257.x, x_2257.y, x_2257.z)) + vec3<f32>(x_2260.x, x_2260.y, x_2260.z));
  let x_2263 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2262.x, x_2262.y, x_2262.z, x_2263.w);
  let x_2266 : f32 = u_xlat4.x;
  let x_2268 : f32 = x_613.unity_LightData.z;
  u_xlat42 = (x_2266 * x_2268);
  let x_2270 : vec4<f32> = u_xlat1;
  let x_2273 : vec4<f32> = x_126.x_MainLightPosition;
  u_xlat65 = dot(vec3<f32>(x_2270.x, x_2270.y, x_2270.z), vec3<f32>(x_2273.x, x_2273.y, x_2273.z));
  let x_2276 : f32 = u_xlat65;
  u_xlat65 = clamp(x_2276, 0.0f, 1.0f);
  let x_2278 : f32 = u_xlat42;
  let x_2279 : f32 = u_xlat65;
  u_xlat42 = (x_2278 * x_2279);
  let x_2281 : f32 = u_xlat42;
  let x_2283 : vec4<f32> = u_xlat7;
  let x_2285 : vec3<f32> = (vec3<f32>(x_2281, x_2281, x_2281) * vec3<f32>(x_2283.x, x_2283.y, x_2283.z));
  let x_2286 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2285.x, x_2286.y, x_2285.y, x_2285.z);
  let x_2288 : vec3<f32> = u_xlat2;
  let x_2290 : vec4<f32> = x_126.x_MainLightPosition;
  let x_2292 : vec3<f32> = (x_2288 + vec3<f32>(x_2290.x, x_2290.y, x_2290.z));
  let x_2293 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2292.x, x_2292.y, x_2292.z, x_2293.w);
  let x_2295 : vec4<f32> = u_xlat7;
  let x_2297 : vec4<f32> = u_xlat7;
  u_xlat42 = dot(vec3<f32>(x_2295.x, x_2295.y, x_2295.z), vec3<f32>(x_2297.x, x_2297.y, x_2297.z));
  let x_2300 : f32 = u_xlat42;
  u_xlat42 = max(x_2300, 1.17549435e-37f);
  let x_2303 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_2303);
  let x_2305 : f32 = u_xlat42;
  let x_2307 : vec4<f32> = u_xlat7;
  let x_2309 : vec3<f32> = (vec3<f32>(x_2305, x_2305, x_2305) * vec3<f32>(x_2307.x, x_2307.y, x_2307.z));
  let x_2310 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2309.x, x_2309.y, x_2309.z, x_2310.w);
  let x_2312 : vec4<f32> = u_xlat1;
  let x_2314 : vec4<f32> = u_xlat7;
  u_xlat42 = dot(vec3<f32>(x_2312.x, x_2312.y, x_2312.z), vec3<f32>(x_2314.x, x_2314.y, x_2314.z));
  let x_2317 : f32 = u_xlat42;
  u_xlat42 = clamp(x_2317, 0.0f, 1.0f);
  let x_2320 : vec4<f32> = x_126.x_MainLightPosition;
  let x_2322 : vec4<f32> = u_xlat7;
  u_xlat65 = dot(vec3<f32>(x_2320.x, x_2320.y, x_2320.z), vec3<f32>(x_2322.x, x_2322.y, x_2322.z));
  let x_2325 : f32 = u_xlat65;
  u_xlat65 = clamp(x_2325, 0.0f, 1.0f);
  let x_2327 : f32 = u_xlat42;
  let x_2328 : f32 = u_xlat42;
  u_xlat42 = (x_2327 * x_2328);
  let x_2330 : f32 = u_xlat42;
  let x_2332 : f32 = u_xlat0.x;
  u_xlat42 = ((x_2330 * x_2332) + 1.000010014f);
  let x_2336 : f32 = u_xlat65;
  let x_2337 : f32 = u_xlat65;
  u_xlat65 = (x_2336 * x_2337);
  let x_2339 : f32 = u_xlat42;
  let x_2340 : f32 = u_xlat42;
  u_xlat42 = (x_2339 * x_2340);
  let x_2342 : f32 = u_xlat65;
  u_xlat65 = max(x_2342, 0.100000001f);
  let x_2345 : f32 = u_xlat42;
  let x_2346 : f32 = u_xlat65;
  u_xlat42 = (x_2345 * x_2346);
  let x_2348 : f32 = u_xlat66;
  let x_2349 : f32 = u_xlat42;
  u_xlat42 = (x_2348 * x_2349);
  let x_2351 : f32 = u_xlat64;
  let x_2352 : f32 = u_xlat42;
  u_xlat42 = (x_2351 / x_2352);
  let x_2354 : vec4<f32> = u_xlat5;
  let x_2356 : f32 = u_xlat42;
  let x_2359 : vec4<f32> = u_xlat6;
  let x_2361 : vec3<f32> = ((vec3<f32>(x_2354.x, x_2354.y, x_2354.z) * vec3<f32>(x_2356, x_2356, x_2356)) + vec3<f32>(x_2359.x, x_2359.y, x_2359.z));
  let x_2362 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2361.x, x_2361.y, x_2361.z, x_2362.w);
  let x_2364 : vec4<f32> = u_xlat4;
  let x_2366 : vec4<f32> = u_xlat7;
  let x_2368 : vec3<f32> = (vec3<f32>(x_2364.x, x_2364.z, x_2364.w) * vec3<f32>(x_2366.x, x_2366.y, x_2366.z));
  let x_2369 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2368.x, x_2369.y, x_2368.y, x_2368.z);
  let x_2372 : f32 = x_126.x_AdditionalLightsCount.x;
  let x_2374 : f32 = x_613.unity_LightData.y;
  u_xlat42 = min(x_2372, x_2374);
  let x_2378 : f32 = u_xlat42;
  u_xlatu42 = bitcast<u32>(i32(x_2378));
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2390 : u32 = u_xlatu_loop_1;
    let x_2391 : u32 = u_xlatu42;
    if ((x_2390 < x_2391)) {
    } else {
      break;
    }
    let x_2394 : u32 = u_xlatu_loop_1;
    u_xlatu68 = (x_2394 >> 2u);
    let x_2398 : u32 = u_xlatu_loop_1;
    u_xlati69 = bitcast<i32>((x_2398 & 3u));
    let x_2401 : u32 = u_xlatu68;
    let x_2404 : vec4<f32> = x_613.unity_LightIndices[bitcast<i32>(x_2401)];
    let x_2414 : i32 = u_xlati69;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2419 : vec4<u32> = indexable[x_2414];
    u_xlat68 = dot(x_2404, bitcast<vec4<f32>>(x_2419));
    let x_2423 : f32 = u_xlat68;
    u_xlati68 = i32(x_2423);
    let x_2425 : vec3<f32> = vs_TEXCOORD7;
    let x_2437 : i32 = u_xlati68;
    let x_2439 : vec4<f32> = x_2436.x_AdditionalLightsPosition[x_2437];
    let x_2442 : i32 = u_xlati68;
    let x_2444 : vec4<f32> = x_2436.x_AdditionalLightsPosition[x_2442];
    let x_2446 : vec3<f32> = ((-(x_2425) * vec3<f32>(x_2439.w, x_2439.w, x_2439.w)) + vec3<f32>(x_2444.x, x_2444.y, x_2444.z));
    let x_2447 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2446.x, x_2446.y, x_2446.z, x_2447.w);
    let x_2449 : vec4<f32> = u_xlat8;
    let x_2451 : vec4<f32> = u_xlat8;
    u_xlat69 = dot(vec3<f32>(x_2449.x, x_2449.y, x_2449.z), vec3<f32>(x_2451.x, x_2451.y, x_2451.z));
    let x_2454 : f32 = u_xlat69;
    u_xlat69 = max(x_2454, 6.10351562e-05f);
    let x_2457 : f32 = u_xlat69;
    u_xlat70 = inverseSqrt(x_2457);
    let x_2459 : f32 = u_xlat70;
    let x_2461 : vec4<f32> = u_xlat8;
    let x_2463 : vec3<f32> = (vec3<f32>(x_2459, x_2459, x_2459) * vec3<f32>(x_2461.x, x_2461.y, x_2461.z));
    let x_2464 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2463.x, x_2463.y, x_2463.z, x_2464.w);
    let x_2467 : f32 = u_xlat69;
    u_xlat71 = (1.0f / x_2467);
    let x_2469 : f32 = u_xlat69;
    let x_2470 : i32 = u_xlati68;
    let x_2472 : f32 = x_2436.x_AdditionalLightsAttenuation[x_2470].x;
    u_xlat69 = (x_2469 * x_2472);
    let x_2474 : f32 = u_xlat69;
    let x_2476 : f32 = u_xlat69;
    u_xlat69 = ((-(x_2474) * x_2476) + 1.0f);
    let x_2479 : f32 = u_xlat69;
    u_xlat69 = max(x_2479, 0.0f);
    let x_2481 : f32 = u_xlat69;
    let x_2482 : f32 = u_xlat69;
    u_xlat69 = (x_2481 * x_2482);
    let x_2484 : f32 = u_xlat69;
    let x_2485 : f32 = u_xlat71;
    u_xlat69 = (x_2484 * x_2485);
    let x_2487 : i32 = u_xlati68;
    let x_2489 : vec4<f32> = x_2436.x_AdditionalLightsSpotDir[x_2487];
    let x_2491 : vec4<f32> = u_xlat9;
    u_xlat71 = dot(vec3<f32>(x_2489.x, x_2489.y, x_2489.z), vec3<f32>(x_2491.x, x_2491.y, x_2491.z));
    let x_2494 : f32 = u_xlat71;
    let x_2495 : i32 = u_xlati68;
    let x_2497 : f32 = x_2436.x_AdditionalLightsAttenuation[x_2495].z;
    let x_2499 : i32 = u_xlati68;
    let x_2501 : f32 = x_2436.x_AdditionalLightsAttenuation[x_2499].w;
    u_xlat71 = ((x_2494 * x_2497) + x_2501);
    let x_2503 : f32 = u_xlat71;
    u_xlat71 = clamp(x_2503, 0.0f, 1.0f);
    let x_2505 : f32 = u_xlat71;
    let x_2506 : f32 = u_xlat71;
    u_xlat71 = (x_2505 * x_2506);
    let x_2508 : f32 = u_xlat69;
    let x_2509 : f32 = u_xlat71;
    u_xlat69 = (x_2508 * x_2509);
    let x_2511 : f32 = u_xlat25;
    let x_2513 : i32 = u_xlati68;
    let x_2515 : vec4<f32> = x_2436.x_AdditionalLightsColor[x_2513];
    let x_2517 : vec3<f32> = (vec3<f32>(x_2511, x_2511, x_2511) * vec3<f32>(x_2515.x, x_2515.y, x_2515.z));
    let x_2518 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2517.x, x_2517.y, x_2517.z, x_2518.w);
    let x_2520 : vec4<f32> = u_xlat1;
    let x_2522 : vec4<f32> = u_xlat9;
    u_xlat68 = dot(vec3<f32>(x_2520.x, x_2520.y, x_2520.z), vec3<f32>(x_2522.x, x_2522.y, x_2522.z));
    let x_2525 : f32 = u_xlat68;
    u_xlat68 = clamp(x_2525, 0.0f, 1.0f);
    let x_2527 : f32 = u_xlat68;
    let x_2528 : f32 = u_xlat69;
    u_xlat68 = (x_2527 * x_2528);
    let x_2530 : f32 = u_xlat68;
    let x_2532 : vec4<f32> = u_xlat10;
    let x_2534 : vec3<f32> = (vec3<f32>(x_2530, x_2530, x_2530) * vec3<f32>(x_2532.x, x_2532.y, x_2532.z));
    let x_2535 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2534.x, x_2534.y, x_2534.z, x_2535.w);
    let x_2537 : vec4<f32> = u_xlat8;
    let x_2539 : f32 = u_xlat70;
    let x_2542 : vec3<f32> = u_xlat2;
    let x_2543 : vec3<f32> = ((vec3<f32>(x_2537.x, x_2537.y, x_2537.z) * vec3<f32>(x_2539, x_2539, x_2539)) + x_2542);
    let x_2544 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2543.x, x_2543.y, x_2543.z, x_2544.w);
    let x_2546 : vec4<f32> = u_xlat8;
    let x_2548 : vec4<f32> = u_xlat8;
    u_xlat68 = dot(vec3<f32>(x_2546.x, x_2546.y, x_2546.z), vec3<f32>(x_2548.x, x_2548.y, x_2548.z));
    let x_2551 : f32 = u_xlat68;
    u_xlat68 = max(x_2551, 1.17549435e-37f);
    let x_2553 : f32 = u_xlat68;
    u_xlat68 = inverseSqrt(x_2553);
    let x_2555 : f32 = u_xlat68;
    let x_2557 : vec4<f32> = u_xlat8;
    let x_2559 : vec3<f32> = (vec3<f32>(x_2555, x_2555, x_2555) * vec3<f32>(x_2557.x, x_2557.y, x_2557.z));
    let x_2560 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2559.x, x_2559.y, x_2559.z, x_2560.w);
    let x_2562 : vec4<f32> = u_xlat1;
    let x_2564 : vec4<f32> = u_xlat8;
    u_xlat68 = dot(vec3<f32>(x_2562.x, x_2562.y, x_2562.z), vec3<f32>(x_2564.x, x_2564.y, x_2564.z));
    let x_2567 : f32 = u_xlat68;
    u_xlat68 = clamp(x_2567, 0.0f, 1.0f);
    let x_2569 : vec4<f32> = u_xlat9;
    let x_2571 : vec4<f32> = u_xlat8;
    u_xlat69 = dot(vec3<f32>(x_2569.x, x_2569.y, x_2569.z), vec3<f32>(x_2571.x, x_2571.y, x_2571.z));
    let x_2574 : f32 = u_xlat69;
    u_xlat69 = clamp(x_2574, 0.0f, 1.0f);
    let x_2576 : f32 = u_xlat68;
    let x_2577 : f32 = u_xlat68;
    u_xlat68 = (x_2576 * x_2577);
    let x_2579 : f32 = u_xlat68;
    let x_2581 : f32 = u_xlat0.x;
    u_xlat68 = ((x_2579 * x_2581) + 1.000010014f);
    let x_2584 : f32 = u_xlat69;
    let x_2585 : f32 = u_xlat69;
    u_xlat69 = (x_2584 * x_2585);
    let x_2587 : f32 = u_xlat68;
    let x_2588 : f32 = u_xlat68;
    u_xlat68 = (x_2587 * x_2588);
    let x_2590 : f32 = u_xlat69;
    u_xlat69 = max(x_2590, 0.100000001f);
    let x_2592 : f32 = u_xlat68;
    let x_2593 : f32 = u_xlat69;
    u_xlat68 = (x_2592 * x_2593);
    let x_2595 : f32 = u_xlat66;
    let x_2596 : f32 = u_xlat68;
    u_xlat68 = (x_2595 * x_2596);
    let x_2598 : f32 = u_xlat64;
    let x_2599 : f32 = u_xlat68;
    u_xlat68 = (x_2598 / x_2599);
    let x_2601 : vec4<f32> = u_xlat5;
    let x_2603 : f32 = u_xlat68;
    let x_2606 : vec4<f32> = u_xlat6;
    let x_2608 : vec3<f32> = ((vec3<f32>(x_2601.x, x_2601.y, x_2601.z) * vec3<f32>(x_2603, x_2603, x_2603)) + vec3<f32>(x_2606.x, x_2606.y, x_2606.z));
    let x_2609 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2608.x, x_2608.y, x_2608.z, x_2609.w);
    let x_2611 : vec4<f32> = u_xlat8;
    let x_2613 : vec4<f32> = u_xlat10;
    let x_2616 : vec4<f32> = u_xlat7;
    let x_2618 : vec3<f32> = ((vec3<f32>(x_2611.x, x_2611.y, x_2611.z) * vec3<f32>(x_2613.x, x_2613.y, x_2613.z)) + vec3<f32>(x_2616.x, x_2616.y, x_2616.z));
    let x_2619 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2618.x, x_2618.y, x_2618.z, x_2619.w);

    continuing {
      let x_2621 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2621 + bitcast<u32>(1i));
    }
  }
  let x_2623 : vec4<f32> = u_xlat3;
  let x_2625 : f32 = u_xlat21;
  let x_2628 : vec4<f32> = u_xlat4;
  u_xlat0 = ((vec3<f32>(x_2623.x, x_2623.y, x_2623.z) * vec3<f32>(x_2625, x_2625, x_2625)) + vec3<f32>(x_2628.x, x_2628.z, x_2628.w));
  let x_2631 : vec4<f32> = u_xlat7;
  let x_2633 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_2631.x, x_2631.y, x_2631.z) + x_2633);
  let x_2637 : f32 = u_xlat63;
  let x_2639 : vec3<f32> = u_xlat0;
  let x_2640 : vec3<f32> = (vec3<f32>(x_2637, x_2637, x_2637) * x_2639);
  let x_2641 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2640.x, x_2640.y, x_2640.z, x_2641.w);
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

