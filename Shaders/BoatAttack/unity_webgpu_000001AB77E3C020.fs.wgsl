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

@group(1) @binding(4) var<uniform> x_769 : MainLightShadows;

var<private> vs_TEXCOORD8 : vec4<f32>;

@group(0) @binding(9) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(15) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(10) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_2139 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_2403 : AdditionalLights;

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
  var u_xlat42 : f32;
  var u_xlat21 : f32;
  var u_xlatb1 : bool;
  var u_xlat22 : vec3<f32>;
  var x_548 : f32;
  var x_560 : f32;
  var x_571 : f32;
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
  var x_1998 : f32;
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
  let x_289 : f32 = u_xlat64;
  u_xlat64 = (x_289 + 6.10351562e-05f);
  let x_292 : vec4<f32> = u_xlat4;
  let x_293 : f32 = u_xlat64;
  u_xlat4 = (x_292 / vec4<f32>(x_293, x_293, x_293, x_293));
  let x_296 : vec4<f32> = u_xlat4;
  let x_299 : vec4<f32> = x_30.x_DiffuseRemapScale0;
  let x_301 : vec3<f32> = (vec3<f32>(x_296.x, x_296.x, x_296.x) * vec3<f32>(x_299.x, x_299.y, x_299.z));
  let x_302 : vec4<f32> = u_xlat11;
  u_xlat11 = vec4<f32>(x_301.x, x_301.y, x_301.z, x_302.w);
  let x_304 : vec4<f32> = u_xlat4;
  let x_307 : vec4<f32> = x_30.x_DiffuseRemapScale1;
  let x_309 : vec3<f32> = (vec3<f32>(x_304.y, x_304.y, x_304.y) * vec3<f32>(x_307.x, x_307.y, x_307.z));
  let x_310 : vec4<f32> = u_xlat12;
  u_xlat12 = vec4<f32>(x_309.x, x_309.y, x_309.z, x_310.w);
  let x_312 : vec4<f32> = u_xlat6;
  let x_314 : vec4<f32> = u_xlat12;
  let x_316 : vec3<f32> = (vec3<f32>(x_312.x, x_312.y, x_312.z) * vec3<f32>(x_314.x, x_314.y, x_314.z));
  let x_317 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_316.x, x_316.y, x_316.z, x_317.w);
  let x_319 : vec4<f32> = u_xlat5;
  let x_321 : vec4<f32> = u_xlat11;
  let x_324 : vec4<f32> = u_xlat6;
  let x_326 : vec3<f32> = ((vec3<f32>(x_319.x, x_319.y, x_319.z) * vec3<f32>(x_321.x, x_321.y, x_321.z)) + vec3<f32>(x_324.x, x_324.y, x_324.z));
  let x_327 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_326.x, x_326.y, x_326.z, x_327.w);
  let x_329 : vec4<f32> = u_xlat4;
  let x_332 : vec4<f32> = x_30.x_DiffuseRemapScale2;
  let x_334 : vec3<f32> = (vec3<f32>(x_329.z, x_329.z, x_329.z) * vec3<f32>(x_332.x, x_332.y, x_332.z));
  let x_335 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_334.x, x_334.y, x_334.z, x_335.w);
  let x_337 : vec4<f32> = u_xlat7;
  let x_339 : vec4<f32> = u_xlat6;
  let x_342 : vec4<f32> = u_xlat5;
  let x_344 : vec3<f32> = ((vec3<f32>(x_337.x, x_337.y, x_337.z) * vec3<f32>(x_339.x, x_339.y, x_339.z)) + vec3<f32>(x_342.x, x_342.y, x_342.z));
  let x_345 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_344.x, x_344.y, x_344.z, x_345.w);
  let x_347 : vec4<f32> = u_xlat4;
  let x_350 : vec4<f32> = x_30.x_DiffuseRemapScale3;
  let x_352 : vec3<f32> = (vec3<f32>(x_347.w, x_347.w, x_347.w) * vec3<f32>(x_350.x, x_350.y, x_350.z));
  let x_353 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_352.x, x_352.y, x_352.z, x_353.w);
  let x_355 : vec4<f32> = u_xlat8;
  let x_357 : vec4<f32> = u_xlat6;
  let x_360 : vec4<f32> = u_xlat5;
  let x_362 : vec3<f32> = ((vec3<f32>(x_355.x, x_355.y, x_355.z) * vec3<f32>(x_357.x, x_357.y, x_357.z)) + vec3<f32>(x_360.x, x_360.y, x_360.z));
  let x_363 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_362.x, x_362.y, x_362.z, x_363.w);
  let x_366 : f32 = x_30.x_MaskMapRemapScale0.y;
  u_xlat6.x = x_366;
  let x_369 : f32 = x_30.x_MaskMapRemapScale1.y;
  u_xlat6.y = x_369;
  let x_372 : f32 = x_30.x_MaskMapRemapScale2.y;
  u_xlat6.z = x_372;
  let x_375 : f32 = x_30.x_MaskMapRemapScale3.y;
  u_xlat6.w = x_375;
  let x_378 : f32 = x_30.x_MaskMapRemapOffset0.y;
  u_xlat7.x = x_378;
  let x_381 : f32 = x_30.x_MaskMapRemapOffset1.y;
  u_xlat7.y = x_381;
  let x_384 : f32 = x_30.x_MaskMapRemapOffset2.y;
  u_xlat7.z = x_384;
  let x_387 : f32 = x_30.x_MaskMapRemapOffset3.y;
  u_xlat7.w = x_387;
  let x_389 : vec4<f32> = u_xlat6;
  let x_390 : vec4<f32> = u_xlat7;
  u_xlat6 = (x_389 + x_390);
  let x_393 : f32 = u_xlat0.z;
  u_xlat7.x = x_393;
  let x_396 : f32 = u_xlat1.z;
  u_xlat7.y = x_396;
  let x_399 : f32 = u_xlat2.z;
  u_xlat7.z = x_399;
  let x_402 : f32 = u_xlat3.y;
  u_xlat7.w = x_402;
  let x_404 : vec4<f32> = u_xlat9;
  let x_407 : f32 = x_30.x_Smoothness0;
  let x_409 : f32 = x_30.x_Smoothness1;
  let x_411 : f32 = x_30.x_Smoothness2;
  let x_413 : f32 = x_30.x_Smoothness3;
  let x_416 : vec4<f32> = u_xlat7;
  u_xlat7 = ((-(x_404) * vec4<f32>(x_407, x_409, x_411, x_413)) + x_416);
  let x_420 : f32 = x_30.x_LayerHasMask0;
  let x_423 : f32 = x_30.x_LayerHasMask1;
  let x_426 : f32 = x_30.x_LayerHasMask2;
  let x_429 : f32 = x_30.x_LayerHasMask3;
  let x_431 : vec4<f32> = u_xlat7;
  let x_433 : vec4<f32> = u_xlat10;
  u_xlat7 = ((vec4<f32>(x_420, x_423, x_426, x_429) * x_431) + x_433);
  let x_436 : vec4<f32> = u_xlat4;
  let x_437 : vec4<f32> = u_xlat7;
  u_xlat42 = dot(x_436, x_437);
  let x_440 : f32 = u_xlat0.x;
  u_xlat7.x = x_440;
  let x_443 : f32 = u_xlat1.x;
  u_xlat7.y = x_443;
  let x_446 : f32 = u_xlat2.x;
  u_xlat7.z = x_446;
  let x_449 : f32 = u_xlat3.x;
  u_xlat7.w = x_449;
  let x_451 : vec4<f32> = u_xlat7;
  let x_454 : f32 = x_30.x_Metallic0;
  let x_457 : f32 = x_30.x_Metallic1;
  let x_460 : f32 = x_30.x_Metallic2;
  let x_463 : f32 = x_30.x_Metallic3;
  u_xlat7 = (x_451 + -(vec4<f32>(x_454, x_457, x_460, x_463)));
  let x_468 : f32 = x_30.x_LayerHasMask0;
  let x_470 : f32 = x_30.x_LayerHasMask1;
  let x_472 : f32 = x_30.x_LayerHasMask2;
  let x_474 : f32 = x_30.x_LayerHasMask3;
  let x_476 : vec4<f32> = u_xlat7;
  let x_479 : f32 = x_30.x_Metallic0;
  let x_481 : f32 = x_30.x_Metallic1;
  let x_483 : f32 = x_30.x_Metallic2;
  let x_485 : f32 = x_30.x_Metallic3;
  u_xlat7 = ((vec4<f32>(x_468, x_470, x_472, x_474) * x_476) + vec4<f32>(x_479, x_481, x_483, x_485));
  let x_488 : vec4<f32> = u_xlat4;
  let x_489 : vec4<f32> = u_xlat7;
  u_xlat0.x = dot(x_488, x_489);
  let x_493 : f32 = u_xlat0.y;
  u_xlat3.x = x_493;
  let x_496 : f32 = u_xlat1.y;
  u_xlat3.y = x_496;
  let x_499 : f32 = u_xlat2.y;
  u_xlat3.z = x_499;
  let x_501 : vec4<f32> = u_xlat6;
  let x_503 : vec4<f32> = u_xlat3;
  u_xlat1 = (-(x_501) + x_503);
  let x_506 : f32 = x_30.x_LayerHasMask0;
  let x_508 : f32 = x_30.x_LayerHasMask1;
  let x_510 : f32 = x_30.x_LayerHasMask2;
  let x_512 : f32 = x_30.x_LayerHasMask3;
  let x_514 : vec4<f32> = u_xlat1;
  let x_516 : vec4<f32> = u_xlat6;
  u_xlat1 = ((vec4<f32>(x_506, x_508, x_510, x_512) * x_514) + x_516);
  let x_519 : vec4<f32> = u_xlat4;
  let x_520 : vec4<f32> = u_xlat1;
  u_xlat21 = dot(x_519, x_520);
  let x_524 : f32 = x_126.unity_OrthoParams.w;
  u_xlatb1 = (x_524 == 0.0f);
  let x_529 : vec3<f32> = vs_TEXCOORD7;
  let x_533 : vec3<f32> = x_126.x_WorldSpaceCameraPos;
  u_xlat22 = (-(x_529) + x_533);
  let x_535 : vec3<f32> = u_xlat22;
  let x_536 : vec3<f32> = u_xlat22;
  u_xlat2.x = dot(x_535, x_536);
  let x_540 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_540);
  let x_543 : vec3<f32> = u_xlat22;
  let x_544 : vec3<f32> = u_xlat2;
  u_xlat22 = (x_543 * vec3<f32>(x_544.x, x_544.x, x_544.x));
  let x_547 : bool = u_xlatb1;
  if (x_547) {
    let x_552 : f32 = u_xlat22.x;
    x_548 = x_552;
  } else {
    let x_556 : f32 = x_126.unity_MatrixV[0i].z;
    x_548 = x_556;
  }
  let x_557 : f32 = x_548;
  u_xlat2.x = x_557;
  let x_559 : bool = u_xlatb1;
  if (x_559) {
    let x_564 : f32 = u_xlat22.y;
    x_560 = x_564;
  } else {
    let x_567 : f32 = x_126.unity_MatrixV[1i].z;
    x_560 = x_567;
  }
  let x_568 : f32 = x_560;
  u_xlat2.y = x_568;
  let x_570 : bool = u_xlatb1;
  if (x_570) {
    let x_575 : f32 = u_xlat22.z;
    x_571 = x_575;
  } else {
    let x_579 : f32 = x_126.unity_MatrixV[2i].z;
    x_571 = x_579;
  }
  let x_580 : f32 = x_571;
  u_xlat2.z = x_580;
  let x_583 : vec3<f32> = vs_TEXCOORD3;
  let x_584 : vec3<f32> = vs_TEXCOORD3;
  u_xlat1.x = dot(x_583, x_584);
  let x_588 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_588);
  let x_591 : vec4<f32> = u_xlat1;
  let x_593 : vec3<f32> = vs_TEXCOORD3;
  let x_594 : vec3<f32> = (vec3<f32>(x_591.x, x_591.x, x_591.x) * x_593);
  let x_595 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_594.x, x_594.y, x_594.z, x_595.w);
  let x_602 : vec4<f32> = vs_TEXCOORD0;
  let x_605 : f32 = x_126.x_GlobalMipBias.x;
  let x_606 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_602.z, x_602.w), x_605);
  u_xlat3 = x_606;
  let x_611 : vec4<f32> = vs_TEXCOORD0;
  let x_614 : f32 = x_126.x_GlobalMipBias.x;
  let x_615 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_611.z, x_611.w), x_614);
  let x_616 : vec3<f32> = vec3<f32>(x_615.x, x_615.y, x_615.z);
  let x_617 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_616.x, x_616.y, x_616.z, x_617.w);
  let x_619 : vec4<f32> = u_xlat3;
  let x_623 : vec3<f32> = (vec3<f32>(x_619.x, x_619.y, x_619.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_624 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_623.x, x_623.y, x_623.z, x_624.w);
  let x_626 : vec4<f32> = u_xlat1;
  let x_628 : vec4<f32> = u_xlat3;
  u_xlat64 = dot(vec3<f32>(x_626.x, x_626.y, x_626.z), vec3<f32>(x_628.x, x_628.y, x_628.z));
  let x_631 : f32 = u_xlat64;
  u_xlat64 = (x_631 + 0.5f);
  let x_633 : f32 = u_xlat64;
  let x_635 : vec4<f32> = u_xlat4;
  let x_637 : vec3<f32> = (vec3<f32>(x_633, x_633, x_633) * vec3<f32>(x_635.x, x_635.y, x_635.z));
  let x_638 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_637.x, x_637.y, x_637.z, x_638.w);
  let x_641 : f32 = u_xlat3.w;
  u_xlat64 = max(x_641, 0.0001f);
  let x_644 : vec4<f32> = u_xlat3;
  let x_646 : f32 = u_xlat64;
  let x_648 : vec3<f32> = (vec3<f32>(x_644.x, x_644.y, x_644.z) / vec3<f32>(x_646, x_646, x_646));
  let x_649 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_648.x, x_648.y, x_648.z, x_649.w);
  let x_653 : vec4<f32> = x_126.x_ScaledScreenParams;
  let x_654 : vec2<f32> = vec2<f32>(x_653.x, x_653.y);
  let x_658 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_654.x, x_654.y));
  let x_659 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_658.x, x_658.y, x_659.z, x_659.w);
  let x_661 : vec4<f32> = u_xlat4;
  let x_663 : vec4<f32> = hlslcc_FragCoord;
  let x_665 : vec2<f32> = (vec2<f32>(x_661.x, x_661.y) * vec2<f32>(x_663.x, x_663.y));
  let x_666 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_665.x, x_665.y, x_666.z, x_666.w);
  let x_669 : f32 = u_xlat4.y;
  let x_671 : f32 = x_126.x_ScaleBiasRt.x;
  let x_674 : f32 = x_126.x_ScaleBiasRt.y;
  u_xlat64 = ((x_669 * x_671) + x_674);
  let x_676 : f32 = u_xlat64;
  u_xlat4.z = (-(x_676) + 1.0f);
  let x_681 : f32 = u_xlat0.x;
  u_xlat64 = ((-(x_681) * 0.959999979f) + 0.959999979f);
  let x_687 : f32 = u_xlat42;
  let x_688 : f32 = u_xlat64;
  u_xlat65 = (x_687 + -(x_688));
  let x_691 : f32 = u_xlat64;
  let x_693 : vec4<f32> = u_xlat5;
  let x_695 : vec3<f32> = (vec3<f32>(x_691, x_691, x_691) * vec3<f32>(x_693.x, x_693.y, x_693.z));
  let x_696 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_695.x, x_695.y, x_695.z, x_696.w);
  let x_698 : vec4<f32> = u_xlat5;
  let x_702 : vec3<f32> = (vec3<f32>(x_698.x, x_698.y, x_698.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_703 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_702.x, x_702.y, x_702.z, x_703.w);
  let x_705 : vec3<f32> = u_xlat0;
  let x_707 : vec4<f32> = u_xlat5;
  let x_712 : vec3<f32> = ((vec3<f32>(x_705.x, x_705.x, x_705.x) * vec3<f32>(x_707.x, x_707.y, x_707.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_713 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_712.x, x_712.y, x_712.z, x_713.w);
  let x_715 : f32 = u_xlat42;
  u_xlat0.x = (-(x_715) + 1.0f);
  let x_720 : f32 = u_xlat0.x;
  let x_722 : f32 = u_xlat0.x;
  u_xlat42 = (x_720 * x_722);
  let x_724 : f32 = u_xlat42;
  u_xlat42 = max(x_724, 0.0078125f);
  let x_727 : f32 = u_xlat42;
  let x_728 : f32 = u_xlat42;
  u_xlat64 = (x_727 * x_728);
  let x_730 : f32 = u_xlat65;
  u_xlat65 = (x_730 + 1.0f);
  let x_732 : f32 = u_xlat65;
  u_xlat65 = clamp(x_732, 0.0f, 1.0f);
  let x_735 : f32 = u_xlat42;
  u_xlat66 = ((x_735 * 4.0f) + 2.0f);
  let x_744 : vec4<f32> = u_xlat4;
  let x_747 : f32 = x_126.x_GlobalMipBias.x;
  let x_748 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_744.x, x_744.z), x_747);
  u_xlat4.x = x_748.x;
  let x_753 : f32 = u_xlat4.x;
  u_xlat25 = (x_753 + -1.0f);
  let x_756 : f32 = x_126.x_AmbientOcclusionParam.w;
  let x_757 : f32 = u_xlat25;
  u_xlat25 = ((x_756 * x_757) + 1.0f);
  let x_760 : f32 = u_xlat21;
  let x_762 : f32 = u_xlat4.x;
  u_xlat21 = min(x_760, x_762);
  let x_771 : f32 = x_769.x_MainLightShadowParams.y;
  u_xlatb4 = (0.0f < x_771);
  let x_773 : bool = u_xlatb4;
  if (x_773) {
    let x_777 : f32 = x_769.x_MainLightShadowParams.y;
    u_xlatb4 = (x_777 == 1.0f);
    let x_779 : bool = u_xlatb4;
    if (x_779) {
      let x_783 : vec4<f32> = vs_TEXCOORD8;
      let x_786 : vec4<f32> = x_769.x_MainLightShadowOffset0;
      u_xlat7 = (vec4<f32>(x_783.x, x_783.y, x_783.x, x_783.y) + x_786);
      let x_789 : vec4<f32> = u_xlat7;
      let x_790 : vec2<f32> = vec2<f32>(x_789.x, x_789.y);
      let x_792 : f32 = vs_TEXCOORD8.z;
      txVec0 = vec3<f32>(x_790.x, x_790.y, x_792);
      let x_804 : vec3<f32> = txVec0;
      let x_806 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_804.xy, x_804.z);
      u_xlat8.x = x_806;
      let x_809 : vec4<f32> = u_xlat7;
      let x_810 : vec2<f32> = vec2<f32>(x_809.z, x_809.w);
      let x_812 : f32 = vs_TEXCOORD8.z;
      txVec1 = vec3<f32>(x_810.x, x_810.y, x_812);
      let x_819 : vec3<f32> = txVec1;
      let x_821 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_819.xy, x_819.z);
      u_xlat8.y = x_821;
      let x_823 : vec4<f32> = vs_TEXCOORD8;
      let x_826 : vec4<f32> = x_769.x_MainLightShadowOffset1;
      u_xlat7 = (vec4<f32>(x_823.x, x_823.y, x_823.x, x_823.y) + x_826);
      let x_829 : vec4<f32> = u_xlat7;
      let x_830 : vec2<f32> = vec2<f32>(x_829.x, x_829.y);
      let x_832 : f32 = vs_TEXCOORD8.z;
      txVec2 = vec3<f32>(x_830.x, x_830.y, x_832);
      let x_839 : vec3<f32> = txVec2;
      let x_841 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_839.xy, x_839.z);
      u_xlat8.z = x_841;
      let x_844 : vec4<f32> = u_xlat7;
      let x_845 : vec2<f32> = vec2<f32>(x_844.z, x_844.w);
      let x_847 : f32 = vs_TEXCOORD8.z;
      txVec3 = vec3<f32>(x_845.x, x_845.y, x_847);
      let x_854 : vec3<f32> = txVec3;
      let x_856 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_854.xy, x_854.z);
      u_xlat8.w = x_856;
      let x_858 : vec4<f32> = u_xlat8;
      u_xlat4.x = dot(x_858, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_866 : f32 = x_769.x_MainLightShadowParams.y;
      u_xlatb46 = (x_866 == 2.0f);
      let x_868 : bool = u_xlatb46;
      if (x_868) {
        let x_873 : vec4<f32> = vs_TEXCOORD8;
        let x_876 : vec4<f32> = x_769.x_MainLightShadowmapSize;
        u_xlat46 = ((vec2<f32>(x_873.x, x_873.y) * vec2<f32>(x_876.z, x_876.w)) + vec2<f32>(0.5f, 0.5f));
        let x_880 : vec2<f32> = u_xlat46;
        u_xlat46 = floor(x_880);
        let x_882 : vec4<f32> = vs_TEXCOORD8;
        let x_885 : vec4<f32> = x_769.x_MainLightShadowmapSize;
        let x_888 : vec2<f32> = u_xlat46;
        let x_890 : vec2<f32> = ((vec2<f32>(x_882.x, x_882.y) * vec2<f32>(x_885.z, x_885.w)) + -(x_888));
        let x_891 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_890.x, x_890.y, x_891.z, x_891.w);
        let x_893 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_893.x, x_893.x, x_893.y, x_893.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_897 : vec4<f32> = u_xlat8;
        let x_899 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_897.x, x_897.x, x_897.z, x_897.z) * vec4<f32>(x_899.x, x_899.x, x_899.z, x_899.z));
        let x_903 : vec4<f32> = u_xlat9;
        u_xlat49 = (vec2<f32>(x_903.y, x_903.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_908 : vec4<f32> = u_xlat9;
        let x_911 : vec4<f32> = u_xlat7;
        let x_914 : vec2<f32> = ((vec2<f32>(x_908.x, x_908.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_911.x, x_911.y)));
        let x_915 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_914.x, x_915.y, x_914.y, x_915.w);
        let x_917 : vec4<f32> = u_xlat7;
        let x_920 : vec2<f32> = (-(vec2<f32>(x_917.x, x_917.y)) + vec2<f32>(1.0f, 1.0f));
        let x_921 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_920.x, x_920.y, x_921.z, x_921.w);
        let x_924 : vec4<f32> = u_xlat7;
        u_xlat51 = min(vec2<f32>(x_924.x, x_924.y), vec2<f32>(0.0f, 0.0f));
        let x_928 : vec2<f32> = u_xlat51;
        let x_930 : vec2<f32> = u_xlat51;
        let x_932 : vec4<f32> = u_xlat9;
        u_xlat51 = ((-(x_928) * x_930) + vec2<f32>(x_932.x, x_932.y));
        let x_935 : vec4<f32> = u_xlat7;
        let x_937 : vec2<f32> = max(vec2<f32>(x_935.x, x_935.y), vec2<f32>(0.0f, 0.0f));
        let x_938 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_937.x, x_937.y, x_938.z, x_938.w);
        let x_940 : vec4<f32> = u_xlat7;
        let x_943 : vec4<f32> = u_xlat7;
        let x_946 : vec4<f32> = u_xlat8;
        let x_948 : vec2<f32> = ((-(vec2<f32>(x_940.x, x_940.y)) * vec2<f32>(x_943.x, x_943.y)) + vec2<f32>(x_946.y, x_946.w));
        let x_949 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_948.x, x_948.y, x_949.z, x_949.w);
        let x_951 : vec2<f32> = u_xlat51;
        u_xlat51 = (x_951 + vec2<f32>(1.0f, 1.0f));
        let x_953 : vec4<f32> = u_xlat7;
        let x_955 : vec2<f32> = (vec2<f32>(x_953.x, x_953.y) + vec2<f32>(1.0f, 1.0f));
        let x_956 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_955.x, x_955.y, x_956.z, x_956.w);
        let x_958 : vec4<f32> = u_xlat8;
        let x_962 : vec2<f32> = (vec2<f32>(x_958.x, x_958.z) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_963 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_962.x, x_962.y, x_963.z, x_963.w);
        let x_965 : vec4<f32> = u_xlat9;
        let x_967 : vec2<f32> = (vec2<f32>(x_965.x, x_965.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_968 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_967.x, x_967.y, x_968.z, x_968.w);
        let x_970 : vec2<f32> = u_xlat51;
        let x_971 : vec2<f32> = (x_970 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_972 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_971.x, x_971.y, x_972.z, x_972.w);
        let x_974 : vec4<f32> = u_xlat7;
        let x_976 : vec2<f32> = (vec2<f32>(x_974.x, x_974.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_977 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_976.x, x_976.y, x_977.z, x_977.w);
        let x_979 : vec4<f32> = u_xlat8;
        let x_981 : vec2<f32> = (vec2<f32>(x_979.y, x_979.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_982 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_981.x, x_981.y, x_982.z, x_982.w);
        let x_985 : f32 = u_xlat9.x;
        u_xlat10.z = x_985;
        let x_988 : f32 = u_xlat7.x;
        u_xlat10.w = x_988;
        let x_991 : f32 = u_xlat12.x;
        u_xlat11.z = x_991;
        let x_994 : f32 = u_xlat49.x;
        u_xlat11.w = x_994;
        let x_996 : vec4<f32> = u_xlat10;
        let x_998 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_996.z, x_996.w, x_996.x, x_996.z) + vec4<f32>(x_998.z, x_998.w, x_998.x, x_998.z));
        let x_1002 : f32 = u_xlat10.y;
        u_xlat9.z = x_1002;
        let x_1005 : f32 = u_xlat7.y;
        u_xlat9.w = x_1005;
        let x_1008 : f32 = u_xlat11.y;
        u_xlat12.z = x_1008;
        let x_1011 : f32 = u_xlat49.y;
        u_xlat12.w = x_1011;
        let x_1013 : vec4<f32> = u_xlat9;
        let x_1015 : vec4<f32> = u_xlat12;
        let x_1017 : vec3<f32> = (vec3<f32>(x_1013.z, x_1013.y, x_1013.w) + vec3<f32>(x_1015.z, x_1015.y, x_1015.w));
        let x_1018 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1017.x, x_1017.y, x_1017.z, x_1018.w);
        let x_1020 : vec4<f32> = u_xlat11;
        let x_1022 : vec4<f32> = u_xlat8;
        let x_1024 : vec3<f32> = (vec3<f32>(x_1020.x, x_1020.z, x_1020.w) / vec3<f32>(x_1022.z, x_1022.w, x_1022.y));
        let x_1025 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1024.x, x_1024.y, x_1024.z, x_1025.w);
        let x_1027 : vec4<f32> = u_xlat9;
        let x_1032 : vec3<f32> = (vec3<f32>(x_1027.x, x_1027.y, x_1027.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1033 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1032.x, x_1032.y, x_1032.z, x_1033.w);
        let x_1035 : vec4<f32> = u_xlat12;
        let x_1037 : vec4<f32> = u_xlat7;
        let x_1039 : vec3<f32> = (vec3<f32>(x_1035.z, x_1035.y, x_1035.w) / vec3<f32>(x_1037.x, x_1037.y, x_1037.z));
        let x_1040 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1039.x, x_1039.y, x_1039.z, x_1040.w);
        let x_1042 : vec4<f32> = u_xlat10;
        let x_1044 : vec3<f32> = (vec3<f32>(x_1042.x, x_1042.y, x_1042.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1045 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1044.x, x_1044.y, x_1044.z, x_1045.w);
        let x_1047 : vec4<f32> = u_xlat9;
        let x_1050 : vec4<f32> = x_769.x_MainLightShadowmapSize;
        let x_1052 : vec3<f32> = (vec3<f32>(x_1047.y, x_1047.x, x_1047.z) * vec3<f32>(x_1050.x, x_1050.x, x_1050.x));
        let x_1053 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1052.x, x_1052.y, x_1052.z, x_1053.w);
        let x_1055 : vec4<f32> = u_xlat10;
        let x_1058 : vec4<f32> = x_769.x_MainLightShadowmapSize;
        let x_1060 : vec3<f32> = (vec3<f32>(x_1055.x, x_1055.y, x_1055.z) * vec3<f32>(x_1058.y, x_1058.y, x_1058.y));
        let x_1061 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1060.x, x_1060.y, x_1060.z, x_1061.w);
        let x_1064 : f32 = u_xlat10.x;
        u_xlat9.w = x_1064;
        let x_1066 : vec2<f32> = u_xlat46;
        let x_1069 : vec4<f32> = x_769.x_MainLightShadowmapSize;
        let x_1072 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1066.x, x_1066.y, x_1066.x, x_1066.y) * vec4<f32>(x_1069.x, x_1069.y, x_1069.x, x_1069.y)) + vec4<f32>(x_1072.y, x_1072.w, x_1072.x, x_1072.w));
        let x_1075 : vec2<f32> = u_xlat46;
        let x_1077 : vec4<f32> = x_769.x_MainLightShadowmapSize;
        let x_1080 : vec4<f32> = u_xlat9;
        let x_1082 : vec2<f32> = ((x_1075 * vec2<f32>(x_1077.x, x_1077.y)) + vec2<f32>(x_1080.z, x_1080.w));
        let x_1083 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1082.x, x_1082.y, x_1083.z, x_1083.w);
        let x_1086 : f32 = u_xlat9.y;
        u_xlat10.w = x_1086;
        let x_1088 : vec4<f32> = u_xlat10;
        let x_1089 : vec2<f32> = vec2<f32>(x_1088.y, x_1088.z);
        let x_1090 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1090.x, x_1089.x, x_1090.z, x_1089.y);
        let x_1092 : vec2<f32> = u_xlat46;
        let x_1095 : vec4<f32> = x_769.x_MainLightShadowmapSize;
        let x_1098 : vec4<f32> = u_xlat9;
        u_xlat13 = ((vec4<f32>(x_1092.x, x_1092.y, x_1092.x, x_1092.y) * vec4<f32>(x_1095.x, x_1095.y, x_1095.x, x_1095.y)) + vec4<f32>(x_1098.x, x_1098.y, x_1098.z, x_1098.y));
        let x_1101 : vec2<f32> = u_xlat46;
        let x_1104 : vec4<f32> = x_769.x_MainLightShadowmapSize;
        let x_1107 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_1101.x, x_1101.y, x_1101.x, x_1101.y) * vec4<f32>(x_1104.x, x_1104.y, x_1104.x, x_1104.y)) + vec4<f32>(x_1107.w, x_1107.y, x_1107.w, x_1107.z));
        let x_1110 : vec2<f32> = u_xlat46;
        let x_1113 : vec4<f32> = x_769.x_MainLightShadowmapSize;
        let x_1116 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1110.x, x_1110.y, x_1110.x, x_1110.y) * vec4<f32>(x_1113.x, x_1113.y, x_1113.x, x_1113.y)) + vec4<f32>(x_1116.x, x_1116.w, x_1116.z, x_1116.w));
        let x_1120 : vec4<f32> = u_xlat7;
        let x_1122 : vec4<f32> = u_xlat8;
        u_xlat14 = (vec4<f32>(x_1120.x, x_1120.x, x_1120.x, x_1120.y) * vec4<f32>(x_1122.z, x_1122.w, x_1122.y, x_1122.z));
        let x_1126 : vec4<f32> = u_xlat7;
        let x_1128 : vec4<f32> = u_xlat8;
        u_xlat15 = (vec4<f32>(x_1126.y, x_1126.y, x_1126.z, x_1126.z) * x_1128);
        let x_1131 : f32 = u_xlat7.z;
        let x_1133 : f32 = u_xlat8.y;
        u_xlat46.x = (x_1131 * x_1133);
        let x_1137 : vec4<f32> = u_xlat11;
        let x_1138 : vec2<f32> = vec2<f32>(x_1137.x, x_1137.y);
        let x_1140 : f32 = vs_TEXCOORD8.z;
        txVec4 = vec3<f32>(x_1138.x, x_1138.y, x_1140);
        let x_1148 : vec3<f32> = txVec4;
        let x_1150 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1148.xy, x_1148.z);
        u_xlat67 = x_1150;
        let x_1152 : vec4<f32> = u_xlat11;
        let x_1153 : vec2<f32> = vec2<f32>(x_1152.z, x_1152.w);
        let x_1155 : f32 = vs_TEXCOORD8.z;
        txVec5 = vec3<f32>(x_1153.x, x_1153.y, x_1155);
        let x_1163 : vec3<f32> = txVec5;
        let x_1165 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1163.xy, x_1163.z);
        u_xlat68 = x_1165;
        let x_1166 : f32 = u_xlat68;
        let x_1168 : f32 = u_xlat14.y;
        u_xlat68 = (x_1166 * x_1168);
        let x_1171 : f32 = u_xlat14.x;
        let x_1172 : f32 = u_xlat67;
        let x_1174 : f32 = u_xlat68;
        u_xlat67 = ((x_1171 * x_1172) + x_1174);
        let x_1177 : vec4<f32> = u_xlat12;
        let x_1178 : vec2<f32> = vec2<f32>(x_1177.x, x_1177.y);
        let x_1180 : f32 = vs_TEXCOORD8.z;
        txVec6 = vec3<f32>(x_1178.x, x_1178.y, x_1180);
        let x_1187 : vec3<f32> = txVec6;
        let x_1189 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1187.xy, x_1187.z);
        u_xlat68 = x_1189;
        let x_1191 : f32 = u_xlat14.z;
        let x_1192 : f32 = u_xlat68;
        let x_1194 : f32 = u_xlat67;
        u_xlat67 = ((x_1191 * x_1192) + x_1194);
        let x_1197 : vec4<f32> = u_xlat10;
        let x_1198 : vec2<f32> = vec2<f32>(x_1197.x, x_1197.y);
        let x_1200 : f32 = vs_TEXCOORD8.z;
        txVec7 = vec3<f32>(x_1198.x, x_1198.y, x_1200);
        let x_1207 : vec3<f32> = txVec7;
        let x_1209 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1207.xy, x_1207.z);
        u_xlat68 = x_1209;
        let x_1211 : f32 = u_xlat14.w;
        let x_1212 : f32 = u_xlat68;
        let x_1214 : f32 = u_xlat67;
        u_xlat67 = ((x_1211 * x_1212) + x_1214);
        let x_1217 : vec4<f32> = u_xlat13;
        let x_1218 : vec2<f32> = vec2<f32>(x_1217.x, x_1217.y);
        let x_1220 : f32 = vs_TEXCOORD8.z;
        txVec8 = vec3<f32>(x_1218.x, x_1218.y, x_1220);
        let x_1227 : vec3<f32> = txVec8;
        let x_1229 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1227.xy, x_1227.z);
        u_xlat68 = x_1229;
        let x_1231 : f32 = u_xlat15.x;
        let x_1232 : f32 = u_xlat68;
        let x_1234 : f32 = u_xlat67;
        u_xlat67 = ((x_1231 * x_1232) + x_1234);
        let x_1237 : vec4<f32> = u_xlat13;
        let x_1238 : vec2<f32> = vec2<f32>(x_1237.z, x_1237.w);
        let x_1240 : f32 = vs_TEXCOORD8.z;
        txVec9 = vec3<f32>(x_1238.x, x_1238.y, x_1240);
        let x_1247 : vec3<f32> = txVec9;
        let x_1249 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1247.xy, x_1247.z);
        u_xlat68 = x_1249;
        let x_1251 : f32 = u_xlat15.y;
        let x_1252 : f32 = u_xlat68;
        let x_1254 : f32 = u_xlat67;
        u_xlat67 = ((x_1251 * x_1252) + x_1254);
        let x_1257 : vec4<f32> = u_xlat10;
        let x_1258 : vec2<f32> = vec2<f32>(x_1257.z, x_1257.w);
        let x_1260 : f32 = vs_TEXCOORD8.z;
        txVec10 = vec3<f32>(x_1258.x, x_1258.y, x_1260);
        let x_1267 : vec3<f32> = txVec10;
        let x_1269 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1267.xy, x_1267.z);
        u_xlat68 = x_1269;
        let x_1271 : f32 = u_xlat15.z;
        let x_1272 : f32 = u_xlat68;
        let x_1274 : f32 = u_xlat67;
        u_xlat67 = ((x_1271 * x_1272) + x_1274);
        let x_1277 : vec4<f32> = u_xlat9;
        let x_1278 : vec2<f32> = vec2<f32>(x_1277.x, x_1277.y);
        let x_1280 : f32 = vs_TEXCOORD8.z;
        txVec11 = vec3<f32>(x_1278.x, x_1278.y, x_1280);
        let x_1287 : vec3<f32> = txVec11;
        let x_1289 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1287.xy, x_1287.z);
        u_xlat68 = x_1289;
        let x_1291 : f32 = u_xlat15.w;
        let x_1292 : f32 = u_xlat68;
        let x_1294 : f32 = u_xlat67;
        u_xlat67 = ((x_1291 * x_1292) + x_1294);
        let x_1297 : vec4<f32> = u_xlat9;
        let x_1298 : vec2<f32> = vec2<f32>(x_1297.z, x_1297.w);
        let x_1300 : f32 = vs_TEXCOORD8.z;
        txVec12 = vec3<f32>(x_1298.x, x_1298.y, x_1300);
        let x_1307 : vec3<f32> = txVec12;
        let x_1309 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1307.xy, x_1307.z);
        u_xlat68 = x_1309;
        let x_1311 : f32 = u_xlat46.x;
        let x_1312 : f32 = u_xlat68;
        let x_1314 : f32 = u_xlat67;
        u_xlat4.x = ((x_1311 * x_1312) + x_1314);
      } else {
        let x_1318 : vec4<f32> = vs_TEXCOORD8;
        let x_1321 : vec4<f32> = x_769.x_MainLightShadowmapSize;
        u_xlat46 = ((vec2<f32>(x_1318.x, x_1318.y) * vec2<f32>(x_1321.z, x_1321.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1325 : vec2<f32> = u_xlat46;
        u_xlat46 = floor(x_1325);
        let x_1327 : vec4<f32> = vs_TEXCOORD8;
        let x_1330 : vec4<f32> = x_769.x_MainLightShadowmapSize;
        let x_1333 : vec2<f32> = u_xlat46;
        let x_1335 : vec2<f32> = ((vec2<f32>(x_1327.x, x_1327.y) * vec2<f32>(x_1330.z, x_1330.w)) + -(x_1333));
        let x_1336 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1335.x, x_1335.y, x_1336.z, x_1336.w);
        let x_1338 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1338.x, x_1338.x, x_1338.y, x_1338.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1341 : vec4<f32> = u_xlat8;
        let x_1343 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1341.x, x_1341.x, x_1341.z, x_1341.z) * vec4<f32>(x_1343.x, x_1343.x, x_1343.z, x_1343.z));
        let x_1346 : vec4<f32> = u_xlat9;
        let x_1350 : vec2<f32> = (vec2<f32>(x_1346.y, x_1346.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1351 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1351.x, x_1350.x, x_1351.z, x_1350.y);
        let x_1353 : vec4<f32> = u_xlat9;
        let x_1356 : vec4<f32> = u_xlat7;
        u_xlat49 = ((vec2<f32>(x_1353.x, x_1353.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_1356.x, x_1356.y)));
        let x_1360 : vec4<f32> = u_xlat7;
        let x_1363 : vec2<f32> = (-(vec2<f32>(x_1360.x, x_1360.y)) + vec2<f32>(1.0f, 1.0f));
        let x_1364 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1363.x, x_1364.y, x_1363.y, x_1364.w);
        let x_1366 : vec4<f32> = u_xlat7;
        let x_1368 : vec2<f32> = min(vec2<f32>(x_1366.x, x_1366.y), vec2<f32>(0.0f, 0.0f));
        let x_1369 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1368.x, x_1368.y, x_1369.z, x_1369.w);
        let x_1371 : vec4<f32> = u_xlat9;
        let x_1374 : vec4<f32> = u_xlat9;
        let x_1377 : vec4<f32> = u_xlat8;
        let x_1379 : vec2<f32> = ((-(vec2<f32>(x_1371.x, x_1371.y)) * vec2<f32>(x_1374.x, x_1374.y)) + vec2<f32>(x_1377.x, x_1377.z));
        let x_1380 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1379.x, x_1380.y, x_1379.y, x_1380.w);
        let x_1382 : vec4<f32> = u_xlat7;
        let x_1384 : vec2<f32> = max(vec2<f32>(x_1382.x, x_1382.y), vec2<f32>(0.0f, 0.0f));
        let x_1385 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1384.x, x_1384.y, x_1385.z, x_1385.w);
        let x_1387 : vec4<f32> = u_xlat9;
        let x_1390 : vec4<f32> = u_xlat9;
        let x_1393 : vec4<f32> = u_xlat8;
        let x_1395 : vec2<f32> = ((-(vec2<f32>(x_1387.x, x_1387.y)) * vec2<f32>(x_1390.x, x_1390.y)) + vec2<f32>(x_1393.y, x_1393.w));
        let x_1396 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1396.x, x_1395.x, x_1396.z, x_1395.y);
        let x_1398 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1398 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_1402 : f32 = u_xlat8.y;
        u_xlat9.z = (x_1402 * 0.081632003f);
        let x_1406 : vec2<f32> = u_xlat49;
        let x_1409 : vec2<f32> = (vec2<f32>(x_1406.y, x_1406.x) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1410 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1409.x, x_1409.y, x_1410.z, x_1410.w);
        let x_1412 : vec4<f32> = u_xlat8;
        u_xlat49 = (vec2<f32>(x_1412.x, x_1412.z) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1416 : f32 = u_xlat8.w;
        u_xlat11.z = (x_1416 * 0.081632003f);
        let x_1420 : f32 = u_xlat11.y;
        u_xlat9.x = x_1420;
        let x_1422 : vec4<f32> = u_xlat7;
        let x_1429 : vec2<f32> = ((vec2<f32>(x_1422.x, x_1422.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1430 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1430.x, x_1429.x, x_1430.z, x_1429.y);
        let x_1432 : vec4<f32> = u_xlat7;
        let x_1436 : vec2<f32> = ((vec2<f32>(x_1432.x, x_1432.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1437 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1436.x, x_1437.y, x_1436.y, x_1437.w);
        let x_1440 : f32 = u_xlat49.x;
        u_xlat8.y = x_1440;
        let x_1443 : f32 = u_xlat10.y;
        u_xlat8.w = x_1443;
        let x_1445 : vec4<f32> = u_xlat8;
        let x_1446 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1445 + x_1446);
        let x_1448 : vec4<f32> = u_xlat7;
        let x_1451 : vec2<f32> = ((vec2<f32>(x_1448.y, x_1448.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1452 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1452.x, x_1451.x, x_1452.z, x_1451.y);
        let x_1454 : vec4<f32> = u_xlat7;
        let x_1457 : vec2<f32> = ((vec2<f32>(x_1454.y, x_1454.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1458 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1457.x, x_1458.y, x_1457.y, x_1458.w);
        let x_1461 : f32 = u_xlat49.y;
        u_xlat10.y = x_1461;
        let x_1463 : vec4<f32> = u_xlat10;
        let x_1464 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1463 + x_1464);
        let x_1466 : vec4<f32> = u_xlat8;
        let x_1467 : vec4<f32> = u_xlat9;
        u_xlat8 = (x_1466 / x_1467);
        let x_1469 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1469 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1475 : vec4<f32> = u_xlat10;
        let x_1476 : vec4<f32> = u_xlat7;
        u_xlat10 = (x_1475 / x_1476);
        let x_1478 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1478 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1480 : vec4<f32> = u_xlat8;
        let x_1483 : vec4<f32> = x_769.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1480.w, x_1480.x, x_1480.y, x_1480.z) * vec4<f32>(x_1483.x, x_1483.x, x_1483.x, x_1483.x));
        let x_1486 : vec4<f32> = u_xlat10;
        let x_1489 : vec4<f32> = x_769.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1486.x, x_1486.w, x_1486.y, x_1486.z) * vec4<f32>(x_1489.y, x_1489.y, x_1489.y, x_1489.y));
        let x_1492 : vec4<f32> = u_xlat8;
        let x_1493 : vec3<f32> = vec3<f32>(x_1492.y, x_1492.z, x_1492.w);
        let x_1494 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1493.x, x_1494.y, x_1493.y, x_1493.z);
        let x_1497 : f32 = u_xlat10.x;
        u_xlat11.y = x_1497;
        let x_1499 : vec2<f32> = u_xlat46;
        let x_1502 : vec4<f32> = x_769.x_MainLightShadowmapSize;
        let x_1505 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1499.x, x_1499.y, x_1499.x, x_1499.y) * vec4<f32>(x_1502.x, x_1502.y, x_1502.x, x_1502.y)) + vec4<f32>(x_1505.x, x_1505.y, x_1505.z, x_1505.y));
        let x_1508 : vec2<f32> = u_xlat46;
        let x_1510 : vec4<f32> = x_769.x_MainLightShadowmapSize;
        let x_1513 : vec4<f32> = u_xlat11;
        let x_1515 : vec2<f32> = ((x_1508 * vec2<f32>(x_1510.x, x_1510.y)) + vec2<f32>(x_1513.w, x_1513.y));
        let x_1516 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1515.x, x_1515.y, x_1516.z, x_1516.w);
        let x_1519 : f32 = u_xlat11.y;
        u_xlat8.y = x_1519;
        let x_1522 : f32 = u_xlat10.z;
        u_xlat11.y = x_1522;
        let x_1524 : vec2<f32> = u_xlat46;
        let x_1527 : vec4<f32> = x_769.x_MainLightShadowmapSize;
        let x_1530 : vec4<f32> = u_xlat11;
        u_xlat14 = ((vec4<f32>(x_1524.x, x_1524.y, x_1524.x, x_1524.y) * vec4<f32>(x_1527.x, x_1527.y, x_1527.x, x_1527.y)) + vec4<f32>(x_1530.x, x_1530.y, x_1530.z, x_1530.y));
        let x_1534 : vec2<f32> = u_xlat46;
        let x_1536 : vec4<f32> = x_769.x_MainLightShadowmapSize;
        let x_1539 : vec4<f32> = u_xlat11;
        u_xlat55 = ((x_1534 * vec2<f32>(x_1536.x, x_1536.y)) + vec2<f32>(x_1539.w, x_1539.y));
        let x_1543 : f32 = u_xlat11.y;
        u_xlat8.z = x_1543;
        let x_1545 : vec2<f32> = u_xlat46;
        let x_1548 : vec4<f32> = x_769.x_MainLightShadowmapSize;
        let x_1551 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1545.x, x_1545.y, x_1545.x, x_1545.y) * vec4<f32>(x_1548.x, x_1548.y, x_1548.x, x_1548.y)) + vec4<f32>(x_1551.x, x_1551.y, x_1551.x, x_1551.z));
        let x_1555 : f32 = u_xlat10.w;
        u_xlat11.y = x_1555;
        let x_1558 : vec2<f32> = u_xlat46;
        let x_1561 : vec4<f32> = x_769.x_MainLightShadowmapSize;
        let x_1564 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1558.x, x_1558.y, x_1558.x, x_1558.y) * vec4<f32>(x_1561.x, x_1561.y, x_1561.x, x_1561.y)) + vec4<f32>(x_1564.x, x_1564.y, x_1564.z, x_1564.y));
        let x_1568 : vec2<f32> = u_xlat46;
        let x_1570 : vec4<f32> = x_769.x_MainLightShadowmapSize;
        let x_1573 : vec4<f32> = u_xlat11;
        u_xlat29 = ((x_1568 * vec2<f32>(x_1570.x, x_1570.y)) + vec2<f32>(x_1573.w, x_1573.y));
        let x_1577 : f32 = u_xlat11.y;
        u_xlat8.w = x_1577;
        let x_1580 : vec2<f32> = u_xlat46;
        let x_1582 : vec4<f32> = x_769.x_MainLightShadowmapSize;
        let x_1585 : vec4<f32> = u_xlat8;
        u_xlat17 = ((x_1580 * vec2<f32>(x_1582.x, x_1582.y)) + vec2<f32>(x_1585.x, x_1585.w));
        let x_1588 : vec4<f32> = u_xlat11;
        let x_1589 : vec3<f32> = vec3<f32>(x_1588.x, x_1588.z, x_1588.w);
        let x_1590 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1589.x, x_1590.y, x_1589.y, x_1589.z);
        let x_1592 : vec2<f32> = u_xlat46;
        let x_1595 : vec4<f32> = x_769.x_MainLightShadowmapSize;
        let x_1598 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1592.x, x_1592.y, x_1592.x, x_1592.y) * vec4<f32>(x_1595.x, x_1595.y, x_1595.x, x_1595.y)) + vec4<f32>(x_1598.x, x_1598.y, x_1598.z, x_1598.y));
        let x_1602 : vec2<f32> = u_xlat46;
        let x_1604 : vec4<f32> = x_769.x_MainLightShadowmapSize;
        let x_1607 : vec4<f32> = u_xlat10;
        u_xlat52 = ((x_1602 * vec2<f32>(x_1604.x, x_1604.y)) + vec2<f32>(x_1607.w, x_1607.y));
        let x_1611 : f32 = u_xlat8.x;
        u_xlat10.x = x_1611;
        let x_1613 : vec2<f32> = u_xlat46;
        let x_1615 : vec4<f32> = x_769.x_MainLightShadowmapSize;
        let x_1618 : vec4<f32> = u_xlat10;
        u_xlat46 = ((x_1613 * vec2<f32>(x_1615.x, x_1615.y)) + vec2<f32>(x_1618.x, x_1618.y));
        let x_1622 : vec4<f32> = u_xlat7;
        let x_1624 : vec4<f32> = u_xlat9;
        u_xlat18 = (vec4<f32>(x_1622.x, x_1622.x, x_1622.x, x_1622.x) * x_1624);
        let x_1627 : vec4<f32> = u_xlat7;
        let x_1629 : vec4<f32> = u_xlat9;
        u_xlat19 = (vec4<f32>(x_1627.y, x_1627.y, x_1627.y, x_1627.y) * x_1629);
        let x_1632 : vec4<f32> = u_xlat7;
        let x_1634 : vec4<f32> = u_xlat9;
        u_xlat20 = (vec4<f32>(x_1632.z, x_1632.z, x_1632.z, x_1632.z) * x_1634);
        let x_1636 : vec4<f32> = u_xlat7;
        let x_1638 : vec4<f32> = u_xlat9;
        u_xlat7 = (vec4<f32>(x_1636.w, x_1636.w, x_1636.w, x_1636.w) * x_1638);
        let x_1641 : vec4<f32> = u_xlat12;
        let x_1642 : vec2<f32> = vec2<f32>(x_1641.x, x_1641.y);
        let x_1644 : f32 = vs_TEXCOORD8.z;
        txVec13 = vec3<f32>(x_1642.x, x_1642.y, x_1644);
        let x_1651 : vec3<f32> = txVec13;
        let x_1653 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1651.xy, x_1651.z);
        u_xlat68 = x_1653;
        let x_1655 : vec4<f32> = u_xlat12;
        let x_1656 : vec2<f32> = vec2<f32>(x_1655.z, x_1655.w);
        let x_1658 : f32 = vs_TEXCOORD8.z;
        txVec14 = vec3<f32>(x_1656.x, x_1656.y, x_1658);
        let x_1666 : vec3<f32> = txVec14;
        let x_1668 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1666.xy, x_1666.z);
        u_xlat69 = x_1668;
        let x_1669 : f32 = u_xlat69;
        let x_1671 : f32 = u_xlat18.y;
        u_xlat69 = (x_1669 * x_1671);
        let x_1674 : f32 = u_xlat18.x;
        let x_1675 : f32 = u_xlat68;
        let x_1677 : f32 = u_xlat69;
        u_xlat68 = ((x_1674 * x_1675) + x_1677);
        let x_1680 : vec4<f32> = u_xlat13;
        let x_1681 : vec2<f32> = vec2<f32>(x_1680.x, x_1680.y);
        let x_1683 : f32 = vs_TEXCOORD8.z;
        txVec15 = vec3<f32>(x_1681.x, x_1681.y, x_1683);
        let x_1690 : vec3<f32> = txVec15;
        let x_1692 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1690.xy, x_1690.z);
        u_xlat69 = x_1692;
        let x_1694 : f32 = u_xlat18.z;
        let x_1695 : f32 = u_xlat69;
        let x_1697 : f32 = u_xlat68;
        u_xlat68 = ((x_1694 * x_1695) + x_1697);
        let x_1700 : vec4<f32> = u_xlat15;
        let x_1701 : vec2<f32> = vec2<f32>(x_1700.x, x_1700.y);
        let x_1703 : f32 = vs_TEXCOORD8.z;
        txVec16 = vec3<f32>(x_1701.x, x_1701.y, x_1703);
        let x_1710 : vec3<f32> = txVec16;
        let x_1712 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1710.xy, x_1710.z);
        u_xlat69 = x_1712;
        let x_1714 : f32 = u_xlat18.w;
        let x_1715 : f32 = u_xlat69;
        let x_1717 : f32 = u_xlat68;
        u_xlat68 = ((x_1714 * x_1715) + x_1717);
        let x_1720 : vec4<f32> = u_xlat14;
        let x_1721 : vec2<f32> = vec2<f32>(x_1720.x, x_1720.y);
        let x_1723 : f32 = vs_TEXCOORD8.z;
        txVec17 = vec3<f32>(x_1721.x, x_1721.y, x_1723);
        let x_1730 : vec3<f32> = txVec17;
        let x_1732 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1730.xy, x_1730.z);
        u_xlat69 = x_1732;
        let x_1734 : f32 = u_xlat19.x;
        let x_1735 : f32 = u_xlat69;
        let x_1737 : f32 = u_xlat68;
        u_xlat68 = ((x_1734 * x_1735) + x_1737);
        let x_1740 : vec4<f32> = u_xlat14;
        let x_1741 : vec2<f32> = vec2<f32>(x_1740.z, x_1740.w);
        let x_1743 : f32 = vs_TEXCOORD8.z;
        txVec18 = vec3<f32>(x_1741.x, x_1741.y, x_1743);
        let x_1750 : vec3<f32> = txVec18;
        let x_1752 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1750.xy, x_1750.z);
        u_xlat69 = x_1752;
        let x_1754 : f32 = u_xlat19.y;
        let x_1755 : f32 = u_xlat69;
        let x_1757 : f32 = u_xlat68;
        u_xlat68 = ((x_1754 * x_1755) + x_1757);
        let x_1760 : vec2<f32> = u_xlat55;
        let x_1762 : f32 = vs_TEXCOORD8.z;
        txVec19 = vec3<f32>(x_1760.x, x_1760.y, x_1762);
        let x_1769 : vec3<f32> = txVec19;
        let x_1771 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1769.xy, x_1769.z);
        u_xlat69 = x_1771;
        let x_1773 : f32 = u_xlat19.z;
        let x_1774 : f32 = u_xlat69;
        let x_1776 : f32 = u_xlat68;
        u_xlat68 = ((x_1773 * x_1774) + x_1776);
        let x_1779 : vec4<f32> = u_xlat15;
        let x_1780 : vec2<f32> = vec2<f32>(x_1779.z, x_1779.w);
        let x_1782 : f32 = vs_TEXCOORD8.z;
        txVec20 = vec3<f32>(x_1780.x, x_1780.y, x_1782);
        let x_1789 : vec3<f32> = txVec20;
        let x_1791 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1789.xy, x_1789.z);
        u_xlat69 = x_1791;
        let x_1793 : f32 = u_xlat19.w;
        let x_1794 : f32 = u_xlat69;
        let x_1796 : f32 = u_xlat68;
        u_xlat68 = ((x_1793 * x_1794) + x_1796);
        let x_1799 : vec4<f32> = u_xlat16;
        let x_1800 : vec2<f32> = vec2<f32>(x_1799.x, x_1799.y);
        let x_1802 : f32 = vs_TEXCOORD8.z;
        txVec21 = vec3<f32>(x_1800.x, x_1800.y, x_1802);
        let x_1809 : vec3<f32> = txVec21;
        let x_1811 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1809.xy, x_1809.z);
        u_xlat69 = x_1811;
        let x_1813 : f32 = u_xlat20.x;
        let x_1814 : f32 = u_xlat69;
        let x_1816 : f32 = u_xlat68;
        u_xlat68 = ((x_1813 * x_1814) + x_1816);
        let x_1819 : vec4<f32> = u_xlat16;
        let x_1820 : vec2<f32> = vec2<f32>(x_1819.z, x_1819.w);
        let x_1822 : f32 = vs_TEXCOORD8.z;
        txVec22 = vec3<f32>(x_1820.x, x_1820.y, x_1822);
        let x_1829 : vec3<f32> = txVec22;
        let x_1831 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1829.xy, x_1829.z);
        u_xlat69 = x_1831;
        let x_1833 : f32 = u_xlat20.y;
        let x_1834 : f32 = u_xlat69;
        let x_1836 : f32 = u_xlat68;
        u_xlat68 = ((x_1833 * x_1834) + x_1836);
        let x_1839 : vec2<f32> = u_xlat29;
        let x_1841 : f32 = vs_TEXCOORD8.z;
        txVec23 = vec3<f32>(x_1839.x, x_1839.y, x_1841);
        let x_1848 : vec3<f32> = txVec23;
        let x_1850 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1848.xy, x_1848.z);
        u_xlat69 = x_1850;
        let x_1852 : f32 = u_xlat20.z;
        let x_1853 : f32 = u_xlat69;
        let x_1855 : f32 = u_xlat68;
        u_xlat68 = ((x_1852 * x_1853) + x_1855);
        let x_1858 : vec2<f32> = u_xlat17;
        let x_1860 : f32 = vs_TEXCOORD8.z;
        txVec24 = vec3<f32>(x_1858.x, x_1858.y, x_1860);
        let x_1867 : vec3<f32> = txVec24;
        let x_1869 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1867.xy, x_1867.z);
        u_xlat69 = x_1869;
        let x_1871 : f32 = u_xlat20.w;
        let x_1872 : f32 = u_xlat69;
        let x_1874 : f32 = u_xlat68;
        u_xlat68 = ((x_1871 * x_1872) + x_1874);
        let x_1877 : vec4<f32> = u_xlat11;
        let x_1878 : vec2<f32> = vec2<f32>(x_1877.x, x_1877.y);
        let x_1880 : f32 = vs_TEXCOORD8.z;
        txVec25 = vec3<f32>(x_1878.x, x_1878.y, x_1880);
        let x_1887 : vec3<f32> = txVec25;
        let x_1889 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1887.xy, x_1887.z);
        u_xlat69 = x_1889;
        let x_1891 : f32 = u_xlat7.x;
        let x_1892 : f32 = u_xlat69;
        let x_1894 : f32 = u_xlat68;
        u_xlat68 = ((x_1891 * x_1892) + x_1894);
        let x_1897 : vec4<f32> = u_xlat11;
        let x_1898 : vec2<f32> = vec2<f32>(x_1897.z, x_1897.w);
        let x_1900 : f32 = vs_TEXCOORD8.z;
        txVec26 = vec3<f32>(x_1898.x, x_1898.y, x_1900);
        let x_1907 : vec3<f32> = txVec26;
        let x_1909 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1907.xy, x_1907.z);
        u_xlat69 = x_1909;
        let x_1911 : f32 = u_xlat7.y;
        let x_1912 : f32 = u_xlat69;
        let x_1914 : f32 = u_xlat68;
        u_xlat68 = ((x_1911 * x_1912) + x_1914);
        let x_1917 : vec2<f32> = u_xlat52;
        let x_1919 : f32 = vs_TEXCOORD8.z;
        txVec27 = vec3<f32>(x_1917.x, x_1917.y, x_1919);
        let x_1926 : vec3<f32> = txVec27;
        let x_1928 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1926.xy, x_1926.z);
        u_xlat69 = x_1928;
        let x_1930 : f32 = u_xlat7.z;
        let x_1931 : f32 = u_xlat69;
        let x_1933 : f32 = u_xlat68;
        u_xlat68 = ((x_1930 * x_1931) + x_1933);
        let x_1936 : vec2<f32> = u_xlat46;
        let x_1938 : f32 = vs_TEXCOORD8.z;
        txVec28 = vec3<f32>(x_1936.x, x_1936.y, x_1938);
        let x_1945 : vec3<f32> = txVec28;
        let x_1947 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1945.xy, x_1945.z);
        u_xlat46.x = x_1947;
        let x_1950 : f32 = u_xlat7.w;
        let x_1952 : f32 = u_xlat46.x;
        let x_1954 : f32 = u_xlat68;
        u_xlat4.x = ((x_1950 * x_1952) + x_1954);
      }
    }
  } else {
    let x_1959 : vec4<f32> = vs_TEXCOORD8;
    let x_1960 : vec2<f32> = vec2<f32>(x_1959.x, x_1959.y);
    let x_1962 : f32 = vs_TEXCOORD8.z;
    txVec29 = vec3<f32>(x_1960.x, x_1960.y, x_1962);
    let x_1969 : vec3<f32> = txVec29;
    let x_1971 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1969.xy, x_1969.z);
    u_xlat4.x = x_1971;
  }
  let x_1974 : f32 = x_769.x_MainLightShadowParams.x;
  u_xlat46.x = (-(x_1974) + 1.0f);
  let x_1979 : f32 = u_xlat4.x;
  let x_1981 : f32 = x_769.x_MainLightShadowParams.x;
  let x_1984 : f32 = u_xlat46.x;
  u_xlat4.x = ((x_1979 * x_1981) + x_1984);
  let x_1988 : f32 = vs_TEXCOORD8.z;
  u_xlatb46 = (0.0f >= x_1988);
  let x_1992 : f32 = vs_TEXCOORD8.z;
  u_xlatb67 = (x_1992 >= 1.0f);
  let x_1994 : bool = u_xlatb67;
  let x_1995 : bool = u_xlatb46;
  u_xlatb46 = (x_1994 | x_1995);
  let x_1997 : bool = u_xlatb46;
  if (x_1997) {
    x_1998 = 1.0f;
  } else {
    let x_2003 : f32 = u_xlat4.x;
    x_1998 = x_2003;
  }
  let x_2004 : f32 = x_1998;
  u_xlat4.x = x_2004;
  let x_2006 : vec3<f32> = vs_TEXCOORD7;
  let x_2008 : vec3<f32> = x_126.x_WorldSpaceCameraPos;
  let x_2010 : vec3<f32> = (x_2006 + -(x_2008));
  let x_2011 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2010.x, x_2010.y, x_2010.z, x_2011.w);
  let x_2013 : vec4<f32> = u_xlat7;
  let x_2015 : vec4<f32> = u_xlat7;
  u_xlat46.x = dot(vec3<f32>(x_2013.x, x_2013.y, x_2013.z), vec3<f32>(x_2015.x, x_2015.y, x_2015.z));
  let x_2020 : f32 = u_xlat46.x;
  let x_2022 : f32 = x_769.x_MainLightShadowParams.z;
  let x_2025 : f32 = x_769.x_MainLightShadowParams.w;
  u_xlat46.x = ((x_2020 * x_2022) + x_2025);
  let x_2029 : f32 = u_xlat46.x;
  u_xlat46.x = clamp(x_2029, 0.0f, 1.0f);
  let x_2033 : f32 = u_xlat4.x;
  u_xlat67 = (-(x_2033) + 1.0f);
  let x_2037 : f32 = u_xlat46.x;
  let x_2038 : f32 = u_xlat67;
  let x_2041 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_2037 * x_2038) + x_2041);
  let x_2044 : f32 = u_xlat25;
  let x_2048 : vec4<f32> = x_126.x_MainLightColor;
  let x_2050 : vec3<f32> = (vec3<f32>(x_2044, x_2044, x_2044) * vec3<f32>(x_2048.x, x_2048.y, x_2048.z));
  let x_2051 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2050.x, x_2050.y, x_2050.z, x_2051.w);
  let x_2053 : vec3<f32> = u_xlat2;
  let x_2055 : vec4<f32> = u_xlat1;
  u_xlat46.x = dot(-(x_2053), vec3<f32>(x_2055.x, x_2055.y, x_2055.z));
  let x_2060 : f32 = u_xlat46.x;
  let x_2062 : f32 = u_xlat46.x;
  u_xlat46.x = (x_2060 + x_2062);
  let x_2065 : vec4<f32> = u_xlat1;
  let x_2067 : vec2<f32> = u_xlat46;
  let x_2071 : vec3<f32> = u_xlat2;
  let x_2073 : vec3<f32> = ((vec3<f32>(x_2065.x, x_2065.y, x_2065.z) * -(vec3<f32>(x_2067.x, x_2067.x, x_2067.x))) + -(x_2071));
  let x_2074 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2073.x, x_2073.y, x_2073.z, x_2074.w);
  let x_2076 : vec4<f32> = u_xlat1;
  let x_2078 : vec3<f32> = u_xlat2;
  u_xlat46.x = dot(vec3<f32>(x_2076.x, x_2076.y, x_2076.z), x_2078);
  let x_2082 : f32 = u_xlat46.x;
  u_xlat46.x = clamp(x_2082, 0.0f, 1.0f);
  let x_2086 : f32 = u_xlat46.x;
  u_xlat46.x = (-(x_2086) + 1.0f);
  let x_2091 : f32 = u_xlat46.x;
  let x_2093 : f32 = u_xlat46.x;
  u_xlat46.x = (x_2091 * x_2093);
  let x_2097 : f32 = u_xlat46.x;
  let x_2099 : f32 = u_xlat46.x;
  u_xlat46.x = (x_2097 * x_2099);
  let x_2103 : f32 = u_xlat0.x;
  u_xlat67 = ((-(x_2103) * 0.699999988f) + 1.700000048f);
  let x_2110 : f32 = u_xlat0.x;
  let x_2111 : f32 = u_xlat67;
  u_xlat0.x = (x_2110 * x_2111);
  let x_2115 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2115 * 6.0f);
  let x_2127 : vec4<f32> = u_xlat8;
  let x_2130 : f32 = u_xlat0.x;
  let x_2131 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2127.x, x_2127.y, x_2127.z), x_2130);
  u_xlat8 = x_2131;
  let x_2133 : f32 = u_xlat8.w;
  u_xlat0.x = (x_2133 + -1.0f);
  let x_2141 : f32 = x_2139.unity_SpecCube0_HDR.w;
  let x_2143 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_2141 * x_2143) + 1.0f);
  let x_2148 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2148, 0.0f);
  let x_2152 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_2152);
  let x_2156 : f32 = u_xlat0.x;
  let x_2158 : f32 = x_2139.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_2156 * x_2158);
  let x_2162 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_2162);
  let x_2166 : f32 = u_xlat0.x;
  let x_2168 : f32 = x_2139.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_2166 * x_2168);
  let x_2171 : vec4<f32> = u_xlat8;
  let x_2173 : vec3<f32> = u_xlat0;
  let x_2175 : vec3<f32> = (vec3<f32>(x_2171.x, x_2171.y, x_2171.z) * vec3<f32>(x_2173.x, x_2173.x, x_2173.x));
  let x_2176 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2175.x, x_2175.y, x_2175.z, x_2176.w);
  let x_2178 : f32 = u_xlat42;
  let x_2180 : f32 = u_xlat42;
  let x_2184 : vec2<f32> = ((vec2<f32>(x_2178, x_2178) * vec2<f32>(x_2180, x_2180)) + vec2<f32>(-1.0f, 1.0f));
  let x_2185 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_2184.x, x_2185.y, x_2184.y);
  let x_2188 : f32 = u_xlat0.z;
  u_xlat42 = (1.0f / x_2188);
  let x_2190 : vec4<f32> = u_xlat5;
  let x_2193 : f32 = u_xlat65;
  let x_2195 : vec3<f32> = (-(vec3<f32>(x_2190.x, x_2190.y, x_2190.z)) + vec3<f32>(x_2193, x_2193, x_2193));
  let x_2196 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2195.x, x_2195.y, x_2195.z, x_2196.w);
  let x_2198 : vec2<f32> = u_xlat46;
  let x_2200 : vec4<f32> = u_xlat9;
  let x_2203 : vec4<f32> = u_xlat5;
  let x_2205 : vec3<f32> = ((vec3<f32>(x_2198.x, x_2198.x, x_2198.x) * vec3<f32>(x_2200.x, x_2200.y, x_2200.z)) + vec3<f32>(x_2203.x, x_2203.y, x_2203.z));
  let x_2206 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2205.x, x_2205.y, x_2205.z, x_2206.w);
  let x_2208 : f32 = u_xlat42;
  let x_2210 : vec4<f32> = u_xlat9;
  let x_2212 : vec3<f32> = (vec3<f32>(x_2208, x_2208, x_2208) * vec3<f32>(x_2210.x, x_2210.y, x_2210.z));
  let x_2213 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2212.x, x_2212.y, x_2212.z, x_2213.w);
  let x_2215 : vec4<f32> = u_xlat8;
  let x_2217 : vec4<f32> = u_xlat9;
  let x_2219 : vec3<f32> = (vec3<f32>(x_2215.x, x_2215.y, x_2215.z) * vec3<f32>(x_2217.x, x_2217.y, x_2217.z));
  let x_2220 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2219.x, x_2219.y, x_2219.z, x_2220.w);
  let x_2222 : vec4<f32> = u_xlat3;
  let x_2224 : vec4<f32> = u_xlat6;
  let x_2227 : vec4<f32> = u_xlat8;
  let x_2229 : vec3<f32> = ((vec3<f32>(x_2222.x, x_2222.y, x_2222.z) * vec3<f32>(x_2224.x, x_2224.y, x_2224.z)) + vec3<f32>(x_2227.x, x_2227.y, x_2227.z));
  let x_2230 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2229.x, x_2229.y, x_2229.z, x_2230.w);
  let x_2233 : f32 = u_xlat4.x;
  let x_2235 : f32 = x_2139.unity_LightData.z;
  u_xlat42 = (x_2233 * x_2235);
  let x_2237 : vec4<f32> = u_xlat1;
  let x_2240 : vec4<f32> = x_126.x_MainLightPosition;
  u_xlat65 = dot(vec3<f32>(x_2237.x, x_2237.y, x_2237.z), vec3<f32>(x_2240.x, x_2240.y, x_2240.z));
  let x_2243 : f32 = u_xlat65;
  u_xlat65 = clamp(x_2243, 0.0f, 1.0f);
  let x_2245 : f32 = u_xlat42;
  let x_2246 : f32 = u_xlat65;
  u_xlat42 = (x_2245 * x_2246);
  let x_2248 : f32 = u_xlat42;
  let x_2250 : vec4<f32> = u_xlat7;
  let x_2252 : vec3<f32> = (vec3<f32>(x_2248, x_2248, x_2248) * vec3<f32>(x_2250.x, x_2250.y, x_2250.z));
  let x_2253 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2252.x, x_2253.y, x_2252.y, x_2252.z);
  let x_2255 : vec3<f32> = u_xlat2;
  let x_2257 : vec4<f32> = x_126.x_MainLightPosition;
  let x_2259 : vec3<f32> = (x_2255 + vec3<f32>(x_2257.x, x_2257.y, x_2257.z));
  let x_2260 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2259.x, x_2259.y, x_2259.z, x_2260.w);
  let x_2262 : vec4<f32> = u_xlat7;
  let x_2264 : vec4<f32> = u_xlat7;
  u_xlat42 = dot(vec3<f32>(x_2262.x, x_2262.y, x_2262.z), vec3<f32>(x_2264.x, x_2264.y, x_2264.z));
  let x_2267 : f32 = u_xlat42;
  u_xlat42 = max(x_2267, 1.17549435e-37f);
  let x_2270 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_2270);
  let x_2272 : f32 = u_xlat42;
  let x_2274 : vec4<f32> = u_xlat7;
  let x_2276 : vec3<f32> = (vec3<f32>(x_2272, x_2272, x_2272) * vec3<f32>(x_2274.x, x_2274.y, x_2274.z));
  let x_2277 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2276.x, x_2276.y, x_2276.z, x_2277.w);
  let x_2279 : vec4<f32> = u_xlat1;
  let x_2281 : vec4<f32> = u_xlat7;
  u_xlat42 = dot(vec3<f32>(x_2279.x, x_2279.y, x_2279.z), vec3<f32>(x_2281.x, x_2281.y, x_2281.z));
  let x_2284 : f32 = u_xlat42;
  u_xlat42 = clamp(x_2284, 0.0f, 1.0f);
  let x_2287 : vec4<f32> = x_126.x_MainLightPosition;
  let x_2289 : vec4<f32> = u_xlat7;
  u_xlat65 = dot(vec3<f32>(x_2287.x, x_2287.y, x_2287.z), vec3<f32>(x_2289.x, x_2289.y, x_2289.z));
  let x_2292 : f32 = u_xlat65;
  u_xlat65 = clamp(x_2292, 0.0f, 1.0f);
  let x_2294 : f32 = u_xlat42;
  let x_2295 : f32 = u_xlat42;
  u_xlat42 = (x_2294 * x_2295);
  let x_2297 : f32 = u_xlat42;
  let x_2299 : f32 = u_xlat0.x;
  u_xlat42 = ((x_2297 * x_2299) + 1.000010014f);
  let x_2303 : f32 = u_xlat65;
  let x_2304 : f32 = u_xlat65;
  u_xlat65 = (x_2303 * x_2304);
  let x_2306 : f32 = u_xlat42;
  let x_2307 : f32 = u_xlat42;
  u_xlat42 = (x_2306 * x_2307);
  let x_2309 : f32 = u_xlat65;
  u_xlat65 = max(x_2309, 0.100000001f);
  let x_2312 : f32 = u_xlat42;
  let x_2313 : f32 = u_xlat65;
  u_xlat42 = (x_2312 * x_2313);
  let x_2315 : f32 = u_xlat66;
  let x_2316 : f32 = u_xlat42;
  u_xlat42 = (x_2315 * x_2316);
  let x_2318 : f32 = u_xlat64;
  let x_2319 : f32 = u_xlat42;
  u_xlat42 = (x_2318 / x_2319);
  let x_2321 : vec4<f32> = u_xlat5;
  let x_2323 : f32 = u_xlat42;
  let x_2326 : vec4<f32> = u_xlat6;
  let x_2328 : vec3<f32> = ((vec3<f32>(x_2321.x, x_2321.y, x_2321.z) * vec3<f32>(x_2323, x_2323, x_2323)) + vec3<f32>(x_2326.x, x_2326.y, x_2326.z));
  let x_2329 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2328.x, x_2328.y, x_2328.z, x_2329.w);
  let x_2331 : vec4<f32> = u_xlat4;
  let x_2333 : vec4<f32> = u_xlat7;
  let x_2335 : vec3<f32> = (vec3<f32>(x_2331.x, x_2331.z, x_2331.w) * vec3<f32>(x_2333.x, x_2333.y, x_2333.z));
  let x_2336 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2335.x, x_2336.y, x_2335.y, x_2335.z);
  let x_2339 : f32 = x_126.x_AdditionalLightsCount.x;
  let x_2341 : f32 = x_2139.unity_LightData.y;
  u_xlat42 = min(x_2339, x_2341);
  let x_2345 : f32 = u_xlat42;
  u_xlatu42 = bitcast<u32>(i32(x_2345));
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2357 : u32 = u_xlatu_loop_1;
    let x_2358 : u32 = u_xlatu42;
    if ((x_2357 < x_2358)) {
    } else {
      break;
    }
    let x_2361 : u32 = u_xlatu_loop_1;
    u_xlatu68 = (x_2361 >> 2u);
    let x_2365 : u32 = u_xlatu_loop_1;
    u_xlati69 = bitcast<i32>((x_2365 & 3u));
    let x_2368 : u32 = u_xlatu68;
    let x_2371 : vec4<f32> = x_2139.unity_LightIndices[bitcast<i32>(x_2368)];
    let x_2381 : i32 = u_xlati69;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2386 : vec4<u32> = indexable[x_2381];
    u_xlat68 = dot(x_2371, bitcast<vec4<f32>>(x_2386));
    let x_2390 : f32 = u_xlat68;
    u_xlati68 = i32(x_2390);
    let x_2392 : vec3<f32> = vs_TEXCOORD7;
    let x_2404 : i32 = u_xlati68;
    let x_2406 : vec4<f32> = x_2403.x_AdditionalLightsPosition[x_2404];
    let x_2409 : i32 = u_xlati68;
    let x_2411 : vec4<f32> = x_2403.x_AdditionalLightsPosition[x_2409];
    let x_2413 : vec3<f32> = ((-(x_2392) * vec3<f32>(x_2406.w, x_2406.w, x_2406.w)) + vec3<f32>(x_2411.x, x_2411.y, x_2411.z));
    let x_2414 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2413.x, x_2413.y, x_2413.z, x_2414.w);
    let x_2416 : vec4<f32> = u_xlat8;
    let x_2418 : vec4<f32> = u_xlat8;
    u_xlat69 = dot(vec3<f32>(x_2416.x, x_2416.y, x_2416.z), vec3<f32>(x_2418.x, x_2418.y, x_2418.z));
    let x_2421 : f32 = u_xlat69;
    u_xlat69 = max(x_2421, 6.10351562e-05f);
    let x_2424 : f32 = u_xlat69;
    u_xlat70 = inverseSqrt(x_2424);
    let x_2426 : f32 = u_xlat70;
    let x_2428 : vec4<f32> = u_xlat8;
    let x_2430 : vec3<f32> = (vec3<f32>(x_2426, x_2426, x_2426) * vec3<f32>(x_2428.x, x_2428.y, x_2428.z));
    let x_2431 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2430.x, x_2430.y, x_2430.z, x_2431.w);
    let x_2434 : f32 = u_xlat69;
    u_xlat71 = (1.0f / x_2434);
    let x_2436 : f32 = u_xlat69;
    let x_2437 : i32 = u_xlati68;
    let x_2439 : f32 = x_2403.x_AdditionalLightsAttenuation[x_2437].x;
    u_xlat69 = (x_2436 * x_2439);
    let x_2441 : f32 = u_xlat69;
    let x_2443 : f32 = u_xlat69;
    u_xlat69 = ((-(x_2441) * x_2443) + 1.0f);
    let x_2446 : f32 = u_xlat69;
    u_xlat69 = max(x_2446, 0.0f);
    let x_2448 : f32 = u_xlat69;
    let x_2449 : f32 = u_xlat69;
    u_xlat69 = (x_2448 * x_2449);
    let x_2451 : f32 = u_xlat69;
    let x_2452 : f32 = u_xlat71;
    u_xlat69 = (x_2451 * x_2452);
    let x_2454 : i32 = u_xlati68;
    let x_2456 : vec4<f32> = x_2403.x_AdditionalLightsSpotDir[x_2454];
    let x_2458 : vec4<f32> = u_xlat9;
    u_xlat71 = dot(vec3<f32>(x_2456.x, x_2456.y, x_2456.z), vec3<f32>(x_2458.x, x_2458.y, x_2458.z));
    let x_2461 : f32 = u_xlat71;
    let x_2462 : i32 = u_xlati68;
    let x_2464 : f32 = x_2403.x_AdditionalLightsAttenuation[x_2462].z;
    let x_2466 : i32 = u_xlati68;
    let x_2468 : f32 = x_2403.x_AdditionalLightsAttenuation[x_2466].w;
    u_xlat71 = ((x_2461 * x_2464) + x_2468);
    let x_2470 : f32 = u_xlat71;
    u_xlat71 = clamp(x_2470, 0.0f, 1.0f);
    let x_2472 : f32 = u_xlat71;
    let x_2473 : f32 = u_xlat71;
    u_xlat71 = (x_2472 * x_2473);
    let x_2475 : f32 = u_xlat69;
    let x_2476 : f32 = u_xlat71;
    u_xlat69 = (x_2475 * x_2476);
    let x_2478 : f32 = u_xlat25;
    let x_2480 : i32 = u_xlati68;
    let x_2482 : vec4<f32> = x_2403.x_AdditionalLightsColor[x_2480];
    let x_2484 : vec3<f32> = (vec3<f32>(x_2478, x_2478, x_2478) * vec3<f32>(x_2482.x, x_2482.y, x_2482.z));
    let x_2485 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2484.x, x_2484.y, x_2484.z, x_2485.w);
    let x_2487 : vec4<f32> = u_xlat1;
    let x_2489 : vec4<f32> = u_xlat9;
    u_xlat68 = dot(vec3<f32>(x_2487.x, x_2487.y, x_2487.z), vec3<f32>(x_2489.x, x_2489.y, x_2489.z));
    let x_2492 : f32 = u_xlat68;
    u_xlat68 = clamp(x_2492, 0.0f, 1.0f);
    let x_2494 : f32 = u_xlat68;
    let x_2495 : f32 = u_xlat69;
    u_xlat68 = (x_2494 * x_2495);
    let x_2497 : f32 = u_xlat68;
    let x_2499 : vec4<f32> = u_xlat10;
    let x_2501 : vec3<f32> = (vec3<f32>(x_2497, x_2497, x_2497) * vec3<f32>(x_2499.x, x_2499.y, x_2499.z));
    let x_2502 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2501.x, x_2501.y, x_2501.z, x_2502.w);
    let x_2504 : vec4<f32> = u_xlat8;
    let x_2506 : f32 = u_xlat70;
    let x_2509 : vec3<f32> = u_xlat2;
    let x_2510 : vec3<f32> = ((vec3<f32>(x_2504.x, x_2504.y, x_2504.z) * vec3<f32>(x_2506, x_2506, x_2506)) + x_2509);
    let x_2511 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2510.x, x_2510.y, x_2510.z, x_2511.w);
    let x_2513 : vec4<f32> = u_xlat8;
    let x_2515 : vec4<f32> = u_xlat8;
    u_xlat68 = dot(vec3<f32>(x_2513.x, x_2513.y, x_2513.z), vec3<f32>(x_2515.x, x_2515.y, x_2515.z));
    let x_2518 : f32 = u_xlat68;
    u_xlat68 = max(x_2518, 1.17549435e-37f);
    let x_2520 : f32 = u_xlat68;
    u_xlat68 = inverseSqrt(x_2520);
    let x_2522 : f32 = u_xlat68;
    let x_2524 : vec4<f32> = u_xlat8;
    let x_2526 : vec3<f32> = (vec3<f32>(x_2522, x_2522, x_2522) * vec3<f32>(x_2524.x, x_2524.y, x_2524.z));
    let x_2527 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2526.x, x_2526.y, x_2526.z, x_2527.w);
    let x_2529 : vec4<f32> = u_xlat1;
    let x_2531 : vec4<f32> = u_xlat8;
    u_xlat68 = dot(vec3<f32>(x_2529.x, x_2529.y, x_2529.z), vec3<f32>(x_2531.x, x_2531.y, x_2531.z));
    let x_2534 : f32 = u_xlat68;
    u_xlat68 = clamp(x_2534, 0.0f, 1.0f);
    let x_2536 : vec4<f32> = u_xlat9;
    let x_2538 : vec4<f32> = u_xlat8;
    u_xlat69 = dot(vec3<f32>(x_2536.x, x_2536.y, x_2536.z), vec3<f32>(x_2538.x, x_2538.y, x_2538.z));
    let x_2541 : f32 = u_xlat69;
    u_xlat69 = clamp(x_2541, 0.0f, 1.0f);
    let x_2543 : f32 = u_xlat68;
    let x_2544 : f32 = u_xlat68;
    u_xlat68 = (x_2543 * x_2544);
    let x_2546 : f32 = u_xlat68;
    let x_2548 : f32 = u_xlat0.x;
    u_xlat68 = ((x_2546 * x_2548) + 1.000010014f);
    let x_2551 : f32 = u_xlat69;
    let x_2552 : f32 = u_xlat69;
    u_xlat69 = (x_2551 * x_2552);
    let x_2554 : f32 = u_xlat68;
    let x_2555 : f32 = u_xlat68;
    u_xlat68 = (x_2554 * x_2555);
    let x_2557 : f32 = u_xlat69;
    u_xlat69 = max(x_2557, 0.100000001f);
    let x_2559 : f32 = u_xlat68;
    let x_2560 : f32 = u_xlat69;
    u_xlat68 = (x_2559 * x_2560);
    let x_2562 : f32 = u_xlat66;
    let x_2563 : f32 = u_xlat68;
    u_xlat68 = (x_2562 * x_2563);
    let x_2565 : f32 = u_xlat64;
    let x_2566 : f32 = u_xlat68;
    u_xlat68 = (x_2565 / x_2566);
    let x_2568 : vec4<f32> = u_xlat5;
    let x_2570 : f32 = u_xlat68;
    let x_2573 : vec4<f32> = u_xlat6;
    let x_2575 : vec3<f32> = ((vec3<f32>(x_2568.x, x_2568.y, x_2568.z) * vec3<f32>(x_2570, x_2570, x_2570)) + vec3<f32>(x_2573.x, x_2573.y, x_2573.z));
    let x_2576 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2575.x, x_2575.y, x_2575.z, x_2576.w);
    let x_2578 : vec4<f32> = u_xlat8;
    let x_2580 : vec4<f32> = u_xlat10;
    let x_2583 : vec4<f32> = u_xlat7;
    let x_2585 : vec3<f32> = ((vec3<f32>(x_2578.x, x_2578.y, x_2578.z) * vec3<f32>(x_2580.x, x_2580.y, x_2580.z)) + vec3<f32>(x_2583.x, x_2583.y, x_2583.z));
    let x_2586 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2585.x, x_2585.y, x_2585.z, x_2586.w);

    continuing {
      let x_2588 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2588 + bitcast<u32>(1i));
    }
  }
  let x_2590 : vec4<f32> = u_xlat3;
  let x_2592 : f32 = u_xlat21;
  let x_2595 : vec4<f32> = u_xlat4;
  u_xlat0 = ((vec3<f32>(x_2590.x, x_2590.y, x_2590.z) * vec3<f32>(x_2592, x_2592, x_2592)) + vec3<f32>(x_2595.x, x_2595.z, x_2595.w));
  let x_2598 : vec4<f32> = u_xlat7;
  let x_2600 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_2598.x, x_2598.y, x_2598.z) + x_2600);
  let x_2604 : f32 = u_xlat63;
  let x_2606 : vec3<f32> = u_xlat0;
  let x_2607 : vec3<f32> = (vec3<f32>(x_2604, x_2604, x_2604) * x_2606);
  let x_2608 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2607.x, x_2607.y, x_2607.z, x_2608.w);
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

