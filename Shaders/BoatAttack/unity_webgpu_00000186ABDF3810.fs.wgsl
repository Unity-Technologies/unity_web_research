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

@group(0) @binding(3) var x_Control : texture_2d<f32>;

@group(0) @binding(12) var sampler_Control : sampler;

@group(1) @binding(0) var<uniform> x_126 : PGlobals;

@group(0) @binding(4) var x_Splat0 : texture_2d<f32>;

@group(0) @binding(13) var sampler_Splat0 : sampler;

var<private> vs_TEXCOORD1 : vec4<f32>;

@group(0) @binding(5) var x_Splat1 : texture_2d<f32>;

@group(0) @binding(6) var x_Splat2 : texture_2d<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

@group(0) @binding(7) var x_Splat3 : texture_2d<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(11) var samplerunity_Lightmap : sampler;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(8) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(14) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(1) @binding(4) var<uniform> x_781 : MainLightShadows;

var<private> vs_TEXCOORD8 : vec4<f32>;

@group(0) @binding(9) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(15) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(10) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_2151 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_2415 : AdditionalLights;

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
  var x_2010 : f32;
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
  let x_618 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_614.z, x_614.w), x_617);
  u_xlat3 = x_618;
  let x_623 : vec4<f32> = vs_TEXCOORD0;
  let x_626 : f32 = x_126.x_GlobalMipBias.x;
  let x_627 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_623.z, x_623.w), x_626);
  let x_628 : vec3<f32> = vec3<f32>(x_627.x, x_627.y, x_627.z);
  let x_629 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_628.x, x_628.y, x_628.z, x_629.w);
  let x_631 : vec4<f32> = u_xlat3;
  let x_635 : vec3<f32> = (vec3<f32>(x_631.x, x_631.y, x_631.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_636 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_635.x, x_635.y, x_635.z, x_636.w);
  let x_638 : vec4<f32> = u_xlat1;
  let x_640 : vec4<f32> = u_xlat3;
  u_xlat64 = dot(vec3<f32>(x_638.x, x_638.y, x_638.z), vec3<f32>(x_640.x, x_640.y, x_640.z));
  let x_643 : f32 = u_xlat64;
  u_xlat64 = (x_643 + 0.5f);
  let x_645 : f32 = u_xlat64;
  let x_647 : vec4<f32> = u_xlat4;
  let x_649 : vec3<f32> = (vec3<f32>(x_645, x_645, x_645) * vec3<f32>(x_647.x, x_647.y, x_647.z));
  let x_650 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_649.x, x_649.y, x_649.z, x_650.w);
  let x_653 : f32 = u_xlat3.w;
  u_xlat64 = max(x_653, 0.0001f);
  let x_656 : vec4<f32> = u_xlat3;
  let x_658 : f32 = u_xlat64;
  let x_660 : vec3<f32> = (vec3<f32>(x_656.x, x_656.y, x_656.z) / vec3<f32>(x_658, x_658, x_658));
  let x_661 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_660.x, x_660.y, x_660.z, x_661.w);
  let x_665 : vec4<f32> = x_126.x_ScaledScreenParams;
  let x_666 : vec2<f32> = vec2<f32>(x_665.x, x_665.y);
  let x_670 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_666.x, x_666.y));
  let x_671 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_670.x, x_670.y, x_671.z, x_671.w);
  let x_673 : vec4<f32> = u_xlat4;
  let x_675 : vec4<f32> = hlslcc_FragCoord;
  let x_677 : vec2<f32> = (vec2<f32>(x_673.x, x_673.y) * vec2<f32>(x_675.x, x_675.y));
  let x_678 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_677.x, x_677.y, x_678.z, x_678.w);
  let x_681 : f32 = u_xlat4.y;
  let x_683 : f32 = x_126.x_ScaleBiasRt.x;
  let x_686 : f32 = x_126.x_ScaleBiasRt.y;
  u_xlat64 = ((x_681 * x_683) + x_686);
  let x_688 : f32 = u_xlat64;
  u_xlat4.z = (-(x_688) + 1.0f);
  let x_693 : f32 = u_xlat0.x;
  u_xlat64 = ((-(x_693) * 0.959999979f) + 0.959999979f);
  let x_699 : f32 = u_xlat42;
  let x_700 : f32 = u_xlat64;
  u_xlat65 = (x_699 + -(x_700));
  let x_703 : f32 = u_xlat64;
  let x_705 : vec4<f32> = u_xlat5;
  let x_707 : vec3<f32> = (vec3<f32>(x_703, x_703, x_703) * vec3<f32>(x_705.x, x_705.y, x_705.z));
  let x_708 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_707.x, x_707.y, x_707.z, x_708.w);
  let x_710 : vec4<f32> = u_xlat5;
  let x_714 : vec3<f32> = (vec3<f32>(x_710.x, x_710.y, x_710.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_715 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_714.x, x_714.y, x_714.z, x_715.w);
  let x_717 : vec3<f32> = u_xlat0;
  let x_719 : vec4<f32> = u_xlat5;
  let x_724 : vec3<f32> = ((vec3<f32>(x_717.x, x_717.x, x_717.x) * vec3<f32>(x_719.x, x_719.y, x_719.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_725 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_724.x, x_724.y, x_724.z, x_725.w);
  let x_727 : f32 = u_xlat42;
  u_xlat0.x = (-(x_727) + 1.0f);
  let x_732 : f32 = u_xlat0.x;
  let x_734 : f32 = u_xlat0.x;
  u_xlat42 = (x_732 * x_734);
  let x_736 : f32 = u_xlat42;
  u_xlat42 = max(x_736, 0.0078125f);
  let x_739 : f32 = u_xlat42;
  let x_740 : f32 = u_xlat42;
  u_xlat64 = (x_739 * x_740);
  let x_742 : f32 = u_xlat65;
  u_xlat65 = (x_742 + 1.0f);
  let x_744 : f32 = u_xlat65;
  u_xlat65 = clamp(x_744, 0.0f, 1.0f);
  let x_747 : f32 = u_xlat42;
  u_xlat66 = ((x_747 * 4.0f) + 2.0f);
  let x_756 : vec4<f32> = u_xlat4;
  let x_759 : f32 = x_126.x_GlobalMipBias.x;
  let x_760 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_756.x, x_756.z), x_759);
  u_xlat4.x = x_760.x;
  let x_765 : f32 = u_xlat4.x;
  u_xlat25 = (x_765 + -1.0f);
  let x_768 : f32 = x_126.x_AmbientOcclusionParam.w;
  let x_769 : f32 = u_xlat25;
  u_xlat25 = ((x_768 * x_769) + 1.0f);
  let x_772 : f32 = u_xlat21;
  let x_774 : f32 = u_xlat4.x;
  u_xlat21 = min(x_772, x_774);
  let x_783 : f32 = x_781.x_MainLightShadowParams.y;
  u_xlatb4 = (0.0f < x_783);
  let x_785 : bool = u_xlatb4;
  if (x_785) {
    let x_789 : f32 = x_781.x_MainLightShadowParams.y;
    u_xlatb4 = (x_789 == 1.0f);
    let x_791 : bool = u_xlatb4;
    if (x_791) {
      let x_795 : vec4<f32> = vs_TEXCOORD8;
      let x_798 : vec4<f32> = x_781.x_MainLightShadowOffset0;
      u_xlat7 = (vec4<f32>(x_795.x, x_795.y, x_795.x, x_795.y) + x_798);
      let x_801 : vec4<f32> = u_xlat7;
      let x_802 : vec2<f32> = vec2<f32>(x_801.x, x_801.y);
      let x_804 : f32 = vs_TEXCOORD8.z;
      txVec0 = vec3<f32>(x_802.x, x_802.y, x_804);
      let x_816 : vec3<f32> = txVec0;
      let x_818 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_816.xy, x_816.z);
      u_xlat8.x = x_818;
      let x_821 : vec4<f32> = u_xlat7;
      let x_822 : vec2<f32> = vec2<f32>(x_821.z, x_821.w);
      let x_824 : f32 = vs_TEXCOORD8.z;
      txVec1 = vec3<f32>(x_822.x, x_822.y, x_824);
      let x_831 : vec3<f32> = txVec1;
      let x_833 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_831.xy, x_831.z);
      u_xlat8.y = x_833;
      let x_835 : vec4<f32> = vs_TEXCOORD8;
      let x_838 : vec4<f32> = x_781.x_MainLightShadowOffset1;
      u_xlat7 = (vec4<f32>(x_835.x, x_835.y, x_835.x, x_835.y) + x_838);
      let x_841 : vec4<f32> = u_xlat7;
      let x_842 : vec2<f32> = vec2<f32>(x_841.x, x_841.y);
      let x_844 : f32 = vs_TEXCOORD8.z;
      txVec2 = vec3<f32>(x_842.x, x_842.y, x_844);
      let x_851 : vec3<f32> = txVec2;
      let x_853 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_851.xy, x_851.z);
      u_xlat8.z = x_853;
      let x_856 : vec4<f32> = u_xlat7;
      let x_857 : vec2<f32> = vec2<f32>(x_856.z, x_856.w);
      let x_859 : f32 = vs_TEXCOORD8.z;
      txVec3 = vec3<f32>(x_857.x, x_857.y, x_859);
      let x_866 : vec3<f32> = txVec3;
      let x_868 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_866.xy, x_866.z);
      u_xlat8.w = x_868;
      let x_870 : vec4<f32> = u_xlat8;
      u_xlat4.x = dot(x_870, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_878 : f32 = x_781.x_MainLightShadowParams.y;
      u_xlatb46 = (x_878 == 2.0f);
      let x_880 : bool = u_xlatb46;
      if (x_880) {
        let x_885 : vec4<f32> = vs_TEXCOORD8;
        let x_888 : vec4<f32> = x_781.x_MainLightShadowmapSize;
        u_xlat46 = ((vec2<f32>(x_885.x, x_885.y) * vec2<f32>(x_888.z, x_888.w)) + vec2<f32>(0.5f, 0.5f));
        let x_892 : vec2<f32> = u_xlat46;
        u_xlat46 = floor(x_892);
        let x_894 : vec4<f32> = vs_TEXCOORD8;
        let x_897 : vec4<f32> = x_781.x_MainLightShadowmapSize;
        let x_900 : vec2<f32> = u_xlat46;
        let x_902 : vec2<f32> = ((vec2<f32>(x_894.x, x_894.y) * vec2<f32>(x_897.z, x_897.w)) + -(x_900));
        let x_903 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_902.x, x_902.y, x_903.z, x_903.w);
        let x_905 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_905.x, x_905.x, x_905.y, x_905.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_909 : vec4<f32> = u_xlat8;
        let x_911 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_909.x, x_909.x, x_909.z, x_909.z) * vec4<f32>(x_911.x, x_911.x, x_911.z, x_911.z));
        let x_915 : vec4<f32> = u_xlat9;
        u_xlat49 = (vec2<f32>(x_915.y, x_915.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_920 : vec4<f32> = u_xlat9;
        let x_923 : vec4<f32> = u_xlat7;
        let x_926 : vec2<f32> = ((vec2<f32>(x_920.x, x_920.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_923.x, x_923.y)));
        let x_927 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_926.x, x_927.y, x_926.y, x_927.w);
        let x_929 : vec4<f32> = u_xlat7;
        let x_932 : vec2<f32> = (-(vec2<f32>(x_929.x, x_929.y)) + vec2<f32>(1.0f, 1.0f));
        let x_933 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_932.x, x_932.y, x_933.z, x_933.w);
        let x_936 : vec4<f32> = u_xlat7;
        u_xlat51 = min(vec2<f32>(x_936.x, x_936.y), vec2<f32>(0.0f, 0.0f));
        let x_940 : vec2<f32> = u_xlat51;
        let x_942 : vec2<f32> = u_xlat51;
        let x_944 : vec4<f32> = u_xlat9;
        u_xlat51 = ((-(x_940) * x_942) + vec2<f32>(x_944.x, x_944.y));
        let x_947 : vec4<f32> = u_xlat7;
        let x_949 : vec2<f32> = max(vec2<f32>(x_947.x, x_947.y), vec2<f32>(0.0f, 0.0f));
        let x_950 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_949.x, x_949.y, x_950.z, x_950.w);
        let x_952 : vec4<f32> = u_xlat7;
        let x_955 : vec4<f32> = u_xlat7;
        let x_958 : vec4<f32> = u_xlat8;
        let x_960 : vec2<f32> = ((-(vec2<f32>(x_952.x, x_952.y)) * vec2<f32>(x_955.x, x_955.y)) + vec2<f32>(x_958.y, x_958.w));
        let x_961 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_960.x, x_960.y, x_961.z, x_961.w);
        let x_963 : vec2<f32> = u_xlat51;
        u_xlat51 = (x_963 + vec2<f32>(1.0f, 1.0f));
        let x_965 : vec4<f32> = u_xlat7;
        let x_967 : vec2<f32> = (vec2<f32>(x_965.x, x_965.y) + vec2<f32>(1.0f, 1.0f));
        let x_968 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_967.x, x_967.y, x_968.z, x_968.w);
        let x_970 : vec4<f32> = u_xlat8;
        let x_974 : vec2<f32> = (vec2<f32>(x_970.x, x_970.z) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_975 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_974.x, x_974.y, x_975.z, x_975.w);
        let x_977 : vec4<f32> = u_xlat9;
        let x_979 : vec2<f32> = (vec2<f32>(x_977.x, x_977.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_980 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_979.x, x_979.y, x_980.z, x_980.w);
        let x_982 : vec2<f32> = u_xlat51;
        let x_983 : vec2<f32> = (x_982 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_984 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_983.x, x_983.y, x_984.z, x_984.w);
        let x_986 : vec4<f32> = u_xlat7;
        let x_988 : vec2<f32> = (vec2<f32>(x_986.x, x_986.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_989 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_988.x, x_988.y, x_989.z, x_989.w);
        let x_991 : vec4<f32> = u_xlat8;
        let x_993 : vec2<f32> = (vec2<f32>(x_991.y, x_991.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_994 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_993.x, x_993.y, x_994.z, x_994.w);
        let x_997 : f32 = u_xlat9.x;
        u_xlat10.z = x_997;
        let x_1000 : f32 = u_xlat7.x;
        u_xlat10.w = x_1000;
        let x_1003 : f32 = u_xlat12.x;
        u_xlat11.z = x_1003;
        let x_1006 : f32 = u_xlat49.x;
        u_xlat11.w = x_1006;
        let x_1008 : vec4<f32> = u_xlat10;
        let x_1010 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_1008.z, x_1008.w, x_1008.x, x_1008.z) + vec4<f32>(x_1010.z, x_1010.w, x_1010.x, x_1010.z));
        let x_1014 : f32 = u_xlat10.y;
        u_xlat9.z = x_1014;
        let x_1017 : f32 = u_xlat7.y;
        u_xlat9.w = x_1017;
        let x_1020 : f32 = u_xlat11.y;
        u_xlat12.z = x_1020;
        let x_1023 : f32 = u_xlat49.y;
        u_xlat12.w = x_1023;
        let x_1025 : vec4<f32> = u_xlat9;
        let x_1027 : vec4<f32> = u_xlat12;
        let x_1029 : vec3<f32> = (vec3<f32>(x_1025.z, x_1025.y, x_1025.w) + vec3<f32>(x_1027.z, x_1027.y, x_1027.w));
        let x_1030 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1029.x, x_1029.y, x_1029.z, x_1030.w);
        let x_1032 : vec4<f32> = u_xlat11;
        let x_1034 : vec4<f32> = u_xlat8;
        let x_1036 : vec3<f32> = (vec3<f32>(x_1032.x, x_1032.z, x_1032.w) / vec3<f32>(x_1034.z, x_1034.w, x_1034.y));
        let x_1037 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1036.x, x_1036.y, x_1036.z, x_1037.w);
        let x_1039 : vec4<f32> = u_xlat9;
        let x_1044 : vec3<f32> = (vec3<f32>(x_1039.x, x_1039.y, x_1039.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1045 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1044.x, x_1044.y, x_1044.z, x_1045.w);
        let x_1047 : vec4<f32> = u_xlat12;
        let x_1049 : vec4<f32> = u_xlat7;
        let x_1051 : vec3<f32> = (vec3<f32>(x_1047.z, x_1047.y, x_1047.w) / vec3<f32>(x_1049.x, x_1049.y, x_1049.z));
        let x_1052 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1051.x, x_1051.y, x_1051.z, x_1052.w);
        let x_1054 : vec4<f32> = u_xlat10;
        let x_1056 : vec3<f32> = (vec3<f32>(x_1054.x, x_1054.y, x_1054.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1057 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1056.x, x_1056.y, x_1056.z, x_1057.w);
        let x_1059 : vec4<f32> = u_xlat9;
        let x_1062 : vec4<f32> = x_781.x_MainLightShadowmapSize;
        let x_1064 : vec3<f32> = (vec3<f32>(x_1059.y, x_1059.x, x_1059.z) * vec3<f32>(x_1062.x, x_1062.x, x_1062.x));
        let x_1065 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1064.x, x_1064.y, x_1064.z, x_1065.w);
        let x_1067 : vec4<f32> = u_xlat10;
        let x_1070 : vec4<f32> = x_781.x_MainLightShadowmapSize;
        let x_1072 : vec3<f32> = (vec3<f32>(x_1067.x, x_1067.y, x_1067.z) * vec3<f32>(x_1070.y, x_1070.y, x_1070.y));
        let x_1073 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1072.x, x_1072.y, x_1072.z, x_1073.w);
        let x_1076 : f32 = u_xlat10.x;
        u_xlat9.w = x_1076;
        let x_1078 : vec2<f32> = u_xlat46;
        let x_1081 : vec4<f32> = x_781.x_MainLightShadowmapSize;
        let x_1084 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1078.x, x_1078.y, x_1078.x, x_1078.y) * vec4<f32>(x_1081.x, x_1081.y, x_1081.x, x_1081.y)) + vec4<f32>(x_1084.y, x_1084.w, x_1084.x, x_1084.w));
        let x_1087 : vec2<f32> = u_xlat46;
        let x_1089 : vec4<f32> = x_781.x_MainLightShadowmapSize;
        let x_1092 : vec4<f32> = u_xlat9;
        let x_1094 : vec2<f32> = ((x_1087 * vec2<f32>(x_1089.x, x_1089.y)) + vec2<f32>(x_1092.z, x_1092.w));
        let x_1095 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1094.x, x_1094.y, x_1095.z, x_1095.w);
        let x_1098 : f32 = u_xlat9.y;
        u_xlat10.w = x_1098;
        let x_1100 : vec4<f32> = u_xlat10;
        let x_1101 : vec2<f32> = vec2<f32>(x_1100.y, x_1100.z);
        let x_1102 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1102.x, x_1101.x, x_1102.z, x_1101.y);
        let x_1104 : vec2<f32> = u_xlat46;
        let x_1107 : vec4<f32> = x_781.x_MainLightShadowmapSize;
        let x_1110 : vec4<f32> = u_xlat9;
        u_xlat13 = ((vec4<f32>(x_1104.x, x_1104.y, x_1104.x, x_1104.y) * vec4<f32>(x_1107.x, x_1107.y, x_1107.x, x_1107.y)) + vec4<f32>(x_1110.x, x_1110.y, x_1110.z, x_1110.y));
        let x_1113 : vec2<f32> = u_xlat46;
        let x_1116 : vec4<f32> = x_781.x_MainLightShadowmapSize;
        let x_1119 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_1113.x, x_1113.y, x_1113.x, x_1113.y) * vec4<f32>(x_1116.x, x_1116.y, x_1116.x, x_1116.y)) + vec4<f32>(x_1119.w, x_1119.y, x_1119.w, x_1119.z));
        let x_1122 : vec2<f32> = u_xlat46;
        let x_1125 : vec4<f32> = x_781.x_MainLightShadowmapSize;
        let x_1128 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1122.x, x_1122.y, x_1122.x, x_1122.y) * vec4<f32>(x_1125.x, x_1125.y, x_1125.x, x_1125.y)) + vec4<f32>(x_1128.x, x_1128.w, x_1128.z, x_1128.w));
        let x_1132 : vec4<f32> = u_xlat7;
        let x_1134 : vec4<f32> = u_xlat8;
        u_xlat14 = (vec4<f32>(x_1132.x, x_1132.x, x_1132.x, x_1132.y) * vec4<f32>(x_1134.z, x_1134.w, x_1134.y, x_1134.z));
        let x_1138 : vec4<f32> = u_xlat7;
        let x_1140 : vec4<f32> = u_xlat8;
        u_xlat15 = (vec4<f32>(x_1138.y, x_1138.y, x_1138.z, x_1138.z) * x_1140);
        let x_1143 : f32 = u_xlat7.z;
        let x_1145 : f32 = u_xlat8.y;
        u_xlat46.x = (x_1143 * x_1145);
        let x_1149 : vec4<f32> = u_xlat11;
        let x_1150 : vec2<f32> = vec2<f32>(x_1149.x, x_1149.y);
        let x_1152 : f32 = vs_TEXCOORD8.z;
        txVec4 = vec3<f32>(x_1150.x, x_1150.y, x_1152);
        let x_1160 : vec3<f32> = txVec4;
        let x_1162 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1160.xy, x_1160.z);
        u_xlat67 = x_1162;
        let x_1164 : vec4<f32> = u_xlat11;
        let x_1165 : vec2<f32> = vec2<f32>(x_1164.z, x_1164.w);
        let x_1167 : f32 = vs_TEXCOORD8.z;
        txVec5 = vec3<f32>(x_1165.x, x_1165.y, x_1167);
        let x_1175 : vec3<f32> = txVec5;
        let x_1177 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1175.xy, x_1175.z);
        u_xlat68 = x_1177;
        let x_1178 : f32 = u_xlat68;
        let x_1180 : f32 = u_xlat14.y;
        u_xlat68 = (x_1178 * x_1180);
        let x_1183 : f32 = u_xlat14.x;
        let x_1184 : f32 = u_xlat67;
        let x_1186 : f32 = u_xlat68;
        u_xlat67 = ((x_1183 * x_1184) + x_1186);
        let x_1189 : vec4<f32> = u_xlat12;
        let x_1190 : vec2<f32> = vec2<f32>(x_1189.x, x_1189.y);
        let x_1192 : f32 = vs_TEXCOORD8.z;
        txVec6 = vec3<f32>(x_1190.x, x_1190.y, x_1192);
        let x_1199 : vec3<f32> = txVec6;
        let x_1201 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1199.xy, x_1199.z);
        u_xlat68 = x_1201;
        let x_1203 : f32 = u_xlat14.z;
        let x_1204 : f32 = u_xlat68;
        let x_1206 : f32 = u_xlat67;
        u_xlat67 = ((x_1203 * x_1204) + x_1206);
        let x_1209 : vec4<f32> = u_xlat10;
        let x_1210 : vec2<f32> = vec2<f32>(x_1209.x, x_1209.y);
        let x_1212 : f32 = vs_TEXCOORD8.z;
        txVec7 = vec3<f32>(x_1210.x, x_1210.y, x_1212);
        let x_1219 : vec3<f32> = txVec7;
        let x_1221 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1219.xy, x_1219.z);
        u_xlat68 = x_1221;
        let x_1223 : f32 = u_xlat14.w;
        let x_1224 : f32 = u_xlat68;
        let x_1226 : f32 = u_xlat67;
        u_xlat67 = ((x_1223 * x_1224) + x_1226);
        let x_1229 : vec4<f32> = u_xlat13;
        let x_1230 : vec2<f32> = vec2<f32>(x_1229.x, x_1229.y);
        let x_1232 : f32 = vs_TEXCOORD8.z;
        txVec8 = vec3<f32>(x_1230.x, x_1230.y, x_1232);
        let x_1239 : vec3<f32> = txVec8;
        let x_1241 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1239.xy, x_1239.z);
        u_xlat68 = x_1241;
        let x_1243 : f32 = u_xlat15.x;
        let x_1244 : f32 = u_xlat68;
        let x_1246 : f32 = u_xlat67;
        u_xlat67 = ((x_1243 * x_1244) + x_1246);
        let x_1249 : vec4<f32> = u_xlat13;
        let x_1250 : vec2<f32> = vec2<f32>(x_1249.z, x_1249.w);
        let x_1252 : f32 = vs_TEXCOORD8.z;
        txVec9 = vec3<f32>(x_1250.x, x_1250.y, x_1252);
        let x_1259 : vec3<f32> = txVec9;
        let x_1261 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1259.xy, x_1259.z);
        u_xlat68 = x_1261;
        let x_1263 : f32 = u_xlat15.y;
        let x_1264 : f32 = u_xlat68;
        let x_1266 : f32 = u_xlat67;
        u_xlat67 = ((x_1263 * x_1264) + x_1266);
        let x_1269 : vec4<f32> = u_xlat10;
        let x_1270 : vec2<f32> = vec2<f32>(x_1269.z, x_1269.w);
        let x_1272 : f32 = vs_TEXCOORD8.z;
        txVec10 = vec3<f32>(x_1270.x, x_1270.y, x_1272);
        let x_1279 : vec3<f32> = txVec10;
        let x_1281 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1279.xy, x_1279.z);
        u_xlat68 = x_1281;
        let x_1283 : f32 = u_xlat15.z;
        let x_1284 : f32 = u_xlat68;
        let x_1286 : f32 = u_xlat67;
        u_xlat67 = ((x_1283 * x_1284) + x_1286);
        let x_1289 : vec4<f32> = u_xlat9;
        let x_1290 : vec2<f32> = vec2<f32>(x_1289.x, x_1289.y);
        let x_1292 : f32 = vs_TEXCOORD8.z;
        txVec11 = vec3<f32>(x_1290.x, x_1290.y, x_1292);
        let x_1299 : vec3<f32> = txVec11;
        let x_1301 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1299.xy, x_1299.z);
        u_xlat68 = x_1301;
        let x_1303 : f32 = u_xlat15.w;
        let x_1304 : f32 = u_xlat68;
        let x_1306 : f32 = u_xlat67;
        u_xlat67 = ((x_1303 * x_1304) + x_1306);
        let x_1309 : vec4<f32> = u_xlat9;
        let x_1310 : vec2<f32> = vec2<f32>(x_1309.z, x_1309.w);
        let x_1312 : f32 = vs_TEXCOORD8.z;
        txVec12 = vec3<f32>(x_1310.x, x_1310.y, x_1312);
        let x_1319 : vec3<f32> = txVec12;
        let x_1321 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1319.xy, x_1319.z);
        u_xlat68 = x_1321;
        let x_1323 : f32 = u_xlat46.x;
        let x_1324 : f32 = u_xlat68;
        let x_1326 : f32 = u_xlat67;
        u_xlat4.x = ((x_1323 * x_1324) + x_1326);
      } else {
        let x_1330 : vec4<f32> = vs_TEXCOORD8;
        let x_1333 : vec4<f32> = x_781.x_MainLightShadowmapSize;
        u_xlat46 = ((vec2<f32>(x_1330.x, x_1330.y) * vec2<f32>(x_1333.z, x_1333.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1337 : vec2<f32> = u_xlat46;
        u_xlat46 = floor(x_1337);
        let x_1339 : vec4<f32> = vs_TEXCOORD8;
        let x_1342 : vec4<f32> = x_781.x_MainLightShadowmapSize;
        let x_1345 : vec2<f32> = u_xlat46;
        let x_1347 : vec2<f32> = ((vec2<f32>(x_1339.x, x_1339.y) * vec2<f32>(x_1342.z, x_1342.w)) + -(x_1345));
        let x_1348 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1347.x, x_1347.y, x_1348.z, x_1348.w);
        let x_1350 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1350.x, x_1350.x, x_1350.y, x_1350.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1353 : vec4<f32> = u_xlat8;
        let x_1355 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1353.x, x_1353.x, x_1353.z, x_1353.z) * vec4<f32>(x_1355.x, x_1355.x, x_1355.z, x_1355.z));
        let x_1358 : vec4<f32> = u_xlat9;
        let x_1362 : vec2<f32> = (vec2<f32>(x_1358.y, x_1358.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1363 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1363.x, x_1362.x, x_1363.z, x_1362.y);
        let x_1365 : vec4<f32> = u_xlat9;
        let x_1368 : vec4<f32> = u_xlat7;
        u_xlat49 = ((vec2<f32>(x_1365.x, x_1365.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_1368.x, x_1368.y)));
        let x_1372 : vec4<f32> = u_xlat7;
        let x_1375 : vec2<f32> = (-(vec2<f32>(x_1372.x, x_1372.y)) + vec2<f32>(1.0f, 1.0f));
        let x_1376 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1375.x, x_1376.y, x_1375.y, x_1376.w);
        let x_1378 : vec4<f32> = u_xlat7;
        let x_1380 : vec2<f32> = min(vec2<f32>(x_1378.x, x_1378.y), vec2<f32>(0.0f, 0.0f));
        let x_1381 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1380.x, x_1380.y, x_1381.z, x_1381.w);
        let x_1383 : vec4<f32> = u_xlat9;
        let x_1386 : vec4<f32> = u_xlat9;
        let x_1389 : vec4<f32> = u_xlat8;
        let x_1391 : vec2<f32> = ((-(vec2<f32>(x_1383.x, x_1383.y)) * vec2<f32>(x_1386.x, x_1386.y)) + vec2<f32>(x_1389.x, x_1389.z));
        let x_1392 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1391.x, x_1392.y, x_1391.y, x_1392.w);
        let x_1394 : vec4<f32> = u_xlat7;
        let x_1396 : vec2<f32> = max(vec2<f32>(x_1394.x, x_1394.y), vec2<f32>(0.0f, 0.0f));
        let x_1397 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1396.x, x_1396.y, x_1397.z, x_1397.w);
        let x_1399 : vec4<f32> = u_xlat9;
        let x_1402 : vec4<f32> = u_xlat9;
        let x_1405 : vec4<f32> = u_xlat8;
        let x_1407 : vec2<f32> = ((-(vec2<f32>(x_1399.x, x_1399.y)) * vec2<f32>(x_1402.x, x_1402.y)) + vec2<f32>(x_1405.y, x_1405.w));
        let x_1408 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1408.x, x_1407.x, x_1408.z, x_1407.y);
        let x_1410 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1410 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_1414 : f32 = u_xlat8.y;
        u_xlat9.z = (x_1414 * 0.081632003f);
        let x_1418 : vec2<f32> = u_xlat49;
        let x_1421 : vec2<f32> = (vec2<f32>(x_1418.y, x_1418.x) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1422 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1421.x, x_1421.y, x_1422.z, x_1422.w);
        let x_1424 : vec4<f32> = u_xlat8;
        u_xlat49 = (vec2<f32>(x_1424.x, x_1424.z) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1428 : f32 = u_xlat8.w;
        u_xlat11.z = (x_1428 * 0.081632003f);
        let x_1432 : f32 = u_xlat11.y;
        u_xlat9.x = x_1432;
        let x_1434 : vec4<f32> = u_xlat7;
        let x_1441 : vec2<f32> = ((vec2<f32>(x_1434.x, x_1434.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1442 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1442.x, x_1441.x, x_1442.z, x_1441.y);
        let x_1444 : vec4<f32> = u_xlat7;
        let x_1448 : vec2<f32> = ((vec2<f32>(x_1444.x, x_1444.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1449 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1448.x, x_1449.y, x_1448.y, x_1449.w);
        let x_1452 : f32 = u_xlat49.x;
        u_xlat8.y = x_1452;
        let x_1455 : f32 = u_xlat10.y;
        u_xlat8.w = x_1455;
        let x_1457 : vec4<f32> = u_xlat8;
        let x_1458 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1457 + x_1458);
        let x_1460 : vec4<f32> = u_xlat7;
        let x_1463 : vec2<f32> = ((vec2<f32>(x_1460.y, x_1460.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1464 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1464.x, x_1463.x, x_1464.z, x_1463.y);
        let x_1466 : vec4<f32> = u_xlat7;
        let x_1469 : vec2<f32> = ((vec2<f32>(x_1466.y, x_1466.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1470 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1469.x, x_1470.y, x_1469.y, x_1470.w);
        let x_1473 : f32 = u_xlat49.y;
        u_xlat10.y = x_1473;
        let x_1475 : vec4<f32> = u_xlat10;
        let x_1476 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1475 + x_1476);
        let x_1478 : vec4<f32> = u_xlat8;
        let x_1479 : vec4<f32> = u_xlat9;
        u_xlat8 = (x_1478 / x_1479);
        let x_1481 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1481 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1487 : vec4<f32> = u_xlat10;
        let x_1488 : vec4<f32> = u_xlat7;
        u_xlat10 = (x_1487 / x_1488);
        let x_1490 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1490 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1492 : vec4<f32> = u_xlat8;
        let x_1495 : vec4<f32> = x_781.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1492.w, x_1492.x, x_1492.y, x_1492.z) * vec4<f32>(x_1495.x, x_1495.x, x_1495.x, x_1495.x));
        let x_1498 : vec4<f32> = u_xlat10;
        let x_1501 : vec4<f32> = x_781.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1498.x, x_1498.w, x_1498.y, x_1498.z) * vec4<f32>(x_1501.y, x_1501.y, x_1501.y, x_1501.y));
        let x_1504 : vec4<f32> = u_xlat8;
        let x_1505 : vec3<f32> = vec3<f32>(x_1504.y, x_1504.z, x_1504.w);
        let x_1506 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1505.x, x_1506.y, x_1505.y, x_1505.z);
        let x_1509 : f32 = u_xlat10.x;
        u_xlat11.y = x_1509;
        let x_1511 : vec2<f32> = u_xlat46;
        let x_1514 : vec4<f32> = x_781.x_MainLightShadowmapSize;
        let x_1517 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1511.x, x_1511.y, x_1511.x, x_1511.y) * vec4<f32>(x_1514.x, x_1514.y, x_1514.x, x_1514.y)) + vec4<f32>(x_1517.x, x_1517.y, x_1517.z, x_1517.y));
        let x_1520 : vec2<f32> = u_xlat46;
        let x_1522 : vec4<f32> = x_781.x_MainLightShadowmapSize;
        let x_1525 : vec4<f32> = u_xlat11;
        let x_1527 : vec2<f32> = ((x_1520 * vec2<f32>(x_1522.x, x_1522.y)) + vec2<f32>(x_1525.w, x_1525.y));
        let x_1528 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1527.x, x_1527.y, x_1528.z, x_1528.w);
        let x_1531 : f32 = u_xlat11.y;
        u_xlat8.y = x_1531;
        let x_1534 : f32 = u_xlat10.z;
        u_xlat11.y = x_1534;
        let x_1536 : vec2<f32> = u_xlat46;
        let x_1539 : vec4<f32> = x_781.x_MainLightShadowmapSize;
        let x_1542 : vec4<f32> = u_xlat11;
        u_xlat14 = ((vec4<f32>(x_1536.x, x_1536.y, x_1536.x, x_1536.y) * vec4<f32>(x_1539.x, x_1539.y, x_1539.x, x_1539.y)) + vec4<f32>(x_1542.x, x_1542.y, x_1542.z, x_1542.y));
        let x_1546 : vec2<f32> = u_xlat46;
        let x_1548 : vec4<f32> = x_781.x_MainLightShadowmapSize;
        let x_1551 : vec4<f32> = u_xlat11;
        u_xlat55 = ((x_1546 * vec2<f32>(x_1548.x, x_1548.y)) + vec2<f32>(x_1551.w, x_1551.y));
        let x_1555 : f32 = u_xlat11.y;
        u_xlat8.z = x_1555;
        let x_1557 : vec2<f32> = u_xlat46;
        let x_1560 : vec4<f32> = x_781.x_MainLightShadowmapSize;
        let x_1563 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1557.x, x_1557.y, x_1557.x, x_1557.y) * vec4<f32>(x_1560.x, x_1560.y, x_1560.x, x_1560.y)) + vec4<f32>(x_1563.x, x_1563.y, x_1563.x, x_1563.z));
        let x_1567 : f32 = u_xlat10.w;
        u_xlat11.y = x_1567;
        let x_1570 : vec2<f32> = u_xlat46;
        let x_1573 : vec4<f32> = x_781.x_MainLightShadowmapSize;
        let x_1576 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1570.x, x_1570.y, x_1570.x, x_1570.y) * vec4<f32>(x_1573.x, x_1573.y, x_1573.x, x_1573.y)) + vec4<f32>(x_1576.x, x_1576.y, x_1576.z, x_1576.y));
        let x_1580 : vec2<f32> = u_xlat46;
        let x_1582 : vec4<f32> = x_781.x_MainLightShadowmapSize;
        let x_1585 : vec4<f32> = u_xlat11;
        u_xlat29 = ((x_1580 * vec2<f32>(x_1582.x, x_1582.y)) + vec2<f32>(x_1585.w, x_1585.y));
        let x_1589 : f32 = u_xlat11.y;
        u_xlat8.w = x_1589;
        let x_1592 : vec2<f32> = u_xlat46;
        let x_1594 : vec4<f32> = x_781.x_MainLightShadowmapSize;
        let x_1597 : vec4<f32> = u_xlat8;
        u_xlat17 = ((x_1592 * vec2<f32>(x_1594.x, x_1594.y)) + vec2<f32>(x_1597.x, x_1597.w));
        let x_1600 : vec4<f32> = u_xlat11;
        let x_1601 : vec3<f32> = vec3<f32>(x_1600.x, x_1600.z, x_1600.w);
        let x_1602 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1601.x, x_1602.y, x_1601.y, x_1601.z);
        let x_1604 : vec2<f32> = u_xlat46;
        let x_1607 : vec4<f32> = x_781.x_MainLightShadowmapSize;
        let x_1610 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1604.x, x_1604.y, x_1604.x, x_1604.y) * vec4<f32>(x_1607.x, x_1607.y, x_1607.x, x_1607.y)) + vec4<f32>(x_1610.x, x_1610.y, x_1610.z, x_1610.y));
        let x_1614 : vec2<f32> = u_xlat46;
        let x_1616 : vec4<f32> = x_781.x_MainLightShadowmapSize;
        let x_1619 : vec4<f32> = u_xlat10;
        u_xlat52 = ((x_1614 * vec2<f32>(x_1616.x, x_1616.y)) + vec2<f32>(x_1619.w, x_1619.y));
        let x_1623 : f32 = u_xlat8.x;
        u_xlat10.x = x_1623;
        let x_1625 : vec2<f32> = u_xlat46;
        let x_1627 : vec4<f32> = x_781.x_MainLightShadowmapSize;
        let x_1630 : vec4<f32> = u_xlat10;
        u_xlat46 = ((x_1625 * vec2<f32>(x_1627.x, x_1627.y)) + vec2<f32>(x_1630.x, x_1630.y));
        let x_1634 : vec4<f32> = u_xlat7;
        let x_1636 : vec4<f32> = u_xlat9;
        u_xlat18 = (vec4<f32>(x_1634.x, x_1634.x, x_1634.x, x_1634.x) * x_1636);
        let x_1639 : vec4<f32> = u_xlat7;
        let x_1641 : vec4<f32> = u_xlat9;
        u_xlat19 = (vec4<f32>(x_1639.y, x_1639.y, x_1639.y, x_1639.y) * x_1641);
        let x_1644 : vec4<f32> = u_xlat7;
        let x_1646 : vec4<f32> = u_xlat9;
        u_xlat20 = (vec4<f32>(x_1644.z, x_1644.z, x_1644.z, x_1644.z) * x_1646);
        let x_1648 : vec4<f32> = u_xlat7;
        let x_1650 : vec4<f32> = u_xlat9;
        u_xlat7 = (vec4<f32>(x_1648.w, x_1648.w, x_1648.w, x_1648.w) * x_1650);
        let x_1653 : vec4<f32> = u_xlat12;
        let x_1654 : vec2<f32> = vec2<f32>(x_1653.x, x_1653.y);
        let x_1656 : f32 = vs_TEXCOORD8.z;
        txVec13 = vec3<f32>(x_1654.x, x_1654.y, x_1656);
        let x_1663 : vec3<f32> = txVec13;
        let x_1665 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1663.xy, x_1663.z);
        u_xlat68 = x_1665;
        let x_1667 : vec4<f32> = u_xlat12;
        let x_1668 : vec2<f32> = vec2<f32>(x_1667.z, x_1667.w);
        let x_1670 : f32 = vs_TEXCOORD8.z;
        txVec14 = vec3<f32>(x_1668.x, x_1668.y, x_1670);
        let x_1678 : vec3<f32> = txVec14;
        let x_1680 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1678.xy, x_1678.z);
        u_xlat69 = x_1680;
        let x_1681 : f32 = u_xlat69;
        let x_1683 : f32 = u_xlat18.y;
        u_xlat69 = (x_1681 * x_1683);
        let x_1686 : f32 = u_xlat18.x;
        let x_1687 : f32 = u_xlat68;
        let x_1689 : f32 = u_xlat69;
        u_xlat68 = ((x_1686 * x_1687) + x_1689);
        let x_1692 : vec4<f32> = u_xlat13;
        let x_1693 : vec2<f32> = vec2<f32>(x_1692.x, x_1692.y);
        let x_1695 : f32 = vs_TEXCOORD8.z;
        txVec15 = vec3<f32>(x_1693.x, x_1693.y, x_1695);
        let x_1702 : vec3<f32> = txVec15;
        let x_1704 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1702.xy, x_1702.z);
        u_xlat69 = x_1704;
        let x_1706 : f32 = u_xlat18.z;
        let x_1707 : f32 = u_xlat69;
        let x_1709 : f32 = u_xlat68;
        u_xlat68 = ((x_1706 * x_1707) + x_1709);
        let x_1712 : vec4<f32> = u_xlat15;
        let x_1713 : vec2<f32> = vec2<f32>(x_1712.x, x_1712.y);
        let x_1715 : f32 = vs_TEXCOORD8.z;
        txVec16 = vec3<f32>(x_1713.x, x_1713.y, x_1715);
        let x_1722 : vec3<f32> = txVec16;
        let x_1724 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1722.xy, x_1722.z);
        u_xlat69 = x_1724;
        let x_1726 : f32 = u_xlat18.w;
        let x_1727 : f32 = u_xlat69;
        let x_1729 : f32 = u_xlat68;
        u_xlat68 = ((x_1726 * x_1727) + x_1729);
        let x_1732 : vec4<f32> = u_xlat14;
        let x_1733 : vec2<f32> = vec2<f32>(x_1732.x, x_1732.y);
        let x_1735 : f32 = vs_TEXCOORD8.z;
        txVec17 = vec3<f32>(x_1733.x, x_1733.y, x_1735);
        let x_1742 : vec3<f32> = txVec17;
        let x_1744 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1742.xy, x_1742.z);
        u_xlat69 = x_1744;
        let x_1746 : f32 = u_xlat19.x;
        let x_1747 : f32 = u_xlat69;
        let x_1749 : f32 = u_xlat68;
        u_xlat68 = ((x_1746 * x_1747) + x_1749);
        let x_1752 : vec4<f32> = u_xlat14;
        let x_1753 : vec2<f32> = vec2<f32>(x_1752.z, x_1752.w);
        let x_1755 : f32 = vs_TEXCOORD8.z;
        txVec18 = vec3<f32>(x_1753.x, x_1753.y, x_1755);
        let x_1762 : vec3<f32> = txVec18;
        let x_1764 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1762.xy, x_1762.z);
        u_xlat69 = x_1764;
        let x_1766 : f32 = u_xlat19.y;
        let x_1767 : f32 = u_xlat69;
        let x_1769 : f32 = u_xlat68;
        u_xlat68 = ((x_1766 * x_1767) + x_1769);
        let x_1772 : vec2<f32> = u_xlat55;
        let x_1774 : f32 = vs_TEXCOORD8.z;
        txVec19 = vec3<f32>(x_1772.x, x_1772.y, x_1774);
        let x_1781 : vec3<f32> = txVec19;
        let x_1783 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1781.xy, x_1781.z);
        u_xlat69 = x_1783;
        let x_1785 : f32 = u_xlat19.z;
        let x_1786 : f32 = u_xlat69;
        let x_1788 : f32 = u_xlat68;
        u_xlat68 = ((x_1785 * x_1786) + x_1788);
        let x_1791 : vec4<f32> = u_xlat15;
        let x_1792 : vec2<f32> = vec2<f32>(x_1791.z, x_1791.w);
        let x_1794 : f32 = vs_TEXCOORD8.z;
        txVec20 = vec3<f32>(x_1792.x, x_1792.y, x_1794);
        let x_1801 : vec3<f32> = txVec20;
        let x_1803 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1801.xy, x_1801.z);
        u_xlat69 = x_1803;
        let x_1805 : f32 = u_xlat19.w;
        let x_1806 : f32 = u_xlat69;
        let x_1808 : f32 = u_xlat68;
        u_xlat68 = ((x_1805 * x_1806) + x_1808);
        let x_1811 : vec4<f32> = u_xlat16;
        let x_1812 : vec2<f32> = vec2<f32>(x_1811.x, x_1811.y);
        let x_1814 : f32 = vs_TEXCOORD8.z;
        txVec21 = vec3<f32>(x_1812.x, x_1812.y, x_1814);
        let x_1821 : vec3<f32> = txVec21;
        let x_1823 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1821.xy, x_1821.z);
        u_xlat69 = x_1823;
        let x_1825 : f32 = u_xlat20.x;
        let x_1826 : f32 = u_xlat69;
        let x_1828 : f32 = u_xlat68;
        u_xlat68 = ((x_1825 * x_1826) + x_1828);
        let x_1831 : vec4<f32> = u_xlat16;
        let x_1832 : vec2<f32> = vec2<f32>(x_1831.z, x_1831.w);
        let x_1834 : f32 = vs_TEXCOORD8.z;
        txVec22 = vec3<f32>(x_1832.x, x_1832.y, x_1834);
        let x_1841 : vec3<f32> = txVec22;
        let x_1843 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1841.xy, x_1841.z);
        u_xlat69 = x_1843;
        let x_1845 : f32 = u_xlat20.y;
        let x_1846 : f32 = u_xlat69;
        let x_1848 : f32 = u_xlat68;
        u_xlat68 = ((x_1845 * x_1846) + x_1848);
        let x_1851 : vec2<f32> = u_xlat29;
        let x_1853 : f32 = vs_TEXCOORD8.z;
        txVec23 = vec3<f32>(x_1851.x, x_1851.y, x_1853);
        let x_1860 : vec3<f32> = txVec23;
        let x_1862 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1860.xy, x_1860.z);
        u_xlat69 = x_1862;
        let x_1864 : f32 = u_xlat20.z;
        let x_1865 : f32 = u_xlat69;
        let x_1867 : f32 = u_xlat68;
        u_xlat68 = ((x_1864 * x_1865) + x_1867);
        let x_1870 : vec2<f32> = u_xlat17;
        let x_1872 : f32 = vs_TEXCOORD8.z;
        txVec24 = vec3<f32>(x_1870.x, x_1870.y, x_1872);
        let x_1879 : vec3<f32> = txVec24;
        let x_1881 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1879.xy, x_1879.z);
        u_xlat69 = x_1881;
        let x_1883 : f32 = u_xlat20.w;
        let x_1884 : f32 = u_xlat69;
        let x_1886 : f32 = u_xlat68;
        u_xlat68 = ((x_1883 * x_1884) + x_1886);
        let x_1889 : vec4<f32> = u_xlat11;
        let x_1890 : vec2<f32> = vec2<f32>(x_1889.x, x_1889.y);
        let x_1892 : f32 = vs_TEXCOORD8.z;
        txVec25 = vec3<f32>(x_1890.x, x_1890.y, x_1892);
        let x_1899 : vec3<f32> = txVec25;
        let x_1901 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1899.xy, x_1899.z);
        u_xlat69 = x_1901;
        let x_1903 : f32 = u_xlat7.x;
        let x_1904 : f32 = u_xlat69;
        let x_1906 : f32 = u_xlat68;
        u_xlat68 = ((x_1903 * x_1904) + x_1906);
        let x_1909 : vec4<f32> = u_xlat11;
        let x_1910 : vec2<f32> = vec2<f32>(x_1909.z, x_1909.w);
        let x_1912 : f32 = vs_TEXCOORD8.z;
        txVec26 = vec3<f32>(x_1910.x, x_1910.y, x_1912);
        let x_1919 : vec3<f32> = txVec26;
        let x_1921 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1919.xy, x_1919.z);
        u_xlat69 = x_1921;
        let x_1923 : f32 = u_xlat7.y;
        let x_1924 : f32 = u_xlat69;
        let x_1926 : f32 = u_xlat68;
        u_xlat68 = ((x_1923 * x_1924) + x_1926);
        let x_1929 : vec2<f32> = u_xlat52;
        let x_1931 : f32 = vs_TEXCOORD8.z;
        txVec27 = vec3<f32>(x_1929.x, x_1929.y, x_1931);
        let x_1938 : vec3<f32> = txVec27;
        let x_1940 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1938.xy, x_1938.z);
        u_xlat69 = x_1940;
        let x_1942 : f32 = u_xlat7.z;
        let x_1943 : f32 = u_xlat69;
        let x_1945 : f32 = u_xlat68;
        u_xlat68 = ((x_1942 * x_1943) + x_1945);
        let x_1948 : vec2<f32> = u_xlat46;
        let x_1950 : f32 = vs_TEXCOORD8.z;
        txVec28 = vec3<f32>(x_1948.x, x_1948.y, x_1950);
        let x_1957 : vec3<f32> = txVec28;
        let x_1959 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1957.xy, x_1957.z);
        u_xlat46.x = x_1959;
        let x_1962 : f32 = u_xlat7.w;
        let x_1964 : f32 = u_xlat46.x;
        let x_1966 : f32 = u_xlat68;
        u_xlat4.x = ((x_1962 * x_1964) + x_1966);
      }
    }
  } else {
    let x_1971 : vec4<f32> = vs_TEXCOORD8;
    let x_1972 : vec2<f32> = vec2<f32>(x_1971.x, x_1971.y);
    let x_1974 : f32 = vs_TEXCOORD8.z;
    txVec29 = vec3<f32>(x_1972.x, x_1972.y, x_1974);
    let x_1981 : vec3<f32> = txVec29;
    let x_1983 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1981.xy, x_1981.z);
    u_xlat4.x = x_1983;
  }
  let x_1986 : f32 = x_781.x_MainLightShadowParams.x;
  u_xlat46.x = (-(x_1986) + 1.0f);
  let x_1991 : f32 = u_xlat4.x;
  let x_1993 : f32 = x_781.x_MainLightShadowParams.x;
  let x_1996 : f32 = u_xlat46.x;
  u_xlat4.x = ((x_1991 * x_1993) + x_1996);
  let x_2000 : f32 = vs_TEXCOORD8.z;
  u_xlatb46 = (0.0f >= x_2000);
  let x_2004 : f32 = vs_TEXCOORD8.z;
  u_xlatb67 = (x_2004 >= 1.0f);
  let x_2006 : bool = u_xlatb67;
  let x_2007 : bool = u_xlatb46;
  u_xlatb46 = (x_2006 | x_2007);
  let x_2009 : bool = u_xlatb46;
  if (x_2009) {
    x_2010 = 1.0f;
  } else {
    let x_2015 : f32 = u_xlat4.x;
    x_2010 = x_2015;
  }
  let x_2016 : f32 = x_2010;
  u_xlat4.x = x_2016;
  let x_2018 : vec3<f32> = vs_TEXCOORD7;
  let x_2020 : vec3<f32> = x_126.x_WorldSpaceCameraPos;
  let x_2022 : vec3<f32> = (x_2018 + -(x_2020));
  let x_2023 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2022.x, x_2022.y, x_2022.z, x_2023.w);
  let x_2025 : vec4<f32> = u_xlat7;
  let x_2027 : vec4<f32> = u_xlat7;
  u_xlat46.x = dot(vec3<f32>(x_2025.x, x_2025.y, x_2025.z), vec3<f32>(x_2027.x, x_2027.y, x_2027.z));
  let x_2032 : f32 = u_xlat46.x;
  let x_2034 : f32 = x_781.x_MainLightShadowParams.z;
  let x_2037 : f32 = x_781.x_MainLightShadowParams.w;
  u_xlat46.x = ((x_2032 * x_2034) + x_2037);
  let x_2041 : f32 = u_xlat46.x;
  u_xlat46.x = clamp(x_2041, 0.0f, 1.0f);
  let x_2045 : f32 = u_xlat4.x;
  u_xlat67 = (-(x_2045) + 1.0f);
  let x_2049 : f32 = u_xlat46.x;
  let x_2050 : f32 = u_xlat67;
  let x_2053 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_2049 * x_2050) + x_2053);
  let x_2056 : f32 = u_xlat25;
  let x_2060 : vec4<f32> = x_126.x_MainLightColor;
  let x_2062 : vec3<f32> = (vec3<f32>(x_2056, x_2056, x_2056) * vec3<f32>(x_2060.x, x_2060.y, x_2060.z));
  let x_2063 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2062.x, x_2062.y, x_2062.z, x_2063.w);
  let x_2065 : vec3<f32> = u_xlat2;
  let x_2067 : vec4<f32> = u_xlat1;
  u_xlat46.x = dot(-(x_2065), vec3<f32>(x_2067.x, x_2067.y, x_2067.z));
  let x_2072 : f32 = u_xlat46.x;
  let x_2074 : f32 = u_xlat46.x;
  u_xlat46.x = (x_2072 + x_2074);
  let x_2077 : vec4<f32> = u_xlat1;
  let x_2079 : vec2<f32> = u_xlat46;
  let x_2083 : vec3<f32> = u_xlat2;
  let x_2085 : vec3<f32> = ((vec3<f32>(x_2077.x, x_2077.y, x_2077.z) * -(vec3<f32>(x_2079.x, x_2079.x, x_2079.x))) + -(x_2083));
  let x_2086 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2085.x, x_2085.y, x_2085.z, x_2086.w);
  let x_2088 : vec4<f32> = u_xlat1;
  let x_2090 : vec3<f32> = u_xlat2;
  u_xlat46.x = dot(vec3<f32>(x_2088.x, x_2088.y, x_2088.z), x_2090);
  let x_2094 : f32 = u_xlat46.x;
  u_xlat46.x = clamp(x_2094, 0.0f, 1.0f);
  let x_2098 : f32 = u_xlat46.x;
  u_xlat46.x = (-(x_2098) + 1.0f);
  let x_2103 : f32 = u_xlat46.x;
  let x_2105 : f32 = u_xlat46.x;
  u_xlat46.x = (x_2103 * x_2105);
  let x_2109 : f32 = u_xlat46.x;
  let x_2111 : f32 = u_xlat46.x;
  u_xlat46.x = (x_2109 * x_2111);
  let x_2115 : f32 = u_xlat0.x;
  u_xlat67 = ((-(x_2115) * 0.699999988f) + 1.700000048f);
  let x_2122 : f32 = u_xlat0.x;
  let x_2123 : f32 = u_xlat67;
  u_xlat0.x = (x_2122 * x_2123);
  let x_2127 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2127 * 6.0f);
  let x_2139 : vec4<f32> = u_xlat8;
  let x_2142 : f32 = u_xlat0.x;
  let x_2143 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2139.x, x_2139.y, x_2139.z), x_2142);
  u_xlat8 = x_2143;
  let x_2145 : f32 = u_xlat8.w;
  u_xlat0.x = (x_2145 + -1.0f);
  let x_2153 : f32 = x_2151.unity_SpecCube0_HDR.w;
  let x_2155 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_2153 * x_2155) + 1.0f);
  let x_2160 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2160, 0.0f);
  let x_2164 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_2164);
  let x_2168 : f32 = u_xlat0.x;
  let x_2170 : f32 = x_2151.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_2168 * x_2170);
  let x_2174 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_2174);
  let x_2178 : f32 = u_xlat0.x;
  let x_2180 : f32 = x_2151.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_2178 * x_2180);
  let x_2183 : vec4<f32> = u_xlat8;
  let x_2185 : vec3<f32> = u_xlat0;
  let x_2187 : vec3<f32> = (vec3<f32>(x_2183.x, x_2183.y, x_2183.z) * vec3<f32>(x_2185.x, x_2185.x, x_2185.x));
  let x_2188 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2187.x, x_2187.y, x_2187.z, x_2188.w);
  let x_2190 : f32 = u_xlat42;
  let x_2192 : f32 = u_xlat42;
  let x_2196 : vec2<f32> = ((vec2<f32>(x_2190, x_2190) * vec2<f32>(x_2192, x_2192)) + vec2<f32>(-1.0f, 1.0f));
  let x_2197 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_2196.x, x_2197.y, x_2196.y);
  let x_2200 : f32 = u_xlat0.z;
  u_xlat42 = (1.0f / x_2200);
  let x_2202 : vec4<f32> = u_xlat5;
  let x_2205 : f32 = u_xlat65;
  let x_2207 : vec3<f32> = (-(vec3<f32>(x_2202.x, x_2202.y, x_2202.z)) + vec3<f32>(x_2205, x_2205, x_2205));
  let x_2208 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2207.x, x_2207.y, x_2207.z, x_2208.w);
  let x_2210 : vec2<f32> = u_xlat46;
  let x_2212 : vec4<f32> = u_xlat9;
  let x_2215 : vec4<f32> = u_xlat5;
  let x_2217 : vec3<f32> = ((vec3<f32>(x_2210.x, x_2210.x, x_2210.x) * vec3<f32>(x_2212.x, x_2212.y, x_2212.z)) + vec3<f32>(x_2215.x, x_2215.y, x_2215.z));
  let x_2218 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2217.x, x_2217.y, x_2217.z, x_2218.w);
  let x_2220 : f32 = u_xlat42;
  let x_2222 : vec4<f32> = u_xlat9;
  let x_2224 : vec3<f32> = (vec3<f32>(x_2220, x_2220, x_2220) * vec3<f32>(x_2222.x, x_2222.y, x_2222.z));
  let x_2225 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2224.x, x_2224.y, x_2224.z, x_2225.w);
  let x_2227 : vec4<f32> = u_xlat8;
  let x_2229 : vec4<f32> = u_xlat9;
  let x_2231 : vec3<f32> = (vec3<f32>(x_2227.x, x_2227.y, x_2227.z) * vec3<f32>(x_2229.x, x_2229.y, x_2229.z));
  let x_2232 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2231.x, x_2231.y, x_2231.z, x_2232.w);
  let x_2234 : vec4<f32> = u_xlat3;
  let x_2236 : vec4<f32> = u_xlat6;
  let x_2239 : vec4<f32> = u_xlat8;
  let x_2241 : vec3<f32> = ((vec3<f32>(x_2234.x, x_2234.y, x_2234.z) * vec3<f32>(x_2236.x, x_2236.y, x_2236.z)) + vec3<f32>(x_2239.x, x_2239.y, x_2239.z));
  let x_2242 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2241.x, x_2241.y, x_2241.z, x_2242.w);
  let x_2245 : f32 = u_xlat4.x;
  let x_2247 : f32 = x_2151.unity_LightData.z;
  u_xlat42 = (x_2245 * x_2247);
  let x_2249 : vec4<f32> = u_xlat1;
  let x_2252 : vec4<f32> = x_126.x_MainLightPosition;
  u_xlat65 = dot(vec3<f32>(x_2249.x, x_2249.y, x_2249.z), vec3<f32>(x_2252.x, x_2252.y, x_2252.z));
  let x_2255 : f32 = u_xlat65;
  u_xlat65 = clamp(x_2255, 0.0f, 1.0f);
  let x_2257 : f32 = u_xlat42;
  let x_2258 : f32 = u_xlat65;
  u_xlat42 = (x_2257 * x_2258);
  let x_2260 : f32 = u_xlat42;
  let x_2262 : vec4<f32> = u_xlat7;
  let x_2264 : vec3<f32> = (vec3<f32>(x_2260, x_2260, x_2260) * vec3<f32>(x_2262.x, x_2262.y, x_2262.z));
  let x_2265 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2264.x, x_2265.y, x_2264.y, x_2264.z);
  let x_2267 : vec3<f32> = u_xlat2;
  let x_2269 : vec4<f32> = x_126.x_MainLightPosition;
  let x_2271 : vec3<f32> = (x_2267 + vec3<f32>(x_2269.x, x_2269.y, x_2269.z));
  let x_2272 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2271.x, x_2271.y, x_2271.z, x_2272.w);
  let x_2274 : vec4<f32> = u_xlat7;
  let x_2276 : vec4<f32> = u_xlat7;
  u_xlat42 = dot(vec3<f32>(x_2274.x, x_2274.y, x_2274.z), vec3<f32>(x_2276.x, x_2276.y, x_2276.z));
  let x_2279 : f32 = u_xlat42;
  u_xlat42 = max(x_2279, 1.17549435e-37f);
  let x_2282 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_2282);
  let x_2284 : f32 = u_xlat42;
  let x_2286 : vec4<f32> = u_xlat7;
  let x_2288 : vec3<f32> = (vec3<f32>(x_2284, x_2284, x_2284) * vec3<f32>(x_2286.x, x_2286.y, x_2286.z));
  let x_2289 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2288.x, x_2288.y, x_2288.z, x_2289.w);
  let x_2291 : vec4<f32> = u_xlat1;
  let x_2293 : vec4<f32> = u_xlat7;
  u_xlat42 = dot(vec3<f32>(x_2291.x, x_2291.y, x_2291.z), vec3<f32>(x_2293.x, x_2293.y, x_2293.z));
  let x_2296 : f32 = u_xlat42;
  u_xlat42 = clamp(x_2296, 0.0f, 1.0f);
  let x_2299 : vec4<f32> = x_126.x_MainLightPosition;
  let x_2301 : vec4<f32> = u_xlat7;
  u_xlat65 = dot(vec3<f32>(x_2299.x, x_2299.y, x_2299.z), vec3<f32>(x_2301.x, x_2301.y, x_2301.z));
  let x_2304 : f32 = u_xlat65;
  u_xlat65 = clamp(x_2304, 0.0f, 1.0f);
  let x_2306 : f32 = u_xlat42;
  let x_2307 : f32 = u_xlat42;
  u_xlat42 = (x_2306 * x_2307);
  let x_2309 : f32 = u_xlat42;
  let x_2311 : f32 = u_xlat0.x;
  u_xlat42 = ((x_2309 * x_2311) + 1.000010014f);
  let x_2315 : f32 = u_xlat65;
  let x_2316 : f32 = u_xlat65;
  u_xlat65 = (x_2315 * x_2316);
  let x_2318 : f32 = u_xlat42;
  let x_2319 : f32 = u_xlat42;
  u_xlat42 = (x_2318 * x_2319);
  let x_2321 : f32 = u_xlat65;
  u_xlat65 = max(x_2321, 0.100000001f);
  let x_2324 : f32 = u_xlat42;
  let x_2325 : f32 = u_xlat65;
  u_xlat42 = (x_2324 * x_2325);
  let x_2327 : f32 = u_xlat66;
  let x_2328 : f32 = u_xlat42;
  u_xlat42 = (x_2327 * x_2328);
  let x_2330 : f32 = u_xlat64;
  let x_2331 : f32 = u_xlat42;
  u_xlat42 = (x_2330 / x_2331);
  let x_2333 : vec4<f32> = u_xlat5;
  let x_2335 : f32 = u_xlat42;
  let x_2338 : vec4<f32> = u_xlat6;
  let x_2340 : vec3<f32> = ((vec3<f32>(x_2333.x, x_2333.y, x_2333.z) * vec3<f32>(x_2335, x_2335, x_2335)) + vec3<f32>(x_2338.x, x_2338.y, x_2338.z));
  let x_2341 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2340.x, x_2340.y, x_2340.z, x_2341.w);
  let x_2343 : vec4<f32> = u_xlat4;
  let x_2345 : vec4<f32> = u_xlat7;
  let x_2347 : vec3<f32> = (vec3<f32>(x_2343.x, x_2343.z, x_2343.w) * vec3<f32>(x_2345.x, x_2345.y, x_2345.z));
  let x_2348 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2347.x, x_2348.y, x_2347.y, x_2347.z);
  let x_2351 : f32 = x_126.x_AdditionalLightsCount.x;
  let x_2353 : f32 = x_2151.unity_LightData.y;
  u_xlat42 = min(x_2351, x_2353);
  let x_2357 : f32 = u_xlat42;
  u_xlatu42 = bitcast<u32>(i32(x_2357));
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2369 : u32 = u_xlatu_loop_1;
    let x_2370 : u32 = u_xlatu42;
    if ((x_2369 < x_2370)) {
    } else {
      break;
    }
    let x_2373 : u32 = u_xlatu_loop_1;
    u_xlatu68 = (x_2373 >> 2u);
    let x_2377 : u32 = u_xlatu_loop_1;
    u_xlati69 = bitcast<i32>((x_2377 & 3u));
    let x_2380 : u32 = u_xlatu68;
    let x_2383 : vec4<f32> = x_2151.unity_LightIndices[bitcast<i32>(x_2380)];
    let x_2393 : i32 = u_xlati69;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2398 : vec4<u32> = indexable[x_2393];
    u_xlat68 = dot(x_2383, bitcast<vec4<f32>>(x_2398));
    let x_2402 : f32 = u_xlat68;
    u_xlati68 = i32(x_2402);
    let x_2404 : vec3<f32> = vs_TEXCOORD7;
    let x_2416 : i32 = u_xlati68;
    let x_2418 : vec4<f32> = x_2415.x_AdditionalLightsPosition[x_2416];
    let x_2421 : i32 = u_xlati68;
    let x_2423 : vec4<f32> = x_2415.x_AdditionalLightsPosition[x_2421];
    let x_2425 : vec3<f32> = ((-(x_2404) * vec3<f32>(x_2418.w, x_2418.w, x_2418.w)) + vec3<f32>(x_2423.x, x_2423.y, x_2423.z));
    let x_2426 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2425.x, x_2425.y, x_2425.z, x_2426.w);
    let x_2428 : vec4<f32> = u_xlat8;
    let x_2430 : vec4<f32> = u_xlat8;
    u_xlat69 = dot(vec3<f32>(x_2428.x, x_2428.y, x_2428.z), vec3<f32>(x_2430.x, x_2430.y, x_2430.z));
    let x_2433 : f32 = u_xlat69;
    u_xlat69 = max(x_2433, 6.10351562e-05f);
    let x_2436 : f32 = u_xlat69;
    u_xlat70 = inverseSqrt(x_2436);
    let x_2438 : f32 = u_xlat70;
    let x_2440 : vec4<f32> = u_xlat8;
    let x_2442 : vec3<f32> = (vec3<f32>(x_2438, x_2438, x_2438) * vec3<f32>(x_2440.x, x_2440.y, x_2440.z));
    let x_2443 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2442.x, x_2442.y, x_2442.z, x_2443.w);
    let x_2446 : f32 = u_xlat69;
    u_xlat71 = (1.0f / x_2446);
    let x_2448 : f32 = u_xlat69;
    let x_2449 : i32 = u_xlati68;
    let x_2451 : f32 = x_2415.x_AdditionalLightsAttenuation[x_2449].x;
    u_xlat69 = (x_2448 * x_2451);
    let x_2453 : f32 = u_xlat69;
    let x_2455 : f32 = u_xlat69;
    u_xlat69 = ((-(x_2453) * x_2455) + 1.0f);
    let x_2458 : f32 = u_xlat69;
    u_xlat69 = max(x_2458, 0.0f);
    let x_2460 : f32 = u_xlat69;
    let x_2461 : f32 = u_xlat69;
    u_xlat69 = (x_2460 * x_2461);
    let x_2463 : f32 = u_xlat69;
    let x_2464 : f32 = u_xlat71;
    u_xlat69 = (x_2463 * x_2464);
    let x_2466 : i32 = u_xlati68;
    let x_2468 : vec4<f32> = x_2415.x_AdditionalLightsSpotDir[x_2466];
    let x_2470 : vec4<f32> = u_xlat9;
    u_xlat71 = dot(vec3<f32>(x_2468.x, x_2468.y, x_2468.z), vec3<f32>(x_2470.x, x_2470.y, x_2470.z));
    let x_2473 : f32 = u_xlat71;
    let x_2474 : i32 = u_xlati68;
    let x_2476 : f32 = x_2415.x_AdditionalLightsAttenuation[x_2474].z;
    let x_2478 : i32 = u_xlati68;
    let x_2480 : f32 = x_2415.x_AdditionalLightsAttenuation[x_2478].w;
    u_xlat71 = ((x_2473 * x_2476) + x_2480);
    let x_2482 : f32 = u_xlat71;
    u_xlat71 = clamp(x_2482, 0.0f, 1.0f);
    let x_2484 : f32 = u_xlat71;
    let x_2485 : f32 = u_xlat71;
    u_xlat71 = (x_2484 * x_2485);
    let x_2487 : f32 = u_xlat69;
    let x_2488 : f32 = u_xlat71;
    u_xlat69 = (x_2487 * x_2488);
    let x_2490 : f32 = u_xlat25;
    let x_2492 : i32 = u_xlati68;
    let x_2494 : vec4<f32> = x_2415.x_AdditionalLightsColor[x_2492];
    let x_2496 : vec3<f32> = (vec3<f32>(x_2490, x_2490, x_2490) * vec3<f32>(x_2494.x, x_2494.y, x_2494.z));
    let x_2497 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2496.x, x_2496.y, x_2496.z, x_2497.w);
    let x_2499 : vec4<f32> = u_xlat1;
    let x_2501 : vec4<f32> = u_xlat9;
    u_xlat68 = dot(vec3<f32>(x_2499.x, x_2499.y, x_2499.z), vec3<f32>(x_2501.x, x_2501.y, x_2501.z));
    let x_2504 : f32 = u_xlat68;
    u_xlat68 = clamp(x_2504, 0.0f, 1.0f);
    let x_2506 : f32 = u_xlat68;
    let x_2507 : f32 = u_xlat69;
    u_xlat68 = (x_2506 * x_2507);
    let x_2509 : f32 = u_xlat68;
    let x_2511 : vec4<f32> = u_xlat10;
    let x_2513 : vec3<f32> = (vec3<f32>(x_2509, x_2509, x_2509) * vec3<f32>(x_2511.x, x_2511.y, x_2511.z));
    let x_2514 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2513.x, x_2513.y, x_2513.z, x_2514.w);
    let x_2516 : vec4<f32> = u_xlat8;
    let x_2518 : f32 = u_xlat70;
    let x_2521 : vec3<f32> = u_xlat2;
    let x_2522 : vec3<f32> = ((vec3<f32>(x_2516.x, x_2516.y, x_2516.z) * vec3<f32>(x_2518, x_2518, x_2518)) + x_2521);
    let x_2523 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2522.x, x_2522.y, x_2522.z, x_2523.w);
    let x_2525 : vec4<f32> = u_xlat8;
    let x_2527 : vec4<f32> = u_xlat8;
    u_xlat68 = dot(vec3<f32>(x_2525.x, x_2525.y, x_2525.z), vec3<f32>(x_2527.x, x_2527.y, x_2527.z));
    let x_2530 : f32 = u_xlat68;
    u_xlat68 = max(x_2530, 1.17549435e-37f);
    let x_2532 : f32 = u_xlat68;
    u_xlat68 = inverseSqrt(x_2532);
    let x_2534 : f32 = u_xlat68;
    let x_2536 : vec4<f32> = u_xlat8;
    let x_2538 : vec3<f32> = (vec3<f32>(x_2534, x_2534, x_2534) * vec3<f32>(x_2536.x, x_2536.y, x_2536.z));
    let x_2539 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2538.x, x_2538.y, x_2538.z, x_2539.w);
    let x_2541 : vec4<f32> = u_xlat1;
    let x_2543 : vec4<f32> = u_xlat8;
    u_xlat68 = dot(vec3<f32>(x_2541.x, x_2541.y, x_2541.z), vec3<f32>(x_2543.x, x_2543.y, x_2543.z));
    let x_2546 : f32 = u_xlat68;
    u_xlat68 = clamp(x_2546, 0.0f, 1.0f);
    let x_2548 : vec4<f32> = u_xlat9;
    let x_2550 : vec4<f32> = u_xlat8;
    u_xlat69 = dot(vec3<f32>(x_2548.x, x_2548.y, x_2548.z), vec3<f32>(x_2550.x, x_2550.y, x_2550.z));
    let x_2553 : f32 = u_xlat69;
    u_xlat69 = clamp(x_2553, 0.0f, 1.0f);
    let x_2555 : f32 = u_xlat68;
    let x_2556 : f32 = u_xlat68;
    u_xlat68 = (x_2555 * x_2556);
    let x_2558 : f32 = u_xlat68;
    let x_2560 : f32 = u_xlat0.x;
    u_xlat68 = ((x_2558 * x_2560) + 1.000010014f);
    let x_2563 : f32 = u_xlat69;
    let x_2564 : f32 = u_xlat69;
    u_xlat69 = (x_2563 * x_2564);
    let x_2566 : f32 = u_xlat68;
    let x_2567 : f32 = u_xlat68;
    u_xlat68 = (x_2566 * x_2567);
    let x_2569 : f32 = u_xlat69;
    u_xlat69 = max(x_2569, 0.100000001f);
    let x_2571 : f32 = u_xlat68;
    let x_2572 : f32 = u_xlat69;
    u_xlat68 = (x_2571 * x_2572);
    let x_2574 : f32 = u_xlat66;
    let x_2575 : f32 = u_xlat68;
    u_xlat68 = (x_2574 * x_2575);
    let x_2577 : f32 = u_xlat64;
    let x_2578 : f32 = u_xlat68;
    u_xlat68 = (x_2577 / x_2578);
    let x_2580 : vec4<f32> = u_xlat5;
    let x_2582 : f32 = u_xlat68;
    let x_2585 : vec4<f32> = u_xlat6;
    let x_2587 : vec3<f32> = ((vec3<f32>(x_2580.x, x_2580.y, x_2580.z) * vec3<f32>(x_2582, x_2582, x_2582)) + vec3<f32>(x_2585.x, x_2585.y, x_2585.z));
    let x_2588 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2587.x, x_2587.y, x_2587.z, x_2588.w);
    let x_2590 : vec4<f32> = u_xlat8;
    let x_2592 : vec4<f32> = u_xlat10;
    let x_2595 : vec4<f32> = u_xlat7;
    let x_2597 : vec3<f32> = ((vec3<f32>(x_2590.x, x_2590.y, x_2590.z) * vec3<f32>(x_2592.x, x_2592.y, x_2592.z)) + vec3<f32>(x_2595.x, x_2595.y, x_2595.z));
    let x_2598 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2597.x, x_2597.y, x_2597.z, x_2598.w);

    continuing {
      let x_2600 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2600 + bitcast<u32>(1i));
    }
  }
  let x_2602 : vec4<f32> = u_xlat3;
  let x_2604 : f32 = u_xlat21;
  let x_2607 : vec4<f32> = u_xlat4;
  u_xlat0 = ((vec3<f32>(x_2602.x, x_2602.y, x_2602.z) * vec3<f32>(x_2604, x_2604, x_2604)) + vec3<f32>(x_2607.x, x_2607.z, x_2607.w));
  let x_2610 : vec4<f32> = u_xlat7;
  let x_2612 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_2610.x, x_2610.y, x_2610.z) + x_2612);
  let x_2616 : f32 = u_xlat63;
  let x_2618 : vec3<f32> = u_xlat0;
  let x_2619 : vec3<f32> = (vec3<f32>(x_2616, x_2616, x_2616) * x_2618);
  let x_2620 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2619.x, x_2619.y, x_2619.z, x_2620.w);
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

