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

@group(1) @binding(4) var<uniform> x_602 : MainLightShadows;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(10) var samplerunity_Lightmap : sampler;

@group(0) @binding(7) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(8) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(14) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_2303 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_2565 : AdditionalLights;

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
  var x_2182 : f32;
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
  let x_793 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_789.z, x_789.w), x_792);
  let x_794 : vec3<f32> = vec3<f32>(x_793.x, x_793.y, x_793.z);
  let x_795 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_794.x, x_794.y, x_794.z, x_795.w);
  let x_799 : vec4<f32> = x_126.x_ScaledScreenParams;
  let x_800 : vec2<f32> = vec2<f32>(x_799.x, x_799.y);
  let x_804 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_800.x, x_800.y));
  let x_805 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_804.x, x_804.y, x_805.z, x_805.w);
  let x_807 : vec4<f32> = u_xlat6;
  let x_809 : vec4<f32> = hlslcc_FragCoord;
  let x_811 : vec2<f32> = (vec2<f32>(x_807.x, x_807.y) * vec2<f32>(x_809.x, x_809.y));
  let x_812 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_811.x, x_811.y, x_812.z, x_812.w);
  let x_815 : f32 = u_xlat6.y;
  let x_817 : f32 = x_126.x_ScaleBiasRt.x;
  let x_820 : f32 = x_126.x_ScaleBiasRt.y;
  u_xlat64 = ((x_815 * x_817) + x_820);
  let x_822 : f32 = u_xlat64;
  u_xlat6.z = (-(x_822) + 1.0f);
  let x_827 : f32 = u_xlat0.x;
  u_xlat64 = ((-(x_827) * 0.959999979f) + 0.959999979f);
  let x_833 : f32 = u_xlat42;
  let x_834 : f32 = u_xlat64;
  u_xlat65 = (x_833 + -(x_834));
  let x_837 : f32 = u_xlat64;
  let x_839 : vec4<f32> = u_xlat5;
  let x_841 : vec3<f32> = (vec3<f32>(x_837, x_837, x_837) * vec3<f32>(x_839.x, x_839.y, x_839.z));
  let x_842 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_841.x, x_841.y, x_841.z, x_842.w);
  let x_844 : vec4<f32> = u_xlat5;
  let x_848 : vec3<f32> = (vec3<f32>(x_844.x, x_844.y, x_844.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_849 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_848.x, x_848.y, x_848.z, x_849.w);
  let x_851 : vec3<f32> = u_xlat0;
  let x_853 : vec4<f32> = u_xlat5;
  let x_858 : vec3<f32> = ((vec3<f32>(x_851.x, x_851.x, x_851.x) * vec3<f32>(x_853.x, x_853.y, x_853.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_859 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_858.x, x_858.y, x_858.z, x_859.w);
  let x_861 : f32 = u_xlat42;
  u_xlat0.x = (-(x_861) + 1.0f);
  let x_866 : f32 = u_xlat0.x;
  let x_868 : f32 = u_xlat0.x;
  u_xlat42 = (x_866 * x_868);
  let x_870 : f32 = u_xlat42;
  u_xlat42 = max(x_870, 0.0078125f);
  let x_873 : f32 = u_xlat42;
  let x_874 : f32 = u_xlat42;
  u_xlat64 = (x_873 * x_874);
  let x_876 : f32 = u_xlat65;
  u_xlat65 = (x_876 + 1.0f);
  let x_878 : f32 = u_xlat65;
  u_xlat65 = clamp(x_878, 0.0f, 1.0f);
  let x_881 : f32 = u_xlat42;
  u_xlat66 = ((x_881 * 4.0f) + 2.0f);
  let x_890 : vec4<f32> = u_xlat6;
  let x_893 : f32 = x_126.x_GlobalMipBias.x;
  let x_894 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_890.x, x_890.z), x_893);
  u_xlat67 = x_894.x;
  let x_897 : f32 = u_xlat67;
  u_xlat68 = (x_897 + -1.0f);
  let x_900 : f32 = x_126.x_AmbientOcclusionParam.w;
  let x_901 : f32 = u_xlat68;
  u_xlat68 = ((x_900 * x_901) + 1.0f);
  let x_904 : f32 = u_xlat21;
  let x_905 : f32 = u_xlat67;
  u_xlat21 = min(x_904, x_905);
  let x_909 : f32 = x_602.x_MainLightShadowParams.y;
  u_xlatb67 = (0.0f < x_909);
  let x_911 : bool = u_xlatb67;
  if (x_911) {
    let x_915 : f32 = x_602.x_MainLightShadowParams.y;
    u_xlatb67 = (x_915 == 1.0f);
    let x_917 : bool = u_xlatb67;
    if (x_917) {
      let x_920 : vec4<f32> = u_xlat3;
      let x_923 : vec4<f32> = x_602.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_920.x, x_920.y, x_920.x, x_920.y) + x_923);
      let x_926 : vec4<f32> = u_xlat6;
      let x_927 : vec2<f32> = vec2<f32>(x_926.x, x_926.y);
      let x_929 : f32 = u_xlat3.z;
      txVec0 = vec3<f32>(x_927.x, x_927.y, x_929);
      let x_941 : vec3<f32> = txVec0;
      let x_943 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_941.xy, x_941.z);
      u_xlat8.x = x_943;
      let x_946 : vec4<f32> = u_xlat6;
      let x_947 : vec2<f32> = vec2<f32>(x_946.z, x_946.w);
      let x_949 : f32 = u_xlat3.z;
      txVec1 = vec3<f32>(x_947.x, x_947.y, x_949);
      let x_956 : vec3<f32> = txVec1;
      let x_958 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_956.xy, x_956.z);
      u_xlat8.y = x_958;
      let x_960 : vec4<f32> = u_xlat3;
      let x_963 : vec4<f32> = x_602.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_960.x, x_960.y, x_960.x, x_960.y) + x_963);
      let x_966 : vec4<f32> = u_xlat6;
      let x_967 : vec2<f32> = vec2<f32>(x_966.x, x_966.y);
      let x_969 : f32 = u_xlat3.z;
      txVec2 = vec3<f32>(x_967.x, x_967.y, x_969);
      let x_976 : vec3<f32> = txVec2;
      let x_978 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_976.xy, x_976.z);
      u_xlat8.z = x_978;
      let x_981 : vec4<f32> = u_xlat6;
      let x_982 : vec2<f32> = vec2<f32>(x_981.z, x_981.w);
      let x_984 : f32 = u_xlat3.z;
      txVec3 = vec3<f32>(x_982.x, x_982.y, x_984);
      let x_991 : vec3<f32> = txVec3;
      let x_993 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_991.xy, x_991.z);
      u_xlat8.w = x_993;
      let x_995 : vec4<f32> = u_xlat8;
      u_xlat67 = dot(x_995, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_1002 : f32 = x_602.x_MainLightShadowParams.y;
      u_xlatb6 = (x_1002 == 2.0f);
      let x_1004 : bool = u_xlatb6;
      if (x_1004) {
        let x_1007 : vec4<f32> = u_xlat3;
        let x_1010 : vec4<f32> = x_602.x_MainLightShadowmapSize;
        let x_1013 : vec2<f32> = ((vec2<f32>(x_1007.x, x_1007.y) * vec2<f32>(x_1010.z, x_1010.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1014 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1013.x, x_1013.y, x_1014.z, x_1014.w);
        let x_1016 : vec4<f32> = u_xlat6;
        let x_1018 : vec2<f32> = floor(vec2<f32>(x_1016.x, x_1016.y));
        let x_1019 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1018.x, x_1018.y, x_1019.z, x_1019.w);
        let x_1023 : vec4<f32> = u_xlat3;
        let x_1026 : vec4<f32> = x_602.x_MainLightShadowmapSize;
        let x_1029 : vec4<f32> = u_xlat6;
        u_xlat48 = ((vec2<f32>(x_1023.x, x_1023.y) * vec2<f32>(x_1026.z, x_1026.w)) + -(vec2<f32>(x_1029.x, x_1029.y)));
        let x_1033 : vec2<f32> = u_xlat48;
        u_xlat8 = (vec4<f32>(x_1033.x, x_1033.x, x_1033.y, x_1033.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1037 : vec4<f32> = u_xlat8;
        let x_1039 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1037.x, x_1037.x, x_1037.z, x_1037.z) * vec4<f32>(x_1039.x, x_1039.x, x_1039.z, x_1039.z));
        let x_1042 : vec4<f32> = u_xlat9;
        let x_1046 : vec2<f32> = (vec2<f32>(x_1042.y, x_1042.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_1047 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1046.x, x_1047.y, x_1046.y, x_1047.w);
        let x_1049 : vec4<f32> = u_xlat9;
        let x_1052 : vec2<f32> = u_xlat48;
        let x_1054 : vec2<f32> = ((vec2<f32>(x_1049.x, x_1049.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1052));
        let x_1055 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1054.x, x_1054.y, x_1055.z, x_1055.w);
        let x_1058 : vec2<f32> = u_xlat48;
        u_xlat51 = (-(x_1058) + vec2<f32>(1.0f, 1.0f));
        let x_1061 : vec2<f32> = u_xlat48;
        let x_1063 : vec2<f32> = min(x_1061, vec2<f32>(0.0f, 0.0f));
        let x_1064 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1063.x, x_1063.y, x_1064.z, x_1064.w);
        let x_1066 : vec4<f32> = u_xlat10;
        let x_1069 : vec4<f32> = u_xlat10;
        let x_1072 : vec2<f32> = u_xlat51;
        let x_1073 : vec2<f32> = ((-(vec2<f32>(x_1066.x, x_1066.y)) * vec2<f32>(x_1069.x, x_1069.y)) + x_1072);
        let x_1074 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1073.x, x_1073.y, x_1074.z, x_1074.w);
        let x_1076 : vec2<f32> = u_xlat48;
        u_xlat48 = max(x_1076, vec2<f32>(0.0f, 0.0f));
        let x_1078 : vec2<f32> = u_xlat48;
        let x_1080 : vec2<f32> = u_xlat48;
        let x_1082 : vec4<f32> = u_xlat8;
        u_xlat48 = ((-(x_1078) * x_1080) + vec2<f32>(x_1082.y, x_1082.w));
        let x_1085 : vec4<f32> = u_xlat10;
        let x_1087 : vec2<f32> = (vec2<f32>(x_1085.x, x_1085.y) + vec2<f32>(1.0f, 1.0f));
        let x_1088 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1087.x, x_1087.y, x_1088.z, x_1088.w);
        let x_1090 : vec2<f32> = u_xlat48;
        u_xlat48 = (x_1090 + vec2<f32>(1.0f, 1.0f));
        let x_1092 : vec4<f32> = u_xlat9;
        let x_1096 : vec2<f32> = (vec2<f32>(x_1092.x, x_1092.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1097 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1096.x, x_1096.y, x_1097.z, x_1097.w);
        let x_1099 : vec2<f32> = u_xlat51;
        let x_1100 : vec2<f32> = (x_1099 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1101 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1100.x, x_1100.y, x_1101.z, x_1101.w);
        let x_1103 : vec4<f32> = u_xlat10;
        let x_1105 : vec2<f32> = (vec2<f32>(x_1103.x, x_1103.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1106 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1105.x, x_1105.y, x_1106.z, x_1106.w);
        let x_1108 : vec2<f32> = u_xlat48;
        let x_1109 : vec2<f32> = (x_1108 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1110 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1109.x, x_1109.y, x_1110.z, x_1110.w);
        let x_1112 : vec4<f32> = u_xlat8;
        u_xlat48 = (vec2<f32>(x_1112.y, x_1112.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1116 : f32 = u_xlat10.x;
        u_xlat11.z = x_1116;
        let x_1119 : f32 = u_xlat48.x;
        u_xlat11.w = x_1119;
        let x_1122 : f32 = u_xlat12.x;
        u_xlat9.z = x_1122;
        let x_1125 : f32 = u_xlat8.x;
        u_xlat9.w = x_1125;
        let x_1127 : vec4<f32> = u_xlat9;
        let x_1129 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_1127.z, x_1127.w, x_1127.x, x_1127.z) + vec4<f32>(x_1129.z, x_1129.w, x_1129.x, x_1129.z));
        let x_1133 : f32 = u_xlat11.y;
        u_xlat10.z = x_1133;
        let x_1136 : f32 = u_xlat48.y;
        u_xlat10.w = x_1136;
        let x_1139 : f32 = u_xlat9.y;
        u_xlat12.z = x_1139;
        let x_1142 : f32 = u_xlat8.z;
        u_xlat12.w = x_1142;
        let x_1144 : vec4<f32> = u_xlat10;
        let x_1146 : vec4<f32> = u_xlat12;
        let x_1148 : vec3<f32> = (vec3<f32>(x_1144.z, x_1144.y, x_1144.w) + vec3<f32>(x_1146.z, x_1146.y, x_1146.w));
        let x_1149 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1148.x, x_1148.y, x_1148.z, x_1149.w);
        let x_1151 : vec4<f32> = u_xlat9;
        let x_1153 : vec4<f32> = u_xlat13;
        let x_1155 : vec3<f32> = (vec3<f32>(x_1151.x, x_1151.z, x_1151.w) / vec3<f32>(x_1153.z, x_1153.w, x_1153.y));
        let x_1156 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1155.x, x_1155.y, x_1155.z, x_1156.w);
        let x_1158 : vec4<f32> = u_xlat9;
        let x_1164 : vec3<f32> = (vec3<f32>(x_1158.x, x_1158.y, x_1158.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1165 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1164.x, x_1164.y, x_1164.z, x_1165.w);
        let x_1167 : vec4<f32> = u_xlat12;
        let x_1169 : vec4<f32> = u_xlat8;
        let x_1171 : vec3<f32> = (vec3<f32>(x_1167.z, x_1167.y, x_1167.w) / vec3<f32>(x_1169.x, x_1169.y, x_1169.z));
        let x_1172 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1171.x, x_1171.y, x_1171.z, x_1172.w);
        let x_1174 : vec4<f32> = u_xlat10;
        let x_1176 : vec3<f32> = (vec3<f32>(x_1174.x, x_1174.y, x_1174.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1177 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1176.x, x_1176.y, x_1176.z, x_1177.w);
        let x_1179 : vec4<f32> = u_xlat9;
        let x_1182 : vec4<f32> = x_602.x_MainLightShadowmapSize;
        let x_1184 : vec3<f32> = (vec3<f32>(x_1179.y, x_1179.x, x_1179.z) * vec3<f32>(x_1182.x, x_1182.x, x_1182.x));
        let x_1185 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1184.x, x_1184.y, x_1184.z, x_1185.w);
        let x_1187 : vec4<f32> = u_xlat10;
        let x_1190 : vec4<f32> = x_602.x_MainLightShadowmapSize;
        let x_1192 : vec3<f32> = (vec3<f32>(x_1187.x, x_1187.y, x_1187.z) * vec3<f32>(x_1190.y, x_1190.y, x_1190.y));
        let x_1193 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1192.x, x_1192.y, x_1192.z, x_1193.w);
        let x_1196 : f32 = u_xlat10.x;
        u_xlat9.w = x_1196;
        let x_1198 : vec4<f32> = u_xlat6;
        let x_1201 : vec4<f32> = x_602.x_MainLightShadowmapSize;
        let x_1204 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1198.x, x_1198.y, x_1198.x, x_1198.y) * vec4<f32>(x_1201.x, x_1201.y, x_1201.x, x_1201.y)) + vec4<f32>(x_1204.y, x_1204.w, x_1204.x, x_1204.w));
        let x_1207 : vec4<f32> = u_xlat6;
        let x_1210 : vec4<f32> = x_602.x_MainLightShadowmapSize;
        let x_1213 : vec4<f32> = u_xlat9;
        u_xlat48 = ((vec2<f32>(x_1207.x, x_1207.y) * vec2<f32>(x_1210.x, x_1210.y)) + vec2<f32>(x_1213.z, x_1213.w));
        let x_1217 : f32 = u_xlat9.y;
        u_xlat10.w = x_1217;
        let x_1219 : vec4<f32> = u_xlat10;
        let x_1220 : vec2<f32> = vec2<f32>(x_1219.y, x_1219.z);
        let x_1221 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1221.x, x_1220.x, x_1221.z, x_1220.y);
        let x_1223 : vec4<f32> = u_xlat6;
        let x_1226 : vec4<f32> = x_602.x_MainLightShadowmapSize;
        let x_1229 : vec4<f32> = u_xlat9;
        u_xlat12 = ((vec4<f32>(x_1223.x, x_1223.y, x_1223.x, x_1223.y) * vec4<f32>(x_1226.x, x_1226.y, x_1226.x, x_1226.y)) + vec4<f32>(x_1229.x, x_1229.y, x_1229.z, x_1229.y));
        let x_1232 : vec4<f32> = u_xlat6;
        let x_1235 : vec4<f32> = x_602.x_MainLightShadowmapSize;
        let x_1238 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_1232.x, x_1232.y, x_1232.x, x_1232.y) * vec4<f32>(x_1235.x, x_1235.y, x_1235.x, x_1235.y)) + vec4<f32>(x_1238.w, x_1238.y, x_1238.w, x_1238.z));
        let x_1241 : vec4<f32> = u_xlat6;
        let x_1244 : vec4<f32> = x_602.x_MainLightShadowmapSize;
        let x_1247 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1241.x, x_1241.y, x_1241.x, x_1241.y) * vec4<f32>(x_1244.x, x_1244.y, x_1244.x, x_1244.y)) + vec4<f32>(x_1247.x, x_1247.w, x_1247.z, x_1247.w));
        let x_1251 : vec4<f32> = u_xlat8;
        let x_1253 : vec4<f32> = u_xlat13;
        u_xlat14 = (vec4<f32>(x_1251.x, x_1251.x, x_1251.x, x_1251.y) * vec4<f32>(x_1253.z, x_1253.w, x_1253.y, x_1253.z));
        let x_1257 : vec4<f32> = u_xlat8;
        let x_1259 : vec4<f32> = u_xlat13;
        u_xlat15 = (vec4<f32>(x_1257.y, x_1257.y, x_1257.z, x_1257.z) * x_1259);
        let x_1262 : f32 = u_xlat8.z;
        let x_1264 : f32 = u_xlat13.y;
        u_xlat6.x = (x_1262 * x_1264);
        let x_1268 : vec4<f32> = u_xlat11;
        let x_1269 : vec2<f32> = vec2<f32>(x_1268.x, x_1268.y);
        let x_1271 : f32 = u_xlat3.z;
        txVec4 = vec3<f32>(x_1269.x, x_1269.y, x_1271);
        let x_1279 : vec3<f32> = txVec4;
        let x_1281 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1279.xy, x_1279.z);
        u_xlat27 = x_1281;
        let x_1283 : vec4<f32> = u_xlat11;
        let x_1284 : vec2<f32> = vec2<f32>(x_1283.z, x_1283.w);
        let x_1286 : f32 = u_xlat3.z;
        txVec5 = vec3<f32>(x_1284.x, x_1284.y, x_1286);
        let x_1294 : vec3<f32> = txVec5;
        let x_1296 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1294.xy, x_1294.z);
        u_xlat70 = x_1296;
        let x_1297 : f32 = u_xlat70;
        let x_1299 : f32 = u_xlat14.y;
        u_xlat70 = (x_1297 * x_1299);
        let x_1302 : f32 = u_xlat14.x;
        let x_1303 : f32 = u_xlat27;
        let x_1305 : f32 = u_xlat70;
        u_xlat27 = ((x_1302 * x_1303) + x_1305);
        let x_1308 : vec2<f32> = u_xlat48;
        let x_1310 : f32 = u_xlat3.z;
        txVec6 = vec3<f32>(x_1308.x, x_1308.y, x_1310);
        let x_1317 : vec3<f32> = txVec6;
        let x_1319 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1317.xy, x_1317.z);
        u_xlat48.x = x_1319;
        let x_1322 : f32 = u_xlat14.z;
        let x_1324 : f32 = u_xlat48.x;
        let x_1326 : f32 = u_xlat27;
        u_xlat27 = ((x_1322 * x_1324) + x_1326);
        let x_1329 : vec4<f32> = u_xlat10;
        let x_1330 : vec2<f32> = vec2<f32>(x_1329.x, x_1329.y);
        let x_1332 : f32 = u_xlat3.z;
        txVec7 = vec3<f32>(x_1330.x, x_1330.y, x_1332);
        let x_1339 : vec3<f32> = txVec7;
        let x_1341 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1339.xy, x_1339.z);
        u_xlat48.x = x_1341;
        let x_1344 : f32 = u_xlat14.w;
        let x_1346 : f32 = u_xlat48.x;
        let x_1348 : f32 = u_xlat27;
        u_xlat27 = ((x_1344 * x_1346) + x_1348);
        let x_1351 : vec4<f32> = u_xlat12;
        let x_1352 : vec2<f32> = vec2<f32>(x_1351.x, x_1351.y);
        let x_1354 : f32 = u_xlat3.z;
        txVec8 = vec3<f32>(x_1352.x, x_1352.y, x_1354);
        let x_1361 : vec3<f32> = txVec8;
        let x_1363 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1361.xy, x_1361.z);
        u_xlat48.x = x_1363;
        let x_1366 : f32 = u_xlat15.x;
        let x_1368 : f32 = u_xlat48.x;
        let x_1370 : f32 = u_xlat27;
        u_xlat27 = ((x_1366 * x_1368) + x_1370);
        let x_1373 : vec4<f32> = u_xlat12;
        let x_1374 : vec2<f32> = vec2<f32>(x_1373.z, x_1373.w);
        let x_1376 : f32 = u_xlat3.z;
        txVec9 = vec3<f32>(x_1374.x, x_1374.y, x_1376);
        let x_1383 : vec3<f32> = txVec9;
        let x_1385 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1383.xy, x_1383.z);
        u_xlat48.x = x_1385;
        let x_1388 : f32 = u_xlat15.y;
        let x_1390 : f32 = u_xlat48.x;
        let x_1392 : f32 = u_xlat27;
        u_xlat27 = ((x_1388 * x_1390) + x_1392);
        let x_1395 : vec4<f32> = u_xlat10;
        let x_1396 : vec2<f32> = vec2<f32>(x_1395.z, x_1395.w);
        let x_1398 : f32 = u_xlat3.z;
        txVec10 = vec3<f32>(x_1396.x, x_1396.y, x_1398);
        let x_1405 : vec3<f32> = txVec10;
        let x_1407 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1405.xy, x_1405.z);
        u_xlat48.x = x_1407;
        let x_1410 : f32 = u_xlat15.z;
        let x_1412 : f32 = u_xlat48.x;
        let x_1414 : f32 = u_xlat27;
        u_xlat27 = ((x_1410 * x_1412) + x_1414);
        let x_1417 : vec4<f32> = u_xlat9;
        let x_1418 : vec2<f32> = vec2<f32>(x_1417.x, x_1417.y);
        let x_1420 : f32 = u_xlat3.z;
        txVec11 = vec3<f32>(x_1418.x, x_1418.y, x_1420);
        let x_1427 : vec3<f32> = txVec11;
        let x_1429 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1427.xy, x_1427.z);
        u_xlat48.x = x_1429;
        let x_1432 : f32 = u_xlat15.w;
        let x_1434 : f32 = u_xlat48.x;
        let x_1436 : f32 = u_xlat27;
        u_xlat27 = ((x_1432 * x_1434) + x_1436);
        let x_1439 : vec4<f32> = u_xlat9;
        let x_1440 : vec2<f32> = vec2<f32>(x_1439.z, x_1439.w);
        let x_1442 : f32 = u_xlat3.z;
        txVec12 = vec3<f32>(x_1440.x, x_1440.y, x_1442);
        let x_1449 : vec3<f32> = txVec12;
        let x_1451 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1449.xy, x_1449.z);
        u_xlat48.x = x_1451;
        let x_1454 : f32 = u_xlat6.x;
        let x_1456 : f32 = u_xlat48.x;
        let x_1458 : f32 = u_xlat27;
        u_xlat67 = ((x_1454 * x_1456) + x_1458);
      } else {
        let x_1461 : vec4<f32> = u_xlat3;
        let x_1464 : vec4<f32> = x_602.x_MainLightShadowmapSize;
        let x_1467 : vec2<f32> = ((vec2<f32>(x_1461.x, x_1461.y) * vec2<f32>(x_1464.z, x_1464.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1468 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1467.x, x_1467.y, x_1468.z, x_1468.w);
        let x_1470 : vec4<f32> = u_xlat6;
        let x_1472 : vec2<f32> = floor(vec2<f32>(x_1470.x, x_1470.y));
        let x_1473 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1472.x, x_1472.y, x_1473.z, x_1473.w);
        let x_1475 : vec4<f32> = u_xlat3;
        let x_1478 : vec4<f32> = x_602.x_MainLightShadowmapSize;
        let x_1481 : vec4<f32> = u_xlat6;
        u_xlat48 = ((vec2<f32>(x_1475.x, x_1475.y) * vec2<f32>(x_1478.z, x_1478.w)) + -(vec2<f32>(x_1481.x, x_1481.y)));
        let x_1485 : vec2<f32> = u_xlat48;
        u_xlat8 = (vec4<f32>(x_1485.x, x_1485.x, x_1485.y, x_1485.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1488 : vec4<f32> = u_xlat8;
        let x_1490 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1488.x, x_1488.x, x_1488.z, x_1488.z) * vec4<f32>(x_1490.x, x_1490.x, x_1490.z, x_1490.z));
        let x_1493 : vec4<f32> = u_xlat9;
        let x_1497 : vec2<f32> = (vec2<f32>(x_1493.y, x_1493.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1498 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1498.x, x_1497.x, x_1498.z, x_1497.y);
        let x_1500 : vec4<f32> = u_xlat9;
        let x_1503 : vec2<f32> = u_xlat48;
        let x_1505 : vec2<f32> = ((vec2<f32>(x_1500.x, x_1500.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1503));
        let x_1506 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1505.x, x_1506.y, x_1505.y, x_1506.w);
        let x_1508 : vec2<f32> = u_xlat48;
        let x_1510 : vec2<f32> = (-(x_1508) + vec2<f32>(1.0f, 1.0f));
        let x_1511 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1510.x, x_1510.y, x_1511.z, x_1511.w);
        let x_1513 : vec2<f32> = u_xlat48;
        u_xlat51 = min(x_1513, vec2<f32>(0.0f, 0.0f));
        let x_1515 : vec2<f32> = u_xlat51;
        let x_1517 : vec2<f32> = u_xlat51;
        let x_1519 : vec4<f32> = u_xlat9;
        let x_1521 : vec2<f32> = ((-(x_1515) * x_1517) + vec2<f32>(x_1519.x, x_1519.y));
        let x_1522 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1521.x, x_1521.y, x_1522.z, x_1522.w);
        let x_1524 : vec2<f32> = u_xlat48;
        u_xlat51 = max(x_1524, vec2<f32>(0.0f, 0.0f));
        let x_1527 : vec2<f32> = u_xlat51;
        let x_1529 : vec2<f32> = u_xlat51;
        let x_1531 : vec4<f32> = u_xlat8;
        let x_1533 : vec2<f32> = ((-(x_1527) * x_1529) + vec2<f32>(x_1531.y, x_1531.w));
        let x_1534 : vec3<f32> = u_xlat29;
        u_xlat29 = vec3<f32>(x_1533.x, x_1534.y, x_1533.y);
        let x_1536 : vec4<f32> = u_xlat9;
        let x_1539 : vec2<f32> = (vec2<f32>(x_1536.x, x_1536.y) + vec2<f32>(2.0f, 2.0f));
        let x_1540 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1539.x, x_1539.y, x_1540.z, x_1540.w);
        let x_1542 : vec3<f32> = u_xlat29;
        let x_1544 : vec2<f32> = (vec2<f32>(x_1542.x, x_1542.z) + vec2<f32>(2.0f, 2.0f));
        let x_1545 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1545.x, x_1544.x, x_1545.z, x_1544.y);
        let x_1548 : f32 = u_xlat8.y;
        u_xlat11.z = (x_1548 * 0.081632003f);
        let x_1552 : vec4<f32> = u_xlat8;
        let x_1555 : vec3<f32> = (vec3<f32>(x_1552.z, x_1552.x, x_1552.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_1556 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1555.x, x_1555.y, x_1555.z, x_1556.w);
        let x_1558 : vec4<f32> = u_xlat9;
        let x_1561 : vec2<f32> = (vec2<f32>(x_1558.x, x_1558.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1562 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1561.x, x_1561.y, x_1562.z, x_1562.w);
        let x_1565 : f32 = u_xlat12.y;
        u_xlat11.x = x_1565;
        let x_1567 : vec2<f32> = u_xlat48;
        let x_1574 : vec2<f32> = ((vec2<f32>(x_1567.x, x_1567.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1575 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1575.x, x_1574.x, x_1575.z, x_1574.y);
        let x_1577 : vec2<f32> = u_xlat48;
        let x_1581 : vec2<f32> = ((vec2<f32>(x_1577.x, x_1577.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1582 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1581.x, x_1582.y, x_1581.y, x_1582.w);
        let x_1585 : f32 = u_xlat8.x;
        u_xlat9.y = x_1585;
        let x_1588 : f32 = u_xlat10.y;
        u_xlat9.w = x_1588;
        let x_1590 : vec4<f32> = u_xlat9;
        let x_1591 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_1590 + x_1591);
        let x_1593 : vec2<f32> = u_xlat48;
        let x_1596 : vec2<f32> = ((vec2<f32>(x_1593.y, x_1593.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1597 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1597.x, x_1596.x, x_1597.z, x_1596.y);
        let x_1599 : vec2<f32> = u_xlat48;
        let x_1602 : vec2<f32> = ((vec2<f32>(x_1599.y, x_1599.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1603 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1602.x, x_1603.y, x_1602.y, x_1603.w);
        let x_1606 : f32 = u_xlat8.y;
        u_xlat10.y = x_1606;
        let x_1608 : vec4<f32> = u_xlat10;
        let x_1609 : vec4<f32> = u_xlat12;
        u_xlat8 = (x_1608 + x_1609);
        let x_1611 : vec4<f32> = u_xlat9;
        let x_1612 : vec4<f32> = u_xlat11;
        u_xlat9 = (x_1611 / x_1612);
        let x_1614 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1614 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1620 : vec4<f32> = u_xlat10;
        let x_1621 : vec4<f32> = u_xlat8;
        u_xlat10 = (x_1620 / x_1621);
        let x_1623 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1623 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1625 : vec4<f32> = u_xlat9;
        let x_1628 : vec4<f32> = x_602.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1625.w, x_1625.x, x_1625.y, x_1625.z) * vec4<f32>(x_1628.x, x_1628.x, x_1628.x, x_1628.x));
        let x_1631 : vec4<f32> = u_xlat10;
        let x_1634 : vec4<f32> = x_602.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1631.x, x_1631.w, x_1631.y, x_1631.z) * vec4<f32>(x_1634.y, x_1634.y, x_1634.y, x_1634.y));
        let x_1637 : vec4<f32> = u_xlat9;
        let x_1638 : vec3<f32> = vec3<f32>(x_1637.y, x_1637.z, x_1637.w);
        let x_1639 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1638.x, x_1639.y, x_1638.y, x_1638.z);
        let x_1642 : f32 = u_xlat10.x;
        u_xlat12.y = x_1642;
        let x_1644 : vec4<f32> = u_xlat6;
        let x_1647 : vec4<f32> = x_602.x_MainLightShadowmapSize;
        let x_1650 : vec4<f32> = u_xlat12;
        u_xlat13 = ((vec4<f32>(x_1644.x, x_1644.y, x_1644.x, x_1644.y) * vec4<f32>(x_1647.x, x_1647.y, x_1647.x, x_1647.y)) + vec4<f32>(x_1650.x, x_1650.y, x_1650.z, x_1650.y));
        let x_1653 : vec4<f32> = u_xlat6;
        let x_1656 : vec4<f32> = x_602.x_MainLightShadowmapSize;
        let x_1659 : vec4<f32> = u_xlat12;
        u_xlat48 = ((vec2<f32>(x_1653.x, x_1653.y) * vec2<f32>(x_1656.x, x_1656.y)) + vec2<f32>(x_1659.w, x_1659.y));
        let x_1663 : f32 = u_xlat12.y;
        u_xlat9.y = x_1663;
        let x_1666 : f32 = u_xlat10.z;
        u_xlat12.y = x_1666;
        let x_1668 : vec4<f32> = u_xlat6;
        let x_1671 : vec4<f32> = x_602.x_MainLightShadowmapSize;
        let x_1674 : vec4<f32> = u_xlat12;
        u_xlat14 = ((vec4<f32>(x_1668.x, x_1668.y, x_1668.x, x_1668.y) * vec4<f32>(x_1671.x, x_1671.y, x_1671.x, x_1671.y)) + vec4<f32>(x_1674.x, x_1674.y, x_1674.z, x_1674.y));
        let x_1677 : vec4<f32> = u_xlat6;
        let x_1680 : vec4<f32> = x_602.x_MainLightShadowmapSize;
        let x_1683 : vec4<f32> = u_xlat12;
        let x_1685 : vec2<f32> = ((vec2<f32>(x_1677.x, x_1677.y) * vec2<f32>(x_1680.x, x_1680.y)) + vec2<f32>(x_1683.w, x_1683.y));
        let x_1686 : vec4<f32> = u_xlat15;
        u_xlat15 = vec4<f32>(x_1685.x, x_1685.y, x_1686.z, x_1686.w);
        let x_1689 : f32 = u_xlat12.y;
        u_xlat9.z = x_1689;
        let x_1692 : vec4<f32> = u_xlat6;
        let x_1695 : vec4<f32> = x_602.x_MainLightShadowmapSize;
        let x_1698 : vec4<f32> = u_xlat9;
        u_xlat16 = ((vec4<f32>(x_1692.x, x_1692.y, x_1692.x, x_1692.y) * vec4<f32>(x_1695.x, x_1695.y, x_1695.x, x_1695.y)) + vec4<f32>(x_1698.x, x_1698.y, x_1698.x, x_1698.z));
        let x_1702 : f32 = u_xlat10.w;
        u_xlat12.y = x_1702;
        let x_1705 : vec4<f32> = u_xlat6;
        let x_1708 : vec4<f32> = x_602.x_MainLightShadowmapSize;
        let x_1711 : vec4<f32> = u_xlat12;
        u_xlat17 = ((vec4<f32>(x_1705.x, x_1705.y, x_1705.x, x_1705.y) * vec4<f32>(x_1708.x, x_1708.y, x_1708.x, x_1708.y)) + vec4<f32>(x_1711.x, x_1711.y, x_1711.z, x_1711.y));
        let x_1715 : vec4<f32> = u_xlat6;
        let x_1718 : vec4<f32> = x_602.x_MainLightShadowmapSize;
        let x_1721 : vec4<f32> = u_xlat12;
        u_xlat30 = ((vec2<f32>(x_1715.x, x_1715.y) * vec2<f32>(x_1718.x, x_1718.y)) + vec2<f32>(x_1721.w, x_1721.y));
        let x_1725 : f32 = u_xlat12.y;
        u_xlat9.w = x_1725;
        let x_1728 : vec4<f32> = u_xlat6;
        let x_1731 : vec4<f32> = x_602.x_MainLightShadowmapSize;
        let x_1734 : vec4<f32> = u_xlat9;
        u_xlat57 = ((vec2<f32>(x_1728.x, x_1728.y) * vec2<f32>(x_1731.x, x_1731.y)) + vec2<f32>(x_1734.x, x_1734.w));
        let x_1737 : vec4<f32> = u_xlat12;
        let x_1738 : vec3<f32> = vec3<f32>(x_1737.x, x_1737.z, x_1737.w);
        let x_1739 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1738.x, x_1739.y, x_1738.y, x_1738.z);
        let x_1741 : vec4<f32> = u_xlat6;
        let x_1744 : vec4<f32> = x_602.x_MainLightShadowmapSize;
        let x_1747 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1741.x, x_1741.y, x_1741.x, x_1741.y) * vec4<f32>(x_1744.x, x_1744.y, x_1744.x, x_1744.y)) + vec4<f32>(x_1747.x, x_1747.y, x_1747.z, x_1747.y));
        let x_1751 : vec4<f32> = u_xlat6;
        let x_1754 : vec4<f32> = x_602.x_MainLightShadowmapSize;
        let x_1757 : vec4<f32> = u_xlat10;
        u_xlat52 = ((vec2<f32>(x_1751.x, x_1751.y) * vec2<f32>(x_1754.x, x_1754.y)) + vec2<f32>(x_1757.w, x_1757.y));
        let x_1761 : f32 = u_xlat9.x;
        u_xlat10.x = x_1761;
        let x_1763 : vec4<f32> = u_xlat6;
        let x_1766 : vec4<f32> = x_602.x_MainLightShadowmapSize;
        let x_1769 : vec4<f32> = u_xlat10;
        let x_1771 : vec2<f32> = ((vec2<f32>(x_1763.x, x_1763.y) * vec2<f32>(x_1766.x, x_1766.y)) + vec2<f32>(x_1769.x, x_1769.y));
        let x_1772 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1771.x, x_1771.y, x_1772.z, x_1772.w);
        let x_1775 : vec4<f32> = u_xlat8;
        let x_1777 : vec4<f32> = u_xlat11;
        u_xlat18 = (vec4<f32>(x_1775.x, x_1775.x, x_1775.x, x_1775.x) * x_1777);
        let x_1780 : vec4<f32> = u_xlat8;
        let x_1782 : vec4<f32> = u_xlat11;
        u_xlat19 = (vec4<f32>(x_1780.y, x_1780.y, x_1780.y, x_1780.y) * x_1782);
        let x_1785 : vec4<f32> = u_xlat8;
        let x_1787 : vec4<f32> = u_xlat11;
        u_xlat20 = (vec4<f32>(x_1785.z, x_1785.z, x_1785.z, x_1785.z) * x_1787);
        let x_1789 : vec4<f32> = u_xlat8;
        let x_1791 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_1789.w, x_1789.w, x_1789.w, x_1789.w) * x_1791);
        let x_1794 : vec4<f32> = u_xlat13;
        let x_1795 : vec2<f32> = vec2<f32>(x_1794.x, x_1794.y);
        let x_1797 : f32 = u_xlat3.z;
        txVec13 = vec3<f32>(x_1795.x, x_1795.y, x_1797);
        let x_1804 : vec3<f32> = txVec13;
        let x_1806 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1804.xy, x_1804.z);
        u_xlat70 = x_1806;
        let x_1808 : vec4<f32> = u_xlat13;
        let x_1809 : vec2<f32> = vec2<f32>(x_1808.z, x_1808.w);
        let x_1811 : f32 = u_xlat3.z;
        txVec14 = vec3<f32>(x_1809.x, x_1809.y, x_1811);
        let x_1818 : vec3<f32> = txVec14;
        let x_1820 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1818.xy, x_1818.z);
        u_xlat9.x = x_1820;
        let x_1823 : f32 = u_xlat9.x;
        let x_1825 : f32 = u_xlat18.y;
        u_xlat9.x = (x_1823 * x_1825);
        let x_1829 : f32 = u_xlat18.x;
        let x_1830 : f32 = u_xlat70;
        let x_1833 : f32 = u_xlat9.x;
        u_xlat70 = ((x_1829 * x_1830) + x_1833);
        let x_1836 : vec2<f32> = u_xlat48;
        let x_1838 : f32 = u_xlat3.z;
        txVec15 = vec3<f32>(x_1836.x, x_1836.y, x_1838);
        let x_1845 : vec3<f32> = txVec15;
        let x_1847 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1845.xy, x_1845.z);
        u_xlat48.x = x_1847;
        let x_1850 : f32 = u_xlat18.z;
        let x_1852 : f32 = u_xlat48.x;
        let x_1854 : f32 = u_xlat70;
        u_xlat48.x = ((x_1850 * x_1852) + x_1854);
        let x_1858 : vec4<f32> = u_xlat16;
        let x_1859 : vec2<f32> = vec2<f32>(x_1858.x, x_1858.y);
        let x_1861 : f32 = u_xlat3.z;
        txVec16 = vec3<f32>(x_1859.x, x_1859.y, x_1861);
        let x_1869 : vec3<f32> = txVec16;
        let x_1871 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1869.xy, x_1869.z);
        u_xlat69 = x_1871;
        let x_1873 : f32 = u_xlat18.w;
        let x_1874 : f32 = u_xlat69;
        let x_1877 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_1873 * x_1874) + x_1877);
        let x_1881 : vec4<f32> = u_xlat14;
        let x_1882 : vec2<f32> = vec2<f32>(x_1881.x, x_1881.y);
        let x_1884 : f32 = u_xlat3.z;
        txVec17 = vec3<f32>(x_1882.x, x_1882.y, x_1884);
        let x_1891 : vec3<f32> = txVec17;
        let x_1893 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1891.xy, x_1891.z);
        u_xlat69 = x_1893;
        let x_1895 : f32 = u_xlat19.x;
        let x_1896 : f32 = u_xlat69;
        let x_1899 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_1895 * x_1896) + x_1899);
        let x_1903 : vec4<f32> = u_xlat14;
        let x_1904 : vec2<f32> = vec2<f32>(x_1903.z, x_1903.w);
        let x_1906 : f32 = u_xlat3.z;
        txVec18 = vec3<f32>(x_1904.x, x_1904.y, x_1906);
        let x_1913 : vec3<f32> = txVec18;
        let x_1915 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1913.xy, x_1913.z);
        u_xlat69 = x_1915;
        let x_1917 : f32 = u_xlat19.y;
        let x_1918 : f32 = u_xlat69;
        let x_1921 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_1917 * x_1918) + x_1921);
        let x_1925 : vec4<f32> = u_xlat15;
        let x_1926 : vec2<f32> = vec2<f32>(x_1925.x, x_1925.y);
        let x_1928 : f32 = u_xlat3.z;
        txVec19 = vec3<f32>(x_1926.x, x_1926.y, x_1928);
        let x_1935 : vec3<f32> = txVec19;
        let x_1937 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1935.xy, x_1935.z);
        u_xlat69 = x_1937;
        let x_1939 : f32 = u_xlat19.z;
        let x_1940 : f32 = u_xlat69;
        let x_1943 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_1939 * x_1940) + x_1943);
        let x_1947 : vec4<f32> = u_xlat16;
        let x_1948 : vec2<f32> = vec2<f32>(x_1947.z, x_1947.w);
        let x_1950 : f32 = u_xlat3.z;
        txVec20 = vec3<f32>(x_1948.x, x_1948.y, x_1950);
        let x_1957 : vec3<f32> = txVec20;
        let x_1959 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1957.xy, x_1957.z);
        u_xlat69 = x_1959;
        let x_1961 : f32 = u_xlat19.w;
        let x_1962 : f32 = u_xlat69;
        let x_1965 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_1961 * x_1962) + x_1965);
        let x_1969 : vec4<f32> = u_xlat17;
        let x_1970 : vec2<f32> = vec2<f32>(x_1969.x, x_1969.y);
        let x_1972 : f32 = u_xlat3.z;
        txVec21 = vec3<f32>(x_1970.x, x_1970.y, x_1972);
        let x_1979 : vec3<f32> = txVec21;
        let x_1981 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1979.xy, x_1979.z);
        u_xlat69 = x_1981;
        let x_1983 : f32 = u_xlat20.x;
        let x_1984 : f32 = u_xlat69;
        let x_1987 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_1983 * x_1984) + x_1987);
        let x_1991 : vec4<f32> = u_xlat17;
        let x_1992 : vec2<f32> = vec2<f32>(x_1991.z, x_1991.w);
        let x_1994 : f32 = u_xlat3.z;
        txVec22 = vec3<f32>(x_1992.x, x_1992.y, x_1994);
        let x_2001 : vec3<f32> = txVec22;
        let x_2003 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2001.xy, x_2001.z);
        u_xlat69 = x_2003;
        let x_2005 : f32 = u_xlat20.y;
        let x_2006 : f32 = u_xlat69;
        let x_2009 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_2005 * x_2006) + x_2009);
        let x_2013 : vec2<f32> = u_xlat30;
        let x_2015 : f32 = u_xlat3.z;
        txVec23 = vec3<f32>(x_2013.x, x_2013.y, x_2015);
        let x_2022 : vec3<f32> = txVec23;
        let x_2024 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2022.xy, x_2022.z);
        u_xlat69 = x_2024;
        let x_2026 : f32 = u_xlat20.z;
        let x_2027 : f32 = u_xlat69;
        let x_2030 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_2026 * x_2027) + x_2030);
        let x_2034 : vec2<f32> = u_xlat57;
        let x_2036 : f32 = u_xlat3.z;
        txVec24 = vec3<f32>(x_2034.x, x_2034.y, x_2036);
        let x_2043 : vec3<f32> = txVec24;
        let x_2045 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2043.xy, x_2043.z);
        u_xlat69 = x_2045;
        let x_2047 : f32 = u_xlat20.w;
        let x_2048 : f32 = u_xlat69;
        let x_2051 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_2047 * x_2048) + x_2051);
        let x_2055 : vec4<f32> = u_xlat12;
        let x_2056 : vec2<f32> = vec2<f32>(x_2055.x, x_2055.y);
        let x_2058 : f32 = u_xlat3.z;
        txVec25 = vec3<f32>(x_2056.x, x_2056.y, x_2058);
        let x_2065 : vec3<f32> = txVec25;
        let x_2067 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2065.xy, x_2065.z);
        u_xlat69 = x_2067;
        let x_2069 : f32 = u_xlat8.x;
        let x_2070 : f32 = u_xlat69;
        let x_2073 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_2069 * x_2070) + x_2073);
        let x_2077 : vec4<f32> = u_xlat12;
        let x_2078 : vec2<f32> = vec2<f32>(x_2077.z, x_2077.w);
        let x_2080 : f32 = u_xlat3.z;
        txVec26 = vec3<f32>(x_2078.x, x_2078.y, x_2080);
        let x_2087 : vec3<f32> = txVec26;
        let x_2089 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2087.xy, x_2087.z);
        u_xlat69 = x_2089;
        let x_2091 : f32 = u_xlat8.y;
        let x_2092 : f32 = u_xlat69;
        let x_2095 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_2091 * x_2092) + x_2095);
        let x_2099 : vec2<f32> = u_xlat52;
        let x_2101 : f32 = u_xlat3.z;
        txVec27 = vec3<f32>(x_2099.x, x_2099.y, x_2101);
        let x_2108 : vec3<f32> = txVec27;
        let x_2110 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2108.xy, x_2108.z);
        u_xlat69 = x_2110;
        let x_2112 : f32 = u_xlat8.z;
        let x_2113 : f32 = u_xlat69;
        let x_2116 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_2112 * x_2113) + x_2116);
        let x_2120 : vec4<f32> = u_xlat6;
        let x_2121 : vec2<f32> = vec2<f32>(x_2120.x, x_2120.y);
        let x_2123 : f32 = u_xlat3.z;
        txVec28 = vec3<f32>(x_2121.x, x_2121.y, x_2123);
        let x_2130 : vec3<f32> = txVec28;
        let x_2132 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2130.xy, x_2130.z);
        u_xlat6.x = x_2132;
        let x_2135 : f32 = u_xlat8.w;
        let x_2137 : f32 = u_xlat6.x;
        let x_2140 : f32 = u_xlat48.x;
        u_xlat67 = ((x_2135 * x_2137) + x_2140);
      }
    }
  } else {
    let x_2144 : vec4<f32> = u_xlat3;
    let x_2145 : vec2<f32> = vec2<f32>(x_2144.x, x_2144.y);
    let x_2147 : f32 = u_xlat3.z;
    txVec29 = vec3<f32>(x_2145.x, x_2145.y, x_2147);
    let x_2154 : vec3<f32> = txVec29;
    let x_2156 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2154.xy, x_2154.z);
    u_xlat67 = x_2156;
  }
  let x_2158 : f32 = x_602.x_MainLightShadowParams.x;
  u_xlat3.x = (-(x_2158) + 1.0f);
  let x_2162 : f32 = u_xlat67;
  let x_2164 : f32 = x_602.x_MainLightShadowParams.x;
  let x_2167 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_2162 * x_2164) + x_2167);
  let x_2172 : f32 = u_xlat3.z;
  u_xlatb24 = (0.0f >= x_2172);
  let x_2176 : f32 = u_xlat3.z;
  u_xlatb45 = (x_2176 >= 1.0f);
  let x_2178 : bool = u_xlatb45;
  let x_2179 : bool = u_xlatb24;
  u_xlatb24 = (x_2178 | x_2179);
  let x_2181 : bool = u_xlatb24;
  if (x_2181) {
    x_2182 = 1.0f;
  } else {
    let x_2187 : f32 = u_xlat3.x;
    x_2182 = x_2187;
  }
  let x_2188 : f32 = x_2182;
  u_xlat3.x = x_2188;
  let x_2190 : vec3<f32> = vs_TEXCOORD7;
  let x_2192 : vec3<f32> = x_126.x_WorldSpaceCameraPos;
  let x_2194 : vec3<f32> = (x_2190 + -(x_2192));
  let x_2195 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2194.x, x_2194.y, x_2194.z, x_2195.w);
  let x_2198 : vec4<f32> = u_xlat6;
  let x_2200 : vec4<f32> = u_xlat6;
  u_xlat24 = dot(vec3<f32>(x_2198.x, x_2198.y, x_2198.z), vec3<f32>(x_2200.x, x_2200.y, x_2200.z));
  let x_2203 : f32 = u_xlat24;
  let x_2205 : f32 = x_602.x_MainLightShadowParams.z;
  let x_2208 : f32 = x_602.x_MainLightShadowParams.w;
  u_xlat24 = ((x_2203 * x_2205) + x_2208);
  let x_2210 : f32 = u_xlat24;
  u_xlat24 = clamp(x_2210, 0.0f, 1.0f);
  let x_2214 : f32 = u_xlat3.x;
  u_xlat45 = (-(x_2214) + 1.0f);
  let x_2217 : f32 = u_xlat24;
  let x_2218 : f32 = u_xlat45;
  let x_2221 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_2217 * x_2218) + x_2221);
  let x_2224 : f32 = u_xlat68;
  let x_2227 : vec4<f32> = x_126.x_MainLightColor;
  let x_2229 : vec3<f32> = (vec3<f32>(x_2224, x_2224, x_2224) * vec3<f32>(x_2227.x, x_2227.y, x_2227.z));
  let x_2230 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2229.x, x_2229.y, x_2229.z, x_2230.w);
  let x_2232 : vec3<f32> = u_xlat2;
  let x_2234 : vec4<f32> = u_xlat1;
  u_xlat24 = dot(-(x_2232), vec3<f32>(x_2234.x, x_2234.y, x_2234.z));
  let x_2237 : f32 = u_xlat24;
  let x_2238 : f32 = u_xlat24;
  u_xlat24 = (x_2237 + x_2238);
  let x_2240 : vec4<f32> = u_xlat1;
  let x_2242 : f32 = u_xlat24;
  let x_2246 : vec3<f32> = u_xlat2;
  let x_2248 : vec3<f32> = ((vec3<f32>(x_2240.x, x_2240.y, x_2240.z) * -(vec3<f32>(x_2242, x_2242, x_2242))) + -(x_2246));
  let x_2249 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2248.x, x_2248.y, x_2248.z, x_2249.w);
  let x_2251 : vec4<f32> = u_xlat1;
  let x_2253 : vec3<f32> = u_xlat2;
  u_xlat24 = dot(vec3<f32>(x_2251.x, x_2251.y, x_2251.z), x_2253);
  let x_2255 : f32 = u_xlat24;
  u_xlat24 = clamp(x_2255, 0.0f, 1.0f);
  let x_2257 : f32 = u_xlat24;
  u_xlat24 = (-(x_2257) + 1.0f);
  let x_2260 : f32 = u_xlat24;
  let x_2261 : f32 = u_xlat24;
  u_xlat24 = (x_2260 * x_2261);
  let x_2263 : f32 = u_xlat24;
  let x_2264 : f32 = u_xlat24;
  u_xlat24 = (x_2263 * x_2264);
  let x_2267 : f32 = u_xlat0.x;
  u_xlat45 = ((-(x_2267) * 0.699999988f) + 1.700000048f);
  let x_2274 : f32 = u_xlat0.x;
  let x_2275 : f32 = u_xlat45;
  u_xlat0.x = (x_2274 * x_2275);
  let x_2279 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2279 * 6.0f);
  let x_2291 : vec4<f32> = u_xlat8;
  let x_2294 : f32 = u_xlat0.x;
  let x_2295 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2291.x, x_2291.y, x_2291.z), x_2294);
  u_xlat8 = x_2295;
  let x_2297 : f32 = u_xlat8.w;
  u_xlat0.x = (x_2297 + -1.0f);
  let x_2305 : f32 = x_2303.unity_SpecCube0_HDR.w;
  let x_2307 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_2305 * x_2307) + 1.0f);
  let x_2312 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2312, 0.0f);
  let x_2316 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_2316);
  let x_2320 : f32 = u_xlat0.x;
  let x_2322 : f32 = x_2303.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_2320 * x_2322);
  let x_2326 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_2326);
  let x_2330 : f32 = u_xlat0.x;
  let x_2332 : f32 = x_2303.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_2330 * x_2332);
  let x_2335 : vec4<f32> = u_xlat8;
  let x_2337 : vec3<f32> = u_xlat0;
  let x_2339 : vec3<f32> = (vec3<f32>(x_2335.x, x_2335.y, x_2335.z) * vec3<f32>(x_2337.x, x_2337.x, x_2337.x));
  let x_2340 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2339.x, x_2339.y, x_2339.z, x_2340.w);
  let x_2342 : f32 = u_xlat42;
  let x_2344 : f32 = u_xlat42;
  let x_2348 : vec2<f32> = ((vec2<f32>(x_2342, x_2342) * vec2<f32>(x_2344, x_2344)) + vec2<f32>(-1.0f, 1.0f));
  let x_2349 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_2348.x, x_2349.y, x_2348.y);
  let x_2352 : f32 = u_xlat0.z;
  u_xlat42 = (1.0f / x_2352);
  let x_2354 : vec4<f32> = u_xlat5;
  let x_2357 : f32 = u_xlat65;
  let x_2359 : vec3<f32> = (-(vec3<f32>(x_2354.x, x_2354.y, x_2354.z)) + vec3<f32>(x_2357, x_2357, x_2357));
  let x_2360 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2359.x, x_2359.y, x_2359.z, x_2360.w);
  let x_2362 : f32 = u_xlat24;
  let x_2364 : vec4<f32> = u_xlat9;
  let x_2367 : vec4<f32> = u_xlat5;
  let x_2369 : vec3<f32> = ((vec3<f32>(x_2362, x_2362, x_2362) * vec3<f32>(x_2364.x, x_2364.y, x_2364.z)) + vec3<f32>(x_2367.x, x_2367.y, x_2367.z));
  let x_2370 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2369.x, x_2369.y, x_2369.z, x_2370.w);
  let x_2372 : f32 = u_xlat42;
  let x_2374 : vec4<f32> = u_xlat9;
  let x_2376 : vec3<f32> = (vec3<f32>(x_2372, x_2372, x_2372) * vec3<f32>(x_2374.x, x_2374.y, x_2374.z));
  let x_2377 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2376.x, x_2376.y, x_2376.z, x_2377.w);
  let x_2379 : vec4<f32> = u_xlat8;
  let x_2381 : vec4<f32> = u_xlat9;
  let x_2383 : vec3<f32> = (vec3<f32>(x_2379.x, x_2379.y, x_2379.z) * vec3<f32>(x_2381.x, x_2381.y, x_2381.z));
  let x_2384 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2383.x, x_2383.y, x_2383.z, x_2384.w);
  let x_2386 : vec4<f32> = u_xlat4;
  let x_2388 : vec4<f32> = u_xlat7;
  let x_2391 : vec4<f32> = u_xlat8;
  let x_2393 : vec3<f32> = ((vec3<f32>(x_2386.x, x_2386.y, x_2386.z) * vec3<f32>(x_2388.x, x_2388.y, x_2388.z)) + vec3<f32>(x_2391.x, x_2391.y, x_2391.z));
  let x_2394 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2393.x, x_2393.y, x_2393.z, x_2394.w);
  let x_2397 : f32 = u_xlat3.x;
  let x_2399 : f32 = x_2303.unity_LightData.z;
  u_xlat42 = (x_2397 * x_2399);
  let x_2401 : vec4<f32> = u_xlat1;
  let x_2404 : vec4<f32> = x_126.x_MainLightPosition;
  u_xlat65 = dot(vec3<f32>(x_2401.x, x_2401.y, x_2401.z), vec3<f32>(x_2404.x, x_2404.y, x_2404.z));
  let x_2407 : f32 = u_xlat65;
  u_xlat65 = clamp(x_2407, 0.0f, 1.0f);
  let x_2409 : f32 = u_xlat42;
  let x_2410 : f32 = u_xlat65;
  u_xlat42 = (x_2409 * x_2410);
  let x_2412 : f32 = u_xlat42;
  let x_2414 : vec4<f32> = u_xlat6;
  let x_2416 : vec3<f32> = (vec3<f32>(x_2412, x_2412, x_2412) * vec3<f32>(x_2414.x, x_2414.y, x_2414.z));
  let x_2417 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2416.x, x_2416.y, x_2416.z, x_2417.w);
  let x_2419 : vec3<f32> = u_xlat2;
  let x_2421 : vec4<f32> = x_126.x_MainLightPosition;
  let x_2423 : vec3<f32> = (x_2419 + vec3<f32>(x_2421.x, x_2421.y, x_2421.z));
  let x_2424 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2423.x, x_2423.y, x_2423.z, x_2424.w);
  let x_2426 : vec4<f32> = u_xlat6;
  let x_2428 : vec4<f32> = u_xlat6;
  u_xlat42 = dot(vec3<f32>(x_2426.x, x_2426.y, x_2426.z), vec3<f32>(x_2428.x, x_2428.y, x_2428.z));
  let x_2431 : f32 = u_xlat42;
  u_xlat42 = max(x_2431, 1.17549435e-37f);
  let x_2434 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_2434);
  let x_2436 : f32 = u_xlat42;
  let x_2438 : vec4<f32> = u_xlat6;
  let x_2440 : vec3<f32> = (vec3<f32>(x_2436, x_2436, x_2436) * vec3<f32>(x_2438.x, x_2438.y, x_2438.z));
  let x_2441 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2440.x, x_2440.y, x_2440.z, x_2441.w);
  let x_2443 : vec4<f32> = u_xlat1;
  let x_2445 : vec4<f32> = u_xlat6;
  u_xlat42 = dot(vec3<f32>(x_2443.x, x_2443.y, x_2443.z), vec3<f32>(x_2445.x, x_2445.y, x_2445.z));
  let x_2448 : f32 = u_xlat42;
  u_xlat42 = clamp(x_2448, 0.0f, 1.0f);
  let x_2451 : vec4<f32> = x_126.x_MainLightPosition;
  let x_2453 : vec4<f32> = u_xlat6;
  u_xlat65 = dot(vec3<f32>(x_2451.x, x_2451.y, x_2451.z), vec3<f32>(x_2453.x, x_2453.y, x_2453.z));
  let x_2456 : f32 = u_xlat65;
  u_xlat65 = clamp(x_2456, 0.0f, 1.0f);
  let x_2458 : f32 = u_xlat42;
  let x_2459 : f32 = u_xlat42;
  u_xlat42 = (x_2458 * x_2459);
  let x_2461 : f32 = u_xlat42;
  let x_2463 : f32 = u_xlat0.x;
  u_xlat42 = ((x_2461 * x_2463) + 1.000010014f);
  let x_2467 : f32 = u_xlat65;
  let x_2468 : f32 = u_xlat65;
  u_xlat65 = (x_2467 * x_2468);
  let x_2470 : f32 = u_xlat42;
  let x_2471 : f32 = u_xlat42;
  u_xlat42 = (x_2470 * x_2471);
  let x_2473 : f32 = u_xlat65;
  u_xlat65 = max(x_2473, 0.100000001f);
  let x_2476 : f32 = u_xlat42;
  let x_2477 : f32 = u_xlat65;
  u_xlat42 = (x_2476 * x_2477);
  let x_2479 : f32 = u_xlat66;
  let x_2480 : f32 = u_xlat42;
  u_xlat42 = (x_2479 * x_2480);
  let x_2482 : f32 = u_xlat64;
  let x_2483 : f32 = u_xlat42;
  u_xlat42 = (x_2482 / x_2483);
  let x_2485 : vec4<f32> = u_xlat5;
  let x_2487 : f32 = u_xlat42;
  let x_2490 : vec4<f32> = u_xlat7;
  let x_2492 : vec3<f32> = ((vec3<f32>(x_2485.x, x_2485.y, x_2485.z) * vec3<f32>(x_2487, x_2487, x_2487)) + vec3<f32>(x_2490.x, x_2490.y, x_2490.z));
  let x_2493 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2492.x, x_2492.y, x_2492.z, x_2493.w);
  let x_2495 : vec4<f32> = u_xlat3;
  let x_2497 : vec4<f32> = u_xlat6;
  let x_2499 : vec3<f32> = (vec3<f32>(x_2495.x, x_2495.y, x_2495.z) * vec3<f32>(x_2497.x, x_2497.y, x_2497.z));
  let x_2500 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2499.x, x_2499.y, x_2499.z, x_2500.w);
  let x_2503 : f32 = x_126.x_AdditionalLightsCount.x;
  let x_2505 : f32 = x_2303.unity_LightData.y;
  u_xlat42 = min(x_2503, x_2505);
  let x_2508 : f32 = u_xlat42;
  u_xlatu42 = bitcast<u32>(i32(x_2508));
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2520 : u32 = u_xlatu_loop_1;
    let x_2521 : u32 = u_xlatu42;
    if ((x_2520 < x_2521)) {
    } else {
      break;
    }
    let x_2524 : u32 = u_xlatu_loop_1;
    u_xlatu67 = (x_2524 >> 2u);
    let x_2527 : u32 = u_xlatu_loop_1;
    u_xlati69 = bitcast<i32>((x_2527 & 3u));
    let x_2530 : u32 = u_xlatu67;
    let x_2533 : vec4<f32> = x_2303.unity_LightIndices[bitcast<i32>(x_2530)];
    let x_2543 : i32 = u_xlati69;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2548 : vec4<u32> = indexable[x_2543];
    u_xlat67 = dot(x_2533, bitcast<vec4<f32>>(x_2548));
    let x_2552 : f32 = u_xlat67;
    u_xlati67 = i32(x_2552);
    let x_2554 : vec3<f32> = vs_TEXCOORD7;
    let x_2566 : i32 = u_xlati67;
    let x_2568 : vec4<f32> = x_2565.x_AdditionalLightsPosition[x_2566];
    let x_2571 : i32 = u_xlati67;
    let x_2573 : vec4<f32> = x_2565.x_AdditionalLightsPosition[x_2571];
    let x_2575 : vec3<f32> = ((-(x_2554) * vec3<f32>(x_2568.w, x_2568.w, x_2568.w)) + vec3<f32>(x_2573.x, x_2573.y, x_2573.z));
    let x_2576 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2575.x, x_2575.y, x_2575.z, x_2576.w);
    let x_2578 : vec4<f32> = u_xlat8;
    let x_2580 : vec4<f32> = u_xlat8;
    u_xlat69 = dot(vec3<f32>(x_2578.x, x_2578.y, x_2578.z), vec3<f32>(x_2580.x, x_2580.y, x_2580.z));
    let x_2583 : f32 = u_xlat69;
    u_xlat69 = max(x_2583, 6.10351562e-05f);
    let x_2585 : f32 = u_xlat69;
    u_xlat70 = inverseSqrt(x_2585);
    let x_2587 : f32 = u_xlat70;
    let x_2589 : vec4<f32> = u_xlat8;
    let x_2591 : vec3<f32> = (vec3<f32>(x_2587, x_2587, x_2587) * vec3<f32>(x_2589.x, x_2589.y, x_2589.z));
    let x_2592 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2591.x, x_2591.y, x_2591.z, x_2592.w);
    let x_2595 : f32 = u_xlat69;
    u_xlat71 = (1.0f / x_2595);
    let x_2597 : f32 = u_xlat69;
    let x_2598 : i32 = u_xlati67;
    let x_2600 : f32 = x_2565.x_AdditionalLightsAttenuation[x_2598].x;
    u_xlat69 = (x_2597 * x_2600);
    let x_2602 : f32 = u_xlat69;
    let x_2604 : f32 = u_xlat69;
    u_xlat69 = ((-(x_2602) * x_2604) + 1.0f);
    let x_2607 : f32 = u_xlat69;
    u_xlat69 = max(x_2607, 0.0f);
    let x_2609 : f32 = u_xlat69;
    let x_2610 : f32 = u_xlat69;
    u_xlat69 = (x_2609 * x_2610);
    let x_2612 : f32 = u_xlat69;
    let x_2613 : f32 = u_xlat71;
    u_xlat69 = (x_2612 * x_2613);
    let x_2615 : i32 = u_xlati67;
    let x_2617 : vec4<f32> = x_2565.x_AdditionalLightsSpotDir[x_2615];
    let x_2619 : vec4<f32> = u_xlat9;
    u_xlat71 = dot(vec3<f32>(x_2617.x, x_2617.y, x_2617.z), vec3<f32>(x_2619.x, x_2619.y, x_2619.z));
    let x_2622 : f32 = u_xlat71;
    let x_2623 : i32 = u_xlati67;
    let x_2625 : f32 = x_2565.x_AdditionalLightsAttenuation[x_2623].z;
    let x_2627 : i32 = u_xlati67;
    let x_2629 : f32 = x_2565.x_AdditionalLightsAttenuation[x_2627].w;
    u_xlat71 = ((x_2622 * x_2625) + x_2629);
    let x_2631 : f32 = u_xlat71;
    u_xlat71 = clamp(x_2631, 0.0f, 1.0f);
    let x_2633 : f32 = u_xlat71;
    let x_2634 : f32 = u_xlat71;
    u_xlat71 = (x_2633 * x_2634);
    let x_2636 : f32 = u_xlat69;
    let x_2637 : f32 = u_xlat71;
    u_xlat69 = (x_2636 * x_2637);
    let x_2639 : f32 = u_xlat68;
    let x_2641 : i32 = u_xlati67;
    let x_2643 : vec4<f32> = x_2565.x_AdditionalLightsColor[x_2641];
    let x_2645 : vec3<f32> = (vec3<f32>(x_2639, x_2639, x_2639) * vec3<f32>(x_2643.x, x_2643.y, x_2643.z));
    let x_2646 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2645.x, x_2645.y, x_2645.z, x_2646.w);
    let x_2648 : vec4<f32> = u_xlat1;
    let x_2650 : vec4<f32> = u_xlat9;
    u_xlat67 = dot(vec3<f32>(x_2648.x, x_2648.y, x_2648.z), vec3<f32>(x_2650.x, x_2650.y, x_2650.z));
    let x_2653 : f32 = u_xlat67;
    u_xlat67 = clamp(x_2653, 0.0f, 1.0f);
    let x_2655 : f32 = u_xlat67;
    let x_2656 : f32 = u_xlat69;
    u_xlat67 = (x_2655 * x_2656);
    let x_2658 : f32 = u_xlat67;
    let x_2660 : vec4<f32> = u_xlat10;
    let x_2662 : vec3<f32> = (vec3<f32>(x_2658, x_2658, x_2658) * vec3<f32>(x_2660.x, x_2660.y, x_2660.z));
    let x_2663 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2662.x, x_2662.y, x_2662.z, x_2663.w);
    let x_2665 : vec4<f32> = u_xlat8;
    let x_2667 : f32 = u_xlat70;
    let x_2670 : vec3<f32> = u_xlat2;
    let x_2671 : vec3<f32> = ((vec3<f32>(x_2665.x, x_2665.y, x_2665.z) * vec3<f32>(x_2667, x_2667, x_2667)) + x_2670);
    let x_2672 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2671.x, x_2671.y, x_2671.z, x_2672.w);
    let x_2674 : vec4<f32> = u_xlat8;
    let x_2676 : vec4<f32> = u_xlat8;
    u_xlat67 = dot(vec3<f32>(x_2674.x, x_2674.y, x_2674.z), vec3<f32>(x_2676.x, x_2676.y, x_2676.z));
    let x_2679 : f32 = u_xlat67;
    u_xlat67 = max(x_2679, 1.17549435e-37f);
    let x_2681 : f32 = u_xlat67;
    u_xlat67 = inverseSqrt(x_2681);
    let x_2683 : f32 = u_xlat67;
    let x_2685 : vec4<f32> = u_xlat8;
    let x_2687 : vec3<f32> = (vec3<f32>(x_2683, x_2683, x_2683) * vec3<f32>(x_2685.x, x_2685.y, x_2685.z));
    let x_2688 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2687.x, x_2687.y, x_2687.z, x_2688.w);
    let x_2690 : vec4<f32> = u_xlat1;
    let x_2692 : vec4<f32> = u_xlat8;
    u_xlat67 = dot(vec3<f32>(x_2690.x, x_2690.y, x_2690.z), vec3<f32>(x_2692.x, x_2692.y, x_2692.z));
    let x_2695 : f32 = u_xlat67;
    u_xlat67 = clamp(x_2695, 0.0f, 1.0f);
    let x_2697 : vec4<f32> = u_xlat9;
    let x_2699 : vec4<f32> = u_xlat8;
    u_xlat69 = dot(vec3<f32>(x_2697.x, x_2697.y, x_2697.z), vec3<f32>(x_2699.x, x_2699.y, x_2699.z));
    let x_2702 : f32 = u_xlat69;
    u_xlat69 = clamp(x_2702, 0.0f, 1.0f);
    let x_2704 : f32 = u_xlat67;
    let x_2705 : f32 = u_xlat67;
    u_xlat67 = (x_2704 * x_2705);
    let x_2707 : f32 = u_xlat67;
    let x_2709 : f32 = u_xlat0.x;
    u_xlat67 = ((x_2707 * x_2709) + 1.000010014f);
    let x_2712 : f32 = u_xlat69;
    let x_2713 : f32 = u_xlat69;
    u_xlat69 = (x_2712 * x_2713);
    let x_2715 : f32 = u_xlat67;
    let x_2716 : f32 = u_xlat67;
    u_xlat67 = (x_2715 * x_2716);
    let x_2718 : f32 = u_xlat69;
    u_xlat69 = max(x_2718, 0.100000001f);
    let x_2720 : f32 = u_xlat67;
    let x_2721 : f32 = u_xlat69;
    u_xlat67 = (x_2720 * x_2721);
    let x_2723 : f32 = u_xlat66;
    let x_2724 : f32 = u_xlat67;
    u_xlat67 = (x_2723 * x_2724);
    let x_2726 : f32 = u_xlat64;
    let x_2727 : f32 = u_xlat67;
    u_xlat67 = (x_2726 / x_2727);
    let x_2729 : vec4<f32> = u_xlat5;
    let x_2731 : f32 = u_xlat67;
    let x_2734 : vec4<f32> = u_xlat7;
    let x_2736 : vec3<f32> = ((vec3<f32>(x_2729.x, x_2729.y, x_2729.z) * vec3<f32>(x_2731, x_2731, x_2731)) + vec3<f32>(x_2734.x, x_2734.y, x_2734.z));
    let x_2737 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2736.x, x_2736.y, x_2736.z, x_2737.w);
    let x_2739 : vec4<f32> = u_xlat8;
    let x_2741 : vec4<f32> = u_xlat10;
    let x_2744 : vec4<f32> = u_xlat6;
    let x_2746 : vec3<f32> = ((vec3<f32>(x_2739.x, x_2739.y, x_2739.z) * vec3<f32>(x_2741.x, x_2741.y, x_2741.z)) + vec3<f32>(x_2744.x, x_2744.y, x_2744.z));
    let x_2747 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2746.x, x_2746.y, x_2746.z, x_2747.w);

    continuing {
      let x_2749 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2749 + bitcast<u32>(1i));
    }
  }
  let x_2751 : vec4<f32> = u_xlat4;
  let x_2753 : f32 = u_xlat21;
  let x_2756 : vec4<f32> = u_xlat3;
  u_xlat0 = ((vec3<f32>(x_2751.x, x_2751.y, x_2751.z) * vec3<f32>(x_2753, x_2753, x_2753)) + vec3<f32>(x_2756.x, x_2756.y, x_2756.z));
  let x_2759 : vec4<f32> = u_xlat6;
  let x_2761 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_2759.x, x_2759.y, x_2759.z) + x_2761);
  let x_2765 : f32 = u_xlat63;
  let x_2767 : vec3<f32> = u_xlat0;
  let x_2768 : vec3<f32> = (vec3<f32>(x_2765, x_2765, x_2765) * x_2767);
  let x_2769 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2768.x, x_2768.y, x_2768.z, x_2769.w);
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

