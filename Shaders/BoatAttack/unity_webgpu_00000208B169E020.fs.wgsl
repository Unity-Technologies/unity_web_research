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

@group(0) @binding(13) var sampler_Control : sampler;

@group(1) @binding(0) var<uniform> x_126 : PGlobals;

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

@group(1) @binding(2) var<uniform> x_899 : UnityPerDraw;

@group(0) @binding(10) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(16) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(1) @binding(4) var<uniform> x_1083 : MainLightShadows;

var<private> vs_TEXCOORD8 : vec4<f32>;

@group(0) @binding(11) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(17) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(12) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_2729 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat60 : f32;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlatb61 : bool;
  var u_xlat11 : vec4<f32>;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec4<f32>;
  var u_xlat61 : f32;
  var u_xlatb62 : bool;
  var u_xlat40 : f32;
  var u_xlat20 : f32;
  var u_xlat22 : vec3<f32>;
  var u_xlat23 : f32;
  var u_xlat63 : f32;
  var u_xlat43 : f32;
  var u_xlatb3 : bool;
  var txVec0 : vec3<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var u_xlatb64 : bool;
  var u_xlat46 : vec2<f32>;
  var u_xlat48 : vec2<f32>;
  var u_xlat14 : vec4<f32>;
  var u_xlat64 : f32;
  var txVec4 : vec3<f32>;
  var u_xlat65 : f32;
  var txVec5 : vec3<f32>;
  var txVec6 : vec3<f32>;
  var txVec7 : vec3<f32>;
  var txVec8 : vec3<f32>;
  var txVec9 : vec3<f32>;
  var txVec10 : vec3<f32>;
  var txVec11 : vec3<f32>;
  var txVec12 : vec3<f32>;
  var u_xlat27 : vec3<f32>;
  var u_xlat15 : vec4<f32>;
  var u_xlat16 : vec4<f32>;
  var u_xlat28 : vec2<f32>;
  var u_xlat54 : vec2<f32>;
  var u_xlat49 : vec2<f32>;
  var u_xlat17 : vec4<f32>;
  var u_xlat18 : vec4<f32>;
  var u_xlat19 : vec4<f32>;
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
  var u_xlatb65 : bool;
  var x_2326 : f32;
  var u_xlatu40 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu23 : u32;
  var u_xlati64 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati23 : i32;
  var u_xlat66 : f32;
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
  u_xlat60 = dot(x_135, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
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
  u_xlatb61 = (4.0f >= x_218);
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
  let x_280 : bool = u_xlatb61;
  let x_281 : vec4<f32> = u_xlat11;
  let x_282 : vec4<f32> = u_xlat4;
  u_xlat4 = select(x_282, x_281, vec4<bool>(x_280, x_280, x_280, x_280));
  let x_287 : vec4<f32> = u_xlat4;
  u_xlat61 = dot(x_287, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_291 : f32 = u_xlat61;
  u_xlatb62 = (0.005f >= x_291);
  let x_293 : bool = u_xlatb62;
  if (((select(0i, 1i, x_293) * -1i) != 0i)) {
    discard;
  }
  let x_302 : f32 = u_xlat61;
  u_xlat61 = (x_302 + 6.10351562e-05f);
  let x_305 : vec4<f32> = u_xlat4;
  let x_306 : f32 = u_xlat61;
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
  let x_383 : vec4<f32> = vs_TEXCOORD1;
  let x_386 : f32 = x_126.x_GlobalMipBias.x;
  let x_387 : vec4<f32> = textureSampleBias(x_Normal0, sampler_Normal0, vec2<f32>(x_383.x, x_383.y), x_386);
  let x_388 : vec3<f32> = vec3<f32>(x_387.x, x_387.y, x_387.w);
  let x_389 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_388.x, x_388.y, x_388.z, x_389.w);
  let x_392 : f32 = u_xlat6.x;
  let x_394 : f32 = u_xlat6.z;
  u_xlat6.x = (x_392 * x_394);
  let x_397 : vec4<f32> = u_xlat6;
  let x_402 : vec2<f32> = ((vec2<f32>(x_397.x, x_397.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_403 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_402.x, x_402.y, x_403.z, x_403.w);
  let x_405 : vec4<f32> = u_xlat6;
  let x_407 : vec4<f32> = u_xlat6;
  u_xlat61 = dot(vec2<f32>(x_405.x, x_405.y), vec2<f32>(x_407.x, x_407.y));
  let x_410 : f32 = u_xlat61;
  u_xlat61 = min(x_410, 1.0f);
  let x_412 : f32 = u_xlat61;
  u_xlat61 = (-(x_412) + 1.0f);
  let x_415 : f32 = u_xlat61;
  u_xlat61 = sqrt(x_415);
  let x_417 : f32 = u_xlat61;
  u_xlat7.z = max(x_417, 1.00000002e-16f);
  let x_421 : vec4<f32> = u_xlat6;
  let x_424 : f32 = x_30.x_NormalScale0;
  let x_426 : vec2<f32> = (vec2<f32>(x_421.x, x_421.y) * vec2<f32>(x_424, x_424));
  let x_427 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_426.x, x_426.y, x_427.z, x_427.w);
  let x_433 : vec4<f32> = vs_TEXCOORD1;
  let x_436 : f32 = x_126.x_GlobalMipBias.x;
  let x_437 : vec4<f32> = textureSampleBias(x_Normal1, sampler_Normal0, vec2<f32>(x_433.z, x_433.w), x_436);
  let x_438 : vec3<f32> = vec3<f32>(x_437.x, x_437.y, x_437.w);
  let x_439 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_438.x, x_438.y, x_438.z, x_439.w);
  let x_442 : f32 = u_xlat6.x;
  let x_444 : f32 = u_xlat6.z;
  u_xlat6.x = (x_442 * x_444);
  let x_447 : vec4<f32> = u_xlat6;
  let x_450 : vec2<f32> = ((vec2<f32>(x_447.x, x_447.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_451 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_450.x, x_450.y, x_451.z, x_451.w);
  let x_453 : vec4<f32> = u_xlat6;
  let x_455 : vec4<f32> = u_xlat6;
  u_xlat61 = dot(vec2<f32>(x_453.x, x_453.y), vec2<f32>(x_455.x, x_455.y));
  let x_458 : f32 = u_xlat61;
  u_xlat61 = min(x_458, 1.0f);
  let x_460 : f32 = u_xlat61;
  u_xlat61 = (-(x_460) + 1.0f);
  let x_463 : f32 = u_xlat61;
  u_xlat61 = sqrt(x_463);
  let x_465 : f32 = u_xlat61;
  u_xlat8.z = max(x_465, 1.00000002e-16f);
  let x_468 : vec4<f32> = u_xlat6;
  let x_471 : f32 = x_30.x_NormalScale1;
  let x_473 : f32 = x_30.x_NormalScale1;
  let x_474 : vec2<f32> = vec2<f32>(x_471, x_473);
  let x_478 : vec2<f32> = (vec2<f32>(x_468.x, x_468.y) * vec2<f32>(x_474.x, x_474.y));
  let x_479 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_478.x, x_478.y, x_479.z, x_479.w);
  let x_481 : vec4<f32> = u_xlat4;
  let x_483 : vec4<f32> = u_xlat8;
  let x_485 : vec3<f32> = (vec3<f32>(x_481.y, x_481.y, x_481.y) * vec3<f32>(x_483.x, x_483.y, x_483.z));
  let x_486 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_485.x, x_485.y, x_485.z, x_486.w);
  let x_488 : vec4<f32> = u_xlat4;
  let x_490 : vec4<f32> = u_xlat7;
  let x_493 : vec4<f32> = u_xlat6;
  let x_495 : vec3<f32> = ((vec3<f32>(x_488.x, x_488.x, x_488.x) * vec3<f32>(x_490.x, x_490.y, x_490.z)) + vec3<f32>(x_493.x, x_493.y, x_493.z));
  let x_496 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_495.x, x_495.y, x_495.z, x_496.w);
  let x_502 : vec4<f32> = vs_TEXCOORD2;
  let x_505 : f32 = x_126.x_GlobalMipBias.x;
  let x_506 : vec4<f32> = textureSampleBias(x_Normal2, sampler_Normal0, vec2<f32>(x_502.x, x_502.y), x_505);
  let x_507 : vec3<f32> = vec3<f32>(x_506.x, x_506.y, x_506.w);
  let x_508 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_507.x, x_507.y, x_507.z, x_508.w);
  let x_511 : f32 = u_xlat7.x;
  let x_513 : f32 = u_xlat7.z;
  u_xlat7.x = (x_511 * x_513);
  let x_516 : vec4<f32> = u_xlat7;
  let x_519 : vec2<f32> = ((vec2<f32>(x_516.x, x_516.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_520 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_519.x, x_519.y, x_520.z, x_520.w);
  let x_522 : vec4<f32> = u_xlat7;
  let x_524 : vec4<f32> = u_xlat7;
  u_xlat61 = dot(vec2<f32>(x_522.x, x_522.y), vec2<f32>(x_524.x, x_524.y));
  let x_527 : f32 = u_xlat61;
  u_xlat61 = min(x_527, 1.0f);
  let x_529 : f32 = u_xlat61;
  u_xlat61 = (-(x_529) + 1.0f);
  let x_532 : f32 = u_xlat61;
  u_xlat61 = sqrt(x_532);
  let x_534 : f32 = u_xlat61;
  u_xlat8.z = max(x_534, 1.00000002e-16f);
  let x_537 : vec4<f32> = u_xlat7;
  let x_541 : f32 = x_30.x_NormalScale2;
  let x_543 : f32 = x_30.x_NormalScale2;
  let x_544 : vec2<f32> = vec2<f32>(x_541, x_543);
  let x_548 : vec2<f32> = (vec2<f32>(x_537.x, x_537.y) * vec2<f32>(x_544.x, x_544.y));
  let x_549 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_548.x, x_548.y, x_549.z, x_549.w);
  let x_551 : vec4<f32> = u_xlat4;
  let x_553 : vec4<f32> = u_xlat8;
  let x_556 : vec4<f32> = u_xlat6;
  let x_558 : vec3<f32> = ((vec3<f32>(x_551.z, x_551.z, x_551.z) * vec3<f32>(x_553.x, x_553.y, x_553.z)) + vec3<f32>(x_556.x, x_556.y, x_556.z));
  let x_559 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_558.x, x_558.y, x_558.z, x_559.w);
  let x_565 : vec4<f32> = vs_TEXCOORD2;
  let x_568 : f32 = x_126.x_GlobalMipBias.x;
  let x_569 : vec4<f32> = textureSampleBias(x_Normal3, sampler_Normal0, vec2<f32>(x_565.z, x_565.w), x_568);
  let x_570 : vec3<f32> = vec3<f32>(x_569.x, x_569.y, x_569.w);
  let x_571 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_570.x, x_570.y, x_570.z, x_571.w);
  let x_574 : f32 = u_xlat7.x;
  let x_576 : f32 = u_xlat7.z;
  u_xlat7.x = (x_574 * x_576);
  let x_579 : vec4<f32> = u_xlat7;
  let x_582 : vec2<f32> = ((vec2<f32>(x_579.x, x_579.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_583 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_582.x, x_582.y, x_583.z, x_583.w);
  let x_585 : vec4<f32> = u_xlat7;
  let x_587 : vec4<f32> = u_xlat7;
  u_xlat61 = dot(vec2<f32>(x_585.x, x_585.y), vec2<f32>(x_587.x, x_587.y));
  let x_590 : f32 = u_xlat61;
  u_xlat61 = min(x_590, 1.0f);
  let x_592 : f32 = u_xlat61;
  u_xlat61 = (-(x_592) + 1.0f);
  let x_595 : f32 = u_xlat61;
  u_xlat61 = sqrt(x_595);
  let x_597 : f32 = u_xlat61;
  u_xlat8.z = max(x_597, 1.00000002e-16f);
  let x_600 : vec4<f32> = u_xlat7;
  let x_604 : f32 = x_30.x_NormalScale3;
  let x_606 : f32 = x_30.x_NormalScale3;
  let x_607 : vec2<f32> = vec2<f32>(x_604, x_606);
  let x_611 : vec2<f32> = (vec2<f32>(x_600.x, x_600.y) * vec2<f32>(x_607.x, x_607.y));
  let x_612 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_611.x, x_611.y, x_612.z, x_612.w);
  let x_614 : vec4<f32> = u_xlat4;
  let x_616 : vec4<f32> = u_xlat8;
  let x_619 : vec4<f32> = u_xlat6;
  let x_621 : vec3<f32> = ((vec3<f32>(x_614.w, x_614.w, x_614.w) * vec3<f32>(x_616.x, x_616.y, x_616.z)) + vec3<f32>(x_619.x, x_619.y, x_619.z));
  let x_622 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_621.x, x_621.y, x_621.z, x_622.w);
  let x_625 : f32 = u_xlat6.z;
  u_xlat6.w = (x_625 + 0.00001f);
  let x_629 : vec4<f32> = u_xlat6;
  let x_631 : vec4<f32> = u_xlat6;
  u_xlat61 = dot(vec3<f32>(x_629.x, x_629.y, x_629.w), vec3<f32>(x_631.x, x_631.y, x_631.w));
  let x_634 : f32 = u_xlat61;
  u_xlat61 = inverseSqrt(x_634);
  let x_636 : f32 = u_xlat61;
  let x_638 : vec4<f32> = u_xlat6;
  let x_640 : vec3<f32> = (vec3<f32>(x_636, x_636, x_636) * vec3<f32>(x_638.x, x_638.y, x_638.w));
  let x_641 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_640.x, x_640.y, x_640.z, x_641.w);
  let x_644 : f32 = x_30.x_MaskMapRemapScale0.y;
  u_xlat7.x = x_644;
  let x_647 : f32 = x_30.x_MaskMapRemapScale1.y;
  u_xlat7.y = x_647;
  let x_650 : f32 = x_30.x_MaskMapRemapScale2.y;
  u_xlat7.z = x_650;
  let x_653 : f32 = x_30.x_MaskMapRemapScale3.y;
  u_xlat7.w = x_653;
  let x_656 : f32 = x_30.x_MaskMapRemapOffset0.y;
  u_xlat8.x = x_656;
  let x_659 : f32 = x_30.x_MaskMapRemapOffset1.y;
  u_xlat8.y = x_659;
  let x_662 : f32 = x_30.x_MaskMapRemapOffset2.y;
  u_xlat8.z = x_662;
  let x_665 : f32 = x_30.x_MaskMapRemapOffset3.y;
  u_xlat8.w = x_665;
  let x_667 : vec4<f32> = u_xlat7;
  let x_668 : vec4<f32> = u_xlat8;
  u_xlat7 = (x_667 + x_668);
  let x_671 : f32 = u_xlat0.z;
  u_xlat8.x = x_671;
  let x_674 : f32 = u_xlat1.z;
  u_xlat8.y = x_674;
  let x_677 : f32 = u_xlat2.z;
  u_xlat8.z = x_677;
  let x_680 : f32 = u_xlat3.y;
  u_xlat8.w = x_680;
  let x_682 : vec4<f32> = u_xlat9;
  let x_685 : f32 = x_30.x_Smoothness0;
  let x_687 : f32 = x_30.x_Smoothness1;
  let x_689 : f32 = x_30.x_Smoothness2;
  let x_691 : f32 = x_30.x_Smoothness3;
  let x_694 : vec4<f32> = u_xlat8;
  u_xlat8 = ((-(x_682) * vec4<f32>(x_685, x_687, x_689, x_691)) + x_694);
  let x_698 : f32 = x_30.x_LayerHasMask0;
  let x_701 : f32 = x_30.x_LayerHasMask1;
  let x_704 : f32 = x_30.x_LayerHasMask2;
  let x_707 : f32 = x_30.x_LayerHasMask3;
  let x_709 : vec4<f32> = u_xlat8;
  let x_711 : vec4<f32> = u_xlat10;
  u_xlat8 = ((vec4<f32>(x_698, x_701, x_704, x_707) * x_709) + x_711);
  let x_714 : vec4<f32> = u_xlat4;
  let x_715 : vec4<f32> = u_xlat8;
  u_xlat40 = dot(x_714, x_715);
  let x_718 : f32 = u_xlat0.x;
  u_xlat8.x = x_718;
  let x_721 : f32 = u_xlat1.x;
  u_xlat8.y = x_721;
  let x_724 : f32 = u_xlat2.x;
  u_xlat8.z = x_724;
  let x_727 : f32 = u_xlat3.x;
  u_xlat8.w = x_727;
  let x_729 : vec4<f32> = u_xlat8;
  let x_732 : f32 = x_30.x_Metallic0;
  let x_735 : f32 = x_30.x_Metallic1;
  let x_738 : f32 = x_30.x_Metallic2;
  let x_741 : f32 = x_30.x_Metallic3;
  u_xlat8 = (x_729 + -(vec4<f32>(x_732, x_735, x_738, x_741)));
  let x_746 : f32 = x_30.x_LayerHasMask0;
  let x_748 : f32 = x_30.x_LayerHasMask1;
  let x_750 : f32 = x_30.x_LayerHasMask2;
  let x_752 : f32 = x_30.x_LayerHasMask3;
  let x_754 : vec4<f32> = u_xlat8;
  let x_757 : f32 = x_30.x_Metallic0;
  let x_759 : f32 = x_30.x_Metallic1;
  let x_761 : f32 = x_30.x_Metallic2;
  let x_763 : f32 = x_30.x_Metallic3;
  u_xlat8 = ((vec4<f32>(x_746, x_748, x_750, x_752) * x_754) + vec4<f32>(x_757, x_759, x_761, x_763));
  let x_766 : vec4<f32> = u_xlat4;
  let x_767 : vec4<f32> = u_xlat8;
  u_xlat0.x = dot(x_766, x_767);
  let x_771 : f32 = u_xlat0.y;
  u_xlat3.x = x_771;
  let x_774 : f32 = u_xlat1.y;
  u_xlat3.y = x_774;
  let x_777 : f32 = u_xlat2.y;
  u_xlat3.z = x_777;
  let x_779 : vec4<f32> = u_xlat7;
  let x_781 : vec4<f32> = u_xlat3;
  u_xlat1 = (-(x_779) + x_781);
  let x_784 : f32 = x_30.x_LayerHasMask0;
  let x_786 : f32 = x_30.x_LayerHasMask1;
  let x_788 : f32 = x_30.x_LayerHasMask2;
  let x_790 : f32 = x_30.x_LayerHasMask3;
  let x_792 : vec4<f32> = u_xlat1;
  let x_794 : vec4<f32> = u_xlat7;
  u_xlat1 = ((vec4<f32>(x_784, x_786, x_788, x_790) * x_792) + x_794);
  let x_797 : vec4<f32> = u_xlat4;
  let x_798 : vec4<f32> = u_xlat1;
  u_xlat20 = dot(x_797, x_798);
  let x_800 : vec4<f32> = u_xlat6;
  let x_803 : vec4<f32> = vs_TEXCOORD5;
  let x_805 : vec3<f32> = (vec3<f32>(x_800.y, x_800.y, x_800.y) * vec3<f32>(x_803.x, x_803.y, x_803.z));
  let x_806 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_805.x, x_805.y, x_805.z, x_806.w);
  let x_808 : vec4<f32> = u_xlat6;
  let x_811 : vec4<f32> = vs_TEXCOORD4;
  let x_815 : vec4<f32> = u_xlat1;
  let x_817 : vec3<f32> = ((vec3<f32>(x_808.x, x_808.x, x_808.x) * -(vec3<f32>(x_811.x, x_811.y, x_811.z))) + vec3<f32>(x_815.x, x_815.y, x_815.z));
  let x_818 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_817.x, x_817.y, x_817.z, x_818.w);
  let x_820 : vec4<f32> = u_xlat6;
  let x_823 : vec4<f32> = vs_TEXCOORD3;
  let x_826 : vec4<f32> = u_xlat1;
  let x_828 : vec3<f32> = ((vec3<f32>(x_820.z, x_820.z, x_820.z) * vec3<f32>(x_823.x, x_823.y, x_823.z)) + vec3<f32>(x_826.x, x_826.y, x_826.z));
  let x_829 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_828.x, x_828.y, x_828.z, x_829.w);
  let x_831 : vec4<f32> = u_xlat1;
  let x_833 : vec4<f32> = u_xlat1;
  u_xlat61 = dot(vec3<f32>(x_831.x, x_831.y, x_831.z), vec3<f32>(x_833.x, x_833.y, x_833.z));
  let x_836 : f32 = u_xlat61;
  u_xlat61 = inverseSqrt(x_836);
  let x_838 : f32 = u_xlat61;
  let x_840 : vec4<f32> = u_xlat1;
  let x_842 : vec3<f32> = (vec3<f32>(x_838, x_838, x_838) * vec3<f32>(x_840.x, x_840.y, x_840.z));
  let x_843 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_842.x, x_842.y, x_842.z, x_843.w);
  let x_848 : f32 = vs_TEXCOORD7.y;
  let x_850 : f32 = x_126.unity_MatrixV[1i].z;
  u_xlat2.x = (x_848 * x_850);
  let x_854 : f32 = x_126.unity_MatrixV[0i].z;
  let x_856 : f32 = vs_TEXCOORD7.x;
  let x_859 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_854 * x_856) + x_859);
  let x_863 : f32 = x_126.unity_MatrixV[2i].z;
  let x_865 : f32 = vs_TEXCOORD7.z;
  let x_868 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_863 * x_865) + x_868);
  let x_872 : f32 = u_xlat2.x;
  let x_874 : f32 = x_126.unity_MatrixV[3i].z;
  u_xlat2.x = (x_872 + x_874);
  let x_878 : f32 = u_xlat2.x;
  let x_881 : f32 = x_126.x_ProjectionParams.y;
  u_xlat2.x = (-(x_878) + -(x_881));
  let x_886 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_886, 0.0f);
  let x_890 : f32 = u_xlat2.x;
  let x_892 : f32 = x_126.unity_FogParams.x;
  u_xlat2.x = (x_890 * x_892);
  u_xlat1.w = 1.0f;
  let x_901 : vec4<f32> = x_899.unity_SHAr;
  let x_902 : vec4<f32> = u_xlat1;
  u_xlat3.x = dot(x_901, x_902);
  let x_906 : vec4<f32> = x_899.unity_SHAg;
  let x_907 : vec4<f32> = u_xlat1;
  u_xlat3.y = dot(x_906, x_907);
  let x_911 : vec4<f32> = x_899.unity_SHAb;
  let x_912 : vec4<f32> = u_xlat1;
  u_xlat3.z = dot(x_911, x_912);
  let x_915 : vec4<f32> = u_xlat1;
  let x_917 : vec4<f32> = u_xlat1;
  u_xlat4 = (vec4<f32>(x_915.y, x_915.z, x_915.z, x_915.x) * vec4<f32>(x_917.x, x_917.y, x_917.z, x_917.z));
  let x_921 : vec4<f32> = x_899.unity_SHBr;
  let x_922 : vec4<f32> = u_xlat4;
  u_xlat6.x = dot(x_921, x_922);
  let x_926 : vec4<f32> = x_899.unity_SHBg;
  let x_927 : vec4<f32> = u_xlat4;
  u_xlat6.y = dot(x_926, x_927);
  let x_931 : vec4<f32> = x_899.unity_SHBb;
  let x_932 : vec4<f32> = u_xlat4;
  u_xlat6.z = dot(x_931, x_932);
  let x_936 : f32 = u_xlat1.y;
  let x_938 : f32 = u_xlat1.y;
  u_xlat61 = (x_936 * x_938);
  let x_941 : f32 = u_xlat1.x;
  let x_943 : f32 = u_xlat1.x;
  let x_945 : f32 = u_xlat61;
  u_xlat61 = ((x_941 * x_943) + -(x_945));
  let x_951 : vec4<f32> = x_899.unity_SHC;
  let x_953 : f32 = u_xlat61;
  let x_956 : vec4<f32> = u_xlat6;
  u_xlat22 = ((vec3<f32>(x_951.x, x_951.y, x_951.z) * vec3<f32>(x_953, x_953, x_953)) + vec3<f32>(x_956.x, x_956.y, x_956.z));
  let x_959 : vec3<f32> = u_xlat22;
  let x_960 : vec4<f32> = u_xlat3;
  u_xlat22 = (x_959 + vec3<f32>(x_960.x, x_960.y, x_960.z));
  let x_963 : vec3<f32> = u_xlat22;
  u_xlat22 = max(x_963, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_968 : vec4<f32> = x_126.x_ScaledScreenParams;
  let x_969 : vec2<f32> = vec2<f32>(x_968.x, x_968.y);
  let x_973 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_969.x, x_969.y));
  let x_974 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_973.x, x_973.y, x_974.z, x_974.w);
  let x_976 : vec4<f32> = u_xlat3;
  let x_978 : vec4<f32> = hlslcc_FragCoord;
  let x_980 : vec2<f32> = (vec2<f32>(x_976.x, x_976.y) * vec2<f32>(x_978.x, x_978.y));
  let x_981 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_980.x, x_980.y, x_981.z, x_981.w);
  let x_984 : f32 = u_xlat3.y;
  let x_986 : f32 = x_126.x_ScaleBiasRt.x;
  let x_989 : f32 = x_126.x_ScaleBiasRt.y;
  u_xlat61 = ((x_984 * x_986) + x_989);
  let x_991 : f32 = u_xlat61;
  u_xlat3.z = (-(x_991) + 1.0f);
  let x_996 : f32 = u_xlat0.x;
  u_xlat61 = ((-(x_996) * 0.959999979f) + 0.959999979f);
  let x_1002 : f32 = u_xlat40;
  let x_1003 : f32 = u_xlat61;
  u_xlat23 = (x_1002 + -(x_1003));
  let x_1006 : f32 = u_xlat61;
  let x_1008 : vec4<f32> = u_xlat5;
  let x_1010 : vec3<f32> = (vec3<f32>(x_1006, x_1006, x_1006) * vec3<f32>(x_1008.x, x_1008.y, x_1008.z));
  let x_1011 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1010.x, x_1010.y, x_1010.z, x_1011.w);
  let x_1013 : vec4<f32> = u_xlat5;
  let x_1017 : vec3<f32> = (vec3<f32>(x_1013.x, x_1013.y, x_1013.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_1018 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1017.x, x_1017.y, x_1017.z, x_1018.w);
  let x_1020 : vec3<f32> = u_xlat0;
  let x_1022 : vec4<f32> = u_xlat5;
  let x_1027 : vec3<f32> = ((vec3<f32>(x_1020.x, x_1020.x, x_1020.x) * vec3<f32>(x_1022.x, x_1022.y, x_1022.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_1028 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1027.x, x_1027.y, x_1027.z, x_1028.w);
  let x_1030 : f32 = u_xlat40;
  u_xlat0.x = (-(x_1030) + 1.0f);
  let x_1035 : f32 = u_xlat0.x;
  let x_1037 : f32 = u_xlat0.x;
  u_xlat40 = (x_1035 * x_1037);
  let x_1039 : f32 = u_xlat40;
  u_xlat40 = max(x_1039, 0.0078125f);
  let x_1042 : f32 = u_xlat40;
  let x_1043 : f32 = u_xlat40;
  u_xlat61 = (x_1042 * x_1043);
  let x_1045 : f32 = u_xlat23;
  u_xlat23 = (x_1045 + 1.0f);
  let x_1047 : f32 = u_xlat23;
  u_xlat23 = clamp(x_1047, 0.0f, 1.0f);
  let x_1050 : f32 = u_xlat40;
  u_xlat63 = ((x_1050 * 4.0f) + 2.0f);
  let x_1058 : vec4<f32> = u_xlat3;
  let x_1061 : f32 = x_126.x_GlobalMipBias.x;
  let x_1062 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_1058.x, x_1058.z), x_1061);
  u_xlat3.x = x_1062.x;
  let x_1067 : f32 = u_xlat3.x;
  u_xlat43 = (x_1067 + -1.0f);
  let x_1070 : f32 = x_126.x_AmbientOcclusionParam.w;
  let x_1071 : f32 = u_xlat43;
  u_xlat43 = ((x_1070 * x_1071) + 1.0f);
  let x_1074 : f32 = u_xlat20;
  let x_1076 : f32 = u_xlat3.x;
  u_xlat20 = min(x_1074, x_1076);
  let x_1085 : f32 = x_1083.x_MainLightShadowParams.y;
  u_xlatb3 = (0.0f < x_1085);
  let x_1087 : bool = u_xlatb3;
  if (x_1087) {
    let x_1091 : f32 = x_1083.x_MainLightShadowParams.y;
    u_xlatb3 = (x_1091 == 1.0f);
    let x_1093 : bool = u_xlatb3;
    if (x_1093) {
      let x_1097 : vec4<f32> = vs_TEXCOORD8;
      let x_1100 : vec4<f32> = x_1083.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_1097.x, x_1097.y, x_1097.x, x_1097.y) + x_1100);
      let x_1103 : vec4<f32> = u_xlat6;
      let x_1104 : vec2<f32> = vec2<f32>(x_1103.x, x_1103.y);
      let x_1106 : f32 = vs_TEXCOORD8.z;
      txVec0 = vec3<f32>(x_1104.x, x_1104.y, x_1106);
      let x_1118 : vec3<f32> = txVec0;
      let x_1120 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1118.xy, x_1118.z);
      u_xlat7.x = x_1120;
      let x_1123 : vec4<f32> = u_xlat6;
      let x_1124 : vec2<f32> = vec2<f32>(x_1123.z, x_1123.w);
      let x_1126 : f32 = vs_TEXCOORD8.z;
      txVec1 = vec3<f32>(x_1124.x, x_1124.y, x_1126);
      let x_1133 : vec3<f32> = txVec1;
      let x_1135 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1133.xy, x_1133.z);
      u_xlat7.y = x_1135;
      let x_1137 : vec4<f32> = vs_TEXCOORD8;
      let x_1140 : vec4<f32> = x_1083.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_1137.x, x_1137.y, x_1137.x, x_1137.y) + x_1140);
      let x_1143 : vec4<f32> = u_xlat6;
      let x_1144 : vec2<f32> = vec2<f32>(x_1143.x, x_1143.y);
      let x_1146 : f32 = vs_TEXCOORD8.z;
      txVec2 = vec3<f32>(x_1144.x, x_1144.y, x_1146);
      let x_1153 : vec3<f32> = txVec2;
      let x_1155 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1153.xy, x_1153.z);
      u_xlat7.z = x_1155;
      let x_1158 : vec4<f32> = u_xlat6;
      let x_1159 : vec2<f32> = vec2<f32>(x_1158.z, x_1158.w);
      let x_1161 : f32 = vs_TEXCOORD8.z;
      txVec3 = vec3<f32>(x_1159.x, x_1159.y, x_1161);
      let x_1168 : vec3<f32> = txVec3;
      let x_1170 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1168.xy, x_1168.z);
      u_xlat7.w = x_1170;
      let x_1172 : vec4<f32> = u_xlat7;
      u_xlat3.x = dot(x_1172, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_1180 : f32 = x_1083.x_MainLightShadowParams.y;
      u_xlatb64 = (x_1180 == 2.0f);
      let x_1182 : bool = u_xlatb64;
      if (x_1182) {
        let x_1185 : vec4<f32> = vs_TEXCOORD8;
        let x_1188 : vec4<f32> = x_1083.x_MainLightShadowmapSize;
        let x_1191 : vec2<f32> = ((vec2<f32>(x_1185.x, x_1185.y) * vec2<f32>(x_1188.z, x_1188.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1192 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1191.x, x_1191.y, x_1192.z, x_1192.w);
        let x_1194 : vec4<f32> = u_xlat6;
        let x_1196 : vec2<f32> = floor(vec2<f32>(x_1194.x, x_1194.y));
        let x_1197 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1196.x, x_1196.y, x_1197.z, x_1197.w);
        let x_1201 : vec4<f32> = vs_TEXCOORD8;
        let x_1204 : vec4<f32> = x_1083.x_MainLightShadowmapSize;
        let x_1207 : vec4<f32> = u_xlat6;
        u_xlat46 = ((vec2<f32>(x_1201.x, x_1201.y) * vec2<f32>(x_1204.z, x_1204.w)) + -(vec2<f32>(x_1207.x, x_1207.y)));
        let x_1211 : vec2<f32> = u_xlat46;
        u_xlat7 = (vec4<f32>(x_1211.x, x_1211.x, x_1211.y, x_1211.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1215 : vec4<f32> = u_xlat7;
        let x_1217 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1215.x, x_1215.x, x_1215.z, x_1215.z) * vec4<f32>(x_1217.x, x_1217.x, x_1217.z, x_1217.z));
        let x_1220 : vec4<f32> = u_xlat8;
        let x_1224 : vec2<f32> = (vec2<f32>(x_1220.y, x_1220.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_1225 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1224.x, x_1225.y, x_1224.y, x_1225.w);
        let x_1227 : vec4<f32> = u_xlat8;
        let x_1230 : vec2<f32> = u_xlat46;
        let x_1232 : vec2<f32> = ((vec2<f32>(x_1227.x, x_1227.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1230));
        let x_1233 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1232.x, x_1232.y, x_1233.z, x_1233.w);
        let x_1236 : vec2<f32> = u_xlat46;
        u_xlat48 = (-(x_1236) + vec2<f32>(1.0f, 1.0f));
        let x_1239 : vec2<f32> = u_xlat46;
        let x_1241 : vec2<f32> = min(x_1239, vec2<f32>(0.0f, 0.0f));
        let x_1242 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1241.x, x_1241.y, x_1242.z, x_1242.w);
        let x_1244 : vec4<f32> = u_xlat9;
        let x_1247 : vec4<f32> = u_xlat9;
        let x_1250 : vec2<f32> = u_xlat48;
        let x_1251 : vec2<f32> = ((-(vec2<f32>(x_1244.x, x_1244.y)) * vec2<f32>(x_1247.x, x_1247.y)) + x_1250);
        let x_1252 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1251.x, x_1251.y, x_1252.z, x_1252.w);
        let x_1254 : vec2<f32> = u_xlat46;
        u_xlat46 = max(x_1254, vec2<f32>(0.0f, 0.0f));
        let x_1256 : vec2<f32> = u_xlat46;
        let x_1258 : vec2<f32> = u_xlat46;
        let x_1260 : vec4<f32> = u_xlat7;
        u_xlat46 = ((-(x_1256) * x_1258) + vec2<f32>(x_1260.y, x_1260.w));
        let x_1263 : vec4<f32> = u_xlat9;
        let x_1265 : vec2<f32> = (vec2<f32>(x_1263.x, x_1263.y) + vec2<f32>(1.0f, 1.0f));
        let x_1266 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1265.x, x_1265.y, x_1266.z, x_1266.w);
        let x_1268 : vec2<f32> = u_xlat46;
        u_xlat46 = (x_1268 + vec2<f32>(1.0f, 1.0f));
        let x_1270 : vec4<f32> = u_xlat8;
        let x_1274 : vec2<f32> = (vec2<f32>(x_1270.x, x_1270.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1275 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1274.x, x_1274.y, x_1275.z, x_1275.w);
        let x_1277 : vec2<f32> = u_xlat48;
        let x_1278 : vec2<f32> = (x_1277 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1279 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1278.x, x_1278.y, x_1279.z, x_1279.w);
        let x_1281 : vec4<f32> = u_xlat9;
        let x_1283 : vec2<f32> = (vec2<f32>(x_1281.x, x_1281.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1284 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1283.x, x_1283.y, x_1284.z, x_1284.w);
        let x_1286 : vec2<f32> = u_xlat46;
        let x_1287 : vec2<f32> = (x_1286 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1288 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1287.x, x_1287.y, x_1288.z, x_1288.w);
        let x_1290 : vec4<f32> = u_xlat7;
        u_xlat46 = (vec2<f32>(x_1290.y, x_1290.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1294 : f32 = u_xlat9.x;
        u_xlat10.z = x_1294;
        let x_1297 : f32 = u_xlat46.x;
        u_xlat10.w = x_1297;
        let x_1300 : f32 = u_xlat11.x;
        u_xlat8.z = x_1300;
        let x_1303 : f32 = u_xlat7.x;
        u_xlat8.w = x_1303;
        let x_1305 : vec4<f32> = u_xlat8;
        let x_1307 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_1305.z, x_1305.w, x_1305.x, x_1305.z) + vec4<f32>(x_1307.z, x_1307.w, x_1307.x, x_1307.z));
        let x_1311 : f32 = u_xlat10.y;
        u_xlat9.z = x_1311;
        let x_1314 : f32 = u_xlat46.y;
        u_xlat9.w = x_1314;
        let x_1317 : f32 = u_xlat8.y;
        u_xlat11.z = x_1317;
        let x_1320 : f32 = u_xlat7.z;
        u_xlat11.w = x_1320;
        let x_1322 : vec4<f32> = u_xlat9;
        let x_1324 : vec4<f32> = u_xlat11;
        let x_1326 : vec3<f32> = (vec3<f32>(x_1322.z, x_1322.y, x_1322.w) + vec3<f32>(x_1324.z, x_1324.y, x_1324.w));
        let x_1327 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1326.x, x_1326.y, x_1326.z, x_1327.w);
        let x_1329 : vec4<f32> = u_xlat8;
        let x_1331 : vec4<f32> = u_xlat12;
        let x_1333 : vec3<f32> = (vec3<f32>(x_1329.x, x_1329.z, x_1329.w) / vec3<f32>(x_1331.z, x_1331.w, x_1331.y));
        let x_1334 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1333.x, x_1333.y, x_1333.z, x_1334.w);
        let x_1336 : vec4<f32> = u_xlat8;
        let x_1342 : vec3<f32> = (vec3<f32>(x_1336.x, x_1336.y, x_1336.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1343 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1342.x, x_1342.y, x_1342.z, x_1343.w);
        let x_1345 : vec4<f32> = u_xlat11;
        let x_1347 : vec4<f32> = u_xlat7;
        let x_1349 : vec3<f32> = (vec3<f32>(x_1345.z, x_1345.y, x_1345.w) / vec3<f32>(x_1347.x, x_1347.y, x_1347.z));
        let x_1350 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1349.x, x_1349.y, x_1349.z, x_1350.w);
        let x_1352 : vec4<f32> = u_xlat9;
        let x_1354 : vec3<f32> = (vec3<f32>(x_1352.x, x_1352.y, x_1352.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1355 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1354.x, x_1354.y, x_1354.z, x_1355.w);
        let x_1357 : vec4<f32> = u_xlat8;
        let x_1360 : vec4<f32> = x_1083.x_MainLightShadowmapSize;
        let x_1362 : vec3<f32> = (vec3<f32>(x_1357.y, x_1357.x, x_1357.z) * vec3<f32>(x_1360.x, x_1360.x, x_1360.x));
        let x_1363 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1362.x, x_1362.y, x_1362.z, x_1363.w);
        let x_1365 : vec4<f32> = u_xlat9;
        let x_1368 : vec4<f32> = x_1083.x_MainLightShadowmapSize;
        let x_1370 : vec3<f32> = (vec3<f32>(x_1365.x, x_1365.y, x_1365.z) * vec3<f32>(x_1368.y, x_1368.y, x_1368.y));
        let x_1371 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1370.x, x_1370.y, x_1370.z, x_1371.w);
        let x_1374 : f32 = u_xlat9.x;
        u_xlat8.w = x_1374;
        let x_1376 : vec4<f32> = u_xlat6;
        let x_1379 : vec4<f32> = x_1083.x_MainLightShadowmapSize;
        let x_1382 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_1376.x, x_1376.y, x_1376.x, x_1376.y) * vec4<f32>(x_1379.x, x_1379.y, x_1379.x, x_1379.y)) + vec4<f32>(x_1382.y, x_1382.w, x_1382.x, x_1382.w));
        let x_1385 : vec4<f32> = u_xlat6;
        let x_1388 : vec4<f32> = x_1083.x_MainLightShadowmapSize;
        let x_1391 : vec4<f32> = u_xlat8;
        u_xlat46 = ((vec2<f32>(x_1385.x, x_1385.y) * vec2<f32>(x_1388.x, x_1388.y)) + vec2<f32>(x_1391.z, x_1391.w));
        let x_1395 : f32 = u_xlat8.y;
        u_xlat9.w = x_1395;
        let x_1397 : vec4<f32> = u_xlat9;
        let x_1398 : vec2<f32> = vec2<f32>(x_1397.y, x_1397.z);
        let x_1399 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1399.x, x_1398.x, x_1399.z, x_1398.y);
        let x_1401 : vec4<f32> = u_xlat6;
        let x_1404 : vec4<f32> = x_1083.x_MainLightShadowmapSize;
        let x_1407 : vec4<f32> = u_xlat8;
        u_xlat11 = ((vec4<f32>(x_1401.x, x_1401.y, x_1401.x, x_1401.y) * vec4<f32>(x_1404.x, x_1404.y, x_1404.x, x_1404.y)) + vec4<f32>(x_1407.x, x_1407.y, x_1407.z, x_1407.y));
        let x_1410 : vec4<f32> = u_xlat6;
        let x_1413 : vec4<f32> = x_1083.x_MainLightShadowmapSize;
        let x_1416 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1410.x, x_1410.y, x_1410.x, x_1410.y) * vec4<f32>(x_1413.x, x_1413.y, x_1413.x, x_1413.y)) + vec4<f32>(x_1416.w, x_1416.y, x_1416.w, x_1416.z));
        let x_1419 : vec4<f32> = u_xlat6;
        let x_1422 : vec4<f32> = x_1083.x_MainLightShadowmapSize;
        let x_1425 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_1419.x, x_1419.y, x_1419.x, x_1419.y) * vec4<f32>(x_1422.x, x_1422.y, x_1422.x, x_1422.y)) + vec4<f32>(x_1425.x, x_1425.w, x_1425.z, x_1425.w));
        let x_1428 : vec4<f32> = u_xlat7;
        let x_1430 : vec4<f32> = u_xlat12;
        u_xlat13 = (vec4<f32>(x_1428.x, x_1428.x, x_1428.x, x_1428.y) * vec4<f32>(x_1430.z, x_1430.w, x_1430.y, x_1430.z));
        let x_1434 : vec4<f32> = u_xlat7;
        let x_1436 : vec4<f32> = u_xlat12;
        u_xlat14 = (vec4<f32>(x_1434.y, x_1434.y, x_1434.z, x_1434.z) * x_1436);
        let x_1440 : f32 = u_xlat7.z;
        let x_1442 : f32 = u_xlat12.y;
        u_xlat64 = (x_1440 * x_1442);
        let x_1445 : vec4<f32> = u_xlat10;
        let x_1446 : vec2<f32> = vec2<f32>(x_1445.x, x_1445.y);
        let x_1448 : f32 = vs_TEXCOORD8.z;
        txVec4 = vec3<f32>(x_1446.x, x_1446.y, x_1448);
        let x_1456 : vec3<f32> = txVec4;
        let x_1458 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1456.xy, x_1456.z);
        u_xlat65 = x_1458;
        let x_1460 : vec4<f32> = u_xlat10;
        let x_1461 : vec2<f32> = vec2<f32>(x_1460.z, x_1460.w);
        let x_1463 : f32 = vs_TEXCOORD8.z;
        txVec5 = vec3<f32>(x_1461.x, x_1461.y, x_1463);
        let x_1470 : vec3<f32> = txVec5;
        let x_1472 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1470.xy, x_1470.z);
        u_xlat6.x = x_1472;
        let x_1475 : f32 = u_xlat6.x;
        let x_1477 : f32 = u_xlat13.y;
        u_xlat6.x = (x_1475 * x_1477);
        let x_1481 : f32 = u_xlat13.x;
        let x_1482 : f32 = u_xlat65;
        let x_1485 : f32 = u_xlat6.x;
        u_xlat65 = ((x_1481 * x_1482) + x_1485);
        let x_1488 : vec2<f32> = u_xlat46;
        let x_1490 : f32 = vs_TEXCOORD8.z;
        txVec6 = vec3<f32>(x_1488.x, x_1488.y, x_1490);
        let x_1497 : vec3<f32> = txVec6;
        let x_1499 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1497.xy, x_1497.z);
        u_xlat6.x = x_1499;
        let x_1502 : f32 = u_xlat13.z;
        let x_1504 : f32 = u_xlat6.x;
        let x_1506 : f32 = u_xlat65;
        u_xlat65 = ((x_1502 * x_1504) + x_1506);
        let x_1509 : vec4<f32> = u_xlat9;
        let x_1510 : vec2<f32> = vec2<f32>(x_1509.x, x_1509.y);
        let x_1512 : f32 = vs_TEXCOORD8.z;
        txVec7 = vec3<f32>(x_1510.x, x_1510.y, x_1512);
        let x_1519 : vec3<f32> = txVec7;
        let x_1521 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1519.xy, x_1519.z);
        u_xlat6.x = x_1521;
        let x_1524 : f32 = u_xlat13.w;
        let x_1526 : f32 = u_xlat6.x;
        let x_1528 : f32 = u_xlat65;
        u_xlat65 = ((x_1524 * x_1526) + x_1528);
        let x_1531 : vec4<f32> = u_xlat11;
        let x_1532 : vec2<f32> = vec2<f32>(x_1531.x, x_1531.y);
        let x_1534 : f32 = vs_TEXCOORD8.z;
        txVec8 = vec3<f32>(x_1532.x, x_1532.y, x_1534);
        let x_1541 : vec3<f32> = txVec8;
        let x_1543 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1541.xy, x_1541.z);
        u_xlat6.x = x_1543;
        let x_1546 : f32 = u_xlat14.x;
        let x_1548 : f32 = u_xlat6.x;
        let x_1550 : f32 = u_xlat65;
        u_xlat65 = ((x_1546 * x_1548) + x_1550);
        let x_1553 : vec4<f32> = u_xlat11;
        let x_1554 : vec2<f32> = vec2<f32>(x_1553.z, x_1553.w);
        let x_1556 : f32 = vs_TEXCOORD8.z;
        txVec9 = vec3<f32>(x_1554.x, x_1554.y, x_1556);
        let x_1563 : vec3<f32> = txVec9;
        let x_1565 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1563.xy, x_1563.z);
        u_xlat6.x = x_1565;
        let x_1568 : f32 = u_xlat14.y;
        let x_1570 : f32 = u_xlat6.x;
        let x_1572 : f32 = u_xlat65;
        u_xlat65 = ((x_1568 * x_1570) + x_1572);
        let x_1575 : vec4<f32> = u_xlat9;
        let x_1576 : vec2<f32> = vec2<f32>(x_1575.z, x_1575.w);
        let x_1578 : f32 = vs_TEXCOORD8.z;
        txVec10 = vec3<f32>(x_1576.x, x_1576.y, x_1578);
        let x_1585 : vec3<f32> = txVec10;
        let x_1587 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1585.xy, x_1585.z);
        u_xlat6.x = x_1587;
        let x_1590 : f32 = u_xlat14.z;
        let x_1592 : f32 = u_xlat6.x;
        let x_1594 : f32 = u_xlat65;
        u_xlat65 = ((x_1590 * x_1592) + x_1594);
        let x_1597 : vec4<f32> = u_xlat8;
        let x_1598 : vec2<f32> = vec2<f32>(x_1597.x, x_1597.y);
        let x_1600 : f32 = vs_TEXCOORD8.z;
        txVec11 = vec3<f32>(x_1598.x, x_1598.y, x_1600);
        let x_1607 : vec3<f32> = txVec11;
        let x_1609 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1607.xy, x_1607.z);
        u_xlat6.x = x_1609;
        let x_1612 : f32 = u_xlat14.w;
        let x_1614 : f32 = u_xlat6.x;
        let x_1616 : f32 = u_xlat65;
        u_xlat65 = ((x_1612 * x_1614) + x_1616);
        let x_1619 : vec4<f32> = u_xlat8;
        let x_1620 : vec2<f32> = vec2<f32>(x_1619.z, x_1619.w);
        let x_1622 : f32 = vs_TEXCOORD8.z;
        txVec12 = vec3<f32>(x_1620.x, x_1620.y, x_1622);
        let x_1629 : vec3<f32> = txVec12;
        let x_1631 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1629.xy, x_1629.z);
        u_xlat6.x = x_1631;
        let x_1633 : f32 = u_xlat64;
        let x_1635 : f32 = u_xlat6.x;
        let x_1637 : f32 = u_xlat65;
        u_xlat3.x = ((x_1633 * x_1635) + x_1637);
      } else {
        let x_1641 : vec4<f32> = vs_TEXCOORD8;
        let x_1644 : vec4<f32> = x_1083.x_MainLightShadowmapSize;
        let x_1647 : vec2<f32> = ((vec2<f32>(x_1641.x, x_1641.y) * vec2<f32>(x_1644.z, x_1644.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1648 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1647.x, x_1647.y, x_1648.z, x_1648.w);
        let x_1650 : vec4<f32> = u_xlat6;
        let x_1652 : vec2<f32> = floor(vec2<f32>(x_1650.x, x_1650.y));
        let x_1653 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1652.x, x_1652.y, x_1653.z, x_1653.w);
        let x_1655 : vec4<f32> = vs_TEXCOORD8;
        let x_1658 : vec4<f32> = x_1083.x_MainLightShadowmapSize;
        let x_1661 : vec4<f32> = u_xlat6;
        u_xlat46 = ((vec2<f32>(x_1655.x, x_1655.y) * vec2<f32>(x_1658.z, x_1658.w)) + -(vec2<f32>(x_1661.x, x_1661.y)));
        let x_1665 : vec2<f32> = u_xlat46;
        u_xlat7 = (vec4<f32>(x_1665.x, x_1665.x, x_1665.y, x_1665.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1668 : vec4<f32> = u_xlat7;
        let x_1670 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1668.x, x_1668.x, x_1668.z, x_1668.z) * vec4<f32>(x_1670.x, x_1670.x, x_1670.z, x_1670.z));
        let x_1673 : vec4<f32> = u_xlat8;
        let x_1677 : vec2<f32> = (vec2<f32>(x_1673.y, x_1673.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1678 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1678.x, x_1677.x, x_1678.z, x_1677.y);
        let x_1680 : vec4<f32> = u_xlat8;
        let x_1683 : vec2<f32> = u_xlat46;
        let x_1685 : vec2<f32> = ((vec2<f32>(x_1680.x, x_1680.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1683));
        let x_1686 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1685.x, x_1686.y, x_1685.y, x_1686.w);
        let x_1688 : vec2<f32> = u_xlat46;
        let x_1690 : vec2<f32> = (-(x_1688) + vec2<f32>(1.0f, 1.0f));
        let x_1691 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1690.x, x_1690.y, x_1691.z, x_1691.w);
        let x_1693 : vec2<f32> = u_xlat46;
        u_xlat48 = min(x_1693, vec2<f32>(0.0f, 0.0f));
        let x_1695 : vec2<f32> = u_xlat48;
        let x_1697 : vec2<f32> = u_xlat48;
        let x_1699 : vec4<f32> = u_xlat8;
        let x_1701 : vec2<f32> = ((-(x_1695) * x_1697) + vec2<f32>(x_1699.x, x_1699.y));
        let x_1702 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1701.x, x_1701.y, x_1702.z, x_1702.w);
        let x_1704 : vec2<f32> = u_xlat46;
        u_xlat48 = max(x_1704, vec2<f32>(0.0f, 0.0f));
        let x_1707 : vec2<f32> = u_xlat48;
        let x_1709 : vec2<f32> = u_xlat48;
        let x_1711 : vec4<f32> = u_xlat7;
        let x_1713 : vec2<f32> = ((-(x_1707) * x_1709) + vec2<f32>(x_1711.y, x_1711.w));
        let x_1714 : vec3<f32> = u_xlat27;
        u_xlat27 = vec3<f32>(x_1713.x, x_1714.y, x_1713.y);
        let x_1716 : vec4<f32> = u_xlat8;
        let x_1718 : vec2<f32> = (vec2<f32>(x_1716.x, x_1716.y) + vec2<f32>(2.0f, 2.0f));
        let x_1719 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1718.x, x_1718.y, x_1719.z, x_1719.w);
        let x_1721 : vec3<f32> = u_xlat27;
        let x_1723 : vec2<f32> = (vec2<f32>(x_1721.x, x_1721.z) + vec2<f32>(2.0f, 2.0f));
        let x_1724 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1724.x, x_1723.x, x_1724.z, x_1723.y);
        let x_1727 : f32 = u_xlat7.y;
        u_xlat10.z = (x_1727 * 0.081632003f);
        let x_1731 : vec4<f32> = u_xlat7;
        let x_1734 : vec3<f32> = (vec3<f32>(x_1731.z, x_1731.x, x_1731.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_1735 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1734.x, x_1734.y, x_1734.z, x_1735.w);
        let x_1737 : vec4<f32> = u_xlat8;
        let x_1740 : vec2<f32> = (vec2<f32>(x_1737.x, x_1737.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1741 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1740.x, x_1740.y, x_1741.z, x_1741.w);
        let x_1744 : f32 = u_xlat11.y;
        u_xlat10.x = x_1744;
        let x_1746 : vec2<f32> = u_xlat46;
        let x_1753 : vec2<f32> = ((vec2<f32>(x_1746.x, x_1746.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1754 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1754.x, x_1753.x, x_1754.z, x_1753.y);
        let x_1756 : vec2<f32> = u_xlat46;
        let x_1760 : vec2<f32> = ((vec2<f32>(x_1756.x, x_1756.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1761 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1760.x, x_1761.y, x_1760.y, x_1761.w);
        let x_1764 : f32 = u_xlat7.x;
        u_xlat8.y = x_1764;
        let x_1767 : f32 = u_xlat9.y;
        u_xlat8.w = x_1767;
        let x_1769 : vec4<f32> = u_xlat8;
        let x_1770 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1769 + x_1770);
        let x_1772 : vec2<f32> = u_xlat46;
        let x_1775 : vec2<f32> = ((vec2<f32>(x_1772.y, x_1772.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1776 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1776.x, x_1775.x, x_1776.z, x_1775.y);
        let x_1778 : vec2<f32> = u_xlat46;
        let x_1781 : vec2<f32> = ((vec2<f32>(x_1778.y, x_1778.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1782 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1781.x, x_1782.y, x_1781.y, x_1782.w);
        let x_1785 : f32 = u_xlat7.y;
        u_xlat9.y = x_1785;
        let x_1787 : vec4<f32> = u_xlat9;
        let x_1788 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1787 + x_1788);
        let x_1790 : vec4<f32> = u_xlat8;
        let x_1791 : vec4<f32> = u_xlat10;
        u_xlat8 = (x_1790 / x_1791);
        let x_1793 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1793 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1799 : vec4<f32> = u_xlat9;
        let x_1800 : vec4<f32> = u_xlat7;
        u_xlat9 = (x_1799 / x_1800);
        let x_1802 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1802 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1804 : vec4<f32> = u_xlat8;
        let x_1807 : vec4<f32> = x_1083.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1804.w, x_1804.x, x_1804.y, x_1804.z) * vec4<f32>(x_1807.x, x_1807.x, x_1807.x, x_1807.x));
        let x_1810 : vec4<f32> = u_xlat9;
        let x_1813 : vec4<f32> = x_1083.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1810.x, x_1810.w, x_1810.y, x_1810.z) * vec4<f32>(x_1813.y, x_1813.y, x_1813.y, x_1813.y));
        let x_1816 : vec4<f32> = u_xlat8;
        let x_1817 : vec3<f32> = vec3<f32>(x_1816.y, x_1816.z, x_1816.w);
        let x_1818 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1817.x, x_1818.y, x_1817.y, x_1817.z);
        let x_1821 : f32 = u_xlat9.x;
        u_xlat11.y = x_1821;
        let x_1823 : vec4<f32> = u_xlat6;
        let x_1826 : vec4<f32> = x_1083.x_MainLightShadowmapSize;
        let x_1829 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1823.x, x_1823.y, x_1823.x, x_1823.y) * vec4<f32>(x_1826.x, x_1826.y, x_1826.x, x_1826.y)) + vec4<f32>(x_1829.x, x_1829.y, x_1829.z, x_1829.y));
        let x_1832 : vec4<f32> = u_xlat6;
        let x_1835 : vec4<f32> = x_1083.x_MainLightShadowmapSize;
        let x_1838 : vec4<f32> = u_xlat11;
        u_xlat46 = ((vec2<f32>(x_1832.x, x_1832.y) * vec2<f32>(x_1835.x, x_1835.y)) + vec2<f32>(x_1838.w, x_1838.y));
        let x_1842 : f32 = u_xlat11.y;
        u_xlat8.y = x_1842;
        let x_1845 : f32 = u_xlat9.z;
        u_xlat11.y = x_1845;
        let x_1847 : vec4<f32> = u_xlat6;
        let x_1850 : vec4<f32> = x_1083.x_MainLightShadowmapSize;
        let x_1853 : vec4<f32> = u_xlat11;
        u_xlat13 = ((vec4<f32>(x_1847.x, x_1847.y, x_1847.x, x_1847.y) * vec4<f32>(x_1850.x, x_1850.y, x_1850.x, x_1850.y)) + vec4<f32>(x_1853.x, x_1853.y, x_1853.z, x_1853.y));
        let x_1856 : vec4<f32> = u_xlat6;
        let x_1859 : vec4<f32> = x_1083.x_MainLightShadowmapSize;
        let x_1862 : vec4<f32> = u_xlat11;
        let x_1864 : vec2<f32> = ((vec2<f32>(x_1856.x, x_1856.y) * vec2<f32>(x_1859.x, x_1859.y)) + vec2<f32>(x_1862.w, x_1862.y));
        let x_1865 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_1864.x, x_1864.y, x_1865.z, x_1865.w);
        let x_1868 : f32 = u_xlat11.y;
        u_xlat8.z = x_1868;
        let x_1871 : vec4<f32> = u_xlat6;
        let x_1874 : vec4<f32> = x_1083.x_MainLightShadowmapSize;
        let x_1877 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1871.x, x_1871.y, x_1871.x, x_1871.y) * vec4<f32>(x_1874.x, x_1874.y, x_1874.x, x_1874.y)) + vec4<f32>(x_1877.x, x_1877.y, x_1877.x, x_1877.z));
        let x_1881 : f32 = u_xlat9.w;
        u_xlat11.y = x_1881;
        let x_1884 : vec4<f32> = u_xlat6;
        let x_1887 : vec4<f32> = x_1083.x_MainLightShadowmapSize;
        let x_1890 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1884.x, x_1884.y, x_1884.x, x_1884.y) * vec4<f32>(x_1887.x, x_1887.y, x_1887.x, x_1887.y)) + vec4<f32>(x_1890.x, x_1890.y, x_1890.z, x_1890.y));
        let x_1894 : vec4<f32> = u_xlat6;
        let x_1897 : vec4<f32> = x_1083.x_MainLightShadowmapSize;
        let x_1900 : vec4<f32> = u_xlat11;
        u_xlat28 = ((vec2<f32>(x_1894.x, x_1894.y) * vec2<f32>(x_1897.x, x_1897.y)) + vec2<f32>(x_1900.w, x_1900.y));
        let x_1904 : f32 = u_xlat11.y;
        u_xlat8.w = x_1904;
        let x_1907 : vec4<f32> = u_xlat6;
        let x_1910 : vec4<f32> = x_1083.x_MainLightShadowmapSize;
        let x_1913 : vec4<f32> = u_xlat8;
        u_xlat54 = ((vec2<f32>(x_1907.x, x_1907.y) * vec2<f32>(x_1910.x, x_1910.y)) + vec2<f32>(x_1913.x, x_1913.w));
        let x_1916 : vec4<f32> = u_xlat11;
        let x_1917 : vec3<f32> = vec3<f32>(x_1916.x, x_1916.z, x_1916.w);
        let x_1918 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1917.x, x_1918.y, x_1917.y, x_1917.z);
        let x_1920 : vec4<f32> = u_xlat6;
        let x_1923 : vec4<f32> = x_1083.x_MainLightShadowmapSize;
        let x_1926 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1920.x, x_1920.y, x_1920.x, x_1920.y) * vec4<f32>(x_1923.x, x_1923.y, x_1923.x, x_1923.y)) + vec4<f32>(x_1926.x, x_1926.y, x_1926.z, x_1926.y));
        let x_1930 : vec4<f32> = u_xlat6;
        let x_1933 : vec4<f32> = x_1083.x_MainLightShadowmapSize;
        let x_1936 : vec4<f32> = u_xlat9;
        u_xlat49 = ((vec2<f32>(x_1930.x, x_1930.y) * vec2<f32>(x_1933.x, x_1933.y)) + vec2<f32>(x_1936.w, x_1936.y));
        let x_1940 : f32 = u_xlat8.x;
        u_xlat9.x = x_1940;
        let x_1942 : vec4<f32> = u_xlat6;
        let x_1945 : vec4<f32> = x_1083.x_MainLightShadowmapSize;
        let x_1948 : vec4<f32> = u_xlat9;
        let x_1950 : vec2<f32> = ((vec2<f32>(x_1942.x, x_1942.y) * vec2<f32>(x_1945.x, x_1945.y)) + vec2<f32>(x_1948.x, x_1948.y));
        let x_1951 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1950.x, x_1950.y, x_1951.z, x_1951.w);
        let x_1954 : vec4<f32> = u_xlat7;
        let x_1956 : vec4<f32> = u_xlat10;
        u_xlat17 = (vec4<f32>(x_1954.x, x_1954.x, x_1954.x, x_1954.x) * x_1956);
        let x_1959 : vec4<f32> = u_xlat7;
        let x_1961 : vec4<f32> = u_xlat10;
        u_xlat18 = (vec4<f32>(x_1959.y, x_1959.y, x_1959.y, x_1959.y) * x_1961);
        let x_1964 : vec4<f32> = u_xlat7;
        let x_1966 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_1964.z, x_1964.z, x_1964.z, x_1964.z) * x_1966);
        let x_1968 : vec4<f32> = u_xlat7;
        let x_1970 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_1968.w, x_1968.w, x_1968.w, x_1968.w) * x_1970);
        let x_1973 : vec4<f32> = u_xlat12;
        let x_1974 : vec2<f32> = vec2<f32>(x_1973.x, x_1973.y);
        let x_1976 : f32 = vs_TEXCOORD8.z;
        txVec13 = vec3<f32>(x_1974.x, x_1974.y, x_1976);
        let x_1983 : vec3<f32> = txVec13;
        let x_1985 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1983.xy, x_1983.z);
        u_xlat64 = x_1985;
        let x_1987 : vec4<f32> = u_xlat12;
        let x_1988 : vec2<f32> = vec2<f32>(x_1987.z, x_1987.w);
        let x_1990 : f32 = vs_TEXCOORD8.z;
        txVec14 = vec3<f32>(x_1988.x, x_1988.y, x_1990);
        let x_1997 : vec3<f32> = txVec14;
        let x_1999 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1997.xy, x_1997.z);
        u_xlat65 = x_1999;
        let x_2000 : f32 = u_xlat65;
        let x_2002 : f32 = u_xlat17.y;
        u_xlat65 = (x_2000 * x_2002);
        let x_2005 : f32 = u_xlat17.x;
        let x_2006 : f32 = u_xlat64;
        let x_2008 : f32 = u_xlat65;
        u_xlat64 = ((x_2005 * x_2006) + x_2008);
        let x_2011 : vec2<f32> = u_xlat46;
        let x_2013 : f32 = vs_TEXCOORD8.z;
        txVec15 = vec3<f32>(x_2011.x, x_2011.y, x_2013);
        let x_2020 : vec3<f32> = txVec15;
        let x_2022 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2020.xy, x_2020.z);
        u_xlat65 = x_2022;
        let x_2024 : f32 = u_xlat17.z;
        let x_2025 : f32 = u_xlat65;
        let x_2027 : f32 = u_xlat64;
        u_xlat64 = ((x_2024 * x_2025) + x_2027);
        let x_2030 : vec4<f32> = u_xlat15;
        let x_2031 : vec2<f32> = vec2<f32>(x_2030.x, x_2030.y);
        let x_2033 : f32 = vs_TEXCOORD8.z;
        txVec16 = vec3<f32>(x_2031.x, x_2031.y, x_2033);
        let x_2040 : vec3<f32> = txVec16;
        let x_2042 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2040.xy, x_2040.z);
        u_xlat65 = x_2042;
        let x_2044 : f32 = u_xlat17.w;
        let x_2045 : f32 = u_xlat65;
        let x_2047 : f32 = u_xlat64;
        u_xlat64 = ((x_2044 * x_2045) + x_2047);
        let x_2050 : vec4<f32> = u_xlat13;
        let x_2051 : vec2<f32> = vec2<f32>(x_2050.x, x_2050.y);
        let x_2053 : f32 = vs_TEXCOORD8.z;
        txVec17 = vec3<f32>(x_2051.x, x_2051.y, x_2053);
        let x_2060 : vec3<f32> = txVec17;
        let x_2062 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2060.xy, x_2060.z);
        u_xlat65 = x_2062;
        let x_2064 : f32 = u_xlat18.x;
        let x_2065 : f32 = u_xlat65;
        let x_2067 : f32 = u_xlat64;
        u_xlat64 = ((x_2064 * x_2065) + x_2067);
        let x_2070 : vec4<f32> = u_xlat13;
        let x_2071 : vec2<f32> = vec2<f32>(x_2070.z, x_2070.w);
        let x_2073 : f32 = vs_TEXCOORD8.z;
        txVec18 = vec3<f32>(x_2071.x, x_2071.y, x_2073);
        let x_2080 : vec3<f32> = txVec18;
        let x_2082 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2080.xy, x_2080.z);
        u_xlat65 = x_2082;
        let x_2084 : f32 = u_xlat18.y;
        let x_2085 : f32 = u_xlat65;
        let x_2087 : f32 = u_xlat64;
        u_xlat64 = ((x_2084 * x_2085) + x_2087);
        let x_2090 : vec4<f32> = u_xlat14;
        let x_2091 : vec2<f32> = vec2<f32>(x_2090.x, x_2090.y);
        let x_2093 : f32 = vs_TEXCOORD8.z;
        txVec19 = vec3<f32>(x_2091.x, x_2091.y, x_2093);
        let x_2100 : vec3<f32> = txVec19;
        let x_2102 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2100.xy, x_2100.z);
        u_xlat65 = x_2102;
        let x_2104 : f32 = u_xlat18.z;
        let x_2105 : f32 = u_xlat65;
        let x_2107 : f32 = u_xlat64;
        u_xlat64 = ((x_2104 * x_2105) + x_2107);
        let x_2110 : vec4<f32> = u_xlat15;
        let x_2111 : vec2<f32> = vec2<f32>(x_2110.z, x_2110.w);
        let x_2113 : f32 = vs_TEXCOORD8.z;
        txVec20 = vec3<f32>(x_2111.x, x_2111.y, x_2113);
        let x_2120 : vec3<f32> = txVec20;
        let x_2122 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2120.xy, x_2120.z);
        u_xlat65 = x_2122;
        let x_2124 : f32 = u_xlat18.w;
        let x_2125 : f32 = u_xlat65;
        let x_2127 : f32 = u_xlat64;
        u_xlat64 = ((x_2124 * x_2125) + x_2127);
        let x_2130 : vec4<f32> = u_xlat16;
        let x_2131 : vec2<f32> = vec2<f32>(x_2130.x, x_2130.y);
        let x_2133 : f32 = vs_TEXCOORD8.z;
        txVec21 = vec3<f32>(x_2131.x, x_2131.y, x_2133);
        let x_2140 : vec3<f32> = txVec21;
        let x_2142 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2140.xy, x_2140.z);
        u_xlat65 = x_2142;
        let x_2144 : f32 = u_xlat19.x;
        let x_2145 : f32 = u_xlat65;
        let x_2147 : f32 = u_xlat64;
        u_xlat64 = ((x_2144 * x_2145) + x_2147);
        let x_2150 : vec4<f32> = u_xlat16;
        let x_2151 : vec2<f32> = vec2<f32>(x_2150.z, x_2150.w);
        let x_2153 : f32 = vs_TEXCOORD8.z;
        txVec22 = vec3<f32>(x_2151.x, x_2151.y, x_2153);
        let x_2160 : vec3<f32> = txVec22;
        let x_2162 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2160.xy, x_2160.z);
        u_xlat65 = x_2162;
        let x_2164 : f32 = u_xlat19.y;
        let x_2165 : f32 = u_xlat65;
        let x_2167 : f32 = u_xlat64;
        u_xlat64 = ((x_2164 * x_2165) + x_2167);
        let x_2170 : vec2<f32> = u_xlat28;
        let x_2172 : f32 = vs_TEXCOORD8.z;
        txVec23 = vec3<f32>(x_2170.x, x_2170.y, x_2172);
        let x_2179 : vec3<f32> = txVec23;
        let x_2181 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2179.xy, x_2179.z);
        u_xlat65 = x_2181;
        let x_2183 : f32 = u_xlat19.z;
        let x_2184 : f32 = u_xlat65;
        let x_2186 : f32 = u_xlat64;
        u_xlat64 = ((x_2183 * x_2184) + x_2186);
        let x_2189 : vec2<f32> = u_xlat54;
        let x_2191 : f32 = vs_TEXCOORD8.z;
        txVec24 = vec3<f32>(x_2189.x, x_2189.y, x_2191);
        let x_2198 : vec3<f32> = txVec24;
        let x_2200 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2198.xy, x_2198.z);
        u_xlat65 = x_2200;
        let x_2202 : f32 = u_xlat19.w;
        let x_2203 : f32 = u_xlat65;
        let x_2205 : f32 = u_xlat64;
        u_xlat64 = ((x_2202 * x_2203) + x_2205);
        let x_2208 : vec4<f32> = u_xlat11;
        let x_2209 : vec2<f32> = vec2<f32>(x_2208.x, x_2208.y);
        let x_2211 : f32 = vs_TEXCOORD8.z;
        txVec25 = vec3<f32>(x_2209.x, x_2209.y, x_2211);
        let x_2218 : vec3<f32> = txVec25;
        let x_2220 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2218.xy, x_2218.z);
        u_xlat65 = x_2220;
        let x_2222 : f32 = u_xlat7.x;
        let x_2223 : f32 = u_xlat65;
        let x_2225 : f32 = u_xlat64;
        u_xlat64 = ((x_2222 * x_2223) + x_2225);
        let x_2228 : vec4<f32> = u_xlat11;
        let x_2229 : vec2<f32> = vec2<f32>(x_2228.z, x_2228.w);
        let x_2231 : f32 = vs_TEXCOORD8.z;
        txVec26 = vec3<f32>(x_2229.x, x_2229.y, x_2231);
        let x_2238 : vec3<f32> = txVec26;
        let x_2240 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2238.xy, x_2238.z);
        u_xlat65 = x_2240;
        let x_2242 : f32 = u_xlat7.y;
        let x_2243 : f32 = u_xlat65;
        let x_2245 : f32 = u_xlat64;
        u_xlat64 = ((x_2242 * x_2243) + x_2245);
        let x_2248 : vec2<f32> = u_xlat49;
        let x_2250 : f32 = vs_TEXCOORD8.z;
        txVec27 = vec3<f32>(x_2248.x, x_2248.y, x_2250);
        let x_2257 : vec3<f32> = txVec27;
        let x_2259 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2257.xy, x_2257.z);
        u_xlat65 = x_2259;
        let x_2261 : f32 = u_xlat7.z;
        let x_2262 : f32 = u_xlat65;
        let x_2264 : f32 = u_xlat64;
        u_xlat64 = ((x_2261 * x_2262) + x_2264);
        let x_2267 : vec4<f32> = u_xlat6;
        let x_2268 : vec2<f32> = vec2<f32>(x_2267.x, x_2267.y);
        let x_2270 : f32 = vs_TEXCOORD8.z;
        txVec28 = vec3<f32>(x_2268.x, x_2268.y, x_2270);
        let x_2277 : vec3<f32> = txVec28;
        let x_2279 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2277.xy, x_2277.z);
        u_xlat65 = x_2279;
        let x_2281 : f32 = u_xlat7.w;
        let x_2282 : f32 = u_xlat65;
        let x_2284 : f32 = u_xlat64;
        u_xlat3.x = ((x_2281 * x_2282) + x_2284);
      }
    }
  } else {
    let x_2289 : vec4<f32> = vs_TEXCOORD8;
    let x_2290 : vec2<f32> = vec2<f32>(x_2289.x, x_2289.y);
    let x_2292 : f32 = vs_TEXCOORD8.z;
    txVec29 = vec3<f32>(x_2290.x, x_2290.y, x_2292);
    let x_2299 : vec3<f32> = txVec29;
    let x_2301 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2299.xy, x_2299.z);
    u_xlat3.x = x_2301;
  }
  let x_2304 : f32 = x_1083.x_MainLightShadowParams.x;
  u_xlat64 = (-(x_2304) + 1.0f);
  let x_2308 : f32 = u_xlat3.x;
  let x_2310 : f32 = x_1083.x_MainLightShadowParams.x;
  let x_2312 : f32 = u_xlat64;
  u_xlat3.x = ((x_2308 * x_2310) + x_2312);
  let x_2316 : f32 = vs_TEXCOORD8.z;
  u_xlatb64 = (0.0f >= x_2316);
  let x_2320 : f32 = vs_TEXCOORD8.z;
  u_xlatb65 = (x_2320 >= 1.0f);
  let x_2322 : bool = u_xlatb64;
  let x_2323 : bool = u_xlatb65;
  u_xlatb64 = (x_2322 | x_2323);
  let x_2325 : bool = u_xlatb64;
  if (x_2325) {
    x_2326 = 1.0f;
  } else {
    let x_2331 : f32 = u_xlat3.x;
    x_2326 = x_2331;
  }
  let x_2332 : f32 = x_2326;
  u_xlat3.x = x_2332;
  let x_2334 : vec3<f32> = vs_TEXCOORD7;
  let x_2337 : vec3<f32> = x_126.x_WorldSpaceCameraPos;
  let x_2339 : vec3<f32> = (x_2334 + -(x_2337));
  let x_2340 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2339.x, x_2339.y, x_2339.z, x_2340.w);
  let x_2342 : vec4<f32> = u_xlat6;
  let x_2344 : vec4<f32> = u_xlat6;
  u_xlat64 = dot(vec3<f32>(x_2342.x, x_2342.y, x_2342.z), vec3<f32>(x_2344.x, x_2344.y, x_2344.z));
  let x_2347 : f32 = u_xlat64;
  let x_2349 : f32 = x_1083.x_MainLightShadowParams.z;
  let x_2352 : f32 = x_1083.x_MainLightShadowParams.w;
  u_xlat64 = ((x_2347 * x_2349) + x_2352);
  let x_2354 : f32 = u_xlat64;
  u_xlat64 = clamp(x_2354, 0.0f, 1.0f);
  let x_2357 : f32 = u_xlat3.x;
  u_xlat65 = (-(x_2357) + 1.0f);
  let x_2360 : f32 = u_xlat64;
  let x_2361 : f32 = u_xlat65;
  let x_2364 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_2360 * x_2361) + x_2364);
  let x_2367 : f32 = u_xlat43;
  let x_2370 : vec4<f32> = x_126.x_MainLightColor;
  let x_2372 : vec3<f32> = (vec3<f32>(x_2367, x_2367, x_2367) * vec3<f32>(x_2370.x, x_2370.y, x_2370.z));
  let x_2373 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2372.x, x_2372.y, x_2372.z, x_2373.w);
  let x_2376 : f32 = vs_TEXCOORD3.w;
  u_xlat7.x = x_2376;
  let x_2379 : f32 = vs_TEXCOORD4.w;
  u_xlat7.y = x_2379;
  let x_2382 : f32 = vs_TEXCOORD5.w;
  u_xlat7.z = x_2382;
  let x_2384 : vec4<f32> = u_xlat7;
  let x_2387 : vec4<f32> = u_xlat1;
  u_xlat64 = dot(-(vec3<f32>(x_2384.x, x_2384.y, x_2384.z)), vec3<f32>(x_2387.x, x_2387.y, x_2387.z));
  let x_2390 : f32 = u_xlat64;
  let x_2391 : f32 = u_xlat64;
  u_xlat64 = (x_2390 + x_2391);
  let x_2393 : vec4<f32> = u_xlat1;
  let x_2395 : f32 = u_xlat64;
  let x_2399 : vec4<f32> = u_xlat7;
  let x_2402 : vec3<f32> = ((vec3<f32>(x_2393.x, x_2393.y, x_2393.z) * -(vec3<f32>(x_2395, x_2395, x_2395))) + -(vec3<f32>(x_2399.x, x_2399.y, x_2399.z)));
  let x_2403 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2402.x, x_2402.y, x_2402.z, x_2403.w);
  let x_2405 : vec4<f32> = u_xlat1;
  let x_2407 : vec4<f32> = u_xlat7;
  u_xlat64 = dot(vec3<f32>(x_2405.x, x_2405.y, x_2405.z), vec3<f32>(x_2407.x, x_2407.y, x_2407.z));
  let x_2410 : f32 = u_xlat64;
  u_xlat64 = clamp(x_2410, 0.0f, 1.0f);
  let x_2412 : f32 = u_xlat64;
  u_xlat64 = (-(x_2412) + 1.0f);
  let x_2415 : f32 = u_xlat64;
  let x_2416 : f32 = u_xlat64;
  u_xlat64 = (x_2415 * x_2416);
  let x_2418 : f32 = u_xlat64;
  let x_2419 : f32 = u_xlat64;
  u_xlat64 = (x_2418 * x_2419);
  let x_2422 : f32 = u_xlat0.x;
  u_xlat65 = ((-(x_2422) * 0.699999988f) + 1.700000048f);
  let x_2429 : f32 = u_xlat0.x;
  let x_2430 : f32 = u_xlat65;
  u_xlat0.x = (x_2429 * x_2430);
  let x_2434 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2434 * 6.0f);
  let x_2446 : vec4<f32> = u_xlat8;
  let x_2449 : f32 = u_xlat0.x;
  let x_2450 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2446.x, x_2446.y, x_2446.z), x_2449);
  u_xlat8 = x_2450;
  let x_2452 : f32 = u_xlat8.w;
  u_xlat0.x = (x_2452 + -1.0f);
  let x_2456 : f32 = x_899.unity_SpecCube0_HDR.w;
  let x_2458 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_2456 * x_2458) + 1.0f);
  let x_2463 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2463, 0.0f);
  let x_2467 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_2467);
  let x_2471 : f32 = u_xlat0.x;
  let x_2473 : f32 = x_899.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_2471 * x_2473);
  let x_2477 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_2477);
  let x_2481 : f32 = u_xlat0.x;
  let x_2483 : f32 = x_899.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_2481 * x_2483);
  let x_2486 : vec4<f32> = u_xlat8;
  let x_2488 : vec3<f32> = u_xlat0;
  let x_2490 : vec3<f32> = (vec3<f32>(x_2486.x, x_2486.y, x_2486.z) * vec3<f32>(x_2488.x, x_2488.x, x_2488.x));
  let x_2491 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2490.x, x_2490.y, x_2490.z, x_2491.w);
  let x_2493 : f32 = u_xlat40;
  let x_2495 : f32 = u_xlat40;
  let x_2499 : vec2<f32> = ((vec2<f32>(x_2493, x_2493) * vec2<f32>(x_2495, x_2495)) + vec2<f32>(-1.0f, 1.0f));
  let x_2500 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_2499.x, x_2500.y, x_2499.y);
  let x_2503 : f32 = u_xlat0.z;
  u_xlat40 = (1.0f / x_2503);
  let x_2505 : vec4<f32> = u_xlat5;
  let x_2508 : f32 = u_xlat23;
  let x_2510 : vec3<f32> = (-(vec3<f32>(x_2505.x, x_2505.y, x_2505.z)) + vec3<f32>(x_2508, x_2508, x_2508));
  let x_2511 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2510.x, x_2510.y, x_2510.z, x_2511.w);
  let x_2513 : f32 = u_xlat64;
  let x_2515 : vec4<f32> = u_xlat9;
  let x_2518 : vec4<f32> = u_xlat5;
  let x_2520 : vec3<f32> = ((vec3<f32>(x_2513, x_2513, x_2513) * vec3<f32>(x_2515.x, x_2515.y, x_2515.z)) + vec3<f32>(x_2518.x, x_2518.y, x_2518.z));
  let x_2521 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2520.x, x_2520.y, x_2520.z, x_2521.w);
  let x_2523 : f32 = u_xlat40;
  let x_2525 : vec4<f32> = u_xlat9;
  let x_2527 : vec3<f32> = (vec3<f32>(x_2523, x_2523, x_2523) * vec3<f32>(x_2525.x, x_2525.y, x_2525.z));
  let x_2528 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2527.x, x_2527.y, x_2527.z, x_2528.w);
  let x_2530 : vec4<f32> = u_xlat8;
  let x_2532 : vec4<f32> = u_xlat9;
  let x_2534 : vec3<f32> = (vec3<f32>(x_2530.x, x_2530.y, x_2530.z) * vec3<f32>(x_2532.x, x_2532.y, x_2532.z));
  let x_2535 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2534.x, x_2534.y, x_2534.z, x_2535.w);
  let x_2537 : vec3<f32> = u_xlat22;
  let x_2538 : vec4<f32> = u_xlat4;
  let x_2541 : vec4<f32> = u_xlat8;
  u_xlat22 = ((x_2537 * vec3<f32>(x_2538.x, x_2538.y, x_2538.z)) + vec3<f32>(x_2541.x, x_2541.y, x_2541.z));
  let x_2545 : f32 = u_xlat3.x;
  let x_2547 : f32 = x_899.unity_LightData.z;
  u_xlat40 = (x_2545 * x_2547);
  let x_2549 : vec4<f32> = u_xlat1;
  let x_2552 : vec4<f32> = x_126.x_MainLightPosition;
  u_xlat3.x = dot(vec3<f32>(x_2549.x, x_2549.y, x_2549.z), vec3<f32>(x_2552.x, x_2552.y, x_2552.z));
  let x_2557 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_2557, 0.0f, 1.0f);
  let x_2560 : f32 = u_xlat40;
  let x_2562 : f32 = u_xlat3.x;
  u_xlat40 = (x_2560 * x_2562);
  let x_2564 : f32 = u_xlat40;
  let x_2566 : vec4<f32> = u_xlat6;
  let x_2568 : vec3<f32> = (vec3<f32>(x_2564, x_2564, x_2564) * vec3<f32>(x_2566.x, x_2566.y, x_2566.z));
  let x_2569 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2568.x, x_2568.y, x_2568.z, x_2569.w);
  let x_2571 : vec4<f32> = u_xlat7;
  let x_2574 : vec4<f32> = x_126.x_MainLightPosition;
  let x_2576 : vec3<f32> = (vec3<f32>(x_2571.x, x_2571.y, x_2571.z) + vec3<f32>(x_2574.x, x_2574.y, x_2574.z));
  let x_2577 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2576.x, x_2576.y, x_2576.z, x_2577.w);
  let x_2579 : vec4<f32> = u_xlat8;
  let x_2581 : vec4<f32> = u_xlat8;
  u_xlat40 = dot(vec3<f32>(x_2579.x, x_2579.y, x_2579.z), vec3<f32>(x_2581.x, x_2581.y, x_2581.z));
  let x_2584 : f32 = u_xlat40;
  u_xlat40 = max(x_2584, 1.17549435e-37f);
  let x_2587 : f32 = u_xlat40;
  u_xlat40 = inverseSqrt(x_2587);
  let x_2589 : f32 = u_xlat40;
  let x_2591 : vec4<f32> = u_xlat8;
  let x_2593 : vec3<f32> = (vec3<f32>(x_2589, x_2589, x_2589) * vec3<f32>(x_2591.x, x_2591.y, x_2591.z));
  let x_2594 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2593.x, x_2593.y, x_2593.z, x_2594.w);
  let x_2596 : vec4<f32> = u_xlat1;
  let x_2598 : vec4<f32> = u_xlat8;
  u_xlat40 = dot(vec3<f32>(x_2596.x, x_2596.y, x_2596.z), vec3<f32>(x_2598.x, x_2598.y, x_2598.z));
  let x_2601 : f32 = u_xlat40;
  u_xlat40 = clamp(x_2601, 0.0f, 1.0f);
  let x_2604 : vec4<f32> = x_126.x_MainLightPosition;
  let x_2606 : vec4<f32> = u_xlat8;
  u_xlat3.x = dot(vec3<f32>(x_2604.x, x_2604.y, x_2604.z), vec3<f32>(x_2606.x, x_2606.y, x_2606.z));
  let x_2611 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_2611, 0.0f, 1.0f);
  let x_2614 : f32 = u_xlat40;
  let x_2615 : f32 = u_xlat40;
  u_xlat40 = (x_2614 * x_2615);
  let x_2617 : f32 = u_xlat40;
  let x_2619 : f32 = u_xlat0.x;
  u_xlat40 = ((x_2617 * x_2619) + 1.000010014f);
  let x_2624 : f32 = u_xlat3.x;
  let x_2626 : f32 = u_xlat3.x;
  u_xlat3.x = (x_2624 * x_2626);
  let x_2629 : f32 = u_xlat40;
  let x_2630 : f32 = u_xlat40;
  u_xlat40 = (x_2629 * x_2630);
  let x_2633 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_2633, 0.100000001f);
  let x_2637 : f32 = u_xlat40;
  let x_2639 : f32 = u_xlat3.x;
  u_xlat40 = (x_2637 * x_2639);
  let x_2641 : f32 = u_xlat63;
  let x_2642 : f32 = u_xlat40;
  u_xlat40 = (x_2641 * x_2642);
  let x_2644 : f32 = u_xlat61;
  let x_2645 : f32 = u_xlat40;
  u_xlat40 = (x_2644 / x_2645);
  let x_2647 : vec4<f32> = u_xlat5;
  let x_2649 : f32 = u_xlat40;
  let x_2652 : vec4<f32> = u_xlat4;
  let x_2654 : vec3<f32> = ((vec3<f32>(x_2647.x, x_2647.y, x_2647.z) * vec3<f32>(x_2649, x_2649, x_2649)) + vec3<f32>(x_2652.x, x_2652.y, x_2652.z));
  let x_2655 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2654.x, x_2654.y, x_2654.z, x_2655.w);
  let x_2657 : vec4<f32> = u_xlat6;
  let x_2659 : vec4<f32> = u_xlat8;
  let x_2661 : vec3<f32> = (vec3<f32>(x_2657.x, x_2657.y, x_2657.z) * vec3<f32>(x_2659.x, x_2659.y, x_2659.z));
  let x_2662 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2661.x, x_2661.y, x_2661.z, x_2662.w);
  let x_2665 : f32 = x_126.x_AdditionalLightsCount.x;
  let x_2667 : f32 = x_899.unity_LightData.y;
  u_xlat40 = min(x_2665, x_2667);
  let x_2671 : f32 = u_xlat40;
  u_xlatu40 = bitcast<u32>(i32(x_2671));
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2683 : u32 = u_xlatu_loop_1;
    let x_2684 : u32 = u_xlatu40;
    if ((x_2683 < x_2684)) {
    } else {
      break;
    }
    let x_2687 : u32 = u_xlatu_loop_1;
    u_xlatu23 = (x_2687 >> 2u);
    let x_2691 : u32 = u_xlatu_loop_1;
    u_xlati64 = bitcast<i32>((x_2691 & 3u));
    let x_2694 : u32 = u_xlatu23;
    let x_2697 : vec4<f32> = x_899.unity_LightIndices[bitcast<i32>(x_2694)];
    let x_2707 : i32 = u_xlati64;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2712 : vec4<u32> = indexable[x_2707];
    u_xlat23 = dot(x_2697, bitcast<vec4<f32>>(x_2712));
    let x_2716 : f32 = u_xlat23;
    u_xlati23 = i32(x_2716);
    let x_2718 : vec3<f32> = vs_TEXCOORD7;
    let x_2730 : i32 = u_xlati23;
    let x_2732 : vec4<f32> = x_2729.x_AdditionalLightsPosition[x_2730];
    let x_2735 : i32 = u_xlati23;
    let x_2737 : vec4<f32> = x_2729.x_AdditionalLightsPosition[x_2735];
    let x_2739 : vec3<f32> = ((-(x_2718) * vec3<f32>(x_2732.w, x_2732.w, x_2732.w)) + vec3<f32>(x_2737.x, x_2737.y, x_2737.z));
    let x_2740 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2739.x, x_2739.y, x_2739.z, x_2740.w);
    let x_2742 : vec4<f32> = u_xlat9;
    let x_2744 : vec4<f32> = u_xlat9;
    u_xlat64 = dot(vec3<f32>(x_2742.x, x_2742.y, x_2742.z), vec3<f32>(x_2744.x, x_2744.y, x_2744.z));
    let x_2747 : f32 = u_xlat64;
    u_xlat64 = max(x_2747, 6.10351562e-05f);
    let x_2749 : f32 = u_xlat64;
    u_xlat65 = inverseSqrt(x_2749);
    let x_2751 : f32 = u_xlat65;
    let x_2753 : vec4<f32> = u_xlat9;
    let x_2755 : vec3<f32> = (vec3<f32>(x_2751, x_2751, x_2751) * vec3<f32>(x_2753.x, x_2753.y, x_2753.z));
    let x_2756 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2755.x, x_2755.y, x_2755.z, x_2756.w);
    let x_2759 : f32 = u_xlat64;
    u_xlat66 = (1.0f / x_2759);
    let x_2761 : f32 = u_xlat64;
    let x_2762 : i32 = u_xlati23;
    let x_2764 : f32 = x_2729.x_AdditionalLightsAttenuation[x_2762].x;
    u_xlat64 = (x_2761 * x_2764);
    let x_2766 : f32 = u_xlat64;
    let x_2768 : f32 = u_xlat64;
    u_xlat64 = ((-(x_2766) * x_2768) + 1.0f);
    let x_2771 : f32 = u_xlat64;
    u_xlat64 = max(x_2771, 0.0f);
    let x_2773 : f32 = u_xlat64;
    let x_2774 : f32 = u_xlat64;
    u_xlat64 = (x_2773 * x_2774);
    let x_2776 : f32 = u_xlat64;
    let x_2777 : f32 = u_xlat66;
    u_xlat64 = (x_2776 * x_2777);
    let x_2779 : i32 = u_xlati23;
    let x_2781 : vec4<f32> = x_2729.x_AdditionalLightsSpotDir[x_2779];
    let x_2783 : vec4<f32> = u_xlat10;
    u_xlat66 = dot(vec3<f32>(x_2781.x, x_2781.y, x_2781.z), vec3<f32>(x_2783.x, x_2783.y, x_2783.z));
    let x_2786 : f32 = u_xlat66;
    let x_2787 : i32 = u_xlati23;
    let x_2789 : f32 = x_2729.x_AdditionalLightsAttenuation[x_2787].z;
    let x_2791 : i32 = u_xlati23;
    let x_2793 : f32 = x_2729.x_AdditionalLightsAttenuation[x_2791].w;
    u_xlat66 = ((x_2786 * x_2789) + x_2793);
    let x_2795 : f32 = u_xlat66;
    u_xlat66 = clamp(x_2795, 0.0f, 1.0f);
    let x_2797 : f32 = u_xlat66;
    let x_2798 : f32 = u_xlat66;
    u_xlat66 = (x_2797 * x_2798);
    let x_2800 : f32 = u_xlat64;
    let x_2801 : f32 = u_xlat66;
    u_xlat64 = (x_2800 * x_2801);
    let x_2803 : f32 = u_xlat43;
    let x_2805 : i32 = u_xlati23;
    let x_2807 : vec4<f32> = x_2729.x_AdditionalLightsColor[x_2805];
    let x_2809 : vec3<f32> = (vec3<f32>(x_2803, x_2803, x_2803) * vec3<f32>(x_2807.x, x_2807.y, x_2807.z));
    let x_2810 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2809.x, x_2809.y, x_2809.z, x_2810.w);
    let x_2812 : vec4<f32> = u_xlat1;
    let x_2814 : vec4<f32> = u_xlat10;
    u_xlat23 = dot(vec3<f32>(x_2812.x, x_2812.y, x_2812.z), vec3<f32>(x_2814.x, x_2814.y, x_2814.z));
    let x_2817 : f32 = u_xlat23;
    u_xlat23 = clamp(x_2817, 0.0f, 1.0f);
    let x_2819 : f32 = u_xlat23;
    let x_2820 : f32 = u_xlat64;
    u_xlat23 = (x_2819 * x_2820);
    let x_2822 : f32 = u_xlat23;
    let x_2824 : vec4<f32> = u_xlat11;
    let x_2826 : vec3<f32> = (vec3<f32>(x_2822, x_2822, x_2822) * vec3<f32>(x_2824.x, x_2824.y, x_2824.z));
    let x_2827 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2826.x, x_2826.y, x_2826.z, x_2827.w);
    let x_2829 : vec4<f32> = u_xlat9;
    let x_2831 : f32 = u_xlat65;
    let x_2834 : vec4<f32> = u_xlat7;
    let x_2836 : vec3<f32> = ((vec3<f32>(x_2829.x, x_2829.y, x_2829.z) * vec3<f32>(x_2831, x_2831, x_2831)) + vec3<f32>(x_2834.x, x_2834.y, x_2834.z));
    let x_2837 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2836.x, x_2836.y, x_2836.z, x_2837.w);
    let x_2839 : vec4<f32> = u_xlat9;
    let x_2841 : vec4<f32> = u_xlat9;
    u_xlat23 = dot(vec3<f32>(x_2839.x, x_2839.y, x_2839.z), vec3<f32>(x_2841.x, x_2841.y, x_2841.z));
    let x_2844 : f32 = u_xlat23;
    u_xlat23 = max(x_2844, 1.17549435e-37f);
    let x_2846 : f32 = u_xlat23;
    u_xlat23 = inverseSqrt(x_2846);
    let x_2848 : f32 = u_xlat23;
    let x_2850 : vec4<f32> = u_xlat9;
    let x_2852 : vec3<f32> = (vec3<f32>(x_2848, x_2848, x_2848) * vec3<f32>(x_2850.x, x_2850.y, x_2850.z));
    let x_2853 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2852.x, x_2852.y, x_2852.z, x_2853.w);
    let x_2855 : vec4<f32> = u_xlat1;
    let x_2857 : vec4<f32> = u_xlat9;
    u_xlat23 = dot(vec3<f32>(x_2855.x, x_2855.y, x_2855.z), vec3<f32>(x_2857.x, x_2857.y, x_2857.z));
    let x_2860 : f32 = u_xlat23;
    u_xlat23 = clamp(x_2860, 0.0f, 1.0f);
    let x_2862 : vec4<f32> = u_xlat10;
    let x_2864 : vec4<f32> = u_xlat9;
    u_xlat64 = dot(vec3<f32>(x_2862.x, x_2862.y, x_2862.z), vec3<f32>(x_2864.x, x_2864.y, x_2864.z));
    let x_2867 : f32 = u_xlat64;
    u_xlat64 = clamp(x_2867, 0.0f, 1.0f);
    let x_2869 : f32 = u_xlat23;
    let x_2870 : f32 = u_xlat23;
    u_xlat23 = (x_2869 * x_2870);
    let x_2872 : f32 = u_xlat23;
    let x_2874 : f32 = u_xlat0.x;
    u_xlat23 = ((x_2872 * x_2874) + 1.000010014f);
    let x_2877 : f32 = u_xlat64;
    let x_2878 : f32 = u_xlat64;
    u_xlat64 = (x_2877 * x_2878);
    let x_2880 : f32 = u_xlat23;
    let x_2881 : f32 = u_xlat23;
    u_xlat23 = (x_2880 * x_2881);
    let x_2883 : f32 = u_xlat64;
    u_xlat64 = max(x_2883, 0.100000001f);
    let x_2885 : f32 = u_xlat23;
    let x_2886 : f32 = u_xlat64;
    u_xlat23 = (x_2885 * x_2886);
    let x_2888 : f32 = u_xlat63;
    let x_2889 : f32 = u_xlat23;
    u_xlat23 = (x_2888 * x_2889);
    let x_2891 : f32 = u_xlat61;
    let x_2892 : f32 = u_xlat23;
    u_xlat23 = (x_2891 / x_2892);
    let x_2894 : vec4<f32> = u_xlat5;
    let x_2896 : f32 = u_xlat23;
    let x_2899 : vec4<f32> = u_xlat4;
    let x_2901 : vec3<f32> = ((vec3<f32>(x_2894.x, x_2894.y, x_2894.z) * vec3<f32>(x_2896, x_2896, x_2896)) + vec3<f32>(x_2899.x, x_2899.y, x_2899.z));
    let x_2902 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2901.x, x_2901.y, x_2901.z, x_2902.w);
    let x_2904 : vec4<f32> = u_xlat9;
    let x_2906 : vec4<f32> = u_xlat11;
    let x_2909 : vec4<f32> = u_xlat8;
    let x_2911 : vec3<f32> = ((vec3<f32>(x_2904.x, x_2904.y, x_2904.z) * vec3<f32>(x_2906.x, x_2906.y, x_2906.z)) + vec3<f32>(x_2909.x, x_2909.y, x_2909.z));
    let x_2912 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2911.x, x_2911.y, x_2911.z, x_2912.w);

    continuing {
      let x_2914 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2914 + bitcast<u32>(1i));
    }
  }
  let x_2916 : vec3<f32> = u_xlat22;
  let x_2917 : f32 = u_xlat20;
  let x_2920 : vec4<f32> = u_xlat6;
  u_xlat0 = ((x_2916 * vec3<f32>(x_2917, x_2917, x_2917)) + vec3<f32>(x_2920.x, x_2920.y, x_2920.z));
  let x_2923 : vec4<f32> = u_xlat8;
  let x_2925 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_2923.x, x_2923.y, x_2923.z) + x_2925);
  let x_2927 : f32 = u_xlat60;
  let x_2929 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_2927, x_2927, x_2927) * x_2929);
  let x_2932 : f32 = u_xlat2.x;
  let x_2934 : f32 = u_xlat2.x;
  u_xlat60 = (x_2932 * -(x_2934));
  let x_2937 : f32 = u_xlat60;
  u_xlat60 = exp2(x_2937);
  let x_2941 : vec3<f32> = u_xlat0;
  let x_2942 : f32 = u_xlat60;
  let x_2944 : vec3<f32> = (x_2941 * vec3<f32>(x_2942, x_2942, x_2942));
  let x_2945 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2944.x, x_2944.y, x_2944.z, x_2945.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(5) vs_TEXCOORD5_param : vec4<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(6) vs_TEXCOORD7_param : vec3<f32>, @location(7) vs_TEXCOORD8_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD8 = vs_TEXCOORD8_param;
  main_1();
  return main_out(SV_Target0);
}

