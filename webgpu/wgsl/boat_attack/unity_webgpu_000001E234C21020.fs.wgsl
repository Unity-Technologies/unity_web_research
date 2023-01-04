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

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(10) var samplerunity_Lightmap : sampler;

@group(0) @binding(7) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(1) @binding(4) var<uniform> x_740 : MainLightShadows;

var<private> vs_TEXCOORD8 : vec4<f32>;

@group(0) @binding(8) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(14) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_2111 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_2375 : AdditionalLights;

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
  var x_1970 : f32;
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
  let x_614 : vec4<f32> = vs_TEXCOORD0;
  let x_617 : f32 = x_126.x_GlobalMipBias.x;
  let x_618 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_614.z, x_614.w), x_617);
  let x_619 : vec3<f32> = vec3<f32>(x_618.x, x_618.y, x_618.z);
  let x_620 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_619.x, x_619.y, x_619.z, x_620.w);
  let x_624 : vec4<f32> = x_126.x_ScaledScreenParams;
  let x_625 : vec2<f32> = vec2<f32>(x_624.x, x_624.y);
  let x_629 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_625.x, x_625.y));
  let x_630 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_629.x, x_629.y, x_630.z, x_630.w);
  let x_632 : vec4<f32> = u_xlat4;
  let x_634 : vec4<f32> = hlslcc_FragCoord;
  let x_636 : vec2<f32> = (vec2<f32>(x_632.x, x_632.y) * vec2<f32>(x_634.x, x_634.y));
  let x_637 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_636.x, x_636.y, x_637.z, x_637.w);
  let x_640 : f32 = u_xlat4.y;
  let x_642 : f32 = x_126.x_ScaleBiasRt.x;
  let x_645 : f32 = x_126.x_ScaleBiasRt.y;
  u_xlat64 = ((x_640 * x_642) + x_645);
  let x_647 : f32 = u_xlat64;
  u_xlat4.z = (-(x_647) + 1.0f);
  let x_652 : f32 = u_xlat0.x;
  u_xlat64 = ((-(x_652) * 0.959999979f) + 0.959999979f);
  let x_658 : f32 = u_xlat42;
  let x_659 : f32 = u_xlat64;
  u_xlat65 = (x_658 + -(x_659));
  let x_662 : f32 = u_xlat64;
  let x_664 : vec4<f32> = u_xlat5;
  let x_666 : vec3<f32> = (vec3<f32>(x_662, x_662, x_662) * vec3<f32>(x_664.x, x_664.y, x_664.z));
  let x_667 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_666.x, x_666.y, x_666.z, x_667.w);
  let x_669 : vec4<f32> = u_xlat5;
  let x_673 : vec3<f32> = (vec3<f32>(x_669.x, x_669.y, x_669.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_674 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_673.x, x_673.y, x_673.z, x_674.w);
  let x_676 : vec3<f32> = u_xlat0;
  let x_678 : vec4<f32> = u_xlat5;
  let x_683 : vec3<f32> = ((vec3<f32>(x_676.x, x_676.x, x_676.x) * vec3<f32>(x_678.x, x_678.y, x_678.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_684 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_683.x, x_683.y, x_683.z, x_684.w);
  let x_686 : f32 = u_xlat42;
  u_xlat0.x = (-(x_686) + 1.0f);
  let x_691 : f32 = u_xlat0.x;
  let x_693 : f32 = u_xlat0.x;
  u_xlat42 = (x_691 * x_693);
  let x_695 : f32 = u_xlat42;
  u_xlat42 = max(x_695, 0.0078125f);
  let x_698 : f32 = u_xlat42;
  let x_699 : f32 = u_xlat42;
  u_xlat64 = (x_698 * x_699);
  let x_701 : f32 = u_xlat65;
  u_xlat65 = (x_701 + 1.0f);
  let x_703 : f32 = u_xlat65;
  u_xlat65 = clamp(x_703, 0.0f, 1.0f);
  let x_706 : f32 = u_xlat42;
  u_xlat66 = ((x_706 * 4.0f) + 2.0f);
  let x_715 : vec4<f32> = u_xlat4;
  let x_718 : f32 = x_126.x_GlobalMipBias.x;
  let x_719 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_715.x, x_715.z), x_718);
  u_xlat4.x = x_719.x;
  let x_724 : f32 = u_xlat4.x;
  u_xlat25 = (x_724 + -1.0f);
  let x_727 : f32 = x_126.x_AmbientOcclusionParam.w;
  let x_728 : f32 = u_xlat25;
  u_xlat25 = ((x_727 * x_728) + 1.0f);
  let x_731 : f32 = u_xlat21;
  let x_733 : f32 = u_xlat4.x;
  u_xlat21 = min(x_731, x_733);
  let x_742 : f32 = x_740.x_MainLightShadowParams.y;
  u_xlatb4 = (0.0f < x_742);
  let x_744 : bool = u_xlatb4;
  if (x_744) {
    let x_748 : f32 = x_740.x_MainLightShadowParams.y;
    u_xlatb4 = (x_748 == 1.0f);
    let x_750 : bool = u_xlatb4;
    if (x_750) {
      let x_754 : vec4<f32> = vs_TEXCOORD8;
      let x_757 : vec4<f32> = x_740.x_MainLightShadowOffset0;
      u_xlat7 = (vec4<f32>(x_754.x, x_754.y, x_754.x, x_754.y) + x_757);
      let x_760 : vec4<f32> = u_xlat7;
      let x_761 : vec2<f32> = vec2<f32>(x_760.x, x_760.y);
      let x_763 : f32 = vs_TEXCOORD8.z;
      txVec0 = vec3<f32>(x_761.x, x_761.y, x_763);
      let x_775 : vec3<f32> = txVec0;
      let x_777 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_775.xy, x_775.z);
      u_xlat8.x = x_777;
      let x_780 : vec4<f32> = u_xlat7;
      let x_781 : vec2<f32> = vec2<f32>(x_780.z, x_780.w);
      let x_783 : f32 = vs_TEXCOORD8.z;
      txVec1 = vec3<f32>(x_781.x, x_781.y, x_783);
      let x_790 : vec3<f32> = txVec1;
      let x_792 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_790.xy, x_790.z);
      u_xlat8.y = x_792;
      let x_794 : vec4<f32> = vs_TEXCOORD8;
      let x_797 : vec4<f32> = x_740.x_MainLightShadowOffset1;
      u_xlat7 = (vec4<f32>(x_794.x, x_794.y, x_794.x, x_794.y) + x_797);
      let x_800 : vec4<f32> = u_xlat7;
      let x_801 : vec2<f32> = vec2<f32>(x_800.x, x_800.y);
      let x_803 : f32 = vs_TEXCOORD8.z;
      txVec2 = vec3<f32>(x_801.x, x_801.y, x_803);
      let x_810 : vec3<f32> = txVec2;
      let x_812 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_810.xy, x_810.z);
      u_xlat8.z = x_812;
      let x_815 : vec4<f32> = u_xlat7;
      let x_816 : vec2<f32> = vec2<f32>(x_815.z, x_815.w);
      let x_818 : f32 = vs_TEXCOORD8.z;
      txVec3 = vec3<f32>(x_816.x, x_816.y, x_818);
      let x_825 : vec3<f32> = txVec3;
      let x_827 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_825.xy, x_825.z);
      u_xlat8.w = x_827;
      let x_829 : vec4<f32> = u_xlat8;
      u_xlat4.x = dot(x_829, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_837 : f32 = x_740.x_MainLightShadowParams.y;
      u_xlatb46 = (x_837 == 2.0f);
      let x_839 : bool = u_xlatb46;
      if (x_839) {
        let x_844 : vec4<f32> = vs_TEXCOORD8;
        let x_847 : vec4<f32> = x_740.x_MainLightShadowmapSize;
        u_xlat46 = ((vec2<f32>(x_844.x, x_844.y) * vec2<f32>(x_847.z, x_847.w)) + vec2<f32>(0.5f, 0.5f));
        let x_851 : vec2<f32> = u_xlat46;
        u_xlat46 = floor(x_851);
        let x_853 : vec4<f32> = vs_TEXCOORD8;
        let x_856 : vec4<f32> = x_740.x_MainLightShadowmapSize;
        let x_859 : vec2<f32> = u_xlat46;
        let x_861 : vec2<f32> = ((vec2<f32>(x_853.x, x_853.y) * vec2<f32>(x_856.z, x_856.w)) + -(x_859));
        let x_862 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_861.x, x_861.y, x_862.z, x_862.w);
        let x_864 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_864.x, x_864.x, x_864.y, x_864.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_868 : vec4<f32> = u_xlat8;
        let x_870 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_868.x, x_868.x, x_868.z, x_868.z) * vec4<f32>(x_870.x, x_870.x, x_870.z, x_870.z));
        let x_874 : vec4<f32> = u_xlat9;
        u_xlat49 = (vec2<f32>(x_874.y, x_874.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_879 : vec4<f32> = u_xlat9;
        let x_882 : vec4<f32> = u_xlat7;
        let x_885 : vec2<f32> = ((vec2<f32>(x_879.x, x_879.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_882.x, x_882.y)));
        let x_886 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_885.x, x_886.y, x_885.y, x_886.w);
        let x_888 : vec4<f32> = u_xlat7;
        let x_891 : vec2<f32> = (-(vec2<f32>(x_888.x, x_888.y)) + vec2<f32>(1.0f, 1.0f));
        let x_892 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_891.x, x_891.y, x_892.z, x_892.w);
        let x_895 : vec4<f32> = u_xlat7;
        u_xlat51 = min(vec2<f32>(x_895.x, x_895.y), vec2<f32>(0.0f, 0.0f));
        let x_899 : vec2<f32> = u_xlat51;
        let x_901 : vec2<f32> = u_xlat51;
        let x_903 : vec4<f32> = u_xlat9;
        u_xlat51 = ((-(x_899) * x_901) + vec2<f32>(x_903.x, x_903.y));
        let x_906 : vec4<f32> = u_xlat7;
        let x_908 : vec2<f32> = max(vec2<f32>(x_906.x, x_906.y), vec2<f32>(0.0f, 0.0f));
        let x_909 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_908.x, x_908.y, x_909.z, x_909.w);
        let x_911 : vec4<f32> = u_xlat7;
        let x_914 : vec4<f32> = u_xlat7;
        let x_917 : vec4<f32> = u_xlat8;
        let x_919 : vec2<f32> = ((-(vec2<f32>(x_911.x, x_911.y)) * vec2<f32>(x_914.x, x_914.y)) + vec2<f32>(x_917.y, x_917.w));
        let x_920 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_919.x, x_919.y, x_920.z, x_920.w);
        let x_922 : vec2<f32> = u_xlat51;
        u_xlat51 = (x_922 + vec2<f32>(1.0f, 1.0f));
        let x_924 : vec4<f32> = u_xlat7;
        let x_926 : vec2<f32> = (vec2<f32>(x_924.x, x_924.y) + vec2<f32>(1.0f, 1.0f));
        let x_927 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_926.x, x_926.y, x_927.z, x_927.w);
        let x_929 : vec4<f32> = u_xlat8;
        let x_933 : vec2<f32> = (vec2<f32>(x_929.x, x_929.z) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_934 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_933.x, x_933.y, x_934.z, x_934.w);
        let x_936 : vec4<f32> = u_xlat9;
        let x_938 : vec2<f32> = (vec2<f32>(x_936.x, x_936.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_939 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_938.x, x_938.y, x_939.z, x_939.w);
        let x_941 : vec2<f32> = u_xlat51;
        let x_942 : vec2<f32> = (x_941 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_943 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_942.x, x_942.y, x_943.z, x_943.w);
        let x_945 : vec4<f32> = u_xlat7;
        let x_947 : vec2<f32> = (vec2<f32>(x_945.x, x_945.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_948 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_947.x, x_947.y, x_948.z, x_948.w);
        let x_950 : vec4<f32> = u_xlat8;
        let x_952 : vec2<f32> = (vec2<f32>(x_950.y, x_950.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_953 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_952.x, x_952.y, x_953.z, x_953.w);
        let x_956 : f32 = u_xlat9.x;
        u_xlat10.z = x_956;
        let x_959 : f32 = u_xlat7.x;
        u_xlat10.w = x_959;
        let x_962 : f32 = u_xlat12.x;
        u_xlat11.z = x_962;
        let x_965 : f32 = u_xlat49.x;
        u_xlat11.w = x_965;
        let x_967 : vec4<f32> = u_xlat10;
        let x_969 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_967.z, x_967.w, x_967.x, x_967.z) + vec4<f32>(x_969.z, x_969.w, x_969.x, x_969.z));
        let x_973 : f32 = u_xlat10.y;
        u_xlat9.z = x_973;
        let x_976 : f32 = u_xlat7.y;
        u_xlat9.w = x_976;
        let x_979 : f32 = u_xlat11.y;
        u_xlat12.z = x_979;
        let x_982 : f32 = u_xlat49.y;
        u_xlat12.w = x_982;
        let x_984 : vec4<f32> = u_xlat9;
        let x_986 : vec4<f32> = u_xlat12;
        let x_988 : vec3<f32> = (vec3<f32>(x_984.z, x_984.y, x_984.w) + vec3<f32>(x_986.z, x_986.y, x_986.w));
        let x_989 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_988.x, x_988.y, x_988.z, x_989.w);
        let x_991 : vec4<f32> = u_xlat11;
        let x_993 : vec4<f32> = u_xlat8;
        let x_995 : vec3<f32> = (vec3<f32>(x_991.x, x_991.z, x_991.w) / vec3<f32>(x_993.z, x_993.w, x_993.y));
        let x_996 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_995.x, x_995.y, x_995.z, x_996.w);
        let x_998 : vec4<f32> = u_xlat9;
        let x_1004 : vec3<f32> = (vec3<f32>(x_998.x, x_998.y, x_998.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1005 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1004.x, x_1004.y, x_1004.z, x_1005.w);
        let x_1007 : vec4<f32> = u_xlat12;
        let x_1009 : vec4<f32> = u_xlat7;
        let x_1011 : vec3<f32> = (vec3<f32>(x_1007.z, x_1007.y, x_1007.w) / vec3<f32>(x_1009.x, x_1009.y, x_1009.z));
        let x_1012 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1011.x, x_1011.y, x_1011.z, x_1012.w);
        let x_1014 : vec4<f32> = u_xlat10;
        let x_1016 : vec3<f32> = (vec3<f32>(x_1014.x, x_1014.y, x_1014.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1017 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1016.x, x_1016.y, x_1016.z, x_1017.w);
        let x_1019 : vec4<f32> = u_xlat9;
        let x_1022 : vec4<f32> = x_740.x_MainLightShadowmapSize;
        let x_1024 : vec3<f32> = (vec3<f32>(x_1019.y, x_1019.x, x_1019.z) * vec3<f32>(x_1022.x, x_1022.x, x_1022.x));
        let x_1025 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1024.x, x_1024.y, x_1024.z, x_1025.w);
        let x_1027 : vec4<f32> = u_xlat10;
        let x_1030 : vec4<f32> = x_740.x_MainLightShadowmapSize;
        let x_1032 : vec3<f32> = (vec3<f32>(x_1027.x, x_1027.y, x_1027.z) * vec3<f32>(x_1030.y, x_1030.y, x_1030.y));
        let x_1033 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1032.x, x_1032.y, x_1032.z, x_1033.w);
        let x_1036 : f32 = u_xlat10.x;
        u_xlat9.w = x_1036;
        let x_1038 : vec2<f32> = u_xlat46;
        let x_1041 : vec4<f32> = x_740.x_MainLightShadowmapSize;
        let x_1044 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1038.x, x_1038.y, x_1038.x, x_1038.y) * vec4<f32>(x_1041.x, x_1041.y, x_1041.x, x_1041.y)) + vec4<f32>(x_1044.y, x_1044.w, x_1044.x, x_1044.w));
        let x_1047 : vec2<f32> = u_xlat46;
        let x_1049 : vec4<f32> = x_740.x_MainLightShadowmapSize;
        let x_1052 : vec4<f32> = u_xlat9;
        let x_1054 : vec2<f32> = ((x_1047 * vec2<f32>(x_1049.x, x_1049.y)) + vec2<f32>(x_1052.z, x_1052.w));
        let x_1055 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1054.x, x_1054.y, x_1055.z, x_1055.w);
        let x_1058 : f32 = u_xlat9.y;
        u_xlat10.w = x_1058;
        let x_1060 : vec4<f32> = u_xlat10;
        let x_1061 : vec2<f32> = vec2<f32>(x_1060.y, x_1060.z);
        let x_1062 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1062.x, x_1061.x, x_1062.z, x_1061.y);
        let x_1064 : vec2<f32> = u_xlat46;
        let x_1067 : vec4<f32> = x_740.x_MainLightShadowmapSize;
        let x_1070 : vec4<f32> = u_xlat9;
        u_xlat13 = ((vec4<f32>(x_1064.x, x_1064.y, x_1064.x, x_1064.y) * vec4<f32>(x_1067.x, x_1067.y, x_1067.x, x_1067.y)) + vec4<f32>(x_1070.x, x_1070.y, x_1070.z, x_1070.y));
        let x_1073 : vec2<f32> = u_xlat46;
        let x_1076 : vec4<f32> = x_740.x_MainLightShadowmapSize;
        let x_1079 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_1073.x, x_1073.y, x_1073.x, x_1073.y) * vec4<f32>(x_1076.x, x_1076.y, x_1076.x, x_1076.y)) + vec4<f32>(x_1079.w, x_1079.y, x_1079.w, x_1079.z));
        let x_1082 : vec2<f32> = u_xlat46;
        let x_1085 : vec4<f32> = x_740.x_MainLightShadowmapSize;
        let x_1088 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1082.x, x_1082.y, x_1082.x, x_1082.y) * vec4<f32>(x_1085.x, x_1085.y, x_1085.x, x_1085.y)) + vec4<f32>(x_1088.x, x_1088.w, x_1088.z, x_1088.w));
        let x_1092 : vec4<f32> = u_xlat7;
        let x_1094 : vec4<f32> = u_xlat8;
        u_xlat14 = (vec4<f32>(x_1092.x, x_1092.x, x_1092.x, x_1092.y) * vec4<f32>(x_1094.z, x_1094.w, x_1094.y, x_1094.z));
        let x_1098 : vec4<f32> = u_xlat7;
        let x_1100 : vec4<f32> = u_xlat8;
        u_xlat15 = (vec4<f32>(x_1098.y, x_1098.y, x_1098.z, x_1098.z) * x_1100);
        let x_1103 : f32 = u_xlat7.z;
        let x_1105 : f32 = u_xlat8.y;
        u_xlat46.x = (x_1103 * x_1105);
        let x_1109 : vec4<f32> = u_xlat11;
        let x_1110 : vec2<f32> = vec2<f32>(x_1109.x, x_1109.y);
        let x_1112 : f32 = vs_TEXCOORD8.z;
        txVec4 = vec3<f32>(x_1110.x, x_1110.y, x_1112);
        let x_1120 : vec3<f32> = txVec4;
        let x_1122 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1120.xy, x_1120.z);
        u_xlat67 = x_1122;
        let x_1124 : vec4<f32> = u_xlat11;
        let x_1125 : vec2<f32> = vec2<f32>(x_1124.z, x_1124.w);
        let x_1127 : f32 = vs_TEXCOORD8.z;
        txVec5 = vec3<f32>(x_1125.x, x_1125.y, x_1127);
        let x_1135 : vec3<f32> = txVec5;
        let x_1137 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1135.xy, x_1135.z);
        u_xlat68 = x_1137;
        let x_1138 : f32 = u_xlat68;
        let x_1140 : f32 = u_xlat14.y;
        u_xlat68 = (x_1138 * x_1140);
        let x_1143 : f32 = u_xlat14.x;
        let x_1144 : f32 = u_xlat67;
        let x_1146 : f32 = u_xlat68;
        u_xlat67 = ((x_1143 * x_1144) + x_1146);
        let x_1149 : vec4<f32> = u_xlat12;
        let x_1150 : vec2<f32> = vec2<f32>(x_1149.x, x_1149.y);
        let x_1152 : f32 = vs_TEXCOORD8.z;
        txVec6 = vec3<f32>(x_1150.x, x_1150.y, x_1152);
        let x_1159 : vec3<f32> = txVec6;
        let x_1161 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1159.xy, x_1159.z);
        u_xlat68 = x_1161;
        let x_1163 : f32 = u_xlat14.z;
        let x_1164 : f32 = u_xlat68;
        let x_1166 : f32 = u_xlat67;
        u_xlat67 = ((x_1163 * x_1164) + x_1166);
        let x_1169 : vec4<f32> = u_xlat10;
        let x_1170 : vec2<f32> = vec2<f32>(x_1169.x, x_1169.y);
        let x_1172 : f32 = vs_TEXCOORD8.z;
        txVec7 = vec3<f32>(x_1170.x, x_1170.y, x_1172);
        let x_1179 : vec3<f32> = txVec7;
        let x_1181 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1179.xy, x_1179.z);
        u_xlat68 = x_1181;
        let x_1183 : f32 = u_xlat14.w;
        let x_1184 : f32 = u_xlat68;
        let x_1186 : f32 = u_xlat67;
        u_xlat67 = ((x_1183 * x_1184) + x_1186);
        let x_1189 : vec4<f32> = u_xlat13;
        let x_1190 : vec2<f32> = vec2<f32>(x_1189.x, x_1189.y);
        let x_1192 : f32 = vs_TEXCOORD8.z;
        txVec8 = vec3<f32>(x_1190.x, x_1190.y, x_1192);
        let x_1199 : vec3<f32> = txVec8;
        let x_1201 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1199.xy, x_1199.z);
        u_xlat68 = x_1201;
        let x_1203 : f32 = u_xlat15.x;
        let x_1204 : f32 = u_xlat68;
        let x_1206 : f32 = u_xlat67;
        u_xlat67 = ((x_1203 * x_1204) + x_1206);
        let x_1209 : vec4<f32> = u_xlat13;
        let x_1210 : vec2<f32> = vec2<f32>(x_1209.z, x_1209.w);
        let x_1212 : f32 = vs_TEXCOORD8.z;
        txVec9 = vec3<f32>(x_1210.x, x_1210.y, x_1212);
        let x_1219 : vec3<f32> = txVec9;
        let x_1221 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1219.xy, x_1219.z);
        u_xlat68 = x_1221;
        let x_1223 : f32 = u_xlat15.y;
        let x_1224 : f32 = u_xlat68;
        let x_1226 : f32 = u_xlat67;
        u_xlat67 = ((x_1223 * x_1224) + x_1226);
        let x_1229 : vec4<f32> = u_xlat10;
        let x_1230 : vec2<f32> = vec2<f32>(x_1229.z, x_1229.w);
        let x_1232 : f32 = vs_TEXCOORD8.z;
        txVec10 = vec3<f32>(x_1230.x, x_1230.y, x_1232);
        let x_1239 : vec3<f32> = txVec10;
        let x_1241 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1239.xy, x_1239.z);
        u_xlat68 = x_1241;
        let x_1243 : f32 = u_xlat15.z;
        let x_1244 : f32 = u_xlat68;
        let x_1246 : f32 = u_xlat67;
        u_xlat67 = ((x_1243 * x_1244) + x_1246);
        let x_1249 : vec4<f32> = u_xlat9;
        let x_1250 : vec2<f32> = vec2<f32>(x_1249.x, x_1249.y);
        let x_1252 : f32 = vs_TEXCOORD8.z;
        txVec11 = vec3<f32>(x_1250.x, x_1250.y, x_1252);
        let x_1259 : vec3<f32> = txVec11;
        let x_1261 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1259.xy, x_1259.z);
        u_xlat68 = x_1261;
        let x_1263 : f32 = u_xlat15.w;
        let x_1264 : f32 = u_xlat68;
        let x_1266 : f32 = u_xlat67;
        u_xlat67 = ((x_1263 * x_1264) + x_1266);
        let x_1269 : vec4<f32> = u_xlat9;
        let x_1270 : vec2<f32> = vec2<f32>(x_1269.z, x_1269.w);
        let x_1272 : f32 = vs_TEXCOORD8.z;
        txVec12 = vec3<f32>(x_1270.x, x_1270.y, x_1272);
        let x_1279 : vec3<f32> = txVec12;
        let x_1281 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1279.xy, x_1279.z);
        u_xlat68 = x_1281;
        let x_1283 : f32 = u_xlat46.x;
        let x_1284 : f32 = u_xlat68;
        let x_1286 : f32 = u_xlat67;
        u_xlat4.x = ((x_1283 * x_1284) + x_1286);
      } else {
        let x_1290 : vec4<f32> = vs_TEXCOORD8;
        let x_1293 : vec4<f32> = x_740.x_MainLightShadowmapSize;
        u_xlat46 = ((vec2<f32>(x_1290.x, x_1290.y) * vec2<f32>(x_1293.z, x_1293.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1297 : vec2<f32> = u_xlat46;
        u_xlat46 = floor(x_1297);
        let x_1299 : vec4<f32> = vs_TEXCOORD8;
        let x_1302 : vec4<f32> = x_740.x_MainLightShadowmapSize;
        let x_1305 : vec2<f32> = u_xlat46;
        let x_1307 : vec2<f32> = ((vec2<f32>(x_1299.x, x_1299.y) * vec2<f32>(x_1302.z, x_1302.w)) + -(x_1305));
        let x_1308 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1307.x, x_1307.y, x_1308.z, x_1308.w);
        let x_1310 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1310.x, x_1310.x, x_1310.y, x_1310.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1313 : vec4<f32> = u_xlat8;
        let x_1315 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1313.x, x_1313.x, x_1313.z, x_1313.z) * vec4<f32>(x_1315.x, x_1315.x, x_1315.z, x_1315.z));
        let x_1318 : vec4<f32> = u_xlat9;
        let x_1322 : vec2<f32> = (vec2<f32>(x_1318.y, x_1318.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1323 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1323.x, x_1322.x, x_1323.z, x_1322.y);
        let x_1325 : vec4<f32> = u_xlat9;
        let x_1328 : vec4<f32> = u_xlat7;
        u_xlat49 = ((vec2<f32>(x_1325.x, x_1325.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_1328.x, x_1328.y)));
        let x_1332 : vec4<f32> = u_xlat7;
        let x_1335 : vec2<f32> = (-(vec2<f32>(x_1332.x, x_1332.y)) + vec2<f32>(1.0f, 1.0f));
        let x_1336 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1335.x, x_1336.y, x_1335.y, x_1336.w);
        let x_1338 : vec4<f32> = u_xlat7;
        let x_1340 : vec2<f32> = min(vec2<f32>(x_1338.x, x_1338.y), vec2<f32>(0.0f, 0.0f));
        let x_1341 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1340.x, x_1340.y, x_1341.z, x_1341.w);
        let x_1343 : vec4<f32> = u_xlat9;
        let x_1346 : vec4<f32> = u_xlat9;
        let x_1349 : vec4<f32> = u_xlat8;
        let x_1351 : vec2<f32> = ((-(vec2<f32>(x_1343.x, x_1343.y)) * vec2<f32>(x_1346.x, x_1346.y)) + vec2<f32>(x_1349.x, x_1349.z));
        let x_1352 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1351.x, x_1352.y, x_1351.y, x_1352.w);
        let x_1354 : vec4<f32> = u_xlat7;
        let x_1356 : vec2<f32> = max(vec2<f32>(x_1354.x, x_1354.y), vec2<f32>(0.0f, 0.0f));
        let x_1357 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1356.x, x_1356.y, x_1357.z, x_1357.w);
        let x_1359 : vec4<f32> = u_xlat9;
        let x_1362 : vec4<f32> = u_xlat9;
        let x_1365 : vec4<f32> = u_xlat8;
        let x_1367 : vec2<f32> = ((-(vec2<f32>(x_1359.x, x_1359.y)) * vec2<f32>(x_1362.x, x_1362.y)) + vec2<f32>(x_1365.y, x_1365.w));
        let x_1368 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1368.x, x_1367.x, x_1368.z, x_1367.y);
        let x_1370 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1370 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_1374 : f32 = u_xlat8.y;
        u_xlat9.z = (x_1374 * 0.081632003f);
        let x_1378 : vec2<f32> = u_xlat49;
        let x_1381 : vec2<f32> = (vec2<f32>(x_1378.y, x_1378.x) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1382 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1381.x, x_1381.y, x_1382.z, x_1382.w);
        let x_1384 : vec4<f32> = u_xlat8;
        u_xlat49 = (vec2<f32>(x_1384.x, x_1384.z) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1388 : f32 = u_xlat8.w;
        u_xlat11.z = (x_1388 * 0.081632003f);
        let x_1392 : f32 = u_xlat11.y;
        u_xlat9.x = x_1392;
        let x_1394 : vec4<f32> = u_xlat7;
        let x_1401 : vec2<f32> = ((vec2<f32>(x_1394.x, x_1394.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1402 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1402.x, x_1401.x, x_1402.z, x_1401.y);
        let x_1404 : vec4<f32> = u_xlat7;
        let x_1408 : vec2<f32> = ((vec2<f32>(x_1404.x, x_1404.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1409 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1408.x, x_1409.y, x_1408.y, x_1409.w);
        let x_1412 : f32 = u_xlat49.x;
        u_xlat8.y = x_1412;
        let x_1415 : f32 = u_xlat10.y;
        u_xlat8.w = x_1415;
        let x_1417 : vec4<f32> = u_xlat8;
        let x_1418 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1417 + x_1418);
        let x_1420 : vec4<f32> = u_xlat7;
        let x_1423 : vec2<f32> = ((vec2<f32>(x_1420.y, x_1420.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1424 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1424.x, x_1423.x, x_1424.z, x_1423.y);
        let x_1426 : vec4<f32> = u_xlat7;
        let x_1429 : vec2<f32> = ((vec2<f32>(x_1426.y, x_1426.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1430 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1429.x, x_1430.y, x_1429.y, x_1430.w);
        let x_1433 : f32 = u_xlat49.y;
        u_xlat10.y = x_1433;
        let x_1435 : vec4<f32> = u_xlat10;
        let x_1436 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1435 + x_1436);
        let x_1438 : vec4<f32> = u_xlat8;
        let x_1439 : vec4<f32> = u_xlat9;
        u_xlat8 = (x_1438 / x_1439);
        let x_1441 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1441 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1447 : vec4<f32> = u_xlat10;
        let x_1448 : vec4<f32> = u_xlat7;
        u_xlat10 = (x_1447 / x_1448);
        let x_1450 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1450 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1452 : vec4<f32> = u_xlat8;
        let x_1455 : vec4<f32> = x_740.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1452.w, x_1452.x, x_1452.y, x_1452.z) * vec4<f32>(x_1455.x, x_1455.x, x_1455.x, x_1455.x));
        let x_1458 : vec4<f32> = u_xlat10;
        let x_1461 : vec4<f32> = x_740.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1458.x, x_1458.w, x_1458.y, x_1458.z) * vec4<f32>(x_1461.y, x_1461.y, x_1461.y, x_1461.y));
        let x_1464 : vec4<f32> = u_xlat8;
        let x_1465 : vec3<f32> = vec3<f32>(x_1464.y, x_1464.z, x_1464.w);
        let x_1466 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1465.x, x_1466.y, x_1465.y, x_1465.z);
        let x_1469 : f32 = u_xlat10.x;
        u_xlat11.y = x_1469;
        let x_1471 : vec2<f32> = u_xlat46;
        let x_1474 : vec4<f32> = x_740.x_MainLightShadowmapSize;
        let x_1477 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1471.x, x_1471.y, x_1471.x, x_1471.y) * vec4<f32>(x_1474.x, x_1474.y, x_1474.x, x_1474.y)) + vec4<f32>(x_1477.x, x_1477.y, x_1477.z, x_1477.y));
        let x_1480 : vec2<f32> = u_xlat46;
        let x_1482 : vec4<f32> = x_740.x_MainLightShadowmapSize;
        let x_1485 : vec4<f32> = u_xlat11;
        let x_1487 : vec2<f32> = ((x_1480 * vec2<f32>(x_1482.x, x_1482.y)) + vec2<f32>(x_1485.w, x_1485.y));
        let x_1488 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1487.x, x_1487.y, x_1488.z, x_1488.w);
        let x_1491 : f32 = u_xlat11.y;
        u_xlat8.y = x_1491;
        let x_1494 : f32 = u_xlat10.z;
        u_xlat11.y = x_1494;
        let x_1496 : vec2<f32> = u_xlat46;
        let x_1499 : vec4<f32> = x_740.x_MainLightShadowmapSize;
        let x_1502 : vec4<f32> = u_xlat11;
        u_xlat14 = ((vec4<f32>(x_1496.x, x_1496.y, x_1496.x, x_1496.y) * vec4<f32>(x_1499.x, x_1499.y, x_1499.x, x_1499.y)) + vec4<f32>(x_1502.x, x_1502.y, x_1502.z, x_1502.y));
        let x_1506 : vec2<f32> = u_xlat46;
        let x_1508 : vec4<f32> = x_740.x_MainLightShadowmapSize;
        let x_1511 : vec4<f32> = u_xlat11;
        u_xlat55 = ((x_1506 * vec2<f32>(x_1508.x, x_1508.y)) + vec2<f32>(x_1511.w, x_1511.y));
        let x_1515 : f32 = u_xlat11.y;
        u_xlat8.z = x_1515;
        let x_1517 : vec2<f32> = u_xlat46;
        let x_1520 : vec4<f32> = x_740.x_MainLightShadowmapSize;
        let x_1523 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1517.x, x_1517.y, x_1517.x, x_1517.y) * vec4<f32>(x_1520.x, x_1520.y, x_1520.x, x_1520.y)) + vec4<f32>(x_1523.x, x_1523.y, x_1523.x, x_1523.z));
        let x_1527 : f32 = u_xlat10.w;
        u_xlat11.y = x_1527;
        let x_1530 : vec2<f32> = u_xlat46;
        let x_1533 : vec4<f32> = x_740.x_MainLightShadowmapSize;
        let x_1536 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1530.x, x_1530.y, x_1530.x, x_1530.y) * vec4<f32>(x_1533.x, x_1533.y, x_1533.x, x_1533.y)) + vec4<f32>(x_1536.x, x_1536.y, x_1536.z, x_1536.y));
        let x_1540 : vec2<f32> = u_xlat46;
        let x_1542 : vec4<f32> = x_740.x_MainLightShadowmapSize;
        let x_1545 : vec4<f32> = u_xlat11;
        u_xlat29 = ((x_1540 * vec2<f32>(x_1542.x, x_1542.y)) + vec2<f32>(x_1545.w, x_1545.y));
        let x_1549 : f32 = u_xlat11.y;
        u_xlat8.w = x_1549;
        let x_1552 : vec2<f32> = u_xlat46;
        let x_1554 : vec4<f32> = x_740.x_MainLightShadowmapSize;
        let x_1557 : vec4<f32> = u_xlat8;
        u_xlat17 = ((x_1552 * vec2<f32>(x_1554.x, x_1554.y)) + vec2<f32>(x_1557.x, x_1557.w));
        let x_1560 : vec4<f32> = u_xlat11;
        let x_1561 : vec3<f32> = vec3<f32>(x_1560.x, x_1560.z, x_1560.w);
        let x_1562 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1561.x, x_1562.y, x_1561.y, x_1561.z);
        let x_1564 : vec2<f32> = u_xlat46;
        let x_1567 : vec4<f32> = x_740.x_MainLightShadowmapSize;
        let x_1570 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1564.x, x_1564.y, x_1564.x, x_1564.y) * vec4<f32>(x_1567.x, x_1567.y, x_1567.x, x_1567.y)) + vec4<f32>(x_1570.x, x_1570.y, x_1570.z, x_1570.y));
        let x_1574 : vec2<f32> = u_xlat46;
        let x_1576 : vec4<f32> = x_740.x_MainLightShadowmapSize;
        let x_1579 : vec4<f32> = u_xlat10;
        u_xlat52 = ((x_1574 * vec2<f32>(x_1576.x, x_1576.y)) + vec2<f32>(x_1579.w, x_1579.y));
        let x_1583 : f32 = u_xlat8.x;
        u_xlat10.x = x_1583;
        let x_1585 : vec2<f32> = u_xlat46;
        let x_1587 : vec4<f32> = x_740.x_MainLightShadowmapSize;
        let x_1590 : vec4<f32> = u_xlat10;
        u_xlat46 = ((x_1585 * vec2<f32>(x_1587.x, x_1587.y)) + vec2<f32>(x_1590.x, x_1590.y));
        let x_1594 : vec4<f32> = u_xlat7;
        let x_1596 : vec4<f32> = u_xlat9;
        u_xlat18 = (vec4<f32>(x_1594.x, x_1594.x, x_1594.x, x_1594.x) * x_1596);
        let x_1599 : vec4<f32> = u_xlat7;
        let x_1601 : vec4<f32> = u_xlat9;
        u_xlat19 = (vec4<f32>(x_1599.y, x_1599.y, x_1599.y, x_1599.y) * x_1601);
        let x_1604 : vec4<f32> = u_xlat7;
        let x_1606 : vec4<f32> = u_xlat9;
        u_xlat20 = (vec4<f32>(x_1604.z, x_1604.z, x_1604.z, x_1604.z) * x_1606);
        let x_1608 : vec4<f32> = u_xlat7;
        let x_1610 : vec4<f32> = u_xlat9;
        u_xlat7 = (vec4<f32>(x_1608.w, x_1608.w, x_1608.w, x_1608.w) * x_1610);
        let x_1613 : vec4<f32> = u_xlat12;
        let x_1614 : vec2<f32> = vec2<f32>(x_1613.x, x_1613.y);
        let x_1616 : f32 = vs_TEXCOORD8.z;
        txVec13 = vec3<f32>(x_1614.x, x_1614.y, x_1616);
        let x_1623 : vec3<f32> = txVec13;
        let x_1625 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1623.xy, x_1623.z);
        u_xlat68 = x_1625;
        let x_1627 : vec4<f32> = u_xlat12;
        let x_1628 : vec2<f32> = vec2<f32>(x_1627.z, x_1627.w);
        let x_1630 : f32 = vs_TEXCOORD8.z;
        txVec14 = vec3<f32>(x_1628.x, x_1628.y, x_1630);
        let x_1638 : vec3<f32> = txVec14;
        let x_1640 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1638.xy, x_1638.z);
        u_xlat69 = x_1640;
        let x_1641 : f32 = u_xlat69;
        let x_1643 : f32 = u_xlat18.y;
        u_xlat69 = (x_1641 * x_1643);
        let x_1646 : f32 = u_xlat18.x;
        let x_1647 : f32 = u_xlat68;
        let x_1649 : f32 = u_xlat69;
        u_xlat68 = ((x_1646 * x_1647) + x_1649);
        let x_1652 : vec4<f32> = u_xlat13;
        let x_1653 : vec2<f32> = vec2<f32>(x_1652.x, x_1652.y);
        let x_1655 : f32 = vs_TEXCOORD8.z;
        txVec15 = vec3<f32>(x_1653.x, x_1653.y, x_1655);
        let x_1662 : vec3<f32> = txVec15;
        let x_1664 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1662.xy, x_1662.z);
        u_xlat69 = x_1664;
        let x_1666 : f32 = u_xlat18.z;
        let x_1667 : f32 = u_xlat69;
        let x_1669 : f32 = u_xlat68;
        u_xlat68 = ((x_1666 * x_1667) + x_1669);
        let x_1672 : vec4<f32> = u_xlat15;
        let x_1673 : vec2<f32> = vec2<f32>(x_1672.x, x_1672.y);
        let x_1675 : f32 = vs_TEXCOORD8.z;
        txVec16 = vec3<f32>(x_1673.x, x_1673.y, x_1675);
        let x_1682 : vec3<f32> = txVec16;
        let x_1684 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1682.xy, x_1682.z);
        u_xlat69 = x_1684;
        let x_1686 : f32 = u_xlat18.w;
        let x_1687 : f32 = u_xlat69;
        let x_1689 : f32 = u_xlat68;
        u_xlat68 = ((x_1686 * x_1687) + x_1689);
        let x_1692 : vec4<f32> = u_xlat14;
        let x_1693 : vec2<f32> = vec2<f32>(x_1692.x, x_1692.y);
        let x_1695 : f32 = vs_TEXCOORD8.z;
        txVec17 = vec3<f32>(x_1693.x, x_1693.y, x_1695);
        let x_1702 : vec3<f32> = txVec17;
        let x_1704 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1702.xy, x_1702.z);
        u_xlat69 = x_1704;
        let x_1706 : f32 = u_xlat19.x;
        let x_1707 : f32 = u_xlat69;
        let x_1709 : f32 = u_xlat68;
        u_xlat68 = ((x_1706 * x_1707) + x_1709);
        let x_1712 : vec4<f32> = u_xlat14;
        let x_1713 : vec2<f32> = vec2<f32>(x_1712.z, x_1712.w);
        let x_1715 : f32 = vs_TEXCOORD8.z;
        txVec18 = vec3<f32>(x_1713.x, x_1713.y, x_1715);
        let x_1722 : vec3<f32> = txVec18;
        let x_1724 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1722.xy, x_1722.z);
        u_xlat69 = x_1724;
        let x_1726 : f32 = u_xlat19.y;
        let x_1727 : f32 = u_xlat69;
        let x_1729 : f32 = u_xlat68;
        u_xlat68 = ((x_1726 * x_1727) + x_1729);
        let x_1732 : vec2<f32> = u_xlat55;
        let x_1734 : f32 = vs_TEXCOORD8.z;
        txVec19 = vec3<f32>(x_1732.x, x_1732.y, x_1734);
        let x_1741 : vec3<f32> = txVec19;
        let x_1743 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1741.xy, x_1741.z);
        u_xlat69 = x_1743;
        let x_1745 : f32 = u_xlat19.z;
        let x_1746 : f32 = u_xlat69;
        let x_1748 : f32 = u_xlat68;
        u_xlat68 = ((x_1745 * x_1746) + x_1748);
        let x_1751 : vec4<f32> = u_xlat15;
        let x_1752 : vec2<f32> = vec2<f32>(x_1751.z, x_1751.w);
        let x_1754 : f32 = vs_TEXCOORD8.z;
        txVec20 = vec3<f32>(x_1752.x, x_1752.y, x_1754);
        let x_1761 : vec3<f32> = txVec20;
        let x_1763 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1761.xy, x_1761.z);
        u_xlat69 = x_1763;
        let x_1765 : f32 = u_xlat19.w;
        let x_1766 : f32 = u_xlat69;
        let x_1768 : f32 = u_xlat68;
        u_xlat68 = ((x_1765 * x_1766) + x_1768);
        let x_1771 : vec4<f32> = u_xlat16;
        let x_1772 : vec2<f32> = vec2<f32>(x_1771.x, x_1771.y);
        let x_1774 : f32 = vs_TEXCOORD8.z;
        txVec21 = vec3<f32>(x_1772.x, x_1772.y, x_1774);
        let x_1781 : vec3<f32> = txVec21;
        let x_1783 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1781.xy, x_1781.z);
        u_xlat69 = x_1783;
        let x_1785 : f32 = u_xlat20.x;
        let x_1786 : f32 = u_xlat69;
        let x_1788 : f32 = u_xlat68;
        u_xlat68 = ((x_1785 * x_1786) + x_1788);
        let x_1791 : vec4<f32> = u_xlat16;
        let x_1792 : vec2<f32> = vec2<f32>(x_1791.z, x_1791.w);
        let x_1794 : f32 = vs_TEXCOORD8.z;
        txVec22 = vec3<f32>(x_1792.x, x_1792.y, x_1794);
        let x_1801 : vec3<f32> = txVec22;
        let x_1803 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1801.xy, x_1801.z);
        u_xlat69 = x_1803;
        let x_1805 : f32 = u_xlat20.y;
        let x_1806 : f32 = u_xlat69;
        let x_1808 : f32 = u_xlat68;
        u_xlat68 = ((x_1805 * x_1806) + x_1808);
        let x_1811 : vec2<f32> = u_xlat29;
        let x_1813 : f32 = vs_TEXCOORD8.z;
        txVec23 = vec3<f32>(x_1811.x, x_1811.y, x_1813);
        let x_1820 : vec3<f32> = txVec23;
        let x_1822 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1820.xy, x_1820.z);
        u_xlat69 = x_1822;
        let x_1824 : f32 = u_xlat20.z;
        let x_1825 : f32 = u_xlat69;
        let x_1827 : f32 = u_xlat68;
        u_xlat68 = ((x_1824 * x_1825) + x_1827);
        let x_1830 : vec2<f32> = u_xlat17;
        let x_1832 : f32 = vs_TEXCOORD8.z;
        txVec24 = vec3<f32>(x_1830.x, x_1830.y, x_1832);
        let x_1839 : vec3<f32> = txVec24;
        let x_1841 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1839.xy, x_1839.z);
        u_xlat69 = x_1841;
        let x_1843 : f32 = u_xlat20.w;
        let x_1844 : f32 = u_xlat69;
        let x_1846 : f32 = u_xlat68;
        u_xlat68 = ((x_1843 * x_1844) + x_1846);
        let x_1849 : vec4<f32> = u_xlat11;
        let x_1850 : vec2<f32> = vec2<f32>(x_1849.x, x_1849.y);
        let x_1852 : f32 = vs_TEXCOORD8.z;
        txVec25 = vec3<f32>(x_1850.x, x_1850.y, x_1852);
        let x_1859 : vec3<f32> = txVec25;
        let x_1861 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1859.xy, x_1859.z);
        u_xlat69 = x_1861;
        let x_1863 : f32 = u_xlat7.x;
        let x_1864 : f32 = u_xlat69;
        let x_1866 : f32 = u_xlat68;
        u_xlat68 = ((x_1863 * x_1864) + x_1866);
        let x_1869 : vec4<f32> = u_xlat11;
        let x_1870 : vec2<f32> = vec2<f32>(x_1869.z, x_1869.w);
        let x_1872 : f32 = vs_TEXCOORD8.z;
        txVec26 = vec3<f32>(x_1870.x, x_1870.y, x_1872);
        let x_1879 : vec3<f32> = txVec26;
        let x_1881 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1879.xy, x_1879.z);
        u_xlat69 = x_1881;
        let x_1883 : f32 = u_xlat7.y;
        let x_1884 : f32 = u_xlat69;
        let x_1886 : f32 = u_xlat68;
        u_xlat68 = ((x_1883 * x_1884) + x_1886);
        let x_1889 : vec2<f32> = u_xlat52;
        let x_1891 : f32 = vs_TEXCOORD8.z;
        txVec27 = vec3<f32>(x_1889.x, x_1889.y, x_1891);
        let x_1898 : vec3<f32> = txVec27;
        let x_1900 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1898.xy, x_1898.z);
        u_xlat69 = x_1900;
        let x_1902 : f32 = u_xlat7.z;
        let x_1903 : f32 = u_xlat69;
        let x_1905 : f32 = u_xlat68;
        u_xlat68 = ((x_1902 * x_1903) + x_1905);
        let x_1908 : vec2<f32> = u_xlat46;
        let x_1910 : f32 = vs_TEXCOORD8.z;
        txVec28 = vec3<f32>(x_1908.x, x_1908.y, x_1910);
        let x_1917 : vec3<f32> = txVec28;
        let x_1919 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1917.xy, x_1917.z);
        u_xlat46.x = x_1919;
        let x_1922 : f32 = u_xlat7.w;
        let x_1924 : f32 = u_xlat46.x;
        let x_1926 : f32 = u_xlat68;
        u_xlat4.x = ((x_1922 * x_1924) + x_1926);
      }
    }
  } else {
    let x_1931 : vec4<f32> = vs_TEXCOORD8;
    let x_1932 : vec2<f32> = vec2<f32>(x_1931.x, x_1931.y);
    let x_1934 : f32 = vs_TEXCOORD8.z;
    txVec29 = vec3<f32>(x_1932.x, x_1932.y, x_1934);
    let x_1941 : vec3<f32> = txVec29;
    let x_1943 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1941.xy, x_1941.z);
    u_xlat4.x = x_1943;
  }
  let x_1946 : f32 = x_740.x_MainLightShadowParams.x;
  u_xlat46.x = (-(x_1946) + 1.0f);
  let x_1951 : f32 = u_xlat4.x;
  let x_1953 : f32 = x_740.x_MainLightShadowParams.x;
  let x_1956 : f32 = u_xlat46.x;
  u_xlat4.x = ((x_1951 * x_1953) + x_1956);
  let x_1960 : f32 = vs_TEXCOORD8.z;
  u_xlatb46 = (0.0f >= x_1960);
  let x_1964 : f32 = vs_TEXCOORD8.z;
  u_xlatb67 = (x_1964 >= 1.0f);
  let x_1966 : bool = u_xlatb67;
  let x_1967 : bool = u_xlatb46;
  u_xlatb46 = (x_1966 | x_1967);
  let x_1969 : bool = u_xlatb46;
  if (x_1969) {
    x_1970 = 1.0f;
  } else {
    let x_1975 : f32 = u_xlat4.x;
    x_1970 = x_1975;
  }
  let x_1976 : f32 = x_1970;
  u_xlat4.x = x_1976;
  let x_1978 : vec3<f32> = vs_TEXCOORD7;
  let x_1980 : vec3<f32> = x_126.x_WorldSpaceCameraPos;
  let x_1982 : vec3<f32> = (x_1978 + -(x_1980));
  let x_1983 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1982.x, x_1982.y, x_1982.z, x_1983.w);
  let x_1985 : vec4<f32> = u_xlat7;
  let x_1987 : vec4<f32> = u_xlat7;
  u_xlat46.x = dot(vec3<f32>(x_1985.x, x_1985.y, x_1985.z), vec3<f32>(x_1987.x, x_1987.y, x_1987.z));
  let x_1992 : f32 = u_xlat46.x;
  let x_1994 : f32 = x_740.x_MainLightShadowParams.z;
  let x_1997 : f32 = x_740.x_MainLightShadowParams.w;
  u_xlat46.x = ((x_1992 * x_1994) + x_1997);
  let x_2001 : f32 = u_xlat46.x;
  u_xlat46.x = clamp(x_2001, 0.0f, 1.0f);
  let x_2005 : f32 = u_xlat4.x;
  u_xlat67 = (-(x_2005) + 1.0f);
  let x_2009 : f32 = u_xlat46.x;
  let x_2010 : f32 = u_xlat67;
  let x_2013 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_2009 * x_2010) + x_2013);
  let x_2016 : f32 = u_xlat25;
  let x_2020 : vec4<f32> = x_126.x_MainLightColor;
  let x_2022 : vec3<f32> = (vec3<f32>(x_2016, x_2016, x_2016) * vec3<f32>(x_2020.x, x_2020.y, x_2020.z));
  let x_2023 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2022.x, x_2022.y, x_2022.z, x_2023.w);
  let x_2025 : vec3<f32> = u_xlat2;
  let x_2027 : vec4<f32> = u_xlat1;
  u_xlat46.x = dot(-(x_2025), vec3<f32>(x_2027.x, x_2027.y, x_2027.z));
  let x_2032 : f32 = u_xlat46.x;
  let x_2034 : f32 = u_xlat46.x;
  u_xlat46.x = (x_2032 + x_2034);
  let x_2037 : vec4<f32> = u_xlat1;
  let x_2039 : vec2<f32> = u_xlat46;
  let x_2043 : vec3<f32> = u_xlat2;
  let x_2045 : vec3<f32> = ((vec3<f32>(x_2037.x, x_2037.y, x_2037.z) * -(vec3<f32>(x_2039.x, x_2039.x, x_2039.x))) + -(x_2043));
  let x_2046 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2045.x, x_2045.y, x_2045.z, x_2046.w);
  let x_2048 : vec4<f32> = u_xlat1;
  let x_2050 : vec3<f32> = u_xlat2;
  u_xlat46.x = dot(vec3<f32>(x_2048.x, x_2048.y, x_2048.z), x_2050);
  let x_2054 : f32 = u_xlat46.x;
  u_xlat46.x = clamp(x_2054, 0.0f, 1.0f);
  let x_2058 : f32 = u_xlat46.x;
  u_xlat46.x = (-(x_2058) + 1.0f);
  let x_2063 : f32 = u_xlat46.x;
  let x_2065 : f32 = u_xlat46.x;
  u_xlat46.x = (x_2063 * x_2065);
  let x_2069 : f32 = u_xlat46.x;
  let x_2071 : f32 = u_xlat46.x;
  u_xlat46.x = (x_2069 * x_2071);
  let x_2075 : f32 = u_xlat0.x;
  u_xlat67 = ((-(x_2075) * 0.699999988f) + 1.700000048f);
  let x_2082 : f32 = u_xlat0.x;
  let x_2083 : f32 = u_xlat67;
  u_xlat0.x = (x_2082 * x_2083);
  let x_2087 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2087 * 6.0f);
  let x_2099 : vec4<f32> = u_xlat8;
  let x_2102 : f32 = u_xlat0.x;
  let x_2103 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2099.x, x_2099.y, x_2099.z), x_2102);
  u_xlat8 = x_2103;
  let x_2105 : f32 = u_xlat8.w;
  u_xlat0.x = (x_2105 + -1.0f);
  let x_2113 : f32 = x_2111.unity_SpecCube0_HDR.w;
  let x_2115 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_2113 * x_2115) + 1.0f);
  let x_2120 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2120, 0.0f);
  let x_2124 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_2124);
  let x_2128 : f32 = u_xlat0.x;
  let x_2130 : f32 = x_2111.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_2128 * x_2130);
  let x_2134 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_2134);
  let x_2138 : f32 = u_xlat0.x;
  let x_2140 : f32 = x_2111.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_2138 * x_2140);
  let x_2143 : vec4<f32> = u_xlat8;
  let x_2145 : vec3<f32> = u_xlat0;
  let x_2147 : vec3<f32> = (vec3<f32>(x_2143.x, x_2143.y, x_2143.z) * vec3<f32>(x_2145.x, x_2145.x, x_2145.x));
  let x_2148 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2147.x, x_2147.y, x_2147.z, x_2148.w);
  let x_2150 : f32 = u_xlat42;
  let x_2152 : f32 = u_xlat42;
  let x_2156 : vec2<f32> = ((vec2<f32>(x_2150, x_2150) * vec2<f32>(x_2152, x_2152)) + vec2<f32>(-1.0f, 1.0f));
  let x_2157 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_2156.x, x_2157.y, x_2156.y);
  let x_2160 : f32 = u_xlat0.z;
  u_xlat42 = (1.0f / x_2160);
  let x_2162 : vec4<f32> = u_xlat5;
  let x_2165 : f32 = u_xlat65;
  let x_2167 : vec3<f32> = (-(vec3<f32>(x_2162.x, x_2162.y, x_2162.z)) + vec3<f32>(x_2165, x_2165, x_2165));
  let x_2168 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2167.x, x_2167.y, x_2167.z, x_2168.w);
  let x_2170 : vec2<f32> = u_xlat46;
  let x_2172 : vec4<f32> = u_xlat9;
  let x_2175 : vec4<f32> = u_xlat5;
  let x_2177 : vec3<f32> = ((vec3<f32>(x_2170.x, x_2170.x, x_2170.x) * vec3<f32>(x_2172.x, x_2172.y, x_2172.z)) + vec3<f32>(x_2175.x, x_2175.y, x_2175.z));
  let x_2178 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2177.x, x_2177.y, x_2177.z, x_2178.w);
  let x_2180 : f32 = u_xlat42;
  let x_2182 : vec4<f32> = u_xlat9;
  let x_2184 : vec3<f32> = (vec3<f32>(x_2180, x_2180, x_2180) * vec3<f32>(x_2182.x, x_2182.y, x_2182.z));
  let x_2185 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2184.x, x_2184.y, x_2184.z, x_2185.w);
  let x_2187 : vec4<f32> = u_xlat8;
  let x_2189 : vec4<f32> = u_xlat9;
  let x_2191 : vec3<f32> = (vec3<f32>(x_2187.x, x_2187.y, x_2187.z) * vec3<f32>(x_2189.x, x_2189.y, x_2189.z));
  let x_2192 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2191.x, x_2191.y, x_2191.z, x_2192.w);
  let x_2194 : vec4<f32> = u_xlat3;
  let x_2196 : vec4<f32> = u_xlat6;
  let x_2199 : vec4<f32> = u_xlat8;
  let x_2201 : vec3<f32> = ((vec3<f32>(x_2194.x, x_2194.y, x_2194.z) * vec3<f32>(x_2196.x, x_2196.y, x_2196.z)) + vec3<f32>(x_2199.x, x_2199.y, x_2199.z));
  let x_2202 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2201.x, x_2201.y, x_2201.z, x_2202.w);
  let x_2205 : f32 = u_xlat4.x;
  let x_2207 : f32 = x_2111.unity_LightData.z;
  u_xlat42 = (x_2205 * x_2207);
  let x_2209 : vec4<f32> = u_xlat1;
  let x_2212 : vec4<f32> = x_126.x_MainLightPosition;
  u_xlat65 = dot(vec3<f32>(x_2209.x, x_2209.y, x_2209.z), vec3<f32>(x_2212.x, x_2212.y, x_2212.z));
  let x_2215 : f32 = u_xlat65;
  u_xlat65 = clamp(x_2215, 0.0f, 1.0f);
  let x_2217 : f32 = u_xlat42;
  let x_2218 : f32 = u_xlat65;
  u_xlat42 = (x_2217 * x_2218);
  let x_2220 : f32 = u_xlat42;
  let x_2222 : vec4<f32> = u_xlat7;
  let x_2224 : vec3<f32> = (vec3<f32>(x_2220, x_2220, x_2220) * vec3<f32>(x_2222.x, x_2222.y, x_2222.z));
  let x_2225 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2224.x, x_2225.y, x_2224.y, x_2224.z);
  let x_2227 : vec3<f32> = u_xlat2;
  let x_2229 : vec4<f32> = x_126.x_MainLightPosition;
  let x_2231 : vec3<f32> = (x_2227 + vec3<f32>(x_2229.x, x_2229.y, x_2229.z));
  let x_2232 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2231.x, x_2231.y, x_2231.z, x_2232.w);
  let x_2234 : vec4<f32> = u_xlat7;
  let x_2236 : vec4<f32> = u_xlat7;
  u_xlat42 = dot(vec3<f32>(x_2234.x, x_2234.y, x_2234.z), vec3<f32>(x_2236.x, x_2236.y, x_2236.z));
  let x_2239 : f32 = u_xlat42;
  u_xlat42 = max(x_2239, 1.17549435e-37f);
  let x_2242 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_2242);
  let x_2244 : f32 = u_xlat42;
  let x_2246 : vec4<f32> = u_xlat7;
  let x_2248 : vec3<f32> = (vec3<f32>(x_2244, x_2244, x_2244) * vec3<f32>(x_2246.x, x_2246.y, x_2246.z));
  let x_2249 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2248.x, x_2248.y, x_2248.z, x_2249.w);
  let x_2251 : vec4<f32> = u_xlat1;
  let x_2253 : vec4<f32> = u_xlat7;
  u_xlat42 = dot(vec3<f32>(x_2251.x, x_2251.y, x_2251.z), vec3<f32>(x_2253.x, x_2253.y, x_2253.z));
  let x_2256 : f32 = u_xlat42;
  u_xlat42 = clamp(x_2256, 0.0f, 1.0f);
  let x_2259 : vec4<f32> = x_126.x_MainLightPosition;
  let x_2261 : vec4<f32> = u_xlat7;
  u_xlat65 = dot(vec3<f32>(x_2259.x, x_2259.y, x_2259.z), vec3<f32>(x_2261.x, x_2261.y, x_2261.z));
  let x_2264 : f32 = u_xlat65;
  u_xlat65 = clamp(x_2264, 0.0f, 1.0f);
  let x_2266 : f32 = u_xlat42;
  let x_2267 : f32 = u_xlat42;
  u_xlat42 = (x_2266 * x_2267);
  let x_2269 : f32 = u_xlat42;
  let x_2271 : f32 = u_xlat0.x;
  u_xlat42 = ((x_2269 * x_2271) + 1.000010014f);
  let x_2275 : f32 = u_xlat65;
  let x_2276 : f32 = u_xlat65;
  u_xlat65 = (x_2275 * x_2276);
  let x_2278 : f32 = u_xlat42;
  let x_2279 : f32 = u_xlat42;
  u_xlat42 = (x_2278 * x_2279);
  let x_2281 : f32 = u_xlat65;
  u_xlat65 = max(x_2281, 0.100000001f);
  let x_2284 : f32 = u_xlat42;
  let x_2285 : f32 = u_xlat65;
  u_xlat42 = (x_2284 * x_2285);
  let x_2287 : f32 = u_xlat66;
  let x_2288 : f32 = u_xlat42;
  u_xlat42 = (x_2287 * x_2288);
  let x_2290 : f32 = u_xlat64;
  let x_2291 : f32 = u_xlat42;
  u_xlat42 = (x_2290 / x_2291);
  let x_2293 : vec4<f32> = u_xlat5;
  let x_2295 : f32 = u_xlat42;
  let x_2298 : vec4<f32> = u_xlat6;
  let x_2300 : vec3<f32> = ((vec3<f32>(x_2293.x, x_2293.y, x_2293.z) * vec3<f32>(x_2295, x_2295, x_2295)) + vec3<f32>(x_2298.x, x_2298.y, x_2298.z));
  let x_2301 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2300.x, x_2300.y, x_2300.z, x_2301.w);
  let x_2303 : vec4<f32> = u_xlat4;
  let x_2305 : vec4<f32> = u_xlat7;
  let x_2307 : vec3<f32> = (vec3<f32>(x_2303.x, x_2303.z, x_2303.w) * vec3<f32>(x_2305.x, x_2305.y, x_2305.z));
  let x_2308 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2307.x, x_2308.y, x_2307.y, x_2307.z);
  let x_2311 : f32 = x_126.x_AdditionalLightsCount.x;
  let x_2313 : f32 = x_2111.unity_LightData.y;
  u_xlat42 = min(x_2311, x_2313);
  let x_2317 : f32 = u_xlat42;
  u_xlatu42 = bitcast<u32>(i32(x_2317));
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2329 : u32 = u_xlatu_loop_1;
    let x_2330 : u32 = u_xlatu42;
    if ((x_2329 < x_2330)) {
    } else {
      break;
    }
    let x_2333 : u32 = u_xlatu_loop_1;
    u_xlatu68 = (x_2333 >> 2u);
    let x_2337 : u32 = u_xlatu_loop_1;
    u_xlati69 = bitcast<i32>((x_2337 & 3u));
    let x_2340 : u32 = u_xlatu68;
    let x_2343 : vec4<f32> = x_2111.unity_LightIndices[bitcast<i32>(x_2340)];
    let x_2353 : i32 = u_xlati69;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2358 : vec4<u32> = indexable[x_2353];
    u_xlat68 = dot(x_2343, bitcast<vec4<f32>>(x_2358));
    let x_2362 : f32 = u_xlat68;
    u_xlati68 = i32(x_2362);
    let x_2364 : vec3<f32> = vs_TEXCOORD7;
    let x_2376 : i32 = u_xlati68;
    let x_2378 : vec4<f32> = x_2375.x_AdditionalLightsPosition[x_2376];
    let x_2381 : i32 = u_xlati68;
    let x_2383 : vec4<f32> = x_2375.x_AdditionalLightsPosition[x_2381];
    let x_2385 : vec3<f32> = ((-(x_2364) * vec3<f32>(x_2378.w, x_2378.w, x_2378.w)) + vec3<f32>(x_2383.x, x_2383.y, x_2383.z));
    let x_2386 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2385.x, x_2385.y, x_2385.z, x_2386.w);
    let x_2388 : vec4<f32> = u_xlat8;
    let x_2390 : vec4<f32> = u_xlat8;
    u_xlat69 = dot(vec3<f32>(x_2388.x, x_2388.y, x_2388.z), vec3<f32>(x_2390.x, x_2390.y, x_2390.z));
    let x_2393 : f32 = u_xlat69;
    u_xlat69 = max(x_2393, 6.10351562e-05f);
    let x_2396 : f32 = u_xlat69;
    u_xlat70 = inverseSqrt(x_2396);
    let x_2398 : f32 = u_xlat70;
    let x_2400 : vec4<f32> = u_xlat8;
    let x_2402 : vec3<f32> = (vec3<f32>(x_2398, x_2398, x_2398) * vec3<f32>(x_2400.x, x_2400.y, x_2400.z));
    let x_2403 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2402.x, x_2402.y, x_2402.z, x_2403.w);
    let x_2406 : f32 = u_xlat69;
    u_xlat71 = (1.0f / x_2406);
    let x_2408 : f32 = u_xlat69;
    let x_2409 : i32 = u_xlati68;
    let x_2411 : f32 = x_2375.x_AdditionalLightsAttenuation[x_2409].x;
    u_xlat69 = (x_2408 * x_2411);
    let x_2413 : f32 = u_xlat69;
    let x_2415 : f32 = u_xlat69;
    u_xlat69 = ((-(x_2413) * x_2415) + 1.0f);
    let x_2418 : f32 = u_xlat69;
    u_xlat69 = max(x_2418, 0.0f);
    let x_2420 : f32 = u_xlat69;
    let x_2421 : f32 = u_xlat69;
    u_xlat69 = (x_2420 * x_2421);
    let x_2423 : f32 = u_xlat69;
    let x_2424 : f32 = u_xlat71;
    u_xlat69 = (x_2423 * x_2424);
    let x_2426 : i32 = u_xlati68;
    let x_2428 : vec4<f32> = x_2375.x_AdditionalLightsSpotDir[x_2426];
    let x_2430 : vec4<f32> = u_xlat9;
    u_xlat71 = dot(vec3<f32>(x_2428.x, x_2428.y, x_2428.z), vec3<f32>(x_2430.x, x_2430.y, x_2430.z));
    let x_2433 : f32 = u_xlat71;
    let x_2434 : i32 = u_xlati68;
    let x_2436 : f32 = x_2375.x_AdditionalLightsAttenuation[x_2434].z;
    let x_2438 : i32 = u_xlati68;
    let x_2440 : f32 = x_2375.x_AdditionalLightsAttenuation[x_2438].w;
    u_xlat71 = ((x_2433 * x_2436) + x_2440);
    let x_2442 : f32 = u_xlat71;
    u_xlat71 = clamp(x_2442, 0.0f, 1.0f);
    let x_2444 : f32 = u_xlat71;
    let x_2445 : f32 = u_xlat71;
    u_xlat71 = (x_2444 * x_2445);
    let x_2447 : f32 = u_xlat69;
    let x_2448 : f32 = u_xlat71;
    u_xlat69 = (x_2447 * x_2448);
    let x_2450 : f32 = u_xlat25;
    let x_2452 : i32 = u_xlati68;
    let x_2454 : vec4<f32> = x_2375.x_AdditionalLightsColor[x_2452];
    let x_2456 : vec3<f32> = (vec3<f32>(x_2450, x_2450, x_2450) * vec3<f32>(x_2454.x, x_2454.y, x_2454.z));
    let x_2457 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2456.x, x_2456.y, x_2456.z, x_2457.w);
    let x_2459 : vec4<f32> = u_xlat1;
    let x_2461 : vec4<f32> = u_xlat9;
    u_xlat68 = dot(vec3<f32>(x_2459.x, x_2459.y, x_2459.z), vec3<f32>(x_2461.x, x_2461.y, x_2461.z));
    let x_2464 : f32 = u_xlat68;
    u_xlat68 = clamp(x_2464, 0.0f, 1.0f);
    let x_2466 : f32 = u_xlat68;
    let x_2467 : f32 = u_xlat69;
    u_xlat68 = (x_2466 * x_2467);
    let x_2469 : f32 = u_xlat68;
    let x_2471 : vec4<f32> = u_xlat10;
    let x_2473 : vec3<f32> = (vec3<f32>(x_2469, x_2469, x_2469) * vec3<f32>(x_2471.x, x_2471.y, x_2471.z));
    let x_2474 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2473.x, x_2473.y, x_2473.z, x_2474.w);
    let x_2476 : vec4<f32> = u_xlat8;
    let x_2478 : f32 = u_xlat70;
    let x_2481 : vec3<f32> = u_xlat2;
    let x_2482 : vec3<f32> = ((vec3<f32>(x_2476.x, x_2476.y, x_2476.z) * vec3<f32>(x_2478, x_2478, x_2478)) + x_2481);
    let x_2483 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2482.x, x_2482.y, x_2482.z, x_2483.w);
    let x_2485 : vec4<f32> = u_xlat8;
    let x_2487 : vec4<f32> = u_xlat8;
    u_xlat68 = dot(vec3<f32>(x_2485.x, x_2485.y, x_2485.z), vec3<f32>(x_2487.x, x_2487.y, x_2487.z));
    let x_2490 : f32 = u_xlat68;
    u_xlat68 = max(x_2490, 1.17549435e-37f);
    let x_2492 : f32 = u_xlat68;
    u_xlat68 = inverseSqrt(x_2492);
    let x_2494 : f32 = u_xlat68;
    let x_2496 : vec4<f32> = u_xlat8;
    let x_2498 : vec3<f32> = (vec3<f32>(x_2494, x_2494, x_2494) * vec3<f32>(x_2496.x, x_2496.y, x_2496.z));
    let x_2499 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2498.x, x_2498.y, x_2498.z, x_2499.w);
    let x_2501 : vec4<f32> = u_xlat1;
    let x_2503 : vec4<f32> = u_xlat8;
    u_xlat68 = dot(vec3<f32>(x_2501.x, x_2501.y, x_2501.z), vec3<f32>(x_2503.x, x_2503.y, x_2503.z));
    let x_2506 : f32 = u_xlat68;
    u_xlat68 = clamp(x_2506, 0.0f, 1.0f);
    let x_2508 : vec4<f32> = u_xlat9;
    let x_2510 : vec4<f32> = u_xlat8;
    u_xlat69 = dot(vec3<f32>(x_2508.x, x_2508.y, x_2508.z), vec3<f32>(x_2510.x, x_2510.y, x_2510.z));
    let x_2513 : f32 = u_xlat69;
    u_xlat69 = clamp(x_2513, 0.0f, 1.0f);
    let x_2515 : f32 = u_xlat68;
    let x_2516 : f32 = u_xlat68;
    u_xlat68 = (x_2515 * x_2516);
    let x_2518 : f32 = u_xlat68;
    let x_2520 : f32 = u_xlat0.x;
    u_xlat68 = ((x_2518 * x_2520) + 1.000010014f);
    let x_2523 : f32 = u_xlat69;
    let x_2524 : f32 = u_xlat69;
    u_xlat69 = (x_2523 * x_2524);
    let x_2526 : f32 = u_xlat68;
    let x_2527 : f32 = u_xlat68;
    u_xlat68 = (x_2526 * x_2527);
    let x_2529 : f32 = u_xlat69;
    u_xlat69 = max(x_2529, 0.100000001f);
    let x_2531 : f32 = u_xlat68;
    let x_2532 : f32 = u_xlat69;
    u_xlat68 = (x_2531 * x_2532);
    let x_2534 : f32 = u_xlat66;
    let x_2535 : f32 = u_xlat68;
    u_xlat68 = (x_2534 * x_2535);
    let x_2537 : f32 = u_xlat64;
    let x_2538 : f32 = u_xlat68;
    u_xlat68 = (x_2537 / x_2538);
    let x_2540 : vec4<f32> = u_xlat5;
    let x_2542 : f32 = u_xlat68;
    let x_2545 : vec4<f32> = u_xlat6;
    let x_2547 : vec3<f32> = ((vec3<f32>(x_2540.x, x_2540.y, x_2540.z) * vec3<f32>(x_2542, x_2542, x_2542)) + vec3<f32>(x_2545.x, x_2545.y, x_2545.z));
    let x_2548 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2547.x, x_2547.y, x_2547.z, x_2548.w);
    let x_2550 : vec4<f32> = u_xlat8;
    let x_2552 : vec4<f32> = u_xlat10;
    let x_2555 : vec4<f32> = u_xlat7;
    let x_2557 : vec3<f32> = ((vec3<f32>(x_2550.x, x_2550.y, x_2550.z) * vec3<f32>(x_2552.x, x_2552.y, x_2552.z)) + vec3<f32>(x_2555.x, x_2555.y, x_2555.z));
    let x_2558 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2557.x, x_2557.y, x_2557.z, x_2558.w);

    continuing {
      let x_2560 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2560 + bitcast<u32>(1i));
    }
  }
  let x_2562 : vec4<f32> = u_xlat3;
  let x_2564 : f32 = u_xlat21;
  let x_2567 : vec4<f32> = u_xlat4;
  u_xlat0 = ((vec3<f32>(x_2562.x, x_2562.y, x_2562.z) * vec3<f32>(x_2564, x_2564, x_2564)) + vec3<f32>(x_2567.x, x_2567.z, x_2567.w));
  let x_2570 : vec4<f32> = u_xlat7;
  let x_2572 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_2570.x, x_2570.y, x_2570.z) + x_2572);
  let x_2576 : f32 = u_xlat63;
  let x_2578 : vec3<f32> = u_xlat0;
  let x_2579 : vec3<f32> = (vec3<f32>(x_2576, x_2576, x_2576) * x_2578);
  let x_2580 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2579.x, x_2579.y, x_2579.z, x_2580.w);
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

