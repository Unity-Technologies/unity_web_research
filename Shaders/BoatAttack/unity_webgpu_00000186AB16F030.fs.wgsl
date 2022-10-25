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

@group(1) @binding(4) var<uniform> x_614 : MainLightShadows;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(11) var samplerunity_Lightmap : sampler;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(8) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(14) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(9) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(15) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(10) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_2355 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_2617 : AdditionalLights;

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
  var x_2234 : f32;
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
  let x_805 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_801.z, x_801.w), x_804);
  u_xlat4 = x_805;
  let x_810 : vec4<f32> = vs_TEXCOORD0;
  let x_813 : f32 = x_126.x_GlobalMipBias.x;
  let x_814 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_810.z, x_810.w), x_813);
  let x_815 : vec3<f32> = vec3<f32>(x_814.x, x_814.y, x_814.z);
  let x_816 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_815.x, x_815.y, x_815.z, x_816.w);
  let x_818 : vec4<f32> = u_xlat4;
  let x_822 : vec3<f32> = (vec3<f32>(x_818.x, x_818.y, x_818.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_823 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_822.x, x_822.y, x_822.z, x_823.w);
  let x_825 : vec4<f32> = u_xlat1;
  let x_827 : vec4<f32> = u_xlat4;
  u_xlat64 = dot(vec3<f32>(x_825.x, x_825.y, x_825.z), vec3<f32>(x_827.x, x_827.y, x_827.z));
  let x_830 : f32 = u_xlat64;
  u_xlat64 = (x_830 + 0.5f);
  let x_832 : f32 = u_xlat64;
  let x_834 : vec4<f32> = u_xlat6;
  let x_836 : vec3<f32> = (vec3<f32>(x_832, x_832, x_832) * vec3<f32>(x_834.x, x_834.y, x_834.z));
  let x_837 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_836.x, x_836.y, x_836.z, x_837.w);
  let x_840 : f32 = u_xlat4.w;
  u_xlat64 = max(x_840, 0.0001f);
  let x_843 : vec4<f32> = u_xlat4;
  let x_845 : f32 = u_xlat64;
  let x_847 : vec3<f32> = (vec3<f32>(x_843.x, x_843.y, x_843.z) / vec3<f32>(x_845, x_845, x_845));
  let x_848 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_847.x, x_847.y, x_847.z, x_848.w);
  let x_852 : vec4<f32> = x_126.x_ScaledScreenParams;
  let x_853 : vec2<f32> = vec2<f32>(x_852.x, x_852.y);
  let x_857 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_853.x, x_853.y));
  let x_858 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_857.x, x_857.y, x_858.z, x_858.w);
  let x_860 : vec4<f32> = u_xlat6;
  let x_862 : vec4<f32> = hlslcc_FragCoord;
  let x_864 : vec2<f32> = (vec2<f32>(x_860.x, x_860.y) * vec2<f32>(x_862.x, x_862.y));
  let x_865 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_864.x, x_864.y, x_865.z, x_865.w);
  let x_868 : f32 = u_xlat6.y;
  let x_870 : f32 = x_126.x_ScaleBiasRt.x;
  let x_873 : f32 = x_126.x_ScaleBiasRt.y;
  u_xlat64 = ((x_868 * x_870) + x_873);
  let x_875 : f32 = u_xlat64;
  u_xlat6.z = (-(x_875) + 1.0f);
  let x_880 : f32 = u_xlat0.x;
  u_xlat64 = ((-(x_880) * 0.959999979f) + 0.959999979f);
  let x_886 : f32 = u_xlat42;
  let x_887 : f32 = u_xlat64;
  u_xlat65 = (x_886 + -(x_887));
  let x_890 : f32 = u_xlat64;
  let x_892 : vec4<f32> = u_xlat5;
  let x_894 : vec3<f32> = (vec3<f32>(x_890, x_890, x_890) * vec3<f32>(x_892.x, x_892.y, x_892.z));
  let x_895 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_894.x, x_894.y, x_894.z, x_895.w);
  let x_897 : vec4<f32> = u_xlat5;
  let x_901 : vec3<f32> = (vec3<f32>(x_897.x, x_897.y, x_897.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_902 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_901.x, x_901.y, x_901.z, x_902.w);
  let x_904 : vec3<f32> = u_xlat0;
  let x_906 : vec4<f32> = u_xlat5;
  let x_911 : vec3<f32> = ((vec3<f32>(x_904.x, x_904.x, x_904.x) * vec3<f32>(x_906.x, x_906.y, x_906.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_912 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_911.x, x_911.y, x_911.z, x_912.w);
  let x_914 : f32 = u_xlat42;
  u_xlat0.x = (-(x_914) + 1.0f);
  let x_919 : f32 = u_xlat0.x;
  let x_921 : f32 = u_xlat0.x;
  u_xlat42 = (x_919 * x_921);
  let x_923 : f32 = u_xlat42;
  u_xlat42 = max(x_923, 0.0078125f);
  let x_926 : f32 = u_xlat42;
  let x_927 : f32 = u_xlat42;
  u_xlat64 = (x_926 * x_927);
  let x_929 : f32 = u_xlat65;
  u_xlat65 = (x_929 + 1.0f);
  let x_931 : f32 = u_xlat65;
  u_xlat65 = clamp(x_931, 0.0f, 1.0f);
  let x_934 : f32 = u_xlat42;
  u_xlat66 = ((x_934 * 4.0f) + 2.0f);
  let x_943 : vec4<f32> = u_xlat6;
  let x_946 : f32 = x_126.x_GlobalMipBias.x;
  let x_947 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_943.x, x_943.z), x_946);
  u_xlat67 = x_947.x;
  let x_950 : f32 = u_xlat67;
  u_xlat68 = (x_950 + -1.0f);
  let x_953 : f32 = x_126.x_AmbientOcclusionParam.w;
  let x_954 : f32 = u_xlat68;
  u_xlat68 = ((x_953 * x_954) + 1.0f);
  let x_957 : f32 = u_xlat21;
  let x_958 : f32 = u_xlat67;
  u_xlat21 = min(x_957, x_958);
  let x_962 : f32 = x_614.x_MainLightShadowParams.y;
  u_xlatb67 = (0.0f < x_962);
  let x_964 : bool = u_xlatb67;
  if (x_964) {
    let x_968 : f32 = x_614.x_MainLightShadowParams.y;
    u_xlatb67 = (x_968 == 1.0f);
    let x_970 : bool = u_xlatb67;
    if (x_970) {
      let x_973 : vec4<f32> = u_xlat3;
      let x_976 : vec4<f32> = x_614.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_973.x, x_973.y, x_973.x, x_973.y) + x_976);
      let x_979 : vec4<f32> = u_xlat6;
      let x_980 : vec2<f32> = vec2<f32>(x_979.x, x_979.y);
      let x_982 : f32 = u_xlat3.z;
      txVec0 = vec3<f32>(x_980.x, x_980.y, x_982);
      let x_994 : vec3<f32> = txVec0;
      let x_996 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_994.xy, x_994.z);
      u_xlat8.x = x_996;
      let x_999 : vec4<f32> = u_xlat6;
      let x_1000 : vec2<f32> = vec2<f32>(x_999.z, x_999.w);
      let x_1002 : f32 = u_xlat3.z;
      txVec1 = vec3<f32>(x_1000.x, x_1000.y, x_1002);
      let x_1009 : vec3<f32> = txVec1;
      let x_1011 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1009.xy, x_1009.z);
      u_xlat8.y = x_1011;
      let x_1013 : vec4<f32> = u_xlat3;
      let x_1016 : vec4<f32> = x_614.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_1013.x, x_1013.y, x_1013.x, x_1013.y) + x_1016);
      let x_1019 : vec4<f32> = u_xlat6;
      let x_1020 : vec2<f32> = vec2<f32>(x_1019.x, x_1019.y);
      let x_1022 : f32 = u_xlat3.z;
      txVec2 = vec3<f32>(x_1020.x, x_1020.y, x_1022);
      let x_1029 : vec3<f32> = txVec2;
      let x_1031 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1029.xy, x_1029.z);
      u_xlat8.z = x_1031;
      let x_1034 : vec4<f32> = u_xlat6;
      let x_1035 : vec2<f32> = vec2<f32>(x_1034.z, x_1034.w);
      let x_1037 : f32 = u_xlat3.z;
      txVec3 = vec3<f32>(x_1035.x, x_1035.y, x_1037);
      let x_1044 : vec3<f32> = txVec3;
      let x_1046 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1044.xy, x_1044.z);
      u_xlat8.w = x_1046;
      let x_1048 : vec4<f32> = u_xlat8;
      u_xlat67 = dot(x_1048, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_1055 : f32 = x_614.x_MainLightShadowParams.y;
      u_xlatb6 = (x_1055 == 2.0f);
      let x_1057 : bool = u_xlatb6;
      if (x_1057) {
        let x_1060 : vec4<f32> = u_xlat3;
        let x_1063 : vec4<f32> = x_614.x_MainLightShadowmapSize;
        let x_1066 : vec2<f32> = ((vec2<f32>(x_1060.x, x_1060.y) * vec2<f32>(x_1063.z, x_1063.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1067 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1066.x, x_1066.y, x_1067.z, x_1067.w);
        let x_1069 : vec4<f32> = u_xlat6;
        let x_1071 : vec2<f32> = floor(vec2<f32>(x_1069.x, x_1069.y));
        let x_1072 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1071.x, x_1071.y, x_1072.z, x_1072.w);
        let x_1076 : vec4<f32> = u_xlat3;
        let x_1079 : vec4<f32> = x_614.x_MainLightShadowmapSize;
        let x_1082 : vec4<f32> = u_xlat6;
        u_xlat48 = ((vec2<f32>(x_1076.x, x_1076.y) * vec2<f32>(x_1079.z, x_1079.w)) + -(vec2<f32>(x_1082.x, x_1082.y)));
        let x_1086 : vec2<f32> = u_xlat48;
        u_xlat8 = (vec4<f32>(x_1086.x, x_1086.x, x_1086.y, x_1086.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1090 : vec4<f32> = u_xlat8;
        let x_1092 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1090.x, x_1090.x, x_1090.z, x_1090.z) * vec4<f32>(x_1092.x, x_1092.x, x_1092.z, x_1092.z));
        let x_1095 : vec4<f32> = u_xlat9;
        let x_1099 : vec2<f32> = (vec2<f32>(x_1095.y, x_1095.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_1100 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1099.x, x_1100.y, x_1099.y, x_1100.w);
        let x_1102 : vec4<f32> = u_xlat9;
        let x_1105 : vec2<f32> = u_xlat48;
        let x_1107 : vec2<f32> = ((vec2<f32>(x_1102.x, x_1102.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1105));
        let x_1108 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1107.x, x_1107.y, x_1108.z, x_1108.w);
        let x_1111 : vec2<f32> = u_xlat48;
        u_xlat51 = (-(x_1111) + vec2<f32>(1.0f, 1.0f));
        let x_1114 : vec2<f32> = u_xlat48;
        let x_1116 : vec2<f32> = min(x_1114, vec2<f32>(0.0f, 0.0f));
        let x_1117 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1116.x, x_1116.y, x_1117.z, x_1117.w);
        let x_1119 : vec4<f32> = u_xlat10;
        let x_1122 : vec4<f32> = u_xlat10;
        let x_1125 : vec2<f32> = u_xlat51;
        let x_1126 : vec2<f32> = ((-(vec2<f32>(x_1119.x, x_1119.y)) * vec2<f32>(x_1122.x, x_1122.y)) + x_1125);
        let x_1127 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1126.x, x_1126.y, x_1127.z, x_1127.w);
        let x_1129 : vec2<f32> = u_xlat48;
        u_xlat48 = max(x_1129, vec2<f32>(0.0f, 0.0f));
        let x_1131 : vec2<f32> = u_xlat48;
        let x_1133 : vec2<f32> = u_xlat48;
        let x_1135 : vec4<f32> = u_xlat8;
        u_xlat48 = ((-(x_1131) * x_1133) + vec2<f32>(x_1135.y, x_1135.w));
        let x_1138 : vec4<f32> = u_xlat10;
        let x_1140 : vec2<f32> = (vec2<f32>(x_1138.x, x_1138.y) + vec2<f32>(1.0f, 1.0f));
        let x_1141 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1140.x, x_1140.y, x_1141.z, x_1141.w);
        let x_1143 : vec2<f32> = u_xlat48;
        u_xlat48 = (x_1143 + vec2<f32>(1.0f, 1.0f));
        let x_1145 : vec4<f32> = u_xlat9;
        let x_1149 : vec2<f32> = (vec2<f32>(x_1145.x, x_1145.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1150 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1149.x, x_1149.y, x_1150.z, x_1150.w);
        let x_1152 : vec2<f32> = u_xlat51;
        let x_1153 : vec2<f32> = (x_1152 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1154 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1153.x, x_1153.y, x_1154.z, x_1154.w);
        let x_1156 : vec4<f32> = u_xlat10;
        let x_1158 : vec2<f32> = (vec2<f32>(x_1156.x, x_1156.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1159 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1158.x, x_1158.y, x_1159.z, x_1159.w);
        let x_1161 : vec2<f32> = u_xlat48;
        let x_1162 : vec2<f32> = (x_1161 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1163 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1162.x, x_1162.y, x_1163.z, x_1163.w);
        let x_1165 : vec4<f32> = u_xlat8;
        u_xlat48 = (vec2<f32>(x_1165.y, x_1165.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1169 : f32 = u_xlat10.x;
        u_xlat11.z = x_1169;
        let x_1172 : f32 = u_xlat48.x;
        u_xlat11.w = x_1172;
        let x_1175 : f32 = u_xlat12.x;
        u_xlat9.z = x_1175;
        let x_1178 : f32 = u_xlat8.x;
        u_xlat9.w = x_1178;
        let x_1180 : vec4<f32> = u_xlat9;
        let x_1182 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_1180.z, x_1180.w, x_1180.x, x_1180.z) + vec4<f32>(x_1182.z, x_1182.w, x_1182.x, x_1182.z));
        let x_1186 : f32 = u_xlat11.y;
        u_xlat10.z = x_1186;
        let x_1189 : f32 = u_xlat48.y;
        u_xlat10.w = x_1189;
        let x_1192 : f32 = u_xlat9.y;
        u_xlat12.z = x_1192;
        let x_1195 : f32 = u_xlat8.z;
        u_xlat12.w = x_1195;
        let x_1197 : vec4<f32> = u_xlat10;
        let x_1199 : vec4<f32> = u_xlat12;
        let x_1201 : vec3<f32> = (vec3<f32>(x_1197.z, x_1197.y, x_1197.w) + vec3<f32>(x_1199.z, x_1199.y, x_1199.w));
        let x_1202 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1201.x, x_1201.y, x_1201.z, x_1202.w);
        let x_1204 : vec4<f32> = u_xlat9;
        let x_1206 : vec4<f32> = u_xlat13;
        let x_1208 : vec3<f32> = (vec3<f32>(x_1204.x, x_1204.z, x_1204.w) / vec3<f32>(x_1206.z, x_1206.w, x_1206.y));
        let x_1209 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1208.x, x_1208.y, x_1208.z, x_1209.w);
        let x_1211 : vec4<f32> = u_xlat9;
        let x_1216 : vec3<f32> = (vec3<f32>(x_1211.x, x_1211.y, x_1211.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1217 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1216.x, x_1216.y, x_1216.z, x_1217.w);
        let x_1219 : vec4<f32> = u_xlat12;
        let x_1221 : vec4<f32> = u_xlat8;
        let x_1223 : vec3<f32> = (vec3<f32>(x_1219.z, x_1219.y, x_1219.w) / vec3<f32>(x_1221.x, x_1221.y, x_1221.z));
        let x_1224 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1223.x, x_1223.y, x_1223.z, x_1224.w);
        let x_1226 : vec4<f32> = u_xlat10;
        let x_1228 : vec3<f32> = (vec3<f32>(x_1226.x, x_1226.y, x_1226.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1229 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1228.x, x_1228.y, x_1228.z, x_1229.w);
        let x_1231 : vec4<f32> = u_xlat9;
        let x_1234 : vec4<f32> = x_614.x_MainLightShadowmapSize;
        let x_1236 : vec3<f32> = (vec3<f32>(x_1231.y, x_1231.x, x_1231.z) * vec3<f32>(x_1234.x, x_1234.x, x_1234.x));
        let x_1237 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1236.x, x_1236.y, x_1236.z, x_1237.w);
        let x_1239 : vec4<f32> = u_xlat10;
        let x_1242 : vec4<f32> = x_614.x_MainLightShadowmapSize;
        let x_1244 : vec3<f32> = (vec3<f32>(x_1239.x, x_1239.y, x_1239.z) * vec3<f32>(x_1242.y, x_1242.y, x_1242.y));
        let x_1245 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1244.x, x_1244.y, x_1244.z, x_1245.w);
        let x_1248 : f32 = u_xlat10.x;
        u_xlat9.w = x_1248;
        let x_1250 : vec4<f32> = u_xlat6;
        let x_1253 : vec4<f32> = x_614.x_MainLightShadowmapSize;
        let x_1256 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1250.x, x_1250.y, x_1250.x, x_1250.y) * vec4<f32>(x_1253.x, x_1253.y, x_1253.x, x_1253.y)) + vec4<f32>(x_1256.y, x_1256.w, x_1256.x, x_1256.w));
        let x_1259 : vec4<f32> = u_xlat6;
        let x_1262 : vec4<f32> = x_614.x_MainLightShadowmapSize;
        let x_1265 : vec4<f32> = u_xlat9;
        u_xlat48 = ((vec2<f32>(x_1259.x, x_1259.y) * vec2<f32>(x_1262.x, x_1262.y)) + vec2<f32>(x_1265.z, x_1265.w));
        let x_1269 : f32 = u_xlat9.y;
        u_xlat10.w = x_1269;
        let x_1271 : vec4<f32> = u_xlat10;
        let x_1272 : vec2<f32> = vec2<f32>(x_1271.y, x_1271.z);
        let x_1273 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1273.x, x_1272.x, x_1273.z, x_1272.y);
        let x_1275 : vec4<f32> = u_xlat6;
        let x_1278 : vec4<f32> = x_614.x_MainLightShadowmapSize;
        let x_1281 : vec4<f32> = u_xlat9;
        u_xlat12 = ((vec4<f32>(x_1275.x, x_1275.y, x_1275.x, x_1275.y) * vec4<f32>(x_1278.x, x_1278.y, x_1278.x, x_1278.y)) + vec4<f32>(x_1281.x, x_1281.y, x_1281.z, x_1281.y));
        let x_1284 : vec4<f32> = u_xlat6;
        let x_1287 : vec4<f32> = x_614.x_MainLightShadowmapSize;
        let x_1290 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_1284.x, x_1284.y, x_1284.x, x_1284.y) * vec4<f32>(x_1287.x, x_1287.y, x_1287.x, x_1287.y)) + vec4<f32>(x_1290.w, x_1290.y, x_1290.w, x_1290.z));
        let x_1293 : vec4<f32> = u_xlat6;
        let x_1296 : vec4<f32> = x_614.x_MainLightShadowmapSize;
        let x_1299 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1293.x, x_1293.y, x_1293.x, x_1293.y) * vec4<f32>(x_1296.x, x_1296.y, x_1296.x, x_1296.y)) + vec4<f32>(x_1299.x, x_1299.w, x_1299.z, x_1299.w));
        let x_1303 : vec4<f32> = u_xlat8;
        let x_1305 : vec4<f32> = u_xlat13;
        u_xlat14 = (vec4<f32>(x_1303.x, x_1303.x, x_1303.x, x_1303.y) * vec4<f32>(x_1305.z, x_1305.w, x_1305.y, x_1305.z));
        let x_1309 : vec4<f32> = u_xlat8;
        let x_1311 : vec4<f32> = u_xlat13;
        u_xlat15 = (vec4<f32>(x_1309.y, x_1309.y, x_1309.z, x_1309.z) * x_1311);
        let x_1314 : f32 = u_xlat8.z;
        let x_1316 : f32 = u_xlat13.y;
        u_xlat6.x = (x_1314 * x_1316);
        let x_1320 : vec4<f32> = u_xlat11;
        let x_1321 : vec2<f32> = vec2<f32>(x_1320.x, x_1320.y);
        let x_1323 : f32 = u_xlat3.z;
        txVec4 = vec3<f32>(x_1321.x, x_1321.y, x_1323);
        let x_1331 : vec3<f32> = txVec4;
        let x_1333 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1331.xy, x_1331.z);
        u_xlat27 = x_1333;
        let x_1335 : vec4<f32> = u_xlat11;
        let x_1336 : vec2<f32> = vec2<f32>(x_1335.z, x_1335.w);
        let x_1338 : f32 = u_xlat3.z;
        txVec5 = vec3<f32>(x_1336.x, x_1336.y, x_1338);
        let x_1346 : vec3<f32> = txVec5;
        let x_1348 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1346.xy, x_1346.z);
        u_xlat70 = x_1348;
        let x_1349 : f32 = u_xlat70;
        let x_1351 : f32 = u_xlat14.y;
        u_xlat70 = (x_1349 * x_1351);
        let x_1354 : f32 = u_xlat14.x;
        let x_1355 : f32 = u_xlat27;
        let x_1357 : f32 = u_xlat70;
        u_xlat27 = ((x_1354 * x_1355) + x_1357);
        let x_1360 : vec2<f32> = u_xlat48;
        let x_1362 : f32 = u_xlat3.z;
        txVec6 = vec3<f32>(x_1360.x, x_1360.y, x_1362);
        let x_1369 : vec3<f32> = txVec6;
        let x_1371 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1369.xy, x_1369.z);
        u_xlat48.x = x_1371;
        let x_1374 : f32 = u_xlat14.z;
        let x_1376 : f32 = u_xlat48.x;
        let x_1378 : f32 = u_xlat27;
        u_xlat27 = ((x_1374 * x_1376) + x_1378);
        let x_1381 : vec4<f32> = u_xlat10;
        let x_1382 : vec2<f32> = vec2<f32>(x_1381.x, x_1381.y);
        let x_1384 : f32 = u_xlat3.z;
        txVec7 = vec3<f32>(x_1382.x, x_1382.y, x_1384);
        let x_1391 : vec3<f32> = txVec7;
        let x_1393 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1391.xy, x_1391.z);
        u_xlat48.x = x_1393;
        let x_1396 : f32 = u_xlat14.w;
        let x_1398 : f32 = u_xlat48.x;
        let x_1400 : f32 = u_xlat27;
        u_xlat27 = ((x_1396 * x_1398) + x_1400);
        let x_1403 : vec4<f32> = u_xlat12;
        let x_1404 : vec2<f32> = vec2<f32>(x_1403.x, x_1403.y);
        let x_1406 : f32 = u_xlat3.z;
        txVec8 = vec3<f32>(x_1404.x, x_1404.y, x_1406);
        let x_1413 : vec3<f32> = txVec8;
        let x_1415 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1413.xy, x_1413.z);
        u_xlat48.x = x_1415;
        let x_1418 : f32 = u_xlat15.x;
        let x_1420 : f32 = u_xlat48.x;
        let x_1422 : f32 = u_xlat27;
        u_xlat27 = ((x_1418 * x_1420) + x_1422);
        let x_1425 : vec4<f32> = u_xlat12;
        let x_1426 : vec2<f32> = vec2<f32>(x_1425.z, x_1425.w);
        let x_1428 : f32 = u_xlat3.z;
        txVec9 = vec3<f32>(x_1426.x, x_1426.y, x_1428);
        let x_1435 : vec3<f32> = txVec9;
        let x_1437 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1435.xy, x_1435.z);
        u_xlat48.x = x_1437;
        let x_1440 : f32 = u_xlat15.y;
        let x_1442 : f32 = u_xlat48.x;
        let x_1444 : f32 = u_xlat27;
        u_xlat27 = ((x_1440 * x_1442) + x_1444);
        let x_1447 : vec4<f32> = u_xlat10;
        let x_1448 : vec2<f32> = vec2<f32>(x_1447.z, x_1447.w);
        let x_1450 : f32 = u_xlat3.z;
        txVec10 = vec3<f32>(x_1448.x, x_1448.y, x_1450);
        let x_1457 : vec3<f32> = txVec10;
        let x_1459 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1457.xy, x_1457.z);
        u_xlat48.x = x_1459;
        let x_1462 : f32 = u_xlat15.z;
        let x_1464 : f32 = u_xlat48.x;
        let x_1466 : f32 = u_xlat27;
        u_xlat27 = ((x_1462 * x_1464) + x_1466);
        let x_1469 : vec4<f32> = u_xlat9;
        let x_1470 : vec2<f32> = vec2<f32>(x_1469.x, x_1469.y);
        let x_1472 : f32 = u_xlat3.z;
        txVec11 = vec3<f32>(x_1470.x, x_1470.y, x_1472);
        let x_1479 : vec3<f32> = txVec11;
        let x_1481 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1479.xy, x_1479.z);
        u_xlat48.x = x_1481;
        let x_1484 : f32 = u_xlat15.w;
        let x_1486 : f32 = u_xlat48.x;
        let x_1488 : f32 = u_xlat27;
        u_xlat27 = ((x_1484 * x_1486) + x_1488);
        let x_1491 : vec4<f32> = u_xlat9;
        let x_1492 : vec2<f32> = vec2<f32>(x_1491.z, x_1491.w);
        let x_1494 : f32 = u_xlat3.z;
        txVec12 = vec3<f32>(x_1492.x, x_1492.y, x_1494);
        let x_1501 : vec3<f32> = txVec12;
        let x_1503 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1501.xy, x_1501.z);
        u_xlat48.x = x_1503;
        let x_1506 : f32 = u_xlat6.x;
        let x_1508 : f32 = u_xlat48.x;
        let x_1510 : f32 = u_xlat27;
        u_xlat67 = ((x_1506 * x_1508) + x_1510);
      } else {
        let x_1513 : vec4<f32> = u_xlat3;
        let x_1516 : vec4<f32> = x_614.x_MainLightShadowmapSize;
        let x_1519 : vec2<f32> = ((vec2<f32>(x_1513.x, x_1513.y) * vec2<f32>(x_1516.z, x_1516.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1520 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1519.x, x_1519.y, x_1520.z, x_1520.w);
        let x_1522 : vec4<f32> = u_xlat6;
        let x_1524 : vec2<f32> = floor(vec2<f32>(x_1522.x, x_1522.y));
        let x_1525 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1524.x, x_1524.y, x_1525.z, x_1525.w);
        let x_1527 : vec4<f32> = u_xlat3;
        let x_1530 : vec4<f32> = x_614.x_MainLightShadowmapSize;
        let x_1533 : vec4<f32> = u_xlat6;
        u_xlat48 = ((vec2<f32>(x_1527.x, x_1527.y) * vec2<f32>(x_1530.z, x_1530.w)) + -(vec2<f32>(x_1533.x, x_1533.y)));
        let x_1537 : vec2<f32> = u_xlat48;
        u_xlat8 = (vec4<f32>(x_1537.x, x_1537.x, x_1537.y, x_1537.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1540 : vec4<f32> = u_xlat8;
        let x_1542 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1540.x, x_1540.x, x_1540.z, x_1540.z) * vec4<f32>(x_1542.x, x_1542.x, x_1542.z, x_1542.z));
        let x_1545 : vec4<f32> = u_xlat9;
        let x_1549 : vec2<f32> = (vec2<f32>(x_1545.y, x_1545.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1550 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1550.x, x_1549.x, x_1550.z, x_1549.y);
        let x_1552 : vec4<f32> = u_xlat9;
        let x_1555 : vec2<f32> = u_xlat48;
        let x_1557 : vec2<f32> = ((vec2<f32>(x_1552.x, x_1552.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1555));
        let x_1558 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1557.x, x_1558.y, x_1557.y, x_1558.w);
        let x_1560 : vec2<f32> = u_xlat48;
        let x_1562 : vec2<f32> = (-(x_1560) + vec2<f32>(1.0f, 1.0f));
        let x_1563 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1562.x, x_1562.y, x_1563.z, x_1563.w);
        let x_1565 : vec2<f32> = u_xlat48;
        u_xlat51 = min(x_1565, vec2<f32>(0.0f, 0.0f));
        let x_1567 : vec2<f32> = u_xlat51;
        let x_1569 : vec2<f32> = u_xlat51;
        let x_1571 : vec4<f32> = u_xlat9;
        let x_1573 : vec2<f32> = ((-(x_1567) * x_1569) + vec2<f32>(x_1571.x, x_1571.y));
        let x_1574 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1573.x, x_1573.y, x_1574.z, x_1574.w);
        let x_1576 : vec2<f32> = u_xlat48;
        u_xlat51 = max(x_1576, vec2<f32>(0.0f, 0.0f));
        let x_1579 : vec2<f32> = u_xlat51;
        let x_1581 : vec2<f32> = u_xlat51;
        let x_1583 : vec4<f32> = u_xlat8;
        let x_1585 : vec2<f32> = ((-(x_1579) * x_1581) + vec2<f32>(x_1583.y, x_1583.w));
        let x_1586 : vec3<f32> = u_xlat29;
        u_xlat29 = vec3<f32>(x_1585.x, x_1586.y, x_1585.y);
        let x_1588 : vec4<f32> = u_xlat9;
        let x_1591 : vec2<f32> = (vec2<f32>(x_1588.x, x_1588.y) + vec2<f32>(2.0f, 2.0f));
        let x_1592 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1591.x, x_1591.y, x_1592.z, x_1592.w);
        let x_1594 : vec3<f32> = u_xlat29;
        let x_1596 : vec2<f32> = (vec2<f32>(x_1594.x, x_1594.z) + vec2<f32>(2.0f, 2.0f));
        let x_1597 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1597.x, x_1596.x, x_1597.z, x_1596.y);
        let x_1600 : f32 = u_xlat8.y;
        u_xlat11.z = (x_1600 * 0.081632003f);
        let x_1604 : vec4<f32> = u_xlat8;
        let x_1607 : vec3<f32> = (vec3<f32>(x_1604.z, x_1604.x, x_1604.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_1608 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1607.x, x_1607.y, x_1607.z, x_1608.w);
        let x_1610 : vec4<f32> = u_xlat9;
        let x_1613 : vec2<f32> = (vec2<f32>(x_1610.x, x_1610.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1614 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1613.x, x_1613.y, x_1614.z, x_1614.w);
        let x_1617 : f32 = u_xlat12.y;
        u_xlat11.x = x_1617;
        let x_1619 : vec2<f32> = u_xlat48;
        let x_1626 : vec2<f32> = ((vec2<f32>(x_1619.x, x_1619.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1627 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1627.x, x_1626.x, x_1627.z, x_1626.y);
        let x_1629 : vec2<f32> = u_xlat48;
        let x_1633 : vec2<f32> = ((vec2<f32>(x_1629.x, x_1629.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1634 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1633.x, x_1634.y, x_1633.y, x_1634.w);
        let x_1637 : f32 = u_xlat8.x;
        u_xlat9.y = x_1637;
        let x_1640 : f32 = u_xlat10.y;
        u_xlat9.w = x_1640;
        let x_1642 : vec4<f32> = u_xlat9;
        let x_1643 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_1642 + x_1643);
        let x_1645 : vec2<f32> = u_xlat48;
        let x_1648 : vec2<f32> = ((vec2<f32>(x_1645.y, x_1645.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1649 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1649.x, x_1648.x, x_1649.z, x_1648.y);
        let x_1651 : vec2<f32> = u_xlat48;
        let x_1654 : vec2<f32> = ((vec2<f32>(x_1651.y, x_1651.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1655 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1654.x, x_1655.y, x_1654.y, x_1655.w);
        let x_1658 : f32 = u_xlat8.y;
        u_xlat10.y = x_1658;
        let x_1660 : vec4<f32> = u_xlat10;
        let x_1661 : vec4<f32> = u_xlat12;
        u_xlat8 = (x_1660 + x_1661);
        let x_1663 : vec4<f32> = u_xlat9;
        let x_1664 : vec4<f32> = u_xlat11;
        u_xlat9 = (x_1663 / x_1664);
        let x_1666 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1666 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1672 : vec4<f32> = u_xlat10;
        let x_1673 : vec4<f32> = u_xlat8;
        u_xlat10 = (x_1672 / x_1673);
        let x_1675 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1675 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1677 : vec4<f32> = u_xlat9;
        let x_1680 : vec4<f32> = x_614.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1677.w, x_1677.x, x_1677.y, x_1677.z) * vec4<f32>(x_1680.x, x_1680.x, x_1680.x, x_1680.x));
        let x_1683 : vec4<f32> = u_xlat10;
        let x_1686 : vec4<f32> = x_614.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1683.x, x_1683.w, x_1683.y, x_1683.z) * vec4<f32>(x_1686.y, x_1686.y, x_1686.y, x_1686.y));
        let x_1689 : vec4<f32> = u_xlat9;
        let x_1690 : vec3<f32> = vec3<f32>(x_1689.y, x_1689.z, x_1689.w);
        let x_1691 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1690.x, x_1691.y, x_1690.y, x_1690.z);
        let x_1694 : f32 = u_xlat10.x;
        u_xlat12.y = x_1694;
        let x_1696 : vec4<f32> = u_xlat6;
        let x_1699 : vec4<f32> = x_614.x_MainLightShadowmapSize;
        let x_1702 : vec4<f32> = u_xlat12;
        u_xlat13 = ((vec4<f32>(x_1696.x, x_1696.y, x_1696.x, x_1696.y) * vec4<f32>(x_1699.x, x_1699.y, x_1699.x, x_1699.y)) + vec4<f32>(x_1702.x, x_1702.y, x_1702.z, x_1702.y));
        let x_1705 : vec4<f32> = u_xlat6;
        let x_1708 : vec4<f32> = x_614.x_MainLightShadowmapSize;
        let x_1711 : vec4<f32> = u_xlat12;
        u_xlat48 = ((vec2<f32>(x_1705.x, x_1705.y) * vec2<f32>(x_1708.x, x_1708.y)) + vec2<f32>(x_1711.w, x_1711.y));
        let x_1715 : f32 = u_xlat12.y;
        u_xlat9.y = x_1715;
        let x_1718 : f32 = u_xlat10.z;
        u_xlat12.y = x_1718;
        let x_1720 : vec4<f32> = u_xlat6;
        let x_1723 : vec4<f32> = x_614.x_MainLightShadowmapSize;
        let x_1726 : vec4<f32> = u_xlat12;
        u_xlat14 = ((vec4<f32>(x_1720.x, x_1720.y, x_1720.x, x_1720.y) * vec4<f32>(x_1723.x, x_1723.y, x_1723.x, x_1723.y)) + vec4<f32>(x_1726.x, x_1726.y, x_1726.z, x_1726.y));
        let x_1729 : vec4<f32> = u_xlat6;
        let x_1732 : vec4<f32> = x_614.x_MainLightShadowmapSize;
        let x_1735 : vec4<f32> = u_xlat12;
        let x_1737 : vec2<f32> = ((vec2<f32>(x_1729.x, x_1729.y) * vec2<f32>(x_1732.x, x_1732.y)) + vec2<f32>(x_1735.w, x_1735.y));
        let x_1738 : vec4<f32> = u_xlat15;
        u_xlat15 = vec4<f32>(x_1737.x, x_1737.y, x_1738.z, x_1738.w);
        let x_1741 : f32 = u_xlat12.y;
        u_xlat9.z = x_1741;
        let x_1744 : vec4<f32> = u_xlat6;
        let x_1747 : vec4<f32> = x_614.x_MainLightShadowmapSize;
        let x_1750 : vec4<f32> = u_xlat9;
        u_xlat16 = ((vec4<f32>(x_1744.x, x_1744.y, x_1744.x, x_1744.y) * vec4<f32>(x_1747.x, x_1747.y, x_1747.x, x_1747.y)) + vec4<f32>(x_1750.x, x_1750.y, x_1750.x, x_1750.z));
        let x_1754 : f32 = u_xlat10.w;
        u_xlat12.y = x_1754;
        let x_1757 : vec4<f32> = u_xlat6;
        let x_1760 : vec4<f32> = x_614.x_MainLightShadowmapSize;
        let x_1763 : vec4<f32> = u_xlat12;
        u_xlat17 = ((vec4<f32>(x_1757.x, x_1757.y, x_1757.x, x_1757.y) * vec4<f32>(x_1760.x, x_1760.y, x_1760.x, x_1760.y)) + vec4<f32>(x_1763.x, x_1763.y, x_1763.z, x_1763.y));
        let x_1767 : vec4<f32> = u_xlat6;
        let x_1770 : vec4<f32> = x_614.x_MainLightShadowmapSize;
        let x_1773 : vec4<f32> = u_xlat12;
        u_xlat30 = ((vec2<f32>(x_1767.x, x_1767.y) * vec2<f32>(x_1770.x, x_1770.y)) + vec2<f32>(x_1773.w, x_1773.y));
        let x_1777 : f32 = u_xlat12.y;
        u_xlat9.w = x_1777;
        let x_1780 : vec4<f32> = u_xlat6;
        let x_1783 : vec4<f32> = x_614.x_MainLightShadowmapSize;
        let x_1786 : vec4<f32> = u_xlat9;
        u_xlat57 = ((vec2<f32>(x_1780.x, x_1780.y) * vec2<f32>(x_1783.x, x_1783.y)) + vec2<f32>(x_1786.x, x_1786.w));
        let x_1789 : vec4<f32> = u_xlat12;
        let x_1790 : vec3<f32> = vec3<f32>(x_1789.x, x_1789.z, x_1789.w);
        let x_1791 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1790.x, x_1791.y, x_1790.y, x_1790.z);
        let x_1793 : vec4<f32> = u_xlat6;
        let x_1796 : vec4<f32> = x_614.x_MainLightShadowmapSize;
        let x_1799 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1793.x, x_1793.y, x_1793.x, x_1793.y) * vec4<f32>(x_1796.x, x_1796.y, x_1796.x, x_1796.y)) + vec4<f32>(x_1799.x, x_1799.y, x_1799.z, x_1799.y));
        let x_1803 : vec4<f32> = u_xlat6;
        let x_1806 : vec4<f32> = x_614.x_MainLightShadowmapSize;
        let x_1809 : vec4<f32> = u_xlat10;
        u_xlat52 = ((vec2<f32>(x_1803.x, x_1803.y) * vec2<f32>(x_1806.x, x_1806.y)) + vec2<f32>(x_1809.w, x_1809.y));
        let x_1813 : f32 = u_xlat9.x;
        u_xlat10.x = x_1813;
        let x_1815 : vec4<f32> = u_xlat6;
        let x_1818 : vec4<f32> = x_614.x_MainLightShadowmapSize;
        let x_1821 : vec4<f32> = u_xlat10;
        let x_1823 : vec2<f32> = ((vec2<f32>(x_1815.x, x_1815.y) * vec2<f32>(x_1818.x, x_1818.y)) + vec2<f32>(x_1821.x, x_1821.y));
        let x_1824 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1823.x, x_1823.y, x_1824.z, x_1824.w);
        let x_1827 : vec4<f32> = u_xlat8;
        let x_1829 : vec4<f32> = u_xlat11;
        u_xlat18 = (vec4<f32>(x_1827.x, x_1827.x, x_1827.x, x_1827.x) * x_1829);
        let x_1832 : vec4<f32> = u_xlat8;
        let x_1834 : vec4<f32> = u_xlat11;
        u_xlat19 = (vec4<f32>(x_1832.y, x_1832.y, x_1832.y, x_1832.y) * x_1834);
        let x_1837 : vec4<f32> = u_xlat8;
        let x_1839 : vec4<f32> = u_xlat11;
        u_xlat20 = (vec4<f32>(x_1837.z, x_1837.z, x_1837.z, x_1837.z) * x_1839);
        let x_1841 : vec4<f32> = u_xlat8;
        let x_1843 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_1841.w, x_1841.w, x_1841.w, x_1841.w) * x_1843);
        let x_1846 : vec4<f32> = u_xlat13;
        let x_1847 : vec2<f32> = vec2<f32>(x_1846.x, x_1846.y);
        let x_1849 : f32 = u_xlat3.z;
        txVec13 = vec3<f32>(x_1847.x, x_1847.y, x_1849);
        let x_1856 : vec3<f32> = txVec13;
        let x_1858 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1856.xy, x_1856.z);
        u_xlat70 = x_1858;
        let x_1860 : vec4<f32> = u_xlat13;
        let x_1861 : vec2<f32> = vec2<f32>(x_1860.z, x_1860.w);
        let x_1863 : f32 = u_xlat3.z;
        txVec14 = vec3<f32>(x_1861.x, x_1861.y, x_1863);
        let x_1870 : vec3<f32> = txVec14;
        let x_1872 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1870.xy, x_1870.z);
        u_xlat9.x = x_1872;
        let x_1875 : f32 = u_xlat9.x;
        let x_1877 : f32 = u_xlat18.y;
        u_xlat9.x = (x_1875 * x_1877);
        let x_1881 : f32 = u_xlat18.x;
        let x_1882 : f32 = u_xlat70;
        let x_1885 : f32 = u_xlat9.x;
        u_xlat70 = ((x_1881 * x_1882) + x_1885);
        let x_1888 : vec2<f32> = u_xlat48;
        let x_1890 : f32 = u_xlat3.z;
        txVec15 = vec3<f32>(x_1888.x, x_1888.y, x_1890);
        let x_1897 : vec3<f32> = txVec15;
        let x_1899 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1897.xy, x_1897.z);
        u_xlat48.x = x_1899;
        let x_1902 : f32 = u_xlat18.z;
        let x_1904 : f32 = u_xlat48.x;
        let x_1906 : f32 = u_xlat70;
        u_xlat48.x = ((x_1902 * x_1904) + x_1906);
        let x_1910 : vec4<f32> = u_xlat16;
        let x_1911 : vec2<f32> = vec2<f32>(x_1910.x, x_1910.y);
        let x_1913 : f32 = u_xlat3.z;
        txVec16 = vec3<f32>(x_1911.x, x_1911.y, x_1913);
        let x_1921 : vec3<f32> = txVec16;
        let x_1923 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1921.xy, x_1921.z);
        u_xlat69 = x_1923;
        let x_1925 : f32 = u_xlat18.w;
        let x_1926 : f32 = u_xlat69;
        let x_1929 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_1925 * x_1926) + x_1929);
        let x_1933 : vec4<f32> = u_xlat14;
        let x_1934 : vec2<f32> = vec2<f32>(x_1933.x, x_1933.y);
        let x_1936 : f32 = u_xlat3.z;
        txVec17 = vec3<f32>(x_1934.x, x_1934.y, x_1936);
        let x_1943 : vec3<f32> = txVec17;
        let x_1945 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1943.xy, x_1943.z);
        u_xlat69 = x_1945;
        let x_1947 : f32 = u_xlat19.x;
        let x_1948 : f32 = u_xlat69;
        let x_1951 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_1947 * x_1948) + x_1951);
        let x_1955 : vec4<f32> = u_xlat14;
        let x_1956 : vec2<f32> = vec2<f32>(x_1955.z, x_1955.w);
        let x_1958 : f32 = u_xlat3.z;
        txVec18 = vec3<f32>(x_1956.x, x_1956.y, x_1958);
        let x_1965 : vec3<f32> = txVec18;
        let x_1967 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1965.xy, x_1965.z);
        u_xlat69 = x_1967;
        let x_1969 : f32 = u_xlat19.y;
        let x_1970 : f32 = u_xlat69;
        let x_1973 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_1969 * x_1970) + x_1973);
        let x_1977 : vec4<f32> = u_xlat15;
        let x_1978 : vec2<f32> = vec2<f32>(x_1977.x, x_1977.y);
        let x_1980 : f32 = u_xlat3.z;
        txVec19 = vec3<f32>(x_1978.x, x_1978.y, x_1980);
        let x_1987 : vec3<f32> = txVec19;
        let x_1989 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1987.xy, x_1987.z);
        u_xlat69 = x_1989;
        let x_1991 : f32 = u_xlat19.z;
        let x_1992 : f32 = u_xlat69;
        let x_1995 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_1991 * x_1992) + x_1995);
        let x_1999 : vec4<f32> = u_xlat16;
        let x_2000 : vec2<f32> = vec2<f32>(x_1999.z, x_1999.w);
        let x_2002 : f32 = u_xlat3.z;
        txVec20 = vec3<f32>(x_2000.x, x_2000.y, x_2002);
        let x_2009 : vec3<f32> = txVec20;
        let x_2011 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2009.xy, x_2009.z);
        u_xlat69 = x_2011;
        let x_2013 : f32 = u_xlat19.w;
        let x_2014 : f32 = u_xlat69;
        let x_2017 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_2013 * x_2014) + x_2017);
        let x_2021 : vec4<f32> = u_xlat17;
        let x_2022 : vec2<f32> = vec2<f32>(x_2021.x, x_2021.y);
        let x_2024 : f32 = u_xlat3.z;
        txVec21 = vec3<f32>(x_2022.x, x_2022.y, x_2024);
        let x_2031 : vec3<f32> = txVec21;
        let x_2033 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2031.xy, x_2031.z);
        u_xlat69 = x_2033;
        let x_2035 : f32 = u_xlat20.x;
        let x_2036 : f32 = u_xlat69;
        let x_2039 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_2035 * x_2036) + x_2039);
        let x_2043 : vec4<f32> = u_xlat17;
        let x_2044 : vec2<f32> = vec2<f32>(x_2043.z, x_2043.w);
        let x_2046 : f32 = u_xlat3.z;
        txVec22 = vec3<f32>(x_2044.x, x_2044.y, x_2046);
        let x_2053 : vec3<f32> = txVec22;
        let x_2055 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2053.xy, x_2053.z);
        u_xlat69 = x_2055;
        let x_2057 : f32 = u_xlat20.y;
        let x_2058 : f32 = u_xlat69;
        let x_2061 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_2057 * x_2058) + x_2061);
        let x_2065 : vec2<f32> = u_xlat30;
        let x_2067 : f32 = u_xlat3.z;
        txVec23 = vec3<f32>(x_2065.x, x_2065.y, x_2067);
        let x_2074 : vec3<f32> = txVec23;
        let x_2076 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2074.xy, x_2074.z);
        u_xlat69 = x_2076;
        let x_2078 : f32 = u_xlat20.z;
        let x_2079 : f32 = u_xlat69;
        let x_2082 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_2078 * x_2079) + x_2082);
        let x_2086 : vec2<f32> = u_xlat57;
        let x_2088 : f32 = u_xlat3.z;
        txVec24 = vec3<f32>(x_2086.x, x_2086.y, x_2088);
        let x_2095 : vec3<f32> = txVec24;
        let x_2097 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2095.xy, x_2095.z);
        u_xlat69 = x_2097;
        let x_2099 : f32 = u_xlat20.w;
        let x_2100 : f32 = u_xlat69;
        let x_2103 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_2099 * x_2100) + x_2103);
        let x_2107 : vec4<f32> = u_xlat12;
        let x_2108 : vec2<f32> = vec2<f32>(x_2107.x, x_2107.y);
        let x_2110 : f32 = u_xlat3.z;
        txVec25 = vec3<f32>(x_2108.x, x_2108.y, x_2110);
        let x_2117 : vec3<f32> = txVec25;
        let x_2119 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2117.xy, x_2117.z);
        u_xlat69 = x_2119;
        let x_2121 : f32 = u_xlat8.x;
        let x_2122 : f32 = u_xlat69;
        let x_2125 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_2121 * x_2122) + x_2125);
        let x_2129 : vec4<f32> = u_xlat12;
        let x_2130 : vec2<f32> = vec2<f32>(x_2129.z, x_2129.w);
        let x_2132 : f32 = u_xlat3.z;
        txVec26 = vec3<f32>(x_2130.x, x_2130.y, x_2132);
        let x_2139 : vec3<f32> = txVec26;
        let x_2141 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2139.xy, x_2139.z);
        u_xlat69 = x_2141;
        let x_2143 : f32 = u_xlat8.y;
        let x_2144 : f32 = u_xlat69;
        let x_2147 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_2143 * x_2144) + x_2147);
        let x_2151 : vec2<f32> = u_xlat52;
        let x_2153 : f32 = u_xlat3.z;
        txVec27 = vec3<f32>(x_2151.x, x_2151.y, x_2153);
        let x_2160 : vec3<f32> = txVec27;
        let x_2162 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2160.xy, x_2160.z);
        u_xlat69 = x_2162;
        let x_2164 : f32 = u_xlat8.z;
        let x_2165 : f32 = u_xlat69;
        let x_2168 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_2164 * x_2165) + x_2168);
        let x_2172 : vec4<f32> = u_xlat6;
        let x_2173 : vec2<f32> = vec2<f32>(x_2172.x, x_2172.y);
        let x_2175 : f32 = u_xlat3.z;
        txVec28 = vec3<f32>(x_2173.x, x_2173.y, x_2175);
        let x_2182 : vec3<f32> = txVec28;
        let x_2184 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2182.xy, x_2182.z);
        u_xlat6.x = x_2184;
        let x_2187 : f32 = u_xlat8.w;
        let x_2189 : f32 = u_xlat6.x;
        let x_2192 : f32 = u_xlat48.x;
        u_xlat67 = ((x_2187 * x_2189) + x_2192);
      }
    }
  } else {
    let x_2196 : vec4<f32> = u_xlat3;
    let x_2197 : vec2<f32> = vec2<f32>(x_2196.x, x_2196.y);
    let x_2199 : f32 = u_xlat3.z;
    txVec29 = vec3<f32>(x_2197.x, x_2197.y, x_2199);
    let x_2206 : vec3<f32> = txVec29;
    let x_2208 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2206.xy, x_2206.z);
    u_xlat67 = x_2208;
  }
  let x_2210 : f32 = x_614.x_MainLightShadowParams.x;
  u_xlat3.x = (-(x_2210) + 1.0f);
  let x_2214 : f32 = u_xlat67;
  let x_2216 : f32 = x_614.x_MainLightShadowParams.x;
  let x_2219 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_2214 * x_2216) + x_2219);
  let x_2224 : f32 = u_xlat3.z;
  u_xlatb24 = (0.0f >= x_2224);
  let x_2228 : f32 = u_xlat3.z;
  u_xlatb45 = (x_2228 >= 1.0f);
  let x_2230 : bool = u_xlatb45;
  let x_2231 : bool = u_xlatb24;
  u_xlatb24 = (x_2230 | x_2231);
  let x_2233 : bool = u_xlatb24;
  if (x_2233) {
    x_2234 = 1.0f;
  } else {
    let x_2239 : f32 = u_xlat3.x;
    x_2234 = x_2239;
  }
  let x_2240 : f32 = x_2234;
  u_xlat3.x = x_2240;
  let x_2242 : vec3<f32> = vs_TEXCOORD7;
  let x_2244 : vec3<f32> = x_126.x_WorldSpaceCameraPos;
  let x_2246 : vec3<f32> = (x_2242 + -(x_2244));
  let x_2247 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2246.x, x_2246.y, x_2246.z, x_2247.w);
  let x_2250 : vec4<f32> = u_xlat6;
  let x_2252 : vec4<f32> = u_xlat6;
  u_xlat24 = dot(vec3<f32>(x_2250.x, x_2250.y, x_2250.z), vec3<f32>(x_2252.x, x_2252.y, x_2252.z));
  let x_2255 : f32 = u_xlat24;
  let x_2257 : f32 = x_614.x_MainLightShadowParams.z;
  let x_2260 : f32 = x_614.x_MainLightShadowParams.w;
  u_xlat24 = ((x_2255 * x_2257) + x_2260);
  let x_2262 : f32 = u_xlat24;
  u_xlat24 = clamp(x_2262, 0.0f, 1.0f);
  let x_2266 : f32 = u_xlat3.x;
  u_xlat45 = (-(x_2266) + 1.0f);
  let x_2269 : f32 = u_xlat24;
  let x_2270 : f32 = u_xlat45;
  let x_2273 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_2269 * x_2270) + x_2273);
  let x_2276 : f32 = u_xlat68;
  let x_2279 : vec4<f32> = x_126.x_MainLightColor;
  let x_2281 : vec3<f32> = (vec3<f32>(x_2276, x_2276, x_2276) * vec3<f32>(x_2279.x, x_2279.y, x_2279.z));
  let x_2282 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2281.x, x_2281.y, x_2281.z, x_2282.w);
  let x_2284 : vec3<f32> = u_xlat2;
  let x_2286 : vec4<f32> = u_xlat1;
  u_xlat24 = dot(-(x_2284), vec3<f32>(x_2286.x, x_2286.y, x_2286.z));
  let x_2289 : f32 = u_xlat24;
  let x_2290 : f32 = u_xlat24;
  u_xlat24 = (x_2289 + x_2290);
  let x_2292 : vec4<f32> = u_xlat1;
  let x_2294 : f32 = u_xlat24;
  let x_2298 : vec3<f32> = u_xlat2;
  let x_2300 : vec3<f32> = ((vec3<f32>(x_2292.x, x_2292.y, x_2292.z) * -(vec3<f32>(x_2294, x_2294, x_2294))) + -(x_2298));
  let x_2301 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2300.x, x_2300.y, x_2300.z, x_2301.w);
  let x_2303 : vec4<f32> = u_xlat1;
  let x_2305 : vec3<f32> = u_xlat2;
  u_xlat24 = dot(vec3<f32>(x_2303.x, x_2303.y, x_2303.z), x_2305);
  let x_2307 : f32 = u_xlat24;
  u_xlat24 = clamp(x_2307, 0.0f, 1.0f);
  let x_2309 : f32 = u_xlat24;
  u_xlat24 = (-(x_2309) + 1.0f);
  let x_2312 : f32 = u_xlat24;
  let x_2313 : f32 = u_xlat24;
  u_xlat24 = (x_2312 * x_2313);
  let x_2315 : f32 = u_xlat24;
  let x_2316 : f32 = u_xlat24;
  u_xlat24 = (x_2315 * x_2316);
  let x_2319 : f32 = u_xlat0.x;
  u_xlat45 = ((-(x_2319) * 0.699999988f) + 1.700000048f);
  let x_2326 : f32 = u_xlat0.x;
  let x_2327 : f32 = u_xlat45;
  u_xlat0.x = (x_2326 * x_2327);
  let x_2331 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2331 * 6.0f);
  let x_2343 : vec4<f32> = u_xlat8;
  let x_2346 : f32 = u_xlat0.x;
  let x_2347 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2343.x, x_2343.y, x_2343.z), x_2346);
  u_xlat8 = x_2347;
  let x_2349 : f32 = u_xlat8.w;
  u_xlat0.x = (x_2349 + -1.0f);
  let x_2357 : f32 = x_2355.unity_SpecCube0_HDR.w;
  let x_2359 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_2357 * x_2359) + 1.0f);
  let x_2364 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2364, 0.0f);
  let x_2368 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_2368);
  let x_2372 : f32 = u_xlat0.x;
  let x_2374 : f32 = x_2355.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_2372 * x_2374);
  let x_2378 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_2378);
  let x_2382 : f32 = u_xlat0.x;
  let x_2384 : f32 = x_2355.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_2382 * x_2384);
  let x_2387 : vec4<f32> = u_xlat8;
  let x_2389 : vec3<f32> = u_xlat0;
  let x_2391 : vec3<f32> = (vec3<f32>(x_2387.x, x_2387.y, x_2387.z) * vec3<f32>(x_2389.x, x_2389.x, x_2389.x));
  let x_2392 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2391.x, x_2391.y, x_2391.z, x_2392.w);
  let x_2394 : f32 = u_xlat42;
  let x_2396 : f32 = u_xlat42;
  let x_2400 : vec2<f32> = ((vec2<f32>(x_2394, x_2394) * vec2<f32>(x_2396, x_2396)) + vec2<f32>(-1.0f, 1.0f));
  let x_2401 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_2400.x, x_2401.y, x_2400.y);
  let x_2404 : f32 = u_xlat0.z;
  u_xlat42 = (1.0f / x_2404);
  let x_2406 : vec4<f32> = u_xlat5;
  let x_2409 : f32 = u_xlat65;
  let x_2411 : vec3<f32> = (-(vec3<f32>(x_2406.x, x_2406.y, x_2406.z)) + vec3<f32>(x_2409, x_2409, x_2409));
  let x_2412 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2411.x, x_2411.y, x_2411.z, x_2412.w);
  let x_2414 : f32 = u_xlat24;
  let x_2416 : vec4<f32> = u_xlat9;
  let x_2419 : vec4<f32> = u_xlat5;
  let x_2421 : vec3<f32> = ((vec3<f32>(x_2414, x_2414, x_2414) * vec3<f32>(x_2416.x, x_2416.y, x_2416.z)) + vec3<f32>(x_2419.x, x_2419.y, x_2419.z));
  let x_2422 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2421.x, x_2421.y, x_2421.z, x_2422.w);
  let x_2424 : f32 = u_xlat42;
  let x_2426 : vec4<f32> = u_xlat9;
  let x_2428 : vec3<f32> = (vec3<f32>(x_2424, x_2424, x_2424) * vec3<f32>(x_2426.x, x_2426.y, x_2426.z));
  let x_2429 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2428.x, x_2428.y, x_2428.z, x_2429.w);
  let x_2431 : vec4<f32> = u_xlat8;
  let x_2433 : vec4<f32> = u_xlat9;
  let x_2435 : vec3<f32> = (vec3<f32>(x_2431.x, x_2431.y, x_2431.z) * vec3<f32>(x_2433.x, x_2433.y, x_2433.z));
  let x_2436 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2435.x, x_2435.y, x_2435.z, x_2436.w);
  let x_2438 : vec4<f32> = u_xlat4;
  let x_2440 : vec4<f32> = u_xlat7;
  let x_2443 : vec4<f32> = u_xlat8;
  let x_2445 : vec3<f32> = ((vec3<f32>(x_2438.x, x_2438.y, x_2438.z) * vec3<f32>(x_2440.x, x_2440.y, x_2440.z)) + vec3<f32>(x_2443.x, x_2443.y, x_2443.z));
  let x_2446 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2445.x, x_2445.y, x_2445.z, x_2446.w);
  let x_2449 : f32 = u_xlat3.x;
  let x_2451 : f32 = x_2355.unity_LightData.z;
  u_xlat42 = (x_2449 * x_2451);
  let x_2453 : vec4<f32> = u_xlat1;
  let x_2456 : vec4<f32> = x_126.x_MainLightPosition;
  u_xlat65 = dot(vec3<f32>(x_2453.x, x_2453.y, x_2453.z), vec3<f32>(x_2456.x, x_2456.y, x_2456.z));
  let x_2459 : f32 = u_xlat65;
  u_xlat65 = clamp(x_2459, 0.0f, 1.0f);
  let x_2461 : f32 = u_xlat42;
  let x_2462 : f32 = u_xlat65;
  u_xlat42 = (x_2461 * x_2462);
  let x_2464 : f32 = u_xlat42;
  let x_2466 : vec4<f32> = u_xlat6;
  let x_2468 : vec3<f32> = (vec3<f32>(x_2464, x_2464, x_2464) * vec3<f32>(x_2466.x, x_2466.y, x_2466.z));
  let x_2469 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2468.x, x_2468.y, x_2468.z, x_2469.w);
  let x_2471 : vec3<f32> = u_xlat2;
  let x_2473 : vec4<f32> = x_126.x_MainLightPosition;
  let x_2475 : vec3<f32> = (x_2471 + vec3<f32>(x_2473.x, x_2473.y, x_2473.z));
  let x_2476 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2475.x, x_2475.y, x_2475.z, x_2476.w);
  let x_2478 : vec4<f32> = u_xlat6;
  let x_2480 : vec4<f32> = u_xlat6;
  u_xlat42 = dot(vec3<f32>(x_2478.x, x_2478.y, x_2478.z), vec3<f32>(x_2480.x, x_2480.y, x_2480.z));
  let x_2483 : f32 = u_xlat42;
  u_xlat42 = max(x_2483, 1.17549435e-37f);
  let x_2486 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_2486);
  let x_2488 : f32 = u_xlat42;
  let x_2490 : vec4<f32> = u_xlat6;
  let x_2492 : vec3<f32> = (vec3<f32>(x_2488, x_2488, x_2488) * vec3<f32>(x_2490.x, x_2490.y, x_2490.z));
  let x_2493 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2492.x, x_2492.y, x_2492.z, x_2493.w);
  let x_2495 : vec4<f32> = u_xlat1;
  let x_2497 : vec4<f32> = u_xlat6;
  u_xlat42 = dot(vec3<f32>(x_2495.x, x_2495.y, x_2495.z), vec3<f32>(x_2497.x, x_2497.y, x_2497.z));
  let x_2500 : f32 = u_xlat42;
  u_xlat42 = clamp(x_2500, 0.0f, 1.0f);
  let x_2503 : vec4<f32> = x_126.x_MainLightPosition;
  let x_2505 : vec4<f32> = u_xlat6;
  u_xlat65 = dot(vec3<f32>(x_2503.x, x_2503.y, x_2503.z), vec3<f32>(x_2505.x, x_2505.y, x_2505.z));
  let x_2508 : f32 = u_xlat65;
  u_xlat65 = clamp(x_2508, 0.0f, 1.0f);
  let x_2510 : f32 = u_xlat42;
  let x_2511 : f32 = u_xlat42;
  u_xlat42 = (x_2510 * x_2511);
  let x_2513 : f32 = u_xlat42;
  let x_2515 : f32 = u_xlat0.x;
  u_xlat42 = ((x_2513 * x_2515) + 1.000010014f);
  let x_2519 : f32 = u_xlat65;
  let x_2520 : f32 = u_xlat65;
  u_xlat65 = (x_2519 * x_2520);
  let x_2522 : f32 = u_xlat42;
  let x_2523 : f32 = u_xlat42;
  u_xlat42 = (x_2522 * x_2523);
  let x_2525 : f32 = u_xlat65;
  u_xlat65 = max(x_2525, 0.100000001f);
  let x_2528 : f32 = u_xlat42;
  let x_2529 : f32 = u_xlat65;
  u_xlat42 = (x_2528 * x_2529);
  let x_2531 : f32 = u_xlat66;
  let x_2532 : f32 = u_xlat42;
  u_xlat42 = (x_2531 * x_2532);
  let x_2534 : f32 = u_xlat64;
  let x_2535 : f32 = u_xlat42;
  u_xlat42 = (x_2534 / x_2535);
  let x_2537 : vec4<f32> = u_xlat5;
  let x_2539 : f32 = u_xlat42;
  let x_2542 : vec4<f32> = u_xlat7;
  let x_2544 : vec3<f32> = ((vec3<f32>(x_2537.x, x_2537.y, x_2537.z) * vec3<f32>(x_2539, x_2539, x_2539)) + vec3<f32>(x_2542.x, x_2542.y, x_2542.z));
  let x_2545 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2544.x, x_2544.y, x_2544.z, x_2545.w);
  let x_2547 : vec4<f32> = u_xlat3;
  let x_2549 : vec4<f32> = u_xlat6;
  let x_2551 : vec3<f32> = (vec3<f32>(x_2547.x, x_2547.y, x_2547.z) * vec3<f32>(x_2549.x, x_2549.y, x_2549.z));
  let x_2552 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2551.x, x_2551.y, x_2551.z, x_2552.w);
  let x_2555 : f32 = x_126.x_AdditionalLightsCount.x;
  let x_2557 : f32 = x_2355.unity_LightData.y;
  u_xlat42 = min(x_2555, x_2557);
  let x_2560 : f32 = u_xlat42;
  u_xlatu42 = bitcast<u32>(i32(x_2560));
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2572 : u32 = u_xlatu_loop_1;
    let x_2573 : u32 = u_xlatu42;
    if ((x_2572 < x_2573)) {
    } else {
      break;
    }
    let x_2576 : u32 = u_xlatu_loop_1;
    u_xlatu67 = (x_2576 >> 2u);
    let x_2579 : u32 = u_xlatu_loop_1;
    u_xlati69 = bitcast<i32>((x_2579 & 3u));
    let x_2582 : u32 = u_xlatu67;
    let x_2585 : vec4<f32> = x_2355.unity_LightIndices[bitcast<i32>(x_2582)];
    let x_2595 : i32 = u_xlati69;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2600 : vec4<u32> = indexable[x_2595];
    u_xlat67 = dot(x_2585, bitcast<vec4<f32>>(x_2600));
    let x_2604 : f32 = u_xlat67;
    u_xlati67 = i32(x_2604);
    let x_2606 : vec3<f32> = vs_TEXCOORD7;
    let x_2618 : i32 = u_xlati67;
    let x_2620 : vec4<f32> = x_2617.x_AdditionalLightsPosition[x_2618];
    let x_2623 : i32 = u_xlati67;
    let x_2625 : vec4<f32> = x_2617.x_AdditionalLightsPosition[x_2623];
    let x_2627 : vec3<f32> = ((-(x_2606) * vec3<f32>(x_2620.w, x_2620.w, x_2620.w)) + vec3<f32>(x_2625.x, x_2625.y, x_2625.z));
    let x_2628 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2627.x, x_2627.y, x_2627.z, x_2628.w);
    let x_2630 : vec4<f32> = u_xlat8;
    let x_2632 : vec4<f32> = u_xlat8;
    u_xlat69 = dot(vec3<f32>(x_2630.x, x_2630.y, x_2630.z), vec3<f32>(x_2632.x, x_2632.y, x_2632.z));
    let x_2635 : f32 = u_xlat69;
    u_xlat69 = max(x_2635, 6.10351562e-05f);
    let x_2637 : f32 = u_xlat69;
    u_xlat70 = inverseSqrt(x_2637);
    let x_2639 : f32 = u_xlat70;
    let x_2641 : vec4<f32> = u_xlat8;
    let x_2643 : vec3<f32> = (vec3<f32>(x_2639, x_2639, x_2639) * vec3<f32>(x_2641.x, x_2641.y, x_2641.z));
    let x_2644 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2643.x, x_2643.y, x_2643.z, x_2644.w);
    let x_2647 : f32 = u_xlat69;
    u_xlat71 = (1.0f / x_2647);
    let x_2649 : f32 = u_xlat69;
    let x_2650 : i32 = u_xlati67;
    let x_2652 : f32 = x_2617.x_AdditionalLightsAttenuation[x_2650].x;
    u_xlat69 = (x_2649 * x_2652);
    let x_2654 : f32 = u_xlat69;
    let x_2656 : f32 = u_xlat69;
    u_xlat69 = ((-(x_2654) * x_2656) + 1.0f);
    let x_2659 : f32 = u_xlat69;
    u_xlat69 = max(x_2659, 0.0f);
    let x_2661 : f32 = u_xlat69;
    let x_2662 : f32 = u_xlat69;
    u_xlat69 = (x_2661 * x_2662);
    let x_2664 : f32 = u_xlat69;
    let x_2665 : f32 = u_xlat71;
    u_xlat69 = (x_2664 * x_2665);
    let x_2667 : i32 = u_xlati67;
    let x_2669 : vec4<f32> = x_2617.x_AdditionalLightsSpotDir[x_2667];
    let x_2671 : vec4<f32> = u_xlat9;
    u_xlat71 = dot(vec3<f32>(x_2669.x, x_2669.y, x_2669.z), vec3<f32>(x_2671.x, x_2671.y, x_2671.z));
    let x_2674 : f32 = u_xlat71;
    let x_2675 : i32 = u_xlati67;
    let x_2677 : f32 = x_2617.x_AdditionalLightsAttenuation[x_2675].z;
    let x_2679 : i32 = u_xlati67;
    let x_2681 : f32 = x_2617.x_AdditionalLightsAttenuation[x_2679].w;
    u_xlat71 = ((x_2674 * x_2677) + x_2681);
    let x_2683 : f32 = u_xlat71;
    u_xlat71 = clamp(x_2683, 0.0f, 1.0f);
    let x_2685 : f32 = u_xlat71;
    let x_2686 : f32 = u_xlat71;
    u_xlat71 = (x_2685 * x_2686);
    let x_2688 : f32 = u_xlat69;
    let x_2689 : f32 = u_xlat71;
    u_xlat69 = (x_2688 * x_2689);
    let x_2691 : f32 = u_xlat68;
    let x_2693 : i32 = u_xlati67;
    let x_2695 : vec4<f32> = x_2617.x_AdditionalLightsColor[x_2693];
    let x_2697 : vec3<f32> = (vec3<f32>(x_2691, x_2691, x_2691) * vec3<f32>(x_2695.x, x_2695.y, x_2695.z));
    let x_2698 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2697.x, x_2697.y, x_2697.z, x_2698.w);
    let x_2700 : vec4<f32> = u_xlat1;
    let x_2702 : vec4<f32> = u_xlat9;
    u_xlat67 = dot(vec3<f32>(x_2700.x, x_2700.y, x_2700.z), vec3<f32>(x_2702.x, x_2702.y, x_2702.z));
    let x_2705 : f32 = u_xlat67;
    u_xlat67 = clamp(x_2705, 0.0f, 1.0f);
    let x_2707 : f32 = u_xlat67;
    let x_2708 : f32 = u_xlat69;
    u_xlat67 = (x_2707 * x_2708);
    let x_2710 : f32 = u_xlat67;
    let x_2712 : vec4<f32> = u_xlat10;
    let x_2714 : vec3<f32> = (vec3<f32>(x_2710, x_2710, x_2710) * vec3<f32>(x_2712.x, x_2712.y, x_2712.z));
    let x_2715 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2714.x, x_2714.y, x_2714.z, x_2715.w);
    let x_2717 : vec4<f32> = u_xlat8;
    let x_2719 : f32 = u_xlat70;
    let x_2722 : vec3<f32> = u_xlat2;
    let x_2723 : vec3<f32> = ((vec3<f32>(x_2717.x, x_2717.y, x_2717.z) * vec3<f32>(x_2719, x_2719, x_2719)) + x_2722);
    let x_2724 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2723.x, x_2723.y, x_2723.z, x_2724.w);
    let x_2726 : vec4<f32> = u_xlat8;
    let x_2728 : vec4<f32> = u_xlat8;
    u_xlat67 = dot(vec3<f32>(x_2726.x, x_2726.y, x_2726.z), vec3<f32>(x_2728.x, x_2728.y, x_2728.z));
    let x_2731 : f32 = u_xlat67;
    u_xlat67 = max(x_2731, 1.17549435e-37f);
    let x_2733 : f32 = u_xlat67;
    u_xlat67 = inverseSqrt(x_2733);
    let x_2735 : f32 = u_xlat67;
    let x_2737 : vec4<f32> = u_xlat8;
    let x_2739 : vec3<f32> = (vec3<f32>(x_2735, x_2735, x_2735) * vec3<f32>(x_2737.x, x_2737.y, x_2737.z));
    let x_2740 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2739.x, x_2739.y, x_2739.z, x_2740.w);
    let x_2742 : vec4<f32> = u_xlat1;
    let x_2744 : vec4<f32> = u_xlat8;
    u_xlat67 = dot(vec3<f32>(x_2742.x, x_2742.y, x_2742.z), vec3<f32>(x_2744.x, x_2744.y, x_2744.z));
    let x_2747 : f32 = u_xlat67;
    u_xlat67 = clamp(x_2747, 0.0f, 1.0f);
    let x_2749 : vec4<f32> = u_xlat9;
    let x_2751 : vec4<f32> = u_xlat8;
    u_xlat69 = dot(vec3<f32>(x_2749.x, x_2749.y, x_2749.z), vec3<f32>(x_2751.x, x_2751.y, x_2751.z));
    let x_2754 : f32 = u_xlat69;
    u_xlat69 = clamp(x_2754, 0.0f, 1.0f);
    let x_2756 : f32 = u_xlat67;
    let x_2757 : f32 = u_xlat67;
    u_xlat67 = (x_2756 * x_2757);
    let x_2759 : f32 = u_xlat67;
    let x_2761 : f32 = u_xlat0.x;
    u_xlat67 = ((x_2759 * x_2761) + 1.000010014f);
    let x_2764 : f32 = u_xlat69;
    let x_2765 : f32 = u_xlat69;
    u_xlat69 = (x_2764 * x_2765);
    let x_2767 : f32 = u_xlat67;
    let x_2768 : f32 = u_xlat67;
    u_xlat67 = (x_2767 * x_2768);
    let x_2770 : f32 = u_xlat69;
    u_xlat69 = max(x_2770, 0.100000001f);
    let x_2772 : f32 = u_xlat67;
    let x_2773 : f32 = u_xlat69;
    u_xlat67 = (x_2772 * x_2773);
    let x_2775 : f32 = u_xlat66;
    let x_2776 : f32 = u_xlat67;
    u_xlat67 = (x_2775 * x_2776);
    let x_2778 : f32 = u_xlat64;
    let x_2779 : f32 = u_xlat67;
    u_xlat67 = (x_2778 / x_2779);
    let x_2781 : vec4<f32> = u_xlat5;
    let x_2783 : f32 = u_xlat67;
    let x_2786 : vec4<f32> = u_xlat7;
    let x_2788 : vec3<f32> = ((vec3<f32>(x_2781.x, x_2781.y, x_2781.z) * vec3<f32>(x_2783, x_2783, x_2783)) + vec3<f32>(x_2786.x, x_2786.y, x_2786.z));
    let x_2789 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2788.x, x_2788.y, x_2788.z, x_2789.w);
    let x_2791 : vec4<f32> = u_xlat8;
    let x_2793 : vec4<f32> = u_xlat10;
    let x_2796 : vec4<f32> = u_xlat6;
    let x_2798 : vec3<f32> = ((vec3<f32>(x_2791.x, x_2791.y, x_2791.z) * vec3<f32>(x_2793.x, x_2793.y, x_2793.z)) + vec3<f32>(x_2796.x, x_2796.y, x_2796.z));
    let x_2799 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2798.x, x_2798.y, x_2798.z, x_2799.w);

    continuing {
      let x_2801 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2801 + bitcast<u32>(1i));
    }
  }
  let x_2803 : vec4<f32> = u_xlat4;
  let x_2805 : f32 = u_xlat21;
  let x_2808 : vec4<f32> = u_xlat3;
  u_xlat0 = ((vec3<f32>(x_2803.x, x_2803.y, x_2803.z) * vec3<f32>(x_2805, x_2805, x_2805)) + vec3<f32>(x_2808.x, x_2808.y, x_2808.z));
  let x_2811 : vec4<f32> = u_xlat6;
  let x_2813 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_2811.x, x_2811.y, x_2811.z) + x_2813);
  let x_2817 : f32 = u_xlat63;
  let x_2819 : vec3<f32> = u_xlat0;
  let x_2820 : vec3<f32> = (vec3<f32>(x_2817, x_2817, x_2817) * x_2819);
  let x_2821 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2820.x, x_2820.y, x_2820.z, x_2821.w);
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

