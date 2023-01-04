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

@group(1) @binding(4) var<uniform> x_602 : MainLightShadows;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(11) var samplerunity_Lightmap : sampler;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(8) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(14) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(9) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(15) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(10) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_2343 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_2605 : AdditionalLights;

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
  var x_2222 : f32;
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
  let x_597 : vec3<f32> = vs_TEXCOORD7;
  let x_604 : vec4<f32> = x_602.x_CascadeShadowSplitSpheres0;
  let x_607 : vec3<f32> = (x_597 + -(vec3<f32>(x_604.x, x_604.y, x_604.z)));
  let x_608 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_607.x, x_607.y, x_607.z, x_608.w);
  let x_610 : vec3<f32> = vs_TEXCOORD7;
  let x_612 : vec4<f32> = x_602.x_CascadeShadowSplitSpheres1;
  let x_615 : vec3<f32> = (x_610 + -(vec3<f32>(x_612.x, x_612.y, x_612.z)));
  let x_616 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_615.x, x_615.y, x_615.z, x_616.w);
  let x_618 : vec3<f32> = vs_TEXCOORD7;
  let x_621 : vec4<f32> = x_602.x_CascadeShadowSplitSpheres2;
  let x_624 : vec3<f32> = (x_618 + -(vec3<f32>(x_621.x, x_621.y, x_621.z)));
  let x_625 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_624.x, x_624.y, x_624.z, x_625.w);
  let x_627 : vec3<f32> = vs_TEXCOORD7;
  let x_629 : vec4<f32> = x_602.x_CascadeShadowSplitSpheres3;
  let x_632 : vec3<f32> = (x_627 + -(vec3<f32>(x_629.x, x_629.y, x_629.z)));
  let x_633 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_632.x, x_632.y, x_632.z, x_633.w);
  let x_635 : vec4<f32> = u_xlat3;
  let x_637 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_635.x, x_635.y, x_635.z), vec3<f32>(x_637.x, x_637.y, x_637.z));
  let x_641 : vec4<f32> = u_xlat4;
  let x_643 : vec4<f32> = u_xlat4;
  u_xlat3.y = dot(vec3<f32>(x_641.x, x_641.y, x_641.z), vec3<f32>(x_643.x, x_643.y, x_643.z));
  let x_647 : vec4<f32> = u_xlat6;
  let x_649 : vec4<f32> = u_xlat6;
  u_xlat3.z = dot(vec3<f32>(x_647.x, x_647.y, x_647.z), vec3<f32>(x_649.x, x_649.y, x_649.z));
  let x_653 : vec4<f32> = u_xlat7;
  let x_655 : vec4<f32> = u_xlat7;
  u_xlat3.w = dot(vec3<f32>(x_653.x, x_653.y, x_653.z), vec3<f32>(x_655.x, x_655.y, x_655.z));
  let x_661 : vec4<f32> = u_xlat3;
  let x_663 : vec4<f32> = x_602.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_661 < x_663);
  let x_666 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_666);
  let x_670 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_670);
  let x_674 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_674);
  let x_678 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_678);
  let x_682 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_682);
  let x_687 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_687);
  let x_691 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_691);
  let x_694 : vec4<f32> = u_xlat3;
  let x_696 : vec4<f32> = u_xlat4;
  let x_698 : vec3<f32> = (vec3<f32>(x_694.x, x_694.y, x_694.z) + vec3<f32>(x_696.y, x_696.z, x_696.w));
  let x_699 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_698.x, x_698.y, x_698.z, x_699.w);
  let x_701 : vec4<f32> = u_xlat3;
  let x_704 : vec3<f32> = max(vec3<f32>(x_701.x, x_701.y, x_701.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_705 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_705.x, x_704.x, x_704.y, x_704.z);
  let x_707 : vec4<f32> = u_xlat4;
  u_xlat64 = dot(x_707, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_712 : f32 = u_xlat64;
  u_xlat64 = (-(x_712) + 4.0f);
  let x_717 : f32 = u_xlat64;
  u_xlatu64 = u32(x_717);
  let x_721 : u32 = u_xlatu64;
  u_xlati64 = (bitcast<i32>(x_721) << bitcast<u32>(2i));
  let x_724 : vec3<f32> = vs_TEXCOORD7;
  let x_726 : i32 = u_xlati64;
  let x_729 : i32 = u_xlati64;
  let x_733 : vec4<f32> = x_602.x_MainLightWorldToShadow[((x_726 + 1i) / 4i)][((x_729 + 1i) % 4i)];
  let x_735 : vec3<f32> = (vec3<f32>(x_724.y, x_724.y, x_724.y) * vec3<f32>(x_733.x, x_733.y, x_733.z));
  let x_736 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_735.x, x_735.y, x_735.z, x_736.w);
  let x_738 : i32 = u_xlati64;
  let x_740 : i32 = u_xlati64;
  let x_743 : vec4<f32> = x_602.x_MainLightWorldToShadow[(x_738 / 4i)][(x_740 % 4i)];
  let x_745 : vec3<f32> = vs_TEXCOORD7;
  let x_748 : vec4<f32> = u_xlat3;
  let x_750 : vec3<f32> = ((vec3<f32>(x_743.x, x_743.y, x_743.z) * vec3<f32>(x_745.x, x_745.x, x_745.x)) + vec3<f32>(x_748.x, x_748.y, x_748.z));
  let x_751 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_750.x, x_750.y, x_750.z, x_751.w);
  let x_753 : i32 = u_xlati64;
  let x_756 : i32 = u_xlati64;
  let x_760 : vec4<f32> = x_602.x_MainLightWorldToShadow[((x_753 + 2i) / 4i)][((x_756 + 2i) % 4i)];
  let x_762 : vec3<f32> = vs_TEXCOORD7;
  let x_765 : vec4<f32> = u_xlat3;
  let x_767 : vec3<f32> = ((vec3<f32>(x_760.x, x_760.y, x_760.z) * vec3<f32>(x_762.z, x_762.z, x_762.z)) + vec3<f32>(x_765.x, x_765.y, x_765.z));
  let x_768 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_767.x, x_767.y, x_767.z, x_768.w);
  let x_770 : vec4<f32> = u_xlat3;
  let x_772 : i32 = u_xlati64;
  let x_775 : i32 = u_xlati64;
  let x_779 : vec4<f32> = x_602.x_MainLightWorldToShadow[((x_772 + 3i) / 4i)][((x_775 + 3i) % 4i)];
  let x_781 : vec3<f32> = (vec3<f32>(x_770.x, x_770.y, x_770.z) + vec3<f32>(x_779.x, x_779.y, x_779.z));
  let x_782 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_781.x, x_781.y, x_781.z, x_782.w);
  let x_789 : vec4<f32> = vs_TEXCOORD0;
  let x_792 : f32 = x_126.x_GlobalMipBias.x;
  let x_793 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_789.z, x_789.w), x_792);
  u_xlat4 = x_793;
  let x_798 : vec4<f32> = vs_TEXCOORD0;
  let x_801 : f32 = x_126.x_GlobalMipBias.x;
  let x_802 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_798.z, x_798.w), x_801);
  let x_803 : vec3<f32> = vec3<f32>(x_802.x, x_802.y, x_802.z);
  let x_804 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_803.x, x_803.y, x_803.z, x_804.w);
  let x_806 : vec4<f32> = u_xlat4;
  let x_810 : vec3<f32> = (vec3<f32>(x_806.x, x_806.y, x_806.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_811 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_810.x, x_810.y, x_810.z, x_811.w);
  let x_813 : vec4<f32> = u_xlat1;
  let x_815 : vec4<f32> = u_xlat4;
  u_xlat64 = dot(vec3<f32>(x_813.x, x_813.y, x_813.z), vec3<f32>(x_815.x, x_815.y, x_815.z));
  let x_818 : f32 = u_xlat64;
  u_xlat64 = (x_818 + 0.5f);
  let x_820 : f32 = u_xlat64;
  let x_822 : vec4<f32> = u_xlat6;
  let x_824 : vec3<f32> = (vec3<f32>(x_820, x_820, x_820) * vec3<f32>(x_822.x, x_822.y, x_822.z));
  let x_825 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_824.x, x_824.y, x_824.z, x_825.w);
  let x_828 : f32 = u_xlat4.w;
  u_xlat64 = max(x_828, 0.0001f);
  let x_831 : vec4<f32> = u_xlat4;
  let x_833 : f32 = u_xlat64;
  let x_835 : vec3<f32> = (vec3<f32>(x_831.x, x_831.y, x_831.z) / vec3<f32>(x_833, x_833, x_833));
  let x_836 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_835.x, x_835.y, x_835.z, x_836.w);
  let x_840 : vec4<f32> = x_126.x_ScaledScreenParams;
  let x_841 : vec2<f32> = vec2<f32>(x_840.x, x_840.y);
  let x_845 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_841.x, x_841.y));
  let x_846 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_845.x, x_845.y, x_846.z, x_846.w);
  let x_848 : vec4<f32> = u_xlat6;
  let x_850 : vec4<f32> = hlslcc_FragCoord;
  let x_852 : vec2<f32> = (vec2<f32>(x_848.x, x_848.y) * vec2<f32>(x_850.x, x_850.y));
  let x_853 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_852.x, x_852.y, x_853.z, x_853.w);
  let x_856 : f32 = u_xlat6.y;
  let x_858 : f32 = x_126.x_ScaleBiasRt.x;
  let x_861 : f32 = x_126.x_ScaleBiasRt.y;
  u_xlat64 = ((x_856 * x_858) + x_861);
  let x_863 : f32 = u_xlat64;
  u_xlat6.z = (-(x_863) + 1.0f);
  let x_868 : f32 = u_xlat0.x;
  u_xlat64 = ((-(x_868) * 0.959999979f) + 0.959999979f);
  let x_874 : f32 = u_xlat42;
  let x_875 : f32 = u_xlat64;
  u_xlat65 = (x_874 + -(x_875));
  let x_878 : f32 = u_xlat64;
  let x_880 : vec4<f32> = u_xlat5;
  let x_882 : vec3<f32> = (vec3<f32>(x_878, x_878, x_878) * vec3<f32>(x_880.x, x_880.y, x_880.z));
  let x_883 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_882.x, x_882.y, x_882.z, x_883.w);
  let x_885 : vec4<f32> = u_xlat5;
  let x_889 : vec3<f32> = (vec3<f32>(x_885.x, x_885.y, x_885.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_890 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_889.x, x_889.y, x_889.z, x_890.w);
  let x_892 : vec3<f32> = u_xlat0;
  let x_894 : vec4<f32> = u_xlat5;
  let x_899 : vec3<f32> = ((vec3<f32>(x_892.x, x_892.x, x_892.x) * vec3<f32>(x_894.x, x_894.y, x_894.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_900 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_899.x, x_899.y, x_899.z, x_900.w);
  let x_902 : f32 = u_xlat42;
  u_xlat0.x = (-(x_902) + 1.0f);
  let x_907 : f32 = u_xlat0.x;
  let x_909 : f32 = u_xlat0.x;
  u_xlat42 = (x_907 * x_909);
  let x_911 : f32 = u_xlat42;
  u_xlat42 = max(x_911, 0.0078125f);
  let x_914 : f32 = u_xlat42;
  let x_915 : f32 = u_xlat42;
  u_xlat64 = (x_914 * x_915);
  let x_917 : f32 = u_xlat65;
  u_xlat65 = (x_917 + 1.0f);
  let x_919 : f32 = u_xlat65;
  u_xlat65 = clamp(x_919, 0.0f, 1.0f);
  let x_922 : f32 = u_xlat42;
  u_xlat66 = ((x_922 * 4.0f) + 2.0f);
  let x_931 : vec4<f32> = u_xlat6;
  let x_934 : f32 = x_126.x_GlobalMipBias.x;
  let x_935 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_931.x, x_931.z), x_934);
  u_xlat67 = x_935.x;
  let x_938 : f32 = u_xlat67;
  u_xlat68 = (x_938 + -1.0f);
  let x_941 : f32 = x_126.x_AmbientOcclusionParam.w;
  let x_942 : f32 = u_xlat68;
  u_xlat68 = ((x_941 * x_942) + 1.0f);
  let x_945 : f32 = u_xlat21;
  let x_946 : f32 = u_xlat67;
  u_xlat21 = min(x_945, x_946);
  let x_950 : f32 = x_602.x_MainLightShadowParams.y;
  u_xlatb67 = (0.0f < x_950);
  let x_952 : bool = u_xlatb67;
  if (x_952) {
    let x_956 : f32 = x_602.x_MainLightShadowParams.y;
    u_xlatb67 = (x_956 == 1.0f);
    let x_958 : bool = u_xlatb67;
    if (x_958) {
      let x_961 : vec4<f32> = u_xlat3;
      let x_964 : vec4<f32> = x_602.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_961.x, x_961.y, x_961.x, x_961.y) + x_964);
      let x_967 : vec4<f32> = u_xlat6;
      let x_968 : vec2<f32> = vec2<f32>(x_967.x, x_967.y);
      let x_970 : f32 = u_xlat3.z;
      txVec0 = vec3<f32>(x_968.x, x_968.y, x_970);
      let x_982 : vec3<f32> = txVec0;
      let x_984 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_982.xy, x_982.z);
      u_xlat8.x = x_984;
      let x_987 : vec4<f32> = u_xlat6;
      let x_988 : vec2<f32> = vec2<f32>(x_987.z, x_987.w);
      let x_990 : f32 = u_xlat3.z;
      txVec1 = vec3<f32>(x_988.x, x_988.y, x_990);
      let x_997 : vec3<f32> = txVec1;
      let x_999 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_997.xy, x_997.z);
      u_xlat8.y = x_999;
      let x_1001 : vec4<f32> = u_xlat3;
      let x_1004 : vec4<f32> = x_602.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_1001.x, x_1001.y, x_1001.x, x_1001.y) + x_1004);
      let x_1007 : vec4<f32> = u_xlat6;
      let x_1008 : vec2<f32> = vec2<f32>(x_1007.x, x_1007.y);
      let x_1010 : f32 = u_xlat3.z;
      txVec2 = vec3<f32>(x_1008.x, x_1008.y, x_1010);
      let x_1017 : vec3<f32> = txVec2;
      let x_1019 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1017.xy, x_1017.z);
      u_xlat8.z = x_1019;
      let x_1022 : vec4<f32> = u_xlat6;
      let x_1023 : vec2<f32> = vec2<f32>(x_1022.z, x_1022.w);
      let x_1025 : f32 = u_xlat3.z;
      txVec3 = vec3<f32>(x_1023.x, x_1023.y, x_1025);
      let x_1032 : vec3<f32> = txVec3;
      let x_1034 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1032.xy, x_1032.z);
      u_xlat8.w = x_1034;
      let x_1036 : vec4<f32> = u_xlat8;
      u_xlat67 = dot(x_1036, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_1043 : f32 = x_602.x_MainLightShadowParams.y;
      u_xlatb6 = (x_1043 == 2.0f);
      let x_1045 : bool = u_xlatb6;
      if (x_1045) {
        let x_1048 : vec4<f32> = u_xlat3;
        let x_1051 : vec4<f32> = x_602.x_MainLightShadowmapSize;
        let x_1054 : vec2<f32> = ((vec2<f32>(x_1048.x, x_1048.y) * vec2<f32>(x_1051.z, x_1051.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1055 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1054.x, x_1054.y, x_1055.z, x_1055.w);
        let x_1057 : vec4<f32> = u_xlat6;
        let x_1059 : vec2<f32> = floor(vec2<f32>(x_1057.x, x_1057.y));
        let x_1060 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1059.x, x_1059.y, x_1060.z, x_1060.w);
        let x_1064 : vec4<f32> = u_xlat3;
        let x_1067 : vec4<f32> = x_602.x_MainLightShadowmapSize;
        let x_1070 : vec4<f32> = u_xlat6;
        u_xlat48 = ((vec2<f32>(x_1064.x, x_1064.y) * vec2<f32>(x_1067.z, x_1067.w)) + -(vec2<f32>(x_1070.x, x_1070.y)));
        let x_1074 : vec2<f32> = u_xlat48;
        u_xlat8 = (vec4<f32>(x_1074.x, x_1074.x, x_1074.y, x_1074.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1078 : vec4<f32> = u_xlat8;
        let x_1080 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1078.x, x_1078.x, x_1078.z, x_1078.z) * vec4<f32>(x_1080.x, x_1080.x, x_1080.z, x_1080.z));
        let x_1083 : vec4<f32> = u_xlat9;
        let x_1087 : vec2<f32> = (vec2<f32>(x_1083.y, x_1083.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_1088 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1087.x, x_1088.y, x_1087.y, x_1088.w);
        let x_1090 : vec4<f32> = u_xlat9;
        let x_1093 : vec2<f32> = u_xlat48;
        let x_1095 : vec2<f32> = ((vec2<f32>(x_1090.x, x_1090.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1093));
        let x_1096 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1095.x, x_1095.y, x_1096.z, x_1096.w);
        let x_1099 : vec2<f32> = u_xlat48;
        u_xlat51 = (-(x_1099) + vec2<f32>(1.0f, 1.0f));
        let x_1102 : vec2<f32> = u_xlat48;
        let x_1104 : vec2<f32> = min(x_1102, vec2<f32>(0.0f, 0.0f));
        let x_1105 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1104.x, x_1104.y, x_1105.z, x_1105.w);
        let x_1107 : vec4<f32> = u_xlat10;
        let x_1110 : vec4<f32> = u_xlat10;
        let x_1113 : vec2<f32> = u_xlat51;
        let x_1114 : vec2<f32> = ((-(vec2<f32>(x_1107.x, x_1107.y)) * vec2<f32>(x_1110.x, x_1110.y)) + x_1113);
        let x_1115 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1114.x, x_1114.y, x_1115.z, x_1115.w);
        let x_1117 : vec2<f32> = u_xlat48;
        u_xlat48 = max(x_1117, vec2<f32>(0.0f, 0.0f));
        let x_1119 : vec2<f32> = u_xlat48;
        let x_1121 : vec2<f32> = u_xlat48;
        let x_1123 : vec4<f32> = u_xlat8;
        u_xlat48 = ((-(x_1119) * x_1121) + vec2<f32>(x_1123.y, x_1123.w));
        let x_1126 : vec4<f32> = u_xlat10;
        let x_1128 : vec2<f32> = (vec2<f32>(x_1126.x, x_1126.y) + vec2<f32>(1.0f, 1.0f));
        let x_1129 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1128.x, x_1128.y, x_1129.z, x_1129.w);
        let x_1131 : vec2<f32> = u_xlat48;
        u_xlat48 = (x_1131 + vec2<f32>(1.0f, 1.0f));
        let x_1133 : vec4<f32> = u_xlat9;
        let x_1137 : vec2<f32> = (vec2<f32>(x_1133.x, x_1133.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1138 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1137.x, x_1137.y, x_1138.z, x_1138.w);
        let x_1140 : vec2<f32> = u_xlat51;
        let x_1141 : vec2<f32> = (x_1140 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1142 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1141.x, x_1141.y, x_1142.z, x_1142.w);
        let x_1144 : vec4<f32> = u_xlat10;
        let x_1146 : vec2<f32> = (vec2<f32>(x_1144.x, x_1144.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1147 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1146.x, x_1146.y, x_1147.z, x_1147.w);
        let x_1149 : vec2<f32> = u_xlat48;
        let x_1150 : vec2<f32> = (x_1149 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1151 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1150.x, x_1150.y, x_1151.z, x_1151.w);
        let x_1153 : vec4<f32> = u_xlat8;
        u_xlat48 = (vec2<f32>(x_1153.y, x_1153.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1157 : f32 = u_xlat10.x;
        u_xlat11.z = x_1157;
        let x_1160 : f32 = u_xlat48.x;
        u_xlat11.w = x_1160;
        let x_1163 : f32 = u_xlat12.x;
        u_xlat9.z = x_1163;
        let x_1166 : f32 = u_xlat8.x;
        u_xlat9.w = x_1166;
        let x_1168 : vec4<f32> = u_xlat9;
        let x_1170 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_1168.z, x_1168.w, x_1168.x, x_1168.z) + vec4<f32>(x_1170.z, x_1170.w, x_1170.x, x_1170.z));
        let x_1174 : f32 = u_xlat11.y;
        u_xlat10.z = x_1174;
        let x_1177 : f32 = u_xlat48.y;
        u_xlat10.w = x_1177;
        let x_1180 : f32 = u_xlat9.y;
        u_xlat12.z = x_1180;
        let x_1183 : f32 = u_xlat8.z;
        u_xlat12.w = x_1183;
        let x_1185 : vec4<f32> = u_xlat10;
        let x_1187 : vec4<f32> = u_xlat12;
        let x_1189 : vec3<f32> = (vec3<f32>(x_1185.z, x_1185.y, x_1185.w) + vec3<f32>(x_1187.z, x_1187.y, x_1187.w));
        let x_1190 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1189.x, x_1189.y, x_1189.z, x_1190.w);
        let x_1192 : vec4<f32> = u_xlat9;
        let x_1194 : vec4<f32> = u_xlat13;
        let x_1196 : vec3<f32> = (vec3<f32>(x_1192.x, x_1192.z, x_1192.w) / vec3<f32>(x_1194.z, x_1194.w, x_1194.y));
        let x_1197 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1196.x, x_1196.y, x_1196.z, x_1197.w);
        let x_1199 : vec4<f32> = u_xlat9;
        let x_1204 : vec3<f32> = (vec3<f32>(x_1199.x, x_1199.y, x_1199.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1205 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1204.x, x_1204.y, x_1204.z, x_1205.w);
        let x_1207 : vec4<f32> = u_xlat12;
        let x_1209 : vec4<f32> = u_xlat8;
        let x_1211 : vec3<f32> = (vec3<f32>(x_1207.z, x_1207.y, x_1207.w) / vec3<f32>(x_1209.x, x_1209.y, x_1209.z));
        let x_1212 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1211.x, x_1211.y, x_1211.z, x_1212.w);
        let x_1214 : vec4<f32> = u_xlat10;
        let x_1216 : vec3<f32> = (vec3<f32>(x_1214.x, x_1214.y, x_1214.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1217 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1216.x, x_1216.y, x_1216.z, x_1217.w);
        let x_1219 : vec4<f32> = u_xlat9;
        let x_1222 : vec4<f32> = x_602.x_MainLightShadowmapSize;
        let x_1224 : vec3<f32> = (vec3<f32>(x_1219.y, x_1219.x, x_1219.z) * vec3<f32>(x_1222.x, x_1222.x, x_1222.x));
        let x_1225 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1224.x, x_1224.y, x_1224.z, x_1225.w);
        let x_1227 : vec4<f32> = u_xlat10;
        let x_1230 : vec4<f32> = x_602.x_MainLightShadowmapSize;
        let x_1232 : vec3<f32> = (vec3<f32>(x_1227.x, x_1227.y, x_1227.z) * vec3<f32>(x_1230.y, x_1230.y, x_1230.y));
        let x_1233 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1232.x, x_1232.y, x_1232.z, x_1233.w);
        let x_1236 : f32 = u_xlat10.x;
        u_xlat9.w = x_1236;
        let x_1238 : vec4<f32> = u_xlat6;
        let x_1241 : vec4<f32> = x_602.x_MainLightShadowmapSize;
        let x_1244 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1238.x, x_1238.y, x_1238.x, x_1238.y) * vec4<f32>(x_1241.x, x_1241.y, x_1241.x, x_1241.y)) + vec4<f32>(x_1244.y, x_1244.w, x_1244.x, x_1244.w));
        let x_1247 : vec4<f32> = u_xlat6;
        let x_1250 : vec4<f32> = x_602.x_MainLightShadowmapSize;
        let x_1253 : vec4<f32> = u_xlat9;
        u_xlat48 = ((vec2<f32>(x_1247.x, x_1247.y) * vec2<f32>(x_1250.x, x_1250.y)) + vec2<f32>(x_1253.z, x_1253.w));
        let x_1257 : f32 = u_xlat9.y;
        u_xlat10.w = x_1257;
        let x_1259 : vec4<f32> = u_xlat10;
        let x_1260 : vec2<f32> = vec2<f32>(x_1259.y, x_1259.z);
        let x_1261 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1261.x, x_1260.x, x_1261.z, x_1260.y);
        let x_1263 : vec4<f32> = u_xlat6;
        let x_1266 : vec4<f32> = x_602.x_MainLightShadowmapSize;
        let x_1269 : vec4<f32> = u_xlat9;
        u_xlat12 = ((vec4<f32>(x_1263.x, x_1263.y, x_1263.x, x_1263.y) * vec4<f32>(x_1266.x, x_1266.y, x_1266.x, x_1266.y)) + vec4<f32>(x_1269.x, x_1269.y, x_1269.z, x_1269.y));
        let x_1272 : vec4<f32> = u_xlat6;
        let x_1275 : vec4<f32> = x_602.x_MainLightShadowmapSize;
        let x_1278 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_1272.x, x_1272.y, x_1272.x, x_1272.y) * vec4<f32>(x_1275.x, x_1275.y, x_1275.x, x_1275.y)) + vec4<f32>(x_1278.w, x_1278.y, x_1278.w, x_1278.z));
        let x_1281 : vec4<f32> = u_xlat6;
        let x_1284 : vec4<f32> = x_602.x_MainLightShadowmapSize;
        let x_1287 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1281.x, x_1281.y, x_1281.x, x_1281.y) * vec4<f32>(x_1284.x, x_1284.y, x_1284.x, x_1284.y)) + vec4<f32>(x_1287.x, x_1287.w, x_1287.z, x_1287.w));
        let x_1291 : vec4<f32> = u_xlat8;
        let x_1293 : vec4<f32> = u_xlat13;
        u_xlat14 = (vec4<f32>(x_1291.x, x_1291.x, x_1291.x, x_1291.y) * vec4<f32>(x_1293.z, x_1293.w, x_1293.y, x_1293.z));
        let x_1297 : vec4<f32> = u_xlat8;
        let x_1299 : vec4<f32> = u_xlat13;
        u_xlat15 = (vec4<f32>(x_1297.y, x_1297.y, x_1297.z, x_1297.z) * x_1299);
        let x_1302 : f32 = u_xlat8.z;
        let x_1304 : f32 = u_xlat13.y;
        u_xlat6.x = (x_1302 * x_1304);
        let x_1308 : vec4<f32> = u_xlat11;
        let x_1309 : vec2<f32> = vec2<f32>(x_1308.x, x_1308.y);
        let x_1311 : f32 = u_xlat3.z;
        txVec4 = vec3<f32>(x_1309.x, x_1309.y, x_1311);
        let x_1319 : vec3<f32> = txVec4;
        let x_1321 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1319.xy, x_1319.z);
        u_xlat27 = x_1321;
        let x_1323 : vec4<f32> = u_xlat11;
        let x_1324 : vec2<f32> = vec2<f32>(x_1323.z, x_1323.w);
        let x_1326 : f32 = u_xlat3.z;
        txVec5 = vec3<f32>(x_1324.x, x_1324.y, x_1326);
        let x_1334 : vec3<f32> = txVec5;
        let x_1336 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1334.xy, x_1334.z);
        u_xlat70 = x_1336;
        let x_1337 : f32 = u_xlat70;
        let x_1339 : f32 = u_xlat14.y;
        u_xlat70 = (x_1337 * x_1339);
        let x_1342 : f32 = u_xlat14.x;
        let x_1343 : f32 = u_xlat27;
        let x_1345 : f32 = u_xlat70;
        u_xlat27 = ((x_1342 * x_1343) + x_1345);
        let x_1348 : vec2<f32> = u_xlat48;
        let x_1350 : f32 = u_xlat3.z;
        txVec6 = vec3<f32>(x_1348.x, x_1348.y, x_1350);
        let x_1357 : vec3<f32> = txVec6;
        let x_1359 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1357.xy, x_1357.z);
        u_xlat48.x = x_1359;
        let x_1362 : f32 = u_xlat14.z;
        let x_1364 : f32 = u_xlat48.x;
        let x_1366 : f32 = u_xlat27;
        u_xlat27 = ((x_1362 * x_1364) + x_1366);
        let x_1369 : vec4<f32> = u_xlat10;
        let x_1370 : vec2<f32> = vec2<f32>(x_1369.x, x_1369.y);
        let x_1372 : f32 = u_xlat3.z;
        txVec7 = vec3<f32>(x_1370.x, x_1370.y, x_1372);
        let x_1379 : vec3<f32> = txVec7;
        let x_1381 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1379.xy, x_1379.z);
        u_xlat48.x = x_1381;
        let x_1384 : f32 = u_xlat14.w;
        let x_1386 : f32 = u_xlat48.x;
        let x_1388 : f32 = u_xlat27;
        u_xlat27 = ((x_1384 * x_1386) + x_1388);
        let x_1391 : vec4<f32> = u_xlat12;
        let x_1392 : vec2<f32> = vec2<f32>(x_1391.x, x_1391.y);
        let x_1394 : f32 = u_xlat3.z;
        txVec8 = vec3<f32>(x_1392.x, x_1392.y, x_1394);
        let x_1401 : vec3<f32> = txVec8;
        let x_1403 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1401.xy, x_1401.z);
        u_xlat48.x = x_1403;
        let x_1406 : f32 = u_xlat15.x;
        let x_1408 : f32 = u_xlat48.x;
        let x_1410 : f32 = u_xlat27;
        u_xlat27 = ((x_1406 * x_1408) + x_1410);
        let x_1413 : vec4<f32> = u_xlat12;
        let x_1414 : vec2<f32> = vec2<f32>(x_1413.z, x_1413.w);
        let x_1416 : f32 = u_xlat3.z;
        txVec9 = vec3<f32>(x_1414.x, x_1414.y, x_1416);
        let x_1423 : vec3<f32> = txVec9;
        let x_1425 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1423.xy, x_1423.z);
        u_xlat48.x = x_1425;
        let x_1428 : f32 = u_xlat15.y;
        let x_1430 : f32 = u_xlat48.x;
        let x_1432 : f32 = u_xlat27;
        u_xlat27 = ((x_1428 * x_1430) + x_1432);
        let x_1435 : vec4<f32> = u_xlat10;
        let x_1436 : vec2<f32> = vec2<f32>(x_1435.z, x_1435.w);
        let x_1438 : f32 = u_xlat3.z;
        txVec10 = vec3<f32>(x_1436.x, x_1436.y, x_1438);
        let x_1445 : vec3<f32> = txVec10;
        let x_1447 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1445.xy, x_1445.z);
        u_xlat48.x = x_1447;
        let x_1450 : f32 = u_xlat15.z;
        let x_1452 : f32 = u_xlat48.x;
        let x_1454 : f32 = u_xlat27;
        u_xlat27 = ((x_1450 * x_1452) + x_1454);
        let x_1457 : vec4<f32> = u_xlat9;
        let x_1458 : vec2<f32> = vec2<f32>(x_1457.x, x_1457.y);
        let x_1460 : f32 = u_xlat3.z;
        txVec11 = vec3<f32>(x_1458.x, x_1458.y, x_1460);
        let x_1467 : vec3<f32> = txVec11;
        let x_1469 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1467.xy, x_1467.z);
        u_xlat48.x = x_1469;
        let x_1472 : f32 = u_xlat15.w;
        let x_1474 : f32 = u_xlat48.x;
        let x_1476 : f32 = u_xlat27;
        u_xlat27 = ((x_1472 * x_1474) + x_1476);
        let x_1479 : vec4<f32> = u_xlat9;
        let x_1480 : vec2<f32> = vec2<f32>(x_1479.z, x_1479.w);
        let x_1482 : f32 = u_xlat3.z;
        txVec12 = vec3<f32>(x_1480.x, x_1480.y, x_1482);
        let x_1489 : vec3<f32> = txVec12;
        let x_1491 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1489.xy, x_1489.z);
        u_xlat48.x = x_1491;
        let x_1494 : f32 = u_xlat6.x;
        let x_1496 : f32 = u_xlat48.x;
        let x_1498 : f32 = u_xlat27;
        u_xlat67 = ((x_1494 * x_1496) + x_1498);
      } else {
        let x_1501 : vec4<f32> = u_xlat3;
        let x_1504 : vec4<f32> = x_602.x_MainLightShadowmapSize;
        let x_1507 : vec2<f32> = ((vec2<f32>(x_1501.x, x_1501.y) * vec2<f32>(x_1504.z, x_1504.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1508 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1507.x, x_1507.y, x_1508.z, x_1508.w);
        let x_1510 : vec4<f32> = u_xlat6;
        let x_1512 : vec2<f32> = floor(vec2<f32>(x_1510.x, x_1510.y));
        let x_1513 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1512.x, x_1512.y, x_1513.z, x_1513.w);
        let x_1515 : vec4<f32> = u_xlat3;
        let x_1518 : vec4<f32> = x_602.x_MainLightShadowmapSize;
        let x_1521 : vec4<f32> = u_xlat6;
        u_xlat48 = ((vec2<f32>(x_1515.x, x_1515.y) * vec2<f32>(x_1518.z, x_1518.w)) + -(vec2<f32>(x_1521.x, x_1521.y)));
        let x_1525 : vec2<f32> = u_xlat48;
        u_xlat8 = (vec4<f32>(x_1525.x, x_1525.x, x_1525.y, x_1525.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1528 : vec4<f32> = u_xlat8;
        let x_1530 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1528.x, x_1528.x, x_1528.z, x_1528.z) * vec4<f32>(x_1530.x, x_1530.x, x_1530.z, x_1530.z));
        let x_1533 : vec4<f32> = u_xlat9;
        let x_1537 : vec2<f32> = (vec2<f32>(x_1533.y, x_1533.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1538 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1538.x, x_1537.x, x_1538.z, x_1537.y);
        let x_1540 : vec4<f32> = u_xlat9;
        let x_1543 : vec2<f32> = u_xlat48;
        let x_1545 : vec2<f32> = ((vec2<f32>(x_1540.x, x_1540.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1543));
        let x_1546 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1545.x, x_1546.y, x_1545.y, x_1546.w);
        let x_1548 : vec2<f32> = u_xlat48;
        let x_1550 : vec2<f32> = (-(x_1548) + vec2<f32>(1.0f, 1.0f));
        let x_1551 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1550.x, x_1550.y, x_1551.z, x_1551.w);
        let x_1553 : vec2<f32> = u_xlat48;
        u_xlat51 = min(x_1553, vec2<f32>(0.0f, 0.0f));
        let x_1555 : vec2<f32> = u_xlat51;
        let x_1557 : vec2<f32> = u_xlat51;
        let x_1559 : vec4<f32> = u_xlat9;
        let x_1561 : vec2<f32> = ((-(x_1555) * x_1557) + vec2<f32>(x_1559.x, x_1559.y));
        let x_1562 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1561.x, x_1561.y, x_1562.z, x_1562.w);
        let x_1564 : vec2<f32> = u_xlat48;
        u_xlat51 = max(x_1564, vec2<f32>(0.0f, 0.0f));
        let x_1567 : vec2<f32> = u_xlat51;
        let x_1569 : vec2<f32> = u_xlat51;
        let x_1571 : vec4<f32> = u_xlat8;
        let x_1573 : vec2<f32> = ((-(x_1567) * x_1569) + vec2<f32>(x_1571.y, x_1571.w));
        let x_1574 : vec3<f32> = u_xlat29;
        u_xlat29 = vec3<f32>(x_1573.x, x_1574.y, x_1573.y);
        let x_1576 : vec4<f32> = u_xlat9;
        let x_1579 : vec2<f32> = (vec2<f32>(x_1576.x, x_1576.y) + vec2<f32>(2.0f, 2.0f));
        let x_1580 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1579.x, x_1579.y, x_1580.z, x_1580.w);
        let x_1582 : vec3<f32> = u_xlat29;
        let x_1584 : vec2<f32> = (vec2<f32>(x_1582.x, x_1582.z) + vec2<f32>(2.0f, 2.0f));
        let x_1585 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1585.x, x_1584.x, x_1585.z, x_1584.y);
        let x_1588 : f32 = u_xlat8.y;
        u_xlat11.z = (x_1588 * 0.081632003f);
        let x_1592 : vec4<f32> = u_xlat8;
        let x_1595 : vec3<f32> = (vec3<f32>(x_1592.z, x_1592.x, x_1592.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_1596 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1595.x, x_1595.y, x_1595.z, x_1596.w);
        let x_1598 : vec4<f32> = u_xlat9;
        let x_1601 : vec2<f32> = (vec2<f32>(x_1598.x, x_1598.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1602 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1601.x, x_1601.y, x_1602.z, x_1602.w);
        let x_1605 : f32 = u_xlat12.y;
        u_xlat11.x = x_1605;
        let x_1607 : vec2<f32> = u_xlat48;
        let x_1614 : vec2<f32> = ((vec2<f32>(x_1607.x, x_1607.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1615 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1615.x, x_1614.x, x_1615.z, x_1614.y);
        let x_1617 : vec2<f32> = u_xlat48;
        let x_1621 : vec2<f32> = ((vec2<f32>(x_1617.x, x_1617.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1622 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1621.x, x_1622.y, x_1621.y, x_1622.w);
        let x_1625 : f32 = u_xlat8.x;
        u_xlat9.y = x_1625;
        let x_1628 : f32 = u_xlat10.y;
        u_xlat9.w = x_1628;
        let x_1630 : vec4<f32> = u_xlat9;
        let x_1631 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_1630 + x_1631);
        let x_1633 : vec2<f32> = u_xlat48;
        let x_1636 : vec2<f32> = ((vec2<f32>(x_1633.y, x_1633.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1637 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1637.x, x_1636.x, x_1637.z, x_1636.y);
        let x_1639 : vec2<f32> = u_xlat48;
        let x_1642 : vec2<f32> = ((vec2<f32>(x_1639.y, x_1639.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1643 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1642.x, x_1643.y, x_1642.y, x_1643.w);
        let x_1646 : f32 = u_xlat8.y;
        u_xlat10.y = x_1646;
        let x_1648 : vec4<f32> = u_xlat10;
        let x_1649 : vec4<f32> = u_xlat12;
        u_xlat8 = (x_1648 + x_1649);
        let x_1651 : vec4<f32> = u_xlat9;
        let x_1652 : vec4<f32> = u_xlat11;
        u_xlat9 = (x_1651 / x_1652);
        let x_1654 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1654 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1660 : vec4<f32> = u_xlat10;
        let x_1661 : vec4<f32> = u_xlat8;
        u_xlat10 = (x_1660 / x_1661);
        let x_1663 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1663 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1665 : vec4<f32> = u_xlat9;
        let x_1668 : vec4<f32> = x_602.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1665.w, x_1665.x, x_1665.y, x_1665.z) * vec4<f32>(x_1668.x, x_1668.x, x_1668.x, x_1668.x));
        let x_1671 : vec4<f32> = u_xlat10;
        let x_1674 : vec4<f32> = x_602.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1671.x, x_1671.w, x_1671.y, x_1671.z) * vec4<f32>(x_1674.y, x_1674.y, x_1674.y, x_1674.y));
        let x_1677 : vec4<f32> = u_xlat9;
        let x_1678 : vec3<f32> = vec3<f32>(x_1677.y, x_1677.z, x_1677.w);
        let x_1679 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1678.x, x_1679.y, x_1678.y, x_1678.z);
        let x_1682 : f32 = u_xlat10.x;
        u_xlat12.y = x_1682;
        let x_1684 : vec4<f32> = u_xlat6;
        let x_1687 : vec4<f32> = x_602.x_MainLightShadowmapSize;
        let x_1690 : vec4<f32> = u_xlat12;
        u_xlat13 = ((vec4<f32>(x_1684.x, x_1684.y, x_1684.x, x_1684.y) * vec4<f32>(x_1687.x, x_1687.y, x_1687.x, x_1687.y)) + vec4<f32>(x_1690.x, x_1690.y, x_1690.z, x_1690.y));
        let x_1693 : vec4<f32> = u_xlat6;
        let x_1696 : vec4<f32> = x_602.x_MainLightShadowmapSize;
        let x_1699 : vec4<f32> = u_xlat12;
        u_xlat48 = ((vec2<f32>(x_1693.x, x_1693.y) * vec2<f32>(x_1696.x, x_1696.y)) + vec2<f32>(x_1699.w, x_1699.y));
        let x_1703 : f32 = u_xlat12.y;
        u_xlat9.y = x_1703;
        let x_1706 : f32 = u_xlat10.z;
        u_xlat12.y = x_1706;
        let x_1708 : vec4<f32> = u_xlat6;
        let x_1711 : vec4<f32> = x_602.x_MainLightShadowmapSize;
        let x_1714 : vec4<f32> = u_xlat12;
        u_xlat14 = ((vec4<f32>(x_1708.x, x_1708.y, x_1708.x, x_1708.y) * vec4<f32>(x_1711.x, x_1711.y, x_1711.x, x_1711.y)) + vec4<f32>(x_1714.x, x_1714.y, x_1714.z, x_1714.y));
        let x_1717 : vec4<f32> = u_xlat6;
        let x_1720 : vec4<f32> = x_602.x_MainLightShadowmapSize;
        let x_1723 : vec4<f32> = u_xlat12;
        let x_1725 : vec2<f32> = ((vec2<f32>(x_1717.x, x_1717.y) * vec2<f32>(x_1720.x, x_1720.y)) + vec2<f32>(x_1723.w, x_1723.y));
        let x_1726 : vec4<f32> = u_xlat15;
        u_xlat15 = vec4<f32>(x_1725.x, x_1725.y, x_1726.z, x_1726.w);
        let x_1729 : f32 = u_xlat12.y;
        u_xlat9.z = x_1729;
        let x_1732 : vec4<f32> = u_xlat6;
        let x_1735 : vec4<f32> = x_602.x_MainLightShadowmapSize;
        let x_1738 : vec4<f32> = u_xlat9;
        u_xlat16 = ((vec4<f32>(x_1732.x, x_1732.y, x_1732.x, x_1732.y) * vec4<f32>(x_1735.x, x_1735.y, x_1735.x, x_1735.y)) + vec4<f32>(x_1738.x, x_1738.y, x_1738.x, x_1738.z));
        let x_1742 : f32 = u_xlat10.w;
        u_xlat12.y = x_1742;
        let x_1745 : vec4<f32> = u_xlat6;
        let x_1748 : vec4<f32> = x_602.x_MainLightShadowmapSize;
        let x_1751 : vec4<f32> = u_xlat12;
        u_xlat17 = ((vec4<f32>(x_1745.x, x_1745.y, x_1745.x, x_1745.y) * vec4<f32>(x_1748.x, x_1748.y, x_1748.x, x_1748.y)) + vec4<f32>(x_1751.x, x_1751.y, x_1751.z, x_1751.y));
        let x_1755 : vec4<f32> = u_xlat6;
        let x_1758 : vec4<f32> = x_602.x_MainLightShadowmapSize;
        let x_1761 : vec4<f32> = u_xlat12;
        u_xlat30 = ((vec2<f32>(x_1755.x, x_1755.y) * vec2<f32>(x_1758.x, x_1758.y)) + vec2<f32>(x_1761.w, x_1761.y));
        let x_1765 : f32 = u_xlat12.y;
        u_xlat9.w = x_1765;
        let x_1768 : vec4<f32> = u_xlat6;
        let x_1771 : vec4<f32> = x_602.x_MainLightShadowmapSize;
        let x_1774 : vec4<f32> = u_xlat9;
        u_xlat57 = ((vec2<f32>(x_1768.x, x_1768.y) * vec2<f32>(x_1771.x, x_1771.y)) + vec2<f32>(x_1774.x, x_1774.w));
        let x_1777 : vec4<f32> = u_xlat12;
        let x_1778 : vec3<f32> = vec3<f32>(x_1777.x, x_1777.z, x_1777.w);
        let x_1779 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1778.x, x_1779.y, x_1778.y, x_1778.z);
        let x_1781 : vec4<f32> = u_xlat6;
        let x_1784 : vec4<f32> = x_602.x_MainLightShadowmapSize;
        let x_1787 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1781.x, x_1781.y, x_1781.x, x_1781.y) * vec4<f32>(x_1784.x, x_1784.y, x_1784.x, x_1784.y)) + vec4<f32>(x_1787.x, x_1787.y, x_1787.z, x_1787.y));
        let x_1791 : vec4<f32> = u_xlat6;
        let x_1794 : vec4<f32> = x_602.x_MainLightShadowmapSize;
        let x_1797 : vec4<f32> = u_xlat10;
        u_xlat52 = ((vec2<f32>(x_1791.x, x_1791.y) * vec2<f32>(x_1794.x, x_1794.y)) + vec2<f32>(x_1797.w, x_1797.y));
        let x_1801 : f32 = u_xlat9.x;
        u_xlat10.x = x_1801;
        let x_1803 : vec4<f32> = u_xlat6;
        let x_1806 : vec4<f32> = x_602.x_MainLightShadowmapSize;
        let x_1809 : vec4<f32> = u_xlat10;
        let x_1811 : vec2<f32> = ((vec2<f32>(x_1803.x, x_1803.y) * vec2<f32>(x_1806.x, x_1806.y)) + vec2<f32>(x_1809.x, x_1809.y));
        let x_1812 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1811.x, x_1811.y, x_1812.z, x_1812.w);
        let x_1815 : vec4<f32> = u_xlat8;
        let x_1817 : vec4<f32> = u_xlat11;
        u_xlat18 = (vec4<f32>(x_1815.x, x_1815.x, x_1815.x, x_1815.x) * x_1817);
        let x_1820 : vec4<f32> = u_xlat8;
        let x_1822 : vec4<f32> = u_xlat11;
        u_xlat19 = (vec4<f32>(x_1820.y, x_1820.y, x_1820.y, x_1820.y) * x_1822);
        let x_1825 : vec4<f32> = u_xlat8;
        let x_1827 : vec4<f32> = u_xlat11;
        u_xlat20 = (vec4<f32>(x_1825.z, x_1825.z, x_1825.z, x_1825.z) * x_1827);
        let x_1829 : vec4<f32> = u_xlat8;
        let x_1831 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_1829.w, x_1829.w, x_1829.w, x_1829.w) * x_1831);
        let x_1834 : vec4<f32> = u_xlat13;
        let x_1835 : vec2<f32> = vec2<f32>(x_1834.x, x_1834.y);
        let x_1837 : f32 = u_xlat3.z;
        txVec13 = vec3<f32>(x_1835.x, x_1835.y, x_1837);
        let x_1844 : vec3<f32> = txVec13;
        let x_1846 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1844.xy, x_1844.z);
        u_xlat70 = x_1846;
        let x_1848 : vec4<f32> = u_xlat13;
        let x_1849 : vec2<f32> = vec2<f32>(x_1848.z, x_1848.w);
        let x_1851 : f32 = u_xlat3.z;
        txVec14 = vec3<f32>(x_1849.x, x_1849.y, x_1851);
        let x_1858 : vec3<f32> = txVec14;
        let x_1860 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1858.xy, x_1858.z);
        u_xlat9.x = x_1860;
        let x_1863 : f32 = u_xlat9.x;
        let x_1865 : f32 = u_xlat18.y;
        u_xlat9.x = (x_1863 * x_1865);
        let x_1869 : f32 = u_xlat18.x;
        let x_1870 : f32 = u_xlat70;
        let x_1873 : f32 = u_xlat9.x;
        u_xlat70 = ((x_1869 * x_1870) + x_1873);
        let x_1876 : vec2<f32> = u_xlat48;
        let x_1878 : f32 = u_xlat3.z;
        txVec15 = vec3<f32>(x_1876.x, x_1876.y, x_1878);
        let x_1885 : vec3<f32> = txVec15;
        let x_1887 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1885.xy, x_1885.z);
        u_xlat48.x = x_1887;
        let x_1890 : f32 = u_xlat18.z;
        let x_1892 : f32 = u_xlat48.x;
        let x_1894 : f32 = u_xlat70;
        u_xlat48.x = ((x_1890 * x_1892) + x_1894);
        let x_1898 : vec4<f32> = u_xlat16;
        let x_1899 : vec2<f32> = vec2<f32>(x_1898.x, x_1898.y);
        let x_1901 : f32 = u_xlat3.z;
        txVec16 = vec3<f32>(x_1899.x, x_1899.y, x_1901);
        let x_1909 : vec3<f32> = txVec16;
        let x_1911 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1909.xy, x_1909.z);
        u_xlat69 = x_1911;
        let x_1913 : f32 = u_xlat18.w;
        let x_1914 : f32 = u_xlat69;
        let x_1917 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_1913 * x_1914) + x_1917);
        let x_1921 : vec4<f32> = u_xlat14;
        let x_1922 : vec2<f32> = vec2<f32>(x_1921.x, x_1921.y);
        let x_1924 : f32 = u_xlat3.z;
        txVec17 = vec3<f32>(x_1922.x, x_1922.y, x_1924);
        let x_1931 : vec3<f32> = txVec17;
        let x_1933 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1931.xy, x_1931.z);
        u_xlat69 = x_1933;
        let x_1935 : f32 = u_xlat19.x;
        let x_1936 : f32 = u_xlat69;
        let x_1939 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_1935 * x_1936) + x_1939);
        let x_1943 : vec4<f32> = u_xlat14;
        let x_1944 : vec2<f32> = vec2<f32>(x_1943.z, x_1943.w);
        let x_1946 : f32 = u_xlat3.z;
        txVec18 = vec3<f32>(x_1944.x, x_1944.y, x_1946);
        let x_1953 : vec3<f32> = txVec18;
        let x_1955 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1953.xy, x_1953.z);
        u_xlat69 = x_1955;
        let x_1957 : f32 = u_xlat19.y;
        let x_1958 : f32 = u_xlat69;
        let x_1961 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_1957 * x_1958) + x_1961);
        let x_1965 : vec4<f32> = u_xlat15;
        let x_1966 : vec2<f32> = vec2<f32>(x_1965.x, x_1965.y);
        let x_1968 : f32 = u_xlat3.z;
        txVec19 = vec3<f32>(x_1966.x, x_1966.y, x_1968);
        let x_1975 : vec3<f32> = txVec19;
        let x_1977 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1975.xy, x_1975.z);
        u_xlat69 = x_1977;
        let x_1979 : f32 = u_xlat19.z;
        let x_1980 : f32 = u_xlat69;
        let x_1983 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_1979 * x_1980) + x_1983);
        let x_1987 : vec4<f32> = u_xlat16;
        let x_1988 : vec2<f32> = vec2<f32>(x_1987.z, x_1987.w);
        let x_1990 : f32 = u_xlat3.z;
        txVec20 = vec3<f32>(x_1988.x, x_1988.y, x_1990);
        let x_1997 : vec3<f32> = txVec20;
        let x_1999 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1997.xy, x_1997.z);
        u_xlat69 = x_1999;
        let x_2001 : f32 = u_xlat19.w;
        let x_2002 : f32 = u_xlat69;
        let x_2005 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_2001 * x_2002) + x_2005);
        let x_2009 : vec4<f32> = u_xlat17;
        let x_2010 : vec2<f32> = vec2<f32>(x_2009.x, x_2009.y);
        let x_2012 : f32 = u_xlat3.z;
        txVec21 = vec3<f32>(x_2010.x, x_2010.y, x_2012);
        let x_2019 : vec3<f32> = txVec21;
        let x_2021 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2019.xy, x_2019.z);
        u_xlat69 = x_2021;
        let x_2023 : f32 = u_xlat20.x;
        let x_2024 : f32 = u_xlat69;
        let x_2027 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_2023 * x_2024) + x_2027);
        let x_2031 : vec4<f32> = u_xlat17;
        let x_2032 : vec2<f32> = vec2<f32>(x_2031.z, x_2031.w);
        let x_2034 : f32 = u_xlat3.z;
        txVec22 = vec3<f32>(x_2032.x, x_2032.y, x_2034);
        let x_2041 : vec3<f32> = txVec22;
        let x_2043 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2041.xy, x_2041.z);
        u_xlat69 = x_2043;
        let x_2045 : f32 = u_xlat20.y;
        let x_2046 : f32 = u_xlat69;
        let x_2049 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_2045 * x_2046) + x_2049);
        let x_2053 : vec2<f32> = u_xlat30;
        let x_2055 : f32 = u_xlat3.z;
        txVec23 = vec3<f32>(x_2053.x, x_2053.y, x_2055);
        let x_2062 : vec3<f32> = txVec23;
        let x_2064 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2062.xy, x_2062.z);
        u_xlat69 = x_2064;
        let x_2066 : f32 = u_xlat20.z;
        let x_2067 : f32 = u_xlat69;
        let x_2070 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_2066 * x_2067) + x_2070);
        let x_2074 : vec2<f32> = u_xlat57;
        let x_2076 : f32 = u_xlat3.z;
        txVec24 = vec3<f32>(x_2074.x, x_2074.y, x_2076);
        let x_2083 : vec3<f32> = txVec24;
        let x_2085 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2083.xy, x_2083.z);
        u_xlat69 = x_2085;
        let x_2087 : f32 = u_xlat20.w;
        let x_2088 : f32 = u_xlat69;
        let x_2091 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_2087 * x_2088) + x_2091);
        let x_2095 : vec4<f32> = u_xlat12;
        let x_2096 : vec2<f32> = vec2<f32>(x_2095.x, x_2095.y);
        let x_2098 : f32 = u_xlat3.z;
        txVec25 = vec3<f32>(x_2096.x, x_2096.y, x_2098);
        let x_2105 : vec3<f32> = txVec25;
        let x_2107 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2105.xy, x_2105.z);
        u_xlat69 = x_2107;
        let x_2109 : f32 = u_xlat8.x;
        let x_2110 : f32 = u_xlat69;
        let x_2113 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_2109 * x_2110) + x_2113);
        let x_2117 : vec4<f32> = u_xlat12;
        let x_2118 : vec2<f32> = vec2<f32>(x_2117.z, x_2117.w);
        let x_2120 : f32 = u_xlat3.z;
        txVec26 = vec3<f32>(x_2118.x, x_2118.y, x_2120);
        let x_2127 : vec3<f32> = txVec26;
        let x_2129 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2127.xy, x_2127.z);
        u_xlat69 = x_2129;
        let x_2131 : f32 = u_xlat8.y;
        let x_2132 : f32 = u_xlat69;
        let x_2135 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_2131 * x_2132) + x_2135);
        let x_2139 : vec2<f32> = u_xlat52;
        let x_2141 : f32 = u_xlat3.z;
        txVec27 = vec3<f32>(x_2139.x, x_2139.y, x_2141);
        let x_2148 : vec3<f32> = txVec27;
        let x_2150 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2148.xy, x_2148.z);
        u_xlat69 = x_2150;
        let x_2152 : f32 = u_xlat8.z;
        let x_2153 : f32 = u_xlat69;
        let x_2156 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_2152 * x_2153) + x_2156);
        let x_2160 : vec4<f32> = u_xlat6;
        let x_2161 : vec2<f32> = vec2<f32>(x_2160.x, x_2160.y);
        let x_2163 : f32 = u_xlat3.z;
        txVec28 = vec3<f32>(x_2161.x, x_2161.y, x_2163);
        let x_2170 : vec3<f32> = txVec28;
        let x_2172 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2170.xy, x_2170.z);
        u_xlat6.x = x_2172;
        let x_2175 : f32 = u_xlat8.w;
        let x_2177 : f32 = u_xlat6.x;
        let x_2180 : f32 = u_xlat48.x;
        u_xlat67 = ((x_2175 * x_2177) + x_2180);
      }
    }
  } else {
    let x_2184 : vec4<f32> = u_xlat3;
    let x_2185 : vec2<f32> = vec2<f32>(x_2184.x, x_2184.y);
    let x_2187 : f32 = u_xlat3.z;
    txVec29 = vec3<f32>(x_2185.x, x_2185.y, x_2187);
    let x_2194 : vec3<f32> = txVec29;
    let x_2196 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2194.xy, x_2194.z);
    u_xlat67 = x_2196;
  }
  let x_2198 : f32 = x_602.x_MainLightShadowParams.x;
  u_xlat3.x = (-(x_2198) + 1.0f);
  let x_2202 : f32 = u_xlat67;
  let x_2204 : f32 = x_602.x_MainLightShadowParams.x;
  let x_2207 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_2202 * x_2204) + x_2207);
  let x_2212 : f32 = u_xlat3.z;
  u_xlatb24 = (0.0f >= x_2212);
  let x_2216 : f32 = u_xlat3.z;
  u_xlatb45 = (x_2216 >= 1.0f);
  let x_2218 : bool = u_xlatb45;
  let x_2219 : bool = u_xlatb24;
  u_xlatb24 = (x_2218 | x_2219);
  let x_2221 : bool = u_xlatb24;
  if (x_2221) {
    x_2222 = 1.0f;
  } else {
    let x_2227 : f32 = u_xlat3.x;
    x_2222 = x_2227;
  }
  let x_2228 : f32 = x_2222;
  u_xlat3.x = x_2228;
  let x_2230 : vec3<f32> = vs_TEXCOORD7;
  let x_2232 : vec3<f32> = x_126.x_WorldSpaceCameraPos;
  let x_2234 : vec3<f32> = (x_2230 + -(x_2232));
  let x_2235 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2234.x, x_2234.y, x_2234.z, x_2235.w);
  let x_2238 : vec4<f32> = u_xlat6;
  let x_2240 : vec4<f32> = u_xlat6;
  u_xlat24 = dot(vec3<f32>(x_2238.x, x_2238.y, x_2238.z), vec3<f32>(x_2240.x, x_2240.y, x_2240.z));
  let x_2243 : f32 = u_xlat24;
  let x_2245 : f32 = x_602.x_MainLightShadowParams.z;
  let x_2248 : f32 = x_602.x_MainLightShadowParams.w;
  u_xlat24 = ((x_2243 * x_2245) + x_2248);
  let x_2250 : f32 = u_xlat24;
  u_xlat24 = clamp(x_2250, 0.0f, 1.0f);
  let x_2254 : f32 = u_xlat3.x;
  u_xlat45 = (-(x_2254) + 1.0f);
  let x_2257 : f32 = u_xlat24;
  let x_2258 : f32 = u_xlat45;
  let x_2261 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_2257 * x_2258) + x_2261);
  let x_2264 : f32 = u_xlat68;
  let x_2267 : vec4<f32> = x_126.x_MainLightColor;
  let x_2269 : vec3<f32> = (vec3<f32>(x_2264, x_2264, x_2264) * vec3<f32>(x_2267.x, x_2267.y, x_2267.z));
  let x_2270 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2269.x, x_2269.y, x_2269.z, x_2270.w);
  let x_2272 : vec3<f32> = u_xlat2;
  let x_2274 : vec4<f32> = u_xlat1;
  u_xlat24 = dot(-(x_2272), vec3<f32>(x_2274.x, x_2274.y, x_2274.z));
  let x_2277 : f32 = u_xlat24;
  let x_2278 : f32 = u_xlat24;
  u_xlat24 = (x_2277 + x_2278);
  let x_2280 : vec4<f32> = u_xlat1;
  let x_2282 : f32 = u_xlat24;
  let x_2286 : vec3<f32> = u_xlat2;
  let x_2288 : vec3<f32> = ((vec3<f32>(x_2280.x, x_2280.y, x_2280.z) * -(vec3<f32>(x_2282, x_2282, x_2282))) + -(x_2286));
  let x_2289 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2288.x, x_2288.y, x_2288.z, x_2289.w);
  let x_2291 : vec4<f32> = u_xlat1;
  let x_2293 : vec3<f32> = u_xlat2;
  u_xlat24 = dot(vec3<f32>(x_2291.x, x_2291.y, x_2291.z), x_2293);
  let x_2295 : f32 = u_xlat24;
  u_xlat24 = clamp(x_2295, 0.0f, 1.0f);
  let x_2297 : f32 = u_xlat24;
  u_xlat24 = (-(x_2297) + 1.0f);
  let x_2300 : f32 = u_xlat24;
  let x_2301 : f32 = u_xlat24;
  u_xlat24 = (x_2300 * x_2301);
  let x_2303 : f32 = u_xlat24;
  let x_2304 : f32 = u_xlat24;
  u_xlat24 = (x_2303 * x_2304);
  let x_2307 : f32 = u_xlat0.x;
  u_xlat45 = ((-(x_2307) * 0.699999988f) + 1.700000048f);
  let x_2314 : f32 = u_xlat0.x;
  let x_2315 : f32 = u_xlat45;
  u_xlat0.x = (x_2314 * x_2315);
  let x_2319 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2319 * 6.0f);
  let x_2331 : vec4<f32> = u_xlat8;
  let x_2334 : f32 = u_xlat0.x;
  let x_2335 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2331.x, x_2331.y, x_2331.z), x_2334);
  u_xlat8 = x_2335;
  let x_2337 : f32 = u_xlat8.w;
  u_xlat0.x = (x_2337 + -1.0f);
  let x_2345 : f32 = x_2343.unity_SpecCube0_HDR.w;
  let x_2347 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_2345 * x_2347) + 1.0f);
  let x_2352 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2352, 0.0f);
  let x_2356 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_2356);
  let x_2360 : f32 = u_xlat0.x;
  let x_2362 : f32 = x_2343.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_2360 * x_2362);
  let x_2366 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_2366);
  let x_2370 : f32 = u_xlat0.x;
  let x_2372 : f32 = x_2343.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_2370 * x_2372);
  let x_2375 : vec4<f32> = u_xlat8;
  let x_2377 : vec3<f32> = u_xlat0;
  let x_2379 : vec3<f32> = (vec3<f32>(x_2375.x, x_2375.y, x_2375.z) * vec3<f32>(x_2377.x, x_2377.x, x_2377.x));
  let x_2380 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2379.x, x_2379.y, x_2379.z, x_2380.w);
  let x_2382 : f32 = u_xlat42;
  let x_2384 : f32 = u_xlat42;
  let x_2388 : vec2<f32> = ((vec2<f32>(x_2382, x_2382) * vec2<f32>(x_2384, x_2384)) + vec2<f32>(-1.0f, 1.0f));
  let x_2389 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_2388.x, x_2389.y, x_2388.y);
  let x_2392 : f32 = u_xlat0.z;
  u_xlat42 = (1.0f / x_2392);
  let x_2394 : vec4<f32> = u_xlat5;
  let x_2397 : f32 = u_xlat65;
  let x_2399 : vec3<f32> = (-(vec3<f32>(x_2394.x, x_2394.y, x_2394.z)) + vec3<f32>(x_2397, x_2397, x_2397));
  let x_2400 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2399.x, x_2399.y, x_2399.z, x_2400.w);
  let x_2402 : f32 = u_xlat24;
  let x_2404 : vec4<f32> = u_xlat9;
  let x_2407 : vec4<f32> = u_xlat5;
  let x_2409 : vec3<f32> = ((vec3<f32>(x_2402, x_2402, x_2402) * vec3<f32>(x_2404.x, x_2404.y, x_2404.z)) + vec3<f32>(x_2407.x, x_2407.y, x_2407.z));
  let x_2410 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2409.x, x_2409.y, x_2409.z, x_2410.w);
  let x_2412 : f32 = u_xlat42;
  let x_2414 : vec4<f32> = u_xlat9;
  let x_2416 : vec3<f32> = (vec3<f32>(x_2412, x_2412, x_2412) * vec3<f32>(x_2414.x, x_2414.y, x_2414.z));
  let x_2417 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2416.x, x_2416.y, x_2416.z, x_2417.w);
  let x_2419 : vec4<f32> = u_xlat8;
  let x_2421 : vec4<f32> = u_xlat9;
  let x_2423 : vec3<f32> = (vec3<f32>(x_2419.x, x_2419.y, x_2419.z) * vec3<f32>(x_2421.x, x_2421.y, x_2421.z));
  let x_2424 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2423.x, x_2423.y, x_2423.z, x_2424.w);
  let x_2426 : vec4<f32> = u_xlat4;
  let x_2428 : vec4<f32> = u_xlat7;
  let x_2431 : vec4<f32> = u_xlat8;
  let x_2433 : vec3<f32> = ((vec3<f32>(x_2426.x, x_2426.y, x_2426.z) * vec3<f32>(x_2428.x, x_2428.y, x_2428.z)) + vec3<f32>(x_2431.x, x_2431.y, x_2431.z));
  let x_2434 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2433.x, x_2433.y, x_2433.z, x_2434.w);
  let x_2437 : f32 = u_xlat3.x;
  let x_2439 : f32 = x_2343.unity_LightData.z;
  u_xlat42 = (x_2437 * x_2439);
  let x_2441 : vec4<f32> = u_xlat1;
  let x_2444 : vec4<f32> = x_126.x_MainLightPosition;
  u_xlat65 = dot(vec3<f32>(x_2441.x, x_2441.y, x_2441.z), vec3<f32>(x_2444.x, x_2444.y, x_2444.z));
  let x_2447 : f32 = u_xlat65;
  u_xlat65 = clamp(x_2447, 0.0f, 1.0f);
  let x_2449 : f32 = u_xlat42;
  let x_2450 : f32 = u_xlat65;
  u_xlat42 = (x_2449 * x_2450);
  let x_2452 : f32 = u_xlat42;
  let x_2454 : vec4<f32> = u_xlat6;
  let x_2456 : vec3<f32> = (vec3<f32>(x_2452, x_2452, x_2452) * vec3<f32>(x_2454.x, x_2454.y, x_2454.z));
  let x_2457 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2456.x, x_2456.y, x_2456.z, x_2457.w);
  let x_2459 : vec3<f32> = u_xlat2;
  let x_2461 : vec4<f32> = x_126.x_MainLightPosition;
  let x_2463 : vec3<f32> = (x_2459 + vec3<f32>(x_2461.x, x_2461.y, x_2461.z));
  let x_2464 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2463.x, x_2463.y, x_2463.z, x_2464.w);
  let x_2466 : vec4<f32> = u_xlat6;
  let x_2468 : vec4<f32> = u_xlat6;
  u_xlat42 = dot(vec3<f32>(x_2466.x, x_2466.y, x_2466.z), vec3<f32>(x_2468.x, x_2468.y, x_2468.z));
  let x_2471 : f32 = u_xlat42;
  u_xlat42 = max(x_2471, 1.17549435e-37f);
  let x_2474 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_2474);
  let x_2476 : f32 = u_xlat42;
  let x_2478 : vec4<f32> = u_xlat6;
  let x_2480 : vec3<f32> = (vec3<f32>(x_2476, x_2476, x_2476) * vec3<f32>(x_2478.x, x_2478.y, x_2478.z));
  let x_2481 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2480.x, x_2480.y, x_2480.z, x_2481.w);
  let x_2483 : vec4<f32> = u_xlat1;
  let x_2485 : vec4<f32> = u_xlat6;
  u_xlat42 = dot(vec3<f32>(x_2483.x, x_2483.y, x_2483.z), vec3<f32>(x_2485.x, x_2485.y, x_2485.z));
  let x_2488 : f32 = u_xlat42;
  u_xlat42 = clamp(x_2488, 0.0f, 1.0f);
  let x_2491 : vec4<f32> = x_126.x_MainLightPosition;
  let x_2493 : vec4<f32> = u_xlat6;
  u_xlat65 = dot(vec3<f32>(x_2491.x, x_2491.y, x_2491.z), vec3<f32>(x_2493.x, x_2493.y, x_2493.z));
  let x_2496 : f32 = u_xlat65;
  u_xlat65 = clamp(x_2496, 0.0f, 1.0f);
  let x_2498 : f32 = u_xlat42;
  let x_2499 : f32 = u_xlat42;
  u_xlat42 = (x_2498 * x_2499);
  let x_2501 : f32 = u_xlat42;
  let x_2503 : f32 = u_xlat0.x;
  u_xlat42 = ((x_2501 * x_2503) + 1.000010014f);
  let x_2507 : f32 = u_xlat65;
  let x_2508 : f32 = u_xlat65;
  u_xlat65 = (x_2507 * x_2508);
  let x_2510 : f32 = u_xlat42;
  let x_2511 : f32 = u_xlat42;
  u_xlat42 = (x_2510 * x_2511);
  let x_2513 : f32 = u_xlat65;
  u_xlat65 = max(x_2513, 0.100000001f);
  let x_2516 : f32 = u_xlat42;
  let x_2517 : f32 = u_xlat65;
  u_xlat42 = (x_2516 * x_2517);
  let x_2519 : f32 = u_xlat66;
  let x_2520 : f32 = u_xlat42;
  u_xlat42 = (x_2519 * x_2520);
  let x_2522 : f32 = u_xlat64;
  let x_2523 : f32 = u_xlat42;
  u_xlat42 = (x_2522 / x_2523);
  let x_2525 : vec4<f32> = u_xlat5;
  let x_2527 : f32 = u_xlat42;
  let x_2530 : vec4<f32> = u_xlat7;
  let x_2532 : vec3<f32> = ((vec3<f32>(x_2525.x, x_2525.y, x_2525.z) * vec3<f32>(x_2527, x_2527, x_2527)) + vec3<f32>(x_2530.x, x_2530.y, x_2530.z));
  let x_2533 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2532.x, x_2532.y, x_2532.z, x_2533.w);
  let x_2535 : vec4<f32> = u_xlat3;
  let x_2537 : vec4<f32> = u_xlat6;
  let x_2539 : vec3<f32> = (vec3<f32>(x_2535.x, x_2535.y, x_2535.z) * vec3<f32>(x_2537.x, x_2537.y, x_2537.z));
  let x_2540 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2539.x, x_2539.y, x_2539.z, x_2540.w);
  let x_2543 : f32 = x_126.x_AdditionalLightsCount.x;
  let x_2545 : f32 = x_2343.unity_LightData.y;
  u_xlat42 = min(x_2543, x_2545);
  let x_2548 : f32 = u_xlat42;
  u_xlatu42 = bitcast<u32>(i32(x_2548));
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2560 : u32 = u_xlatu_loop_1;
    let x_2561 : u32 = u_xlatu42;
    if ((x_2560 < x_2561)) {
    } else {
      break;
    }
    let x_2564 : u32 = u_xlatu_loop_1;
    u_xlatu67 = (x_2564 >> 2u);
    let x_2567 : u32 = u_xlatu_loop_1;
    u_xlati69 = bitcast<i32>((x_2567 & 3u));
    let x_2570 : u32 = u_xlatu67;
    let x_2573 : vec4<f32> = x_2343.unity_LightIndices[bitcast<i32>(x_2570)];
    let x_2583 : i32 = u_xlati69;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2588 : vec4<u32> = indexable[x_2583];
    u_xlat67 = dot(x_2573, bitcast<vec4<f32>>(x_2588));
    let x_2592 : f32 = u_xlat67;
    u_xlati67 = i32(x_2592);
    let x_2594 : vec3<f32> = vs_TEXCOORD7;
    let x_2606 : i32 = u_xlati67;
    let x_2608 : vec4<f32> = x_2605.x_AdditionalLightsPosition[x_2606];
    let x_2611 : i32 = u_xlati67;
    let x_2613 : vec4<f32> = x_2605.x_AdditionalLightsPosition[x_2611];
    let x_2615 : vec3<f32> = ((-(x_2594) * vec3<f32>(x_2608.w, x_2608.w, x_2608.w)) + vec3<f32>(x_2613.x, x_2613.y, x_2613.z));
    let x_2616 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2615.x, x_2615.y, x_2615.z, x_2616.w);
    let x_2618 : vec4<f32> = u_xlat8;
    let x_2620 : vec4<f32> = u_xlat8;
    u_xlat69 = dot(vec3<f32>(x_2618.x, x_2618.y, x_2618.z), vec3<f32>(x_2620.x, x_2620.y, x_2620.z));
    let x_2623 : f32 = u_xlat69;
    u_xlat69 = max(x_2623, 6.10351562e-05f);
    let x_2625 : f32 = u_xlat69;
    u_xlat70 = inverseSqrt(x_2625);
    let x_2627 : f32 = u_xlat70;
    let x_2629 : vec4<f32> = u_xlat8;
    let x_2631 : vec3<f32> = (vec3<f32>(x_2627, x_2627, x_2627) * vec3<f32>(x_2629.x, x_2629.y, x_2629.z));
    let x_2632 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2631.x, x_2631.y, x_2631.z, x_2632.w);
    let x_2635 : f32 = u_xlat69;
    u_xlat71 = (1.0f / x_2635);
    let x_2637 : f32 = u_xlat69;
    let x_2638 : i32 = u_xlati67;
    let x_2640 : f32 = x_2605.x_AdditionalLightsAttenuation[x_2638].x;
    u_xlat69 = (x_2637 * x_2640);
    let x_2642 : f32 = u_xlat69;
    let x_2644 : f32 = u_xlat69;
    u_xlat69 = ((-(x_2642) * x_2644) + 1.0f);
    let x_2647 : f32 = u_xlat69;
    u_xlat69 = max(x_2647, 0.0f);
    let x_2649 : f32 = u_xlat69;
    let x_2650 : f32 = u_xlat69;
    u_xlat69 = (x_2649 * x_2650);
    let x_2652 : f32 = u_xlat69;
    let x_2653 : f32 = u_xlat71;
    u_xlat69 = (x_2652 * x_2653);
    let x_2655 : i32 = u_xlati67;
    let x_2657 : vec4<f32> = x_2605.x_AdditionalLightsSpotDir[x_2655];
    let x_2659 : vec4<f32> = u_xlat9;
    u_xlat71 = dot(vec3<f32>(x_2657.x, x_2657.y, x_2657.z), vec3<f32>(x_2659.x, x_2659.y, x_2659.z));
    let x_2662 : f32 = u_xlat71;
    let x_2663 : i32 = u_xlati67;
    let x_2665 : f32 = x_2605.x_AdditionalLightsAttenuation[x_2663].z;
    let x_2667 : i32 = u_xlati67;
    let x_2669 : f32 = x_2605.x_AdditionalLightsAttenuation[x_2667].w;
    u_xlat71 = ((x_2662 * x_2665) + x_2669);
    let x_2671 : f32 = u_xlat71;
    u_xlat71 = clamp(x_2671, 0.0f, 1.0f);
    let x_2673 : f32 = u_xlat71;
    let x_2674 : f32 = u_xlat71;
    u_xlat71 = (x_2673 * x_2674);
    let x_2676 : f32 = u_xlat69;
    let x_2677 : f32 = u_xlat71;
    u_xlat69 = (x_2676 * x_2677);
    let x_2679 : f32 = u_xlat68;
    let x_2681 : i32 = u_xlati67;
    let x_2683 : vec4<f32> = x_2605.x_AdditionalLightsColor[x_2681];
    let x_2685 : vec3<f32> = (vec3<f32>(x_2679, x_2679, x_2679) * vec3<f32>(x_2683.x, x_2683.y, x_2683.z));
    let x_2686 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2685.x, x_2685.y, x_2685.z, x_2686.w);
    let x_2688 : vec4<f32> = u_xlat1;
    let x_2690 : vec4<f32> = u_xlat9;
    u_xlat67 = dot(vec3<f32>(x_2688.x, x_2688.y, x_2688.z), vec3<f32>(x_2690.x, x_2690.y, x_2690.z));
    let x_2693 : f32 = u_xlat67;
    u_xlat67 = clamp(x_2693, 0.0f, 1.0f);
    let x_2695 : f32 = u_xlat67;
    let x_2696 : f32 = u_xlat69;
    u_xlat67 = (x_2695 * x_2696);
    let x_2698 : f32 = u_xlat67;
    let x_2700 : vec4<f32> = u_xlat10;
    let x_2702 : vec3<f32> = (vec3<f32>(x_2698, x_2698, x_2698) * vec3<f32>(x_2700.x, x_2700.y, x_2700.z));
    let x_2703 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2702.x, x_2702.y, x_2702.z, x_2703.w);
    let x_2705 : vec4<f32> = u_xlat8;
    let x_2707 : f32 = u_xlat70;
    let x_2710 : vec3<f32> = u_xlat2;
    let x_2711 : vec3<f32> = ((vec3<f32>(x_2705.x, x_2705.y, x_2705.z) * vec3<f32>(x_2707, x_2707, x_2707)) + x_2710);
    let x_2712 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2711.x, x_2711.y, x_2711.z, x_2712.w);
    let x_2714 : vec4<f32> = u_xlat8;
    let x_2716 : vec4<f32> = u_xlat8;
    u_xlat67 = dot(vec3<f32>(x_2714.x, x_2714.y, x_2714.z), vec3<f32>(x_2716.x, x_2716.y, x_2716.z));
    let x_2719 : f32 = u_xlat67;
    u_xlat67 = max(x_2719, 1.17549435e-37f);
    let x_2721 : f32 = u_xlat67;
    u_xlat67 = inverseSqrt(x_2721);
    let x_2723 : f32 = u_xlat67;
    let x_2725 : vec4<f32> = u_xlat8;
    let x_2727 : vec3<f32> = (vec3<f32>(x_2723, x_2723, x_2723) * vec3<f32>(x_2725.x, x_2725.y, x_2725.z));
    let x_2728 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2727.x, x_2727.y, x_2727.z, x_2728.w);
    let x_2730 : vec4<f32> = u_xlat1;
    let x_2732 : vec4<f32> = u_xlat8;
    u_xlat67 = dot(vec3<f32>(x_2730.x, x_2730.y, x_2730.z), vec3<f32>(x_2732.x, x_2732.y, x_2732.z));
    let x_2735 : f32 = u_xlat67;
    u_xlat67 = clamp(x_2735, 0.0f, 1.0f);
    let x_2737 : vec4<f32> = u_xlat9;
    let x_2739 : vec4<f32> = u_xlat8;
    u_xlat69 = dot(vec3<f32>(x_2737.x, x_2737.y, x_2737.z), vec3<f32>(x_2739.x, x_2739.y, x_2739.z));
    let x_2742 : f32 = u_xlat69;
    u_xlat69 = clamp(x_2742, 0.0f, 1.0f);
    let x_2744 : f32 = u_xlat67;
    let x_2745 : f32 = u_xlat67;
    u_xlat67 = (x_2744 * x_2745);
    let x_2747 : f32 = u_xlat67;
    let x_2749 : f32 = u_xlat0.x;
    u_xlat67 = ((x_2747 * x_2749) + 1.000010014f);
    let x_2752 : f32 = u_xlat69;
    let x_2753 : f32 = u_xlat69;
    u_xlat69 = (x_2752 * x_2753);
    let x_2755 : f32 = u_xlat67;
    let x_2756 : f32 = u_xlat67;
    u_xlat67 = (x_2755 * x_2756);
    let x_2758 : f32 = u_xlat69;
    u_xlat69 = max(x_2758, 0.100000001f);
    let x_2760 : f32 = u_xlat67;
    let x_2761 : f32 = u_xlat69;
    u_xlat67 = (x_2760 * x_2761);
    let x_2763 : f32 = u_xlat66;
    let x_2764 : f32 = u_xlat67;
    u_xlat67 = (x_2763 * x_2764);
    let x_2766 : f32 = u_xlat64;
    let x_2767 : f32 = u_xlat67;
    u_xlat67 = (x_2766 / x_2767);
    let x_2769 : vec4<f32> = u_xlat5;
    let x_2771 : f32 = u_xlat67;
    let x_2774 : vec4<f32> = u_xlat7;
    let x_2776 : vec3<f32> = ((vec3<f32>(x_2769.x, x_2769.y, x_2769.z) * vec3<f32>(x_2771, x_2771, x_2771)) + vec3<f32>(x_2774.x, x_2774.y, x_2774.z));
    let x_2777 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2776.x, x_2776.y, x_2776.z, x_2777.w);
    let x_2779 : vec4<f32> = u_xlat8;
    let x_2781 : vec4<f32> = u_xlat10;
    let x_2784 : vec4<f32> = u_xlat6;
    let x_2786 : vec3<f32> = ((vec3<f32>(x_2779.x, x_2779.y, x_2779.z) * vec3<f32>(x_2781.x, x_2781.y, x_2781.z)) + vec3<f32>(x_2784.x, x_2784.y, x_2784.z));
    let x_2787 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2786.x, x_2786.y, x_2786.z, x_2787.w);

    continuing {
      let x_2789 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2789 + bitcast<u32>(1i));
    }
  }
  let x_2791 : vec4<f32> = u_xlat4;
  let x_2793 : f32 = u_xlat21;
  let x_2796 : vec4<f32> = u_xlat3;
  u_xlat0 = ((vec3<f32>(x_2791.x, x_2791.y, x_2791.z) * vec3<f32>(x_2793, x_2793, x_2793)) + vec3<f32>(x_2796.x, x_2796.y, x_2796.z));
  let x_2799 : vec4<f32> = u_xlat6;
  let x_2801 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_2799.x, x_2799.y, x_2799.z) + x_2801);
  let x_2805 : f32 = u_xlat63;
  let x_2807 : vec3<f32> = u_xlat0;
  let x_2808 : vec3<f32> = (vec3<f32>(x_2805, x_2805, x_2805) * x_2807);
  let x_2809 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2808.x, x_2808.y, x_2808.z, x_2809.w);
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

