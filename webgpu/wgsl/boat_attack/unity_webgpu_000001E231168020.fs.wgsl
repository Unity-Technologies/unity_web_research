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

struct UnityPerMaterial {
  x_BaseMap_ST : vec4<f32>,
  x_DetailAlbedoMap_ST : vec4<f32>,
  x_BaseColor : vec4<f32>,
  x_SpecColor : vec4<f32>,
  x_EmissionColor : vec4<f32>,
  x_Cutoff : f32,
  x_Smoothness : f32,
  x_Metallic : f32,
  x_BumpScale : f32,
  x_Parallax : f32,
  x_OcclusionStrength : f32,
  x_ClearCoatMask : f32,
  x_ClearCoatSmoothness : f32,
  x_DetailAlbedoMapScale : f32,
  x_DetailNormalMapScale : f32,
  x_Surface : f32,
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

@group(0) @binding(3) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(11) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(0) @binding(6) var x_MetallicGlossMap : texture_2d<f32>;

@group(0) @binding(14) var sampler_MetallicGlossMap : sampler;

@group(1) @binding(3) var<uniform> x_69 : UnityPerMaterial;

@group(0) @binding(4) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(12) var sampler_BumpMap : sampler;

@group(0) @binding(5) var x_OcclusionMap : texture_2d<f32>;

@group(0) @binding(13) var sampler_OcclusionMap : sampler;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(10) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD8 : vec2<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(7) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(15) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(1) @binding(4) var<uniform> x_463 : MainLightShadows;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(8) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(16) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_1856 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_2110 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec2<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat41 : vec2<f32>;
  var u_xlat60 : f32;
  var u_xlat23 : vec3<f32>;
  var u_xlatb23 : bool;
  var u_xlat4 : vec4<f32>;
  var u_xlat43 : f32;
  var u_xlat5 : vec3<f32>;
  var x_195 : f32;
  var x_208 : f32;
  var x_219 : f32;
  var u_xlat6 : vec4<f32>;
  var u_xlat22 : vec3<f32>;
  var u_xlat21 : f32;
  var u_xlat61 : f32;
  var u_xlat64 : f32;
  var u_xlat65 : f32;
  var u_xlatb64 : bool;
  var txVec0 : vec3<f32>;
  var u_xlat7 : vec4<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var u_xlatb6 : bool;
  var u_xlat46 : vec2<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat48 : vec2<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlat11 : vec4<f32>;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec4<f32>;
  var u_xlat14 : vec4<f32>;
  var txVec4 : vec3<f32>;
  var u_xlat26 : f32;
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
  var u_xlat28 : vec3<f32>;
  var u_xlat54 : vec2<f32>;
  var u_xlat49 : vec2<f32>;
  var u_xlat17 : vec4<f32>;
  var u_xlat18 : vec4<f32>;
  var u_xlat19 : vec4<f32>;
  var txVec13 : vec3<f32>;
  var txVec14 : vec3<f32>;
  var u_xlat68 : f32;
  var txVec15 : vec3<f32>;
  var txVec16 : vec3<f32>;
  var u_xlat66 : f32;
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
  var u_xlatb26 : bool;
  var u_xlat67 : f32;
  var u_xlatu60 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu41 : u32;
  var u_xlati64 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati41 : i32;
  var u_xlatb0 : bool;
  var x_2327 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_40 : vec2<f32> = vs_TEXCOORD0;
  let x_50 : f32 = x_44.x_GlobalMipBias.x;
  let x_51 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_40, x_50);
  u_xlat0 = x_51;
  let x_59 : vec2<f32> = vs_TEXCOORD0;
  let x_61 : f32 = x_44.x_GlobalMipBias.x;
  let x_62 : vec4<f32> = textureSampleBias(x_MetallicGlossMap, sampler_MetallicGlossMap, x_59, x_61);
  u_xlat1 = vec2<f32>(x_62.x, x_62.w);
  let x_65 : vec4<f32> = u_xlat0;
  let x_73 : vec4<f32> = x_69.x_BaseColor;
  u_xlat2 = (vec4<f32>(x_65.w, x_65.x, x_65.y, x_65.z) * vec4<f32>(x_73.w, x_73.x, x_73.y, x_73.z));
  let x_83 : vec2<f32> = vs_TEXCOORD0;
  let x_85 : f32 = x_44.x_GlobalMipBias.x;
  let x_86 : vec4<f32> = textureSampleBias(x_BumpMap, sampler_BumpMap, x_83, x_85);
  u_xlat3 = vec3<f32>(x_86.x, x_86.y, x_86.w);
  let x_90 : f32 = u_xlat3.x;
  let x_93 : f32 = u_xlat3.z;
  u_xlat3.x = (x_90 * x_93);
  let x_97 : vec3<f32> = u_xlat3;
  u_xlat41 = ((vec2<f32>(x_97.x, x_97.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_106 : vec2<f32> = u_xlat41;
  let x_107 : vec2<f32> = u_xlat41;
  u_xlat60 = dot(x_106, x_107);
  let x_109 : f32 = u_xlat60;
  u_xlat60 = min(x_109, 1.0f);
  let x_111 : f32 = u_xlat60;
  u_xlat60 = (-(x_111) + 1.0f);
  let x_114 : f32 = u_xlat60;
  u_xlat60 = sqrt(x_114);
  let x_116 : f32 = u_xlat60;
  u_xlat60 = max(x_116, 1.00000002e-16f);
  let x_119 : vec2<f32> = u_xlat41;
  let x_122 : f32 = x_69.x_BumpScale;
  let x_124 : f32 = x_69.x_BumpScale;
  let x_125 : vec2<f32> = vec2<f32>(x_122, x_124);
  u_xlat41 = (x_119 * vec2<f32>(x_125.x, x_125.y));
  let x_135 : vec2<f32> = vs_TEXCOORD0;
  let x_137 : f32 = x_44.x_GlobalMipBias.x;
  let x_138 : vec4<f32> = textureSampleBias(x_OcclusionMap, sampler_OcclusionMap, x_135, x_137);
  u_xlat3.x = x_138.y;
  let x_145 : f32 = x_69.x_OcclusionStrength;
  u_xlat23.x = (-(x_145) + 1.0f);
  let x_150 : f32 = u_xlat3.x;
  let x_152 : f32 = x_69.x_OcclusionStrength;
  let x_155 : f32 = u_xlat23.x;
  u_xlat3.x = ((x_150 * x_152) + x_155);
  let x_163 : f32 = x_44.unity_OrthoParams.w;
  u_xlatb23 = (x_163 == 0.0f);
  let x_169 : vec3<f32> = vs_TEXCOORD1;
  let x_174 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_175 : vec3<f32> = (-(x_169) + x_174);
  let x_176 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_175.x, x_175.y, x_175.z, x_176.w);
  let x_179 : vec4<f32> = u_xlat4;
  let x_181 : vec4<f32> = u_xlat4;
  u_xlat43 = dot(vec3<f32>(x_179.x, x_179.y, x_179.z), vec3<f32>(x_181.x, x_181.y, x_181.z));
  let x_184 : f32 = u_xlat43;
  u_xlat43 = inverseSqrt(x_184);
  let x_186 : f32 = u_xlat43;
  let x_188 : vec4<f32> = u_xlat4;
  let x_190 : vec3<f32> = (vec3<f32>(x_186, x_186, x_186) * vec3<f32>(x_188.x, x_188.y, x_188.z));
  let x_191 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_190.x, x_190.y, x_190.z, x_191.w);
  let x_194 : bool = u_xlatb23;
  if (x_194) {
    let x_199 : f32 = u_xlat4.x;
    x_195 = x_199;
  } else {
    let x_204 : f32 = x_44.unity_MatrixV[0i].z;
    x_195 = x_204;
  }
  let x_205 : f32 = x_195;
  u_xlat5.x = x_205;
  let x_207 : bool = u_xlatb23;
  if (x_207) {
    let x_212 : f32 = u_xlat4.y;
    x_208 = x_212;
  } else {
    let x_215 : f32 = x_44.unity_MatrixV[1i].z;
    x_208 = x_215;
  }
  let x_216 : f32 = x_208;
  u_xlat5.y = x_216;
  let x_218 : bool = u_xlatb23;
  if (x_218) {
    let x_223 : f32 = u_xlat4.z;
    x_219 = x_223;
  } else {
    let x_226 : f32 = x_44.unity_MatrixV[2i].z;
    x_219 = x_226;
  }
  let x_227 : f32 = x_219;
  u_xlat5.z = x_227;
  let x_230 : vec3<f32> = vs_TEXCOORD2;
  let x_233 : vec4<f32> = vs_TEXCOORD3;
  u_xlat23 = (vec3<f32>(x_230.z, x_230.x, x_230.y) * vec3<f32>(x_233.y, x_233.z, x_233.x));
  let x_236 : vec3<f32> = vs_TEXCOORD2;
  let x_238 : vec4<f32> = vs_TEXCOORD3;
  let x_241 : vec3<f32> = u_xlat23;
  u_xlat23 = ((vec3<f32>(x_236.y, x_236.z, x_236.x) * vec3<f32>(x_238.z, x_238.x, x_238.y)) + -(x_241));
  let x_244 : vec3<f32> = u_xlat23;
  let x_245 : vec4<f32> = vs_TEXCOORD3;
  u_xlat23 = (x_244 * vec3<f32>(x_245.w, x_245.w, x_245.w));
  let x_248 : vec2<f32> = u_xlat41;
  let x_250 : vec3<f32> = u_xlat23;
  u_xlat23 = (vec3<f32>(x_248.y, x_248.y, x_248.y) * x_250);
  let x_252 : vec2<f32> = u_xlat41;
  let x_254 : vec4<f32> = vs_TEXCOORD3;
  let x_257 : vec3<f32> = u_xlat23;
  u_xlat23 = ((vec3<f32>(x_252.x, x_252.x, x_252.x) * vec3<f32>(x_254.x, x_254.y, x_254.z)) + x_257);
  let x_259 : f32 = u_xlat60;
  let x_261 : vec3<f32> = vs_TEXCOORD2;
  let x_263 : vec3<f32> = u_xlat23;
  u_xlat23 = ((vec3<f32>(x_259, x_259, x_259) * x_261) + x_263);
  let x_265 : vec3<f32> = u_xlat23;
  let x_266 : vec3<f32> = u_xlat23;
  u_xlat60 = dot(x_265, x_266);
  let x_268 : f32 = u_xlat60;
  u_xlat60 = inverseSqrt(x_268);
  let x_270 : f32 = u_xlat60;
  let x_272 : vec3<f32> = u_xlat23;
  u_xlat23 = (vec3<f32>(x_270, x_270, x_270) * x_272);
  let x_280 : vec2<f32> = vs_TEXCOORD8;
  let x_282 : f32 = x_44.x_GlobalMipBias.x;
  let x_283 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_280, x_282);
  u_xlat4 = x_283;
  let x_289 : vec2<f32> = vs_TEXCOORD8;
  let x_291 : f32 = x_44.x_GlobalMipBias.x;
  let x_292 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_289, x_291);
  let x_293 : vec3<f32> = vec3<f32>(x_292.x, x_292.y, x_292.z);
  let x_294 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_293.x, x_293.y, x_293.z, x_294.w);
  let x_296 : vec4<f32> = u_xlat4;
  let x_300 : vec3<f32> = (vec3<f32>(x_296.x, x_296.y, x_296.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_301 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_300.x, x_300.y, x_300.z, x_301.w);
  let x_303 : vec3<f32> = u_xlat23;
  let x_304 : vec4<f32> = u_xlat4;
  u_xlat60 = dot(x_303, vec3<f32>(x_304.x, x_304.y, x_304.z));
  let x_307 : f32 = u_xlat60;
  u_xlat60 = (x_307 + 0.5f);
  let x_310 : f32 = u_xlat60;
  let x_312 : vec4<f32> = u_xlat6;
  let x_314 : vec3<f32> = (vec3<f32>(x_310, x_310, x_310) * vec3<f32>(x_312.x, x_312.y, x_312.z));
  let x_315 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_314.x, x_314.y, x_314.z, x_315.w);
  let x_318 : f32 = u_xlat4.w;
  u_xlat60 = max(x_318, 0.0001f);
  let x_321 : vec4<f32> = u_xlat4;
  let x_323 : f32 = u_xlat60;
  let x_325 : vec3<f32> = (vec3<f32>(x_321.x, x_321.y, x_321.z) / vec3<f32>(x_323, x_323, x_323));
  let x_326 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_325.x, x_325.y, x_325.z, x_326.w);
  let x_330 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_331 : vec2<f32> = vec2<f32>(x_330.x, x_330.y);
  u_xlat41 = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_331.x, x_331.y));
  let x_336 : vec2<f32> = u_xlat41;
  let x_337 : vec4<f32> = hlslcc_FragCoord;
  let x_339 : vec2<f32> = (x_336 * vec2<f32>(x_337.x, x_337.y));
  let x_340 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_339.x, x_339.y, x_340.z, x_340.w);
  let x_343 : f32 = u_xlat6.y;
  let x_345 : f32 = x_44.x_ScaleBiasRt.x;
  let x_348 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat60 = ((x_343 * x_345) + x_348);
  let x_350 : f32 = u_xlat60;
  u_xlat6.z = (-(x_350) + 1.0f);
  let x_355 : f32 = u_xlat1.x;
  u_xlat60 = ((-(x_355) * 0.959999979f) + 0.959999979f);
  let x_361 : f32 = u_xlat1.y;
  let x_363 : f32 = x_69.x_Smoothness;
  let x_365 : f32 = u_xlat60;
  u_xlat41.x = ((x_361 * x_363) + -(x_365));
  let x_370 : f32 = u_xlat60;
  let x_372 : vec4<f32> = u_xlat2;
  u_xlat22 = (vec3<f32>(x_370, x_370, x_370) * vec3<f32>(x_372.y, x_372.z, x_372.w));
  let x_375 : vec4<f32> = u_xlat0;
  let x_378 : vec4<f32> = x_69.x_BaseColor;
  let x_383 : vec3<f32> = ((vec3<f32>(x_375.x, x_375.y, x_375.z) * vec3<f32>(x_378.x, x_378.y, x_378.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_384 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_383.x, x_383.y, x_383.z, x_384.w);
  let x_386 : vec2<f32> = u_xlat1;
  let x_388 : vec4<f32> = u_xlat0;
  let x_393 : vec3<f32> = ((vec3<f32>(x_386.x, x_386.x, x_386.x) * vec3<f32>(x_388.x, x_388.y, x_388.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_394 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_393.x, x_393.y, x_393.z, x_394.w);
  let x_397 : f32 = u_xlat1.y;
  let x_400 : f32 = x_69.x_Smoothness;
  u_xlat60 = ((-(x_397) * x_400) + 1.0f);
  let x_403 : f32 = u_xlat60;
  let x_404 : f32 = u_xlat60;
  u_xlat1.x = (x_403 * x_404);
  let x_408 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_408, 0.0078125f);
  let x_414 : f32 = u_xlat1.x;
  let x_416 : f32 = u_xlat1.x;
  u_xlat21 = (x_414 * x_416);
  let x_419 : f32 = u_xlat41.x;
  u_xlat41.x = (x_419 + 1.0f);
  let x_423 : f32 = u_xlat41.x;
  u_xlat41.x = clamp(x_423, 0.0f, 1.0f);
  let x_428 : f32 = u_xlat1.x;
  u_xlat61 = ((x_428 * 4.0f) + 2.0f);
  let x_438 : vec4<f32> = u_xlat6;
  let x_441 : f32 = x_44.x_GlobalMipBias.x;
  let x_442 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_438.x, x_438.z), x_441);
  u_xlat64 = x_442.x;
  let x_445 : f32 = u_xlat64;
  u_xlat65 = (x_445 + -1.0f);
  let x_449 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_450 : f32 = u_xlat65;
  u_xlat65 = ((x_449 * x_450) + 1.0f);
  let x_454 : f32 = u_xlat3.x;
  let x_455 : f32 = u_xlat64;
  u_xlat3.x = min(x_454, x_455);
  let x_465 : f32 = x_463.x_MainLightShadowParams.y;
  u_xlatb64 = (0.0f < x_465);
  let x_467 : bool = u_xlatb64;
  if (x_467) {
    let x_471 : f32 = x_463.x_MainLightShadowParams.y;
    u_xlatb64 = (x_471 == 1.0f);
    let x_473 : bool = u_xlatb64;
    if (x_473) {
      let x_477 : vec4<f32> = vs_TEXCOORD6;
      let x_480 : vec4<f32> = x_463.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_477.x, x_477.y, x_477.x, x_477.y) + x_480);
      let x_483 : vec4<f32> = u_xlat6;
      let x_484 : vec2<f32> = vec2<f32>(x_483.x, x_483.y);
      let x_486 : f32 = vs_TEXCOORD6.z;
      txVec0 = vec3<f32>(x_484.x, x_484.y, x_486);
      let x_499 : vec3<f32> = txVec0;
      let x_501 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_499.xy, x_499.z);
      u_xlat7.x = x_501;
      let x_504 : vec4<f32> = u_xlat6;
      let x_505 : vec2<f32> = vec2<f32>(x_504.z, x_504.w);
      let x_507 : f32 = vs_TEXCOORD6.z;
      txVec1 = vec3<f32>(x_505.x, x_505.y, x_507);
      let x_514 : vec3<f32> = txVec1;
      let x_516 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_514.xy, x_514.z);
      u_xlat7.y = x_516;
      let x_518 : vec4<f32> = vs_TEXCOORD6;
      let x_521 : vec4<f32> = x_463.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_518.x, x_518.y, x_518.x, x_518.y) + x_521);
      let x_524 : vec4<f32> = u_xlat6;
      let x_525 : vec2<f32> = vec2<f32>(x_524.x, x_524.y);
      let x_527 : f32 = vs_TEXCOORD6.z;
      txVec2 = vec3<f32>(x_525.x, x_525.y, x_527);
      let x_534 : vec3<f32> = txVec2;
      let x_536 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_534.xy, x_534.z);
      u_xlat7.z = x_536;
      let x_539 : vec4<f32> = u_xlat6;
      let x_540 : vec2<f32> = vec2<f32>(x_539.z, x_539.w);
      let x_542 : f32 = vs_TEXCOORD6.z;
      txVec3 = vec3<f32>(x_540.x, x_540.y, x_542);
      let x_549 : vec3<f32> = txVec3;
      let x_551 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_549.xy, x_549.z);
      u_xlat7.w = x_551;
      let x_553 : vec4<f32> = u_xlat7;
      u_xlat64 = dot(x_553, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_560 : f32 = x_463.x_MainLightShadowParams.y;
      u_xlatb6 = (x_560 == 2.0f);
      let x_562 : bool = u_xlatb6;
      if (x_562) {
        let x_565 : vec4<f32> = vs_TEXCOORD6;
        let x_568 : vec4<f32> = x_463.x_MainLightShadowmapSize;
        let x_572 : vec2<f32> = ((vec2<f32>(x_565.x, x_565.y) * vec2<f32>(x_568.z, x_568.w)) + vec2<f32>(0.5f, 0.5f));
        let x_573 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_572.x, x_572.y, x_573.z, x_573.w);
        let x_575 : vec4<f32> = u_xlat6;
        let x_577 : vec2<f32> = floor(vec2<f32>(x_575.x, x_575.y));
        let x_578 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_577.x, x_577.y, x_578.z, x_578.w);
        let x_581 : vec4<f32> = vs_TEXCOORD6;
        let x_584 : vec4<f32> = x_463.x_MainLightShadowmapSize;
        let x_587 : vec4<f32> = u_xlat6;
        u_xlat46 = ((vec2<f32>(x_581.x, x_581.y) * vec2<f32>(x_584.z, x_584.w)) + -(vec2<f32>(x_587.x, x_587.y)));
        let x_591 : vec2<f32> = u_xlat46;
        u_xlat7 = (vec4<f32>(x_591.x, x_591.x, x_591.y, x_591.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_596 : vec4<f32> = u_xlat7;
        let x_598 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_596.x, x_596.x, x_596.z, x_596.z) * vec4<f32>(x_598.x, x_598.x, x_598.z, x_598.z));
        let x_601 : vec4<f32> = u_xlat8;
        let x_605 : vec2<f32> = (vec2<f32>(x_601.y, x_601.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_606 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_605.x, x_606.y, x_605.y, x_606.w);
        let x_608 : vec4<f32> = u_xlat8;
        let x_611 : vec2<f32> = u_xlat46;
        let x_613 : vec2<f32> = ((vec2<f32>(x_608.x, x_608.z) * vec2<f32>(0.5f, 0.5f)) + -(x_611));
        let x_614 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_613.x, x_613.y, x_614.z, x_614.w);
        let x_617 : vec2<f32> = u_xlat46;
        u_xlat48 = (-(x_617) + vec2<f32>(1.0f, 1.0f));
        let x_621 : vec2<f32> = u_xlat46;
        let x_623 : vec2<f32> = min(x_621, vec2<f32>(0.0f, 0.0f));
        let x_624 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_623.x, x_623.y, x_624.z, x_624.w);
        let x_626 : vec4<f32> = u_xlat9;
        let x_629 : vec4<f32> = u_xlat9;
        let x_632 : vec2<f32> = u_xlat48;
        let x_633 : vec2<f32> = ((-(vec2<f32>(x_626.x, x_626.y)) * vec2<f32>(x_629.x, x_629.y)) + x_632);
        let x_634 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_633.x, x_633.y, x_634.z, x_634.w);
        let x_636 : vec2<f32> = u_xlat46;
        u_xlat46 = max(x_636, vec2<f32>(0.0f, 0.0f));
        let x_638 : vec2<f32> = u_xlat46;
        let x_640 : vec2<f32> = u_xlat46;
        let x_642 : vec4<f32> = u_xlat7;
        u_xlat46 = ((-(x_638) * x_640) + vec2<f32>(x_642.y, x_642.w));
        let x_645 : vec4<f32> = u_xlat9;
        let x_647 : vec2<f32> = (vec2<f32>(x_645.x, x_645.y) + vec2<f32>(1.0f, 1.0f));
        let x_648 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_647.x, x_647.y, x_648.z, x_648.w);
        let x_650 : vec2<f32> = u_xlat46;
        u_xlat46 = (x_650 + vec2<f32>(1.0f, 1.0f));
        let x_653 : vec4<f32> = u_xlat8;
        let x_657 : vec2<f32> = (vec2<f32>(x_653.x, x_653.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_658 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_657.x, x_657.y, x_658.z, x_658.w);
        let x_660 : vec2<f32> = u_xlat48;
        let x_661 : vec2<f32> = (x_660 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_662 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_661.x, x_661.y, x_662.z, x_662.w);
        let x_664 : vec4<f32> = u_xlat9;
        let x_666 : vec2<f32> = (vec2<f32>(x_664.x, x_664.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_667 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_666.x, x_666.y, x_667.z, x_667.w);
        let x_670 : vec2<f32> = u_xlat46;
        let x_671 : vec2<f32> = (x_670 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_672 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_671.x, x_671.y, x_672.z, x_672.w);
        let x_674 : vec4<f32> = u_xlat7;
        u_xlat46 = (vec2<f32>(x_674.y, x_674.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_678 : f32 = u_xlat9.x;
        u_xlat10.z = x_678;
        let x_681 : f32 = u_xlat46.x;
        u_xlat10.w = x_681;
        let x_684 : f32 = u_xlat11.x;
        u_xlat8.z = x_684;
        let x_687 : f32 = u_xlat7.x;
        u_xlat8.w = x_687;
        let x_690 : vec4<f32> = u_xlat8;
        let x_692 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_690.z, x_690.w, x_690.x, x_690.z) + vec4<f32>(x_692.z, x_692.w, x_692.x, x_692.z));
        let x_696 : f32 = u_xlat10.y;
        u_xlat9.z = x_696;
        let x_699 : f32 = u_xlat46.y;
        u_xlat9.w = x_699;
        let x_702 : f32 = u_xlat8.y;
        u_xlat11.z = x_702;
        let x_705 : f32 = u_xlat7.z;
        u_xlat11.w = x_705;
        let x_707 : vec4<f32> = u_xlat9;
        let x_709 : vec4<f32> = u_xlat11;
        let x_711 : vec3<f32> = (vec3<f32>(x_707.z, x_707.y, x_707.w) + vec3<f32>(x_709.z, x_709.y, x_709.w));
        let x_712 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_711.x, x_711.y, x_711.z, x_712.w);
        let x_714 : vec4<f32> = u_xlat8;
        let x_716 : vec4<f32> = u_xlat12;
        let x_718 : vec3<f32> = (vec3<f32>(x_714.x, x_714.z, x_714.w) / vec3<f32>(x_716.z, x_716.w, x_716.y));
        let x_719 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_718.x, x_718.y, x_718.z, x_719.w);
        let x_721 : vec4<f32> = u_xlat8;
        let x_726 : vec3<f32> = (vec3<f32>(x_721.x, x_721.y, x_721.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_727 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_726.x, x_726.y, x_726.z, x_727.w);
        let x_729 : vec4<f32> = u_xlat11;
        let x_731 : vec4<f32> = u_xlat7;
        let x_733 : vec3<f32> = (vec3<f32>(x_729.z, x_729.y, x_729.w) / vec3<f32>(x_731.x, x_731.y, x_731.z));
        let x_734 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_733.x, x_733.y, x_733.z, x_734.w);
        let x_736 : vec4<f32> = u_xlat9;
        let x_738 : vec3<f32> = (vec3<f32>(x_736.x, x_736.y, x_736.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_739 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_738.x, x_738.y, x_738.z, x_739.w);
        let x_741 : vec4<f32> = u_xlat8;
        let x_744 : vec4<f32> = x_463.x_MainLightShadowmapSize;
        let x_746 : vec3<f32> = (vec3<f32>(x_741.y, x_741.x, x_741.z) * vec3<f32>(x_744.x, x_744.x, x_744.x));
        let x_747 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_746.x, x_746.y, x_746.z, x_747.w);
        let x_749 : vec4<f32> = u_xlat9;
        let x_752 : vec4<f32> = x_463.x_MainLightShadowmapSize;
        let x_754 : vec3<f32> = (vec3<f32>(x_749.x, x_749.y, x_749.z) * vec3<f32>(x_752.y, x_752.y, x_752.y));
        let x_755 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_754.x, x_754.y, x_754.z, x_755.w);
        let x_758 : f32 = u_xlat9.x;
        u_xlat8.w = x_758;
        let x_760 : vec4<f32> = u_xlat6;
        let x_763 : vec4<f32> = x_463.x_MainLightShadowmapSize;
        let x_766 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_760.x, x_760.y, x_760.x, x_760.y) * vec4<f32>(x_763.x, x_763.y, x_763.x, x_763.y)) + vec4<f32>(x_766.y, x_766.w, x_766.x, x_766.w));
        let x_769 : vec4<f32> = u_xlat6;
        let x_772 : vec4<f32> = x_463.x_MainLightShadowmapSize;
        let x_775 : vec4<f32> = u_xlat8;
        u_xlat46 = ((vec2<f32>(x_769.x, x_769.y) * vec2<f32>(x_772.x, x_772.y)) + vec2<f32>(x_775.z, x_775.w));
        let x_779 : f32 = u_xlat8.y;
        u_xlat9.w = x_779;
        let x_781 : vec4<f32> = u_xlat9;
        let x_782 : vec2<f32> = vec2<f32>(x_781.y, x_781.z);
        let x_783 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_783.x, x_782.x, x_783.z, x_782.y);
        let x_785 : vec4<f32> = u_xlat6;
        let x_788 : vec4<f32> = x_463.x_MainLightShadowmapSize;
        let x_791 : vec4<f32> = u_xlat8;
        u_xlat11 = ((vec4<f32>(x_785.x, x_785.y, x_785.x, x_785.y) * vec4<f32>(x_788.x, x_788.y, x_788.x, x_788.y)) + vec4<f32>(x_791.x, x_791.y, x_791.z, x_791.y));
        let x_794 : vec4<f32> = u_xlat6;
        let x_797 : vec4<f32> = x_463.x_MainLightShadowmapSize;
        let x_800 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_794.x, x_794.y, x_794.x, x_794.y) * vec4<f32>(x_797.x, x_797.y, x_797.x, x_797.y)) + vec4<f32>(x_800.w, x_800.y, x_800.w, x_800.z));
        let x_803 : vec4<f32> = u_xlat6;
        let x_806 : vec4<f32> = x_463.x_MainLightShadowmapSize;
        let x_809 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_803.x, x_803.y, x_803.x, x_803.y) * vec4<f32>(x_806.x, x_806.y, x_806.x, x_806.y)) + vec4<f32>(x_809.x, x_809.w, x_809.z, x_809.w));
        let x_813 : vec4<f32> = u_xlat7;
        let x_815 : vec4<f32> = u_xlat12;
        u_xlat13 = (vec4<f32>(x_813.x, x_813.x, x_813.x, x_813.y) * vec4<f32>(x_815.z, x_815.w, x_815.y, x_815.z));
        let x_819 : vec4<f32> = u_xlat7;
        let x_821 : vec4<f32> = u_xlat12;
        u_xlat14 = (vec4<f32>(x_819.y, x_819.y, x_819.z, x_819.z) * x_821);
        let x_824 : f32 = u_xlat7.z;
        let x_826 : f32 = u_xlat12.y;
        u_xlat6.x = (x_824 * x_826);
        let x_830 : vec4<f32> = u_xlat10;
        let x_831 : vec2<f32> = vec2<f32>(x_830.x, x_830.y);
        let x_833 : f32 = vs_TEXCOORD6.z;
        txVec4 = vec3<f32>(x_831.x, x_831.y, x_833);
        let x_841 : vec3<f32> = txVec4;
        let x_843 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_841.xy, x_841.z);
        u_xlat26 = x_843;
        let x_845 : vec4<f32> = u_xlat10;
        let x_846 : vec2<f32> = vec2<f32>(x_845.z, x_845.w);
        let x_848 : f32 = vs_TEXCOORD6.z;
        txVec5 = vec3<f32>(x_846.x, x_846.y, x_848);
        let x_855 : vec3<f32> = txVec5;
        let x_857 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_855.xy, x_855.z);
        u_xlat7.x = x_857;
        let x_860 : f32 = u_xlat7.x;
        let x_862 : f32 = u_xlat13.y;
        u_xlat7.x = (x_860 * x_862);
        let x_866 : f32 = u_xlat13.x;
        let x_867 : f32 = u_xlat26;
        let x_870 : f32 = u_xlat7.x;
        u_xlat26 = ((x_866 * x_867) + x_870);
        let x_873 : vec2<f32> = u_xlat46;
        let x_875 : f32 = vs_TEXCOORD6.z;
        txVec6 = vec3<f32>(x_873.x, x_873.y, x_875);
        let x_882 : vec3<f32> = txVec6;
        let x_884 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_882.xy, x_882.z);
        u_xlat46.x = x_884;
        let x_887 : f32 = u_xlat13.z;
        let x_889 : f32 = u_xlat46.x;
        let x_891 : f32 = u_xlat26;
        u_xlat26 = ((x_887 * x_889) + x_891);
        let x_894 : vec4<f32> = u_xlat9;
        let x_895 : vec2<f32> = vec2<f32>(x_894.x, x_894.y);
        let x_897 : f32 = vs_TEXCOORD6.z;
        txVec7 = vec3<f32>(x_895.x, x_895.y, x_897);
        let x_904 : vec3<f32> = txVec7;
        let x_906 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_904.xy, x_904.z);
        u_xlat46.x = x_906;
        let x_909 : f32 = u_xlat13.w;
        let x_911 : f32 = u_xlat46.x;
        let x_913 : f32 = u_xlat26;
        u_xlat26 = ((x_909 * x_911) + x_913);
        let x_916 : vec4<f32> = u_xlat11;
        let x_917 : vec2<f32> = vec2<f32>(x_916.x, x_916.y);
        let x_919 : f32 = vs_TEXCOORD6.z;
        txVec8 = vec3<f32>(x_917.x, x_917.y, x_919);
        let x_926 : vec3<f32> = txVec8;
        let x_928 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_926.xy, x_926.z);
        u_xlat46.x = x_928;
        let x_931 : f32 = u_xlat14.x;
        let x_933 : f32 = u_xlat46.x;
        let x_935 : f32 = u_xlat26;
        u_xlat26 = ((x_931 * x_933) + x_935);
        let x_938 : vec4<f32> = u_xlat11;
        let x_939 : vec2<f32> = vec2<f32>(x_938.z, x_938.w);
        let x_941 : f32 = vs_TEXCOORD6.z;
        txVec9 = vec3<f32>(x_939.x, x_939.y, x_941);
        let x_948 : vec3<f32> = txVec9;
        let x_950 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_948.xy, x_948.z);
        u_xlat46.x = x_950;
        let x_953 : f32 = u_xlat14.y;
        let x_955 : f32 = u_xlat46.x;
        let x_957 : f32 = u_xlat26;
        u_xlat26 = ((x_953 * x_955) + x_957);
        let x_960 : vec4<f32> = u_xlat9;
        let x_961 : vec2<f32> = vec2<f32>(x_960.z, x_960.w);
        let x_963 : f32 = vs_TEXCOORD6.z;
        txVec10 = vec3<f32>(x_961.x, x_961.y, x_963);
        let x_970 : vec3<f32> = txVec10;
        let x_972 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_970.xy, x_970.z);
        u_xlat46.x = x_972;
        let x_975 : f32 = u_xlat14.z;
        let x_977 : f32 = u_xlat46.x;
        let x_979 : f32 = u_xlat26;
        u_xlat26 = ((x_975 * x_977) + x_979);
        let x_982 : vec4<f32> = u_xlat8;
        let x_983 : vec2<f32> = vec2<f32>(x_982.x, x_982.y);
        let x_985 : f32 = vs_TEXCOORD6.z;
        txVec11 = vec3<f32>(x_983.x, x_983.y, x_985);
        let x_992 : vec3<f32> = txVec11;
        let x_994 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_992.xy, x_992.z);
        u_xlat46.x = x_994;
        let x_997 : f32 = u_xlat14.w;
        let x_999 : f32 = u_xlat46.x;
        let x_1001 : f32 = u_xlat26;
        u_xlat26 = ((x_997 * x_999) + x_1001);
        let x_1004 : vec4<f32> = u_xlat8;
        let x_1005 : vec2<f32> = vec2<f32>(x_1004.z, x_1004.w);
        let x_1007 : f32 = vs_TEXCOORD6.z;
        txVec12 = vec3<f32>(x_1005.x, x_1005.y, x_1007);
        let x_1014 : vec3<f32> = txVec12;
        let x_1016 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1014.xy, x_1014.z);
        u_xlat46.x = x_1016;
        let x_1019 : f32 = u_xlat6.x;
        let x_1021 : f32 = u_xlat46.x;
        let x_1023 : f32 = u_xlat26;
        u_xlat64 = ((x_1019 * x_1021) + x_1023);
      } else {
        let x_1026 : vec4<f32> = vs_TEXCOORD6;
        let x_1029 : vec4<f32> = x_463.x_MainLightShadowmapSize;
        let x_1032 : vec2<f32> = ((vec2<f32>(x_1026.x, x_1026.y) * vec2<f32>(x_1029.z, x_1029.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1033 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1032.x, x_1032.y, x_1033.z, x_1033.w);
        let x_1035 : vec4<f32> = u_xlat6;
        let x_1037 : vec2<f32> = floor(vec2<f32>(x_1035.x, x_1035.y));
        let x_1038 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1037.x, x_1037.y, x_1038.z, x_1038.w);
        let x_1040 : vec4<f32> = vs_TEXCOORD6;
        let x_1043 : vec4<f32> = x_463.x_MainLightShadowmapSize;
        let x_1046 : vec4<f32> = u_xlat6;
        u_xlat46 = ((vec2<f32>(x_1040.x, x_1040.y) * vec2<f32>(x_1043.z, x_1043.w)) + -(vec2<f32>(x_1046.x, x_1046.y)));
        let x_1050 : vec2<f32> = u_xlat46;
        u_xlat7 = (vec4<f32>(x_1050.x, x_1050.x, x_1050.y, x_1050.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1053 : vec4<f32> = u_xlat7;
        let x_1055 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1053.x, x_1053.x, x_1053.z, x_1053.z) * vec4<f32>(x_1055.x, x_1055.x, x_1055.z, x_1055.z));
        let x_1058 : vec4<f32> = u_xlat8;
        let x_1062 : vec2<f32> = (vec2<f32>(x_1058.y, x_1058.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1063 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1063.x, x_1062.x, x_1063.z, x_1062.y);
        let x_1065 : vec4<f32> = u_xlat8;
        let x_1068 : vec2<f32> = u_xlat46;
        let x_1070 : vec2<f32> = ((vec2<f32>(x_1065.x, x_1065.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1068));
        let x_1071 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1070.x, x_1071.y, x_1070.y, x_1071.w);
        let x_1073 : vec2<f32> = u_xlat46;
        let x_1075 : vec2<f32> = (-(x_1073) + vec2<f32>(1.0f, 1.0f));
        let x_1076 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1075.x, x_1075.y, x_1076.z, x_1076.w);
        let x_1078 : vec2<f32> = u_xlat46;
        u_xlat48 = min(x_1078, vec2<f32>(0.0f, 0.0f));
        let x_1080 : vec2<f32> = u_xlat48;
        let x_1082 : vec2<f32> = u_xlat48;
        let x_1084 : vec4<f32> = u_xlat8;
        let x_1086 : vec2<f32> = ((-(x_1080) * x_1082) + vec2<f32>(x_1084.x, x_1084.y));
        let x_1087 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1086.x, x_1086.y, x_1087.z, x_1087.w);
        let x_1089 : vec2<f32> = u_xlat46;
        u_xlat48 = max(x_1089, vec2<f32>(0.0f, 0.0f));
        let x_1092 : vec2<f32> = u_xlat48;
        let x_1094 : vec2<f32> = u_xlat48;
        let x_1096 : vec4<f32> = u_xlat7;
        let x_1098 : vec2<f32> = ((-(x_1092) * x_1094) + vec2<f32>(x_1096.y, x_1096.w));
        let x_1099 : vec3<f32> = u_xlat27;
        u_xlat27 = vec3<f32>(x_1098.x, x_1099.y, x_1098.y);
        let x_1101 : vec4<f32> = u_xlat8;
        let x_1103 : vec2<f32> = (vec2<f32>(x_1101.x, x_1101.y) + vec2<f32>(2.0f, 2.0f));
        let x_1104 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1103.x, x_1103.y, x_1104.z, x_1104.w);
        let x_1106 : vec3<f32> = u_xlat27;
        let x_1108 : vec2<f32> = (vec2<f32>(x_1106.x, x_1106.z) + vec2<f32>(2.0f, 2.0f));
        let x_1109 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1109.x, x_1108.x, x_1109.z, x_1108.y);
        let x_1112 : f32 = u_xlat7.y;
        u_xlat10.z = (x_1112 * 0.081632003f);
        let x_1116 : vec4<f32> = u_xlat7;
        let x_1119 : vec3<f32> = (vec3<f32>(x_1116.z, x_1116.x, x_1116.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_1120 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1119.x, x_1119.y, x_1119.z, x_1120.w);
        let x_1122 : vec4<f32> = u_xlat8;
        let x_1125 : vec2<f32> = (vec2<f32>(x_1122.x, x_1122.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1126 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1125.x, x_1125.y, x_1126.z, x_1126.w);
        let x_1129 : f32 = u_xlat11.y;
        u_xlat10.x = x_1129;
        let x_1131 : vec2<f32> = u_xlat46;
        let x_1138 : vec2<f32> = ((vec2<f32>(x_1131.x, x_1131.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1139 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1139.x, x_1138.x, x_1139.z, x_1138.y);
        let x_1141 : vec2<f32> = u_xlat46;
        let x_1145 : vec2<f32> = ((vec2<f32>(x_1141.x, x_1141.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1146 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1145.x, x_1146.y, x_1145.y, x_1146.w);
        let x_1149 : f32 = u_xlat7.x;
        u_xlat8.y = x_1149;
        let x_1152 : f32 = u_xlat9.y;
        u_xlat8.w = x_1152;
        let x_1154 : vec4<f32> = u_xlat8;
        let x_1155 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1154 + x_1155);
        let x_1157 : vec2<f32> = u_xlat46;
        let x_1160 : vec2<f32> = ((vec2<f32>(x_1157.y, x_1157.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1161 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1161.x, x_1160.x, x_1161.z, x_1160.y);
        let x_1163 : vec2<f32> = u_xlat46;
        let x_1166 : vec2<f32> = ((vec2<f32>(x_1163.y, x_1163.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1167 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1166.x, x_1167.y, x_1166.y, x_1167.w);
        let x_1170 : f32 = u_xlat7.y;
        u_xlat9.y = x_1170;
        let x_1172 : vec4<f32> = u_xlat9;
        let x_1173 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1172 + x_1173);
        let x_1175 : vec4<f32> = u_xlat8;
        let x_1176 : vec4<f32> = u_xlat10;
        u_xlat8 = (x_1175 / x_1176);
        let x_1178 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1178 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1184 : vec4<f32> = u_xlat9;
        let x_1185 : vec4<f32> = u_xlat7;
        u_xlat9 = (x_1184 / x_1185);
        let x_1187 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1187 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1189 : vec4<f32> = u_xlat8;
        let x_1192 : vec4<f32> = x_463.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1189.w, x_1189.x, x_1189.y, x_1189.z) * vec4<f32>(x_1192.x, x_1192.x, x_1192.x, x_1192.x));
        let x_1195 : vec4<f32> = u_xlat9;
        let x_1198 : vec4<f32> = x_463.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1195.x, x_1195.w, x_1195.y, x_1195.z) * vec4<f32>(x_1198.y, x_1198.y, x_1198.y, x_1198.y));
        let x_1201 : vec4<f32> = u_xlat8;
        let x_1202 : vec3<f32> = vec3<f32>(x_1201.y, x_1201.z, x_1201.w);
        let x_1203 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1202.x, x_1203.y, x_1202.y, x_1202.z);
        let x_1206 : f32 = u_xlat9.x;
        u_xlat11.y = x_1206;
        let x_1208 : vec4<f32> = u_xlat6;
        let x_1211 : vec4<f32> = x_463.x_MainLightShadowmapSize;
        let x_1214 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1208.x, x_1208.y, x_1208.x, x_1208.y) * vec4<f32>(x_1211.x, x_1211.y, x_1211.x, x_1211.y)) + vec4<f32>(x_1214.x, x_1214.y, x_1214.z, x_1214.y));
        let x_1217 : vec4<f32> = u_xlat6;
        let x_1220 : vec4<f32> = x_463.x_MainLightShadowmapSize;
        let x_1223 : vec4<f32> = u_xlat11;
        u_xlat46 = ((vec2<f32>(x_1217.x, x_1217.y) * vec2<f32>(x_1220.x, x_1220.y)) + vec2<f32>(x_1223.w, x_1223.y));
        let x_1227 : f32 = u_xlat11.y;
        u_xlat8.y = x_1227;
        let x_1230 : f32 = u_xlat9.z;
        u_xlat11.y = x_1230;
        let x_1232 : vec4<f32> = u_xlat6;
        let x_1235 : vec4<f32> = x_463.x_MainLightShadowmapSize;
        let x_1238 : vec4<f32> = u_xlat11;
        u_xlat13 = ((vec4<f32>(x_1232.x, x_1232.y, x_1232.x, x_1232.y) * vec4<f32>(x_1235.x, x_1235.y, x_1235.x, x_1235.y)) + vec4<f32>(x_1238.x, x_1238.y, x_1238.z, x_1238.y));
        let x_1241 : vec4<f32> = u_xlat6;
        let x_1244 : vec4<f32> = x_463.x_MainLightShadowmapSize;
        let x_1247 : vec4<f32> = u_xlat11;
        let x_1249 : vec2<f32> = ((vec2<f32>(x_1241.x, x_1241.y) * vec2<f32>(x_1244.x, x_1244.y)) + vec2<f32>(x_1247.w, x_1247.y));
        let x_1250 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_1249.x, x_1249.y, x_1250.z, x_1250.w);
        let x_1253 : f32 = u_xlat11.y;
        u_xlat8.z = x_1253;
        let x_1256 : vec4<f32> = u_xlat6;
        let x_1259 : vec4<f32> = x_463.x_MainLightShadowmapSize;
        let x_1262 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1256.x, x_1256.y, x_1256.x, x_1256.y) * vec4<f32>(x_1259.x, x_1259.y, x_1259.x, x_1259.y)) + vec4<f32>(x_1262.x, x_1262.y, x_1262.x, x_1262.z));
        let x_1266 : f32 = u_xlat9.w;
        u_xlat11.y = x_1266;
        let x_1269 : vec4<f32> = u_xlat6;
        let x_1272 : vec4<f32> = x_463.x_MainLightShadowmapSize;
        let x_1275 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1269.x, x_1269.y, x_1269.x, x_1269.y) * vec4<f32>(x_1272.x, x_1272.y, x_1272.x, x_1272.y)) + vec4<f32>(x_1275.x, x_1275.y, x_1275.z, x_1275.y));
        let x_1279 : vec4<f32> = u_xlat6;
        let x_1282 : vec4<f32> = x_463.x_MainLightShadowmapSize;
        let x_1285 : vec4<f32> = u_xlat11;
        let x_1287 : vec2<f32> = ((vec2<f32>(x_1279.x, x_1279.y) * vec2<f32>(x_1282.x, x_1282.y)) + vec2<f32>(x_1285.w, x_1285.y));
        let x_1288 : vec3<f32> = u_xlat28;
        u_xlat28 = vec3<f32>(x_1287.x, x_1287.y, x_1288.z);
        let x_1291 : f32 = u_xlat11.y;
        u_xlat8.w = x_1291;
        let x_1294 : vec4<f32> = u_xlat6;
        let x_1297 : vec4<f32> = x_463.x_MainLightShadowmapSize;
        let x_1300 : vec4<f32> = u_xlat8;
        u_xlat54 = ((vec2<f32>(x_1294.x, x_1294.y) * vec2<f32>(x_1297.x, x_1297.y)) + vec2<f32>(x_1300.x, x_1300.w));
        let x_1303 : vec4<f32> = u_xlat11;
        let x_1304 : vec3<f32> = vec3<f32>(x_1303.x, x_1303.z, x_1303.w);
        let x_1305 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1304.x, x_1305.y, x_1304.y, x_1304.z);
        let x_1307 : vec4<f32> = u_xlat6;
        let x_1310 : vec4<f32> = x_463.x_MainLightShadowmapSize;
        let x_1313 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1307.x, x_1307.y, x_1307.x, x_1307.y) * vec4<f32>(x_1310.x, x_1310.y, x_1310.x, x_1310.y)) + vec4<f32>(x_1313.x, x_1313.y, x_1313.z, x_1313.y));
        let x_1317 : vec4<f32> = u_xlat6;
        let x_1320 : vec4<f32> = x_463.x_MainLightShadowmapSize;
        let x_1323 : vec4<f32> = u_xlat9;
        u_xlat49 = ((vec2<f32>(x_1317.x, x_1317.y) * vec2<f32>(x_1320.x, x_1320.y)) + vec2<f32>(x_1323.w, x_1323.y));
        let x_1327 : f32 = u_xlat8.x;
        u_xlat9.x = x_1327;
        let x_1329 : vec4<f32> = u_xlat6;
        let x_1332 : vec4<f32> = x_463.x_MainLightShadowmapSize;
        let x_1335 : vec4<f32> = u_xlat9;
        let x_1337 : vec2<f32> = ((vec2<f32>(x_1329.x, x_1329.y) * vec2<f32>(x_1332.x, x_1332.y)) + vec2<f32>(x_1335.x, x_1335.y));
        let x_1338 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1337.x, x_1337.y, x_1338.z, x_1338.w);
        let x_1341 : vec4<f32> = u_xlat7;
        let x_1343 : vec4<f32> = u_xlat10;
        u_xlat17 = (vec4<f32>(x_1341.x, x_1341.x, x_1341.x, x_1341.x) * x_1343);
        let x_1346 : vec4<f32> = u_xlat7;
        let x_1348 : vec4<f32> = u_xlat10;
        u_xlat18 = (vec4<f32>(x_1346.y, x_1346.y, x_1346.y, x_1346.y) * x_1348);
        let x_1351 : vec4<f32> = u_xlat7;
        let x_1353 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_1351.z, x_1351.z, x_1351.z, x_1351.z) * x_1353);
        let x_1355 : vec4<f32> = u_xlat7;
        let x_1357 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_1355.w, x_1355.w, x_1355.w, x_1355.w) * x_1357);
        let x_1360 : vec4<f32> = u_xlat12;
        let x_1361 : vec2<f32> = vec2<f32>(x_1360.x, x_1360.y);
        let x_1363 : f32 = vs_TEXCOORD6.z;
        txVec13 = vec3<f32>(x_1361.x, x_1361.y, x_1363);
        let x_1370 : vec3<f32> = txVec13;
        let x_1372 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1370.xy, x_1370.z);
        u_xlat8.x = x_1372;
        let x_1375 : vec4<f32> = u_xlat12;
        let x_1376 : vec2<f32> = vec2<f32>(x_1375.z, x_1375.w);
        let x_1378 : f32 = vs_TEXCOORD6.z;
        txVec14 = vec3<f32>(x_1376.x, x_1376.y, x_1378);
        let x_1386 : vec3<f32> = txVec14;
        let x_1388 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1386.xy, x_1386.z);
        u_xlat68 = x_1388;
        let x_1389 : f32 = u_xlat68;
        let x_1391 : f32 = u_xlat17.y;
        u_xlat68 = (x_1389 * x_1391);
        let x_1394 : f32 = u_xlat17.x;
        let x_1396 : f32 = u_xlat8.x;
        let x_1398 : f32 = u_xlat68;
        u_xlat8.x = ((x_1394 * x_1396) + x_1398);
        let x_1402 : vec2<f32> = u_xlat46;
        let x_1404 : f32 = vs_TEXCOORD6.z;
        txVec15 = vec3<f32>(x_1402.x, x_1402.y, x_1404);
        let x_1411 : vec3<f32> = txVec15;
        let x_1413 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1411.xy, x_1411.z);
        u_xlat46.x = x_1413;
        let x_1416 : f32 = u_xlat17.z;
        let x_1418 : f32 = u_xlat46.x;
        let x_1421 : f32 = u_xlat8.x;
        u_xlat46.x = ((x_1416 * x_1418) + x_1421);
        let x_1425 : vec4<f32> = u_xlat15;
        let x_1426 : vec2<f32> = vec2<f32>(x_1425.x, x_1425.y);
        let x_1428 : f32 = vs_TEXCOORD6.z;
        txVec16 = vec3<f32>(x_1426.x, x_1426.y, x_1428);
        let x_1436 : vec3<f32> = txVec16;
        let x_1438 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1436.xy, x_1436.z);
        u_xlat66 = x_1438;
        let x_1440 : f32 = u_xlat17.w;
        let x_1441 : f32 = u_xlat66;
        let x_1444 : f32 = u_xlat46.x;
        u_xlat46.x = ((x_1440 * x_1441) + x_1444);
        let x_1448 : vec4<f32> = u_xlat13;
        let x_1449 : vec2<f32> = vec2<f32>(x_1448.x, x_1448.y);
        let x_1451 : f32 = vs_TEXCOORD6.z;
        txVec17 = vec3<f32>(x_1449.x, x_1449.y, x_1451);
        let x_1458 : vec3<f32> = txVec17;
        let x_1460 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1458.xy, x_1458.z);
        u_xlat66 = x_1460;
        let x_1462 : f32 = u_xlat18.x;
        let x_1463 : f32 = u_xlat66;
        let x_1466 : f32 = u_xlat46.x;
        u_xlat46.x = ((x_1462 * x_1463) + x_1466);
        let x_1470 : vec4<f32> = u_xlat13;
        let x_1471 : vec2<f32> = vec2<f32>(x_1470.z, x_1470.w);
        let x_1473 : f32 = vs_TEXCOORD6.z;
        txVec18 = vec3<f32>(x_1471.x, x_1471.y, x_1473);
        let x_1480 : vec3<f32> = txVec18;
        let x_1482 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1480.xy, x_1480.z);
        u_xlat66 = x_1482;
        let x_1484 : f32 = u_xlat18.y;
        let x_1485 : f32 = u_xlat66;
        let x_1488 : f32 = u_xlat46.x;
        u_xlat46.x = ((x_1484 * x_1485) + x_1488);
        let x_1492 : vec4<f32> = u_xlat14;
        let x_1493 : vec2<f32> = vec2<f32>(x_1492.x, x_1492.y);
        let x_1495 : f32 = vs_TEXCOORD6.z;
        txVec19 = vec3<f32>(x_1493.x, x_1493.y, x_1495);
        let x_1502 : vec3<f32> = txVec19;
        let x_1504 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1502.xy, x_1502.z);
        u_xlat66 = x_1504;
        let x_1506 : f32 = u_xlat18.z;
        let x_1507 : f32 = u_xlat66;
        let x_1510 : f32 = u_xlat46.x;
        u_xlat46.x = ((x_1506 * x_1507) + x_1510);
        let x_1514 : vec4<f32> = u_xlat15;
        let x_1515 : vec2<f32> = vec2<f32>(x_1514.z, x_1514.w);
        let x_1517 : f32 = vs_TEXCOORD6.z;
        txVec20 = vec3<f32>(x_1515.x, x_1515.y, x_1517);
        let x_1524 : vec3<f32> = txVec20;
        let x_1526 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1524.xy, x_1524.z);
        u_xlat66 = x_1526;
        let x_1528 : f32 = u_xlat18.w;
        let x_1529 : f32 = u_xlat66;
        let x_1532 : f32 = u_xlat46.x;
        u_xlat46.x = ((x_1528 * x_1529) + x_1532);
        let x_1536 : vec4<f32> = u_xlat16;
        let x_1537 : vec2<f32> = vec2<f32>(x_1536.x, x_1536.y);
        let x_1539 : f32 = vs_TEXCOORD6.z;
        txVec21 = vec3<f32>(x_1537.x, x_1537.y, x_1539);
        let x_1546 : vec3<f32> = txVec21;
        let x_1548 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1546.xy, x_1546.z);
        u_xlat66 = x_1548;
        let x_1550 : f32 = u_xlat19.x;
        let x_1551 : f32 = u_xlat66;
        let x_1554 : f32 = u_xlat46.x;
        u_xlat46.x = ((x_1550 * x_1551) + x_1554);
        let x_1558 : vec4<f32> = u_xlat16;
        let x_1559 : vec2<f32> = vec2<f32>(x_1558.z, x_1558.w);
        let x_1561 : f32 = vs_TEXCOORD6.z;
        txVec22 = vec3<f32>(x_1559.x, x_1559.y, x_1561);
        let x_1568 : vec3<f32> = txVec22;
        let x_1570 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1568.xy, x_1568.z);
        u_xlat66 = x_1570;
        let x_1572 : f32 = u_xlat19.y;
        let x_1573 : f32 = u_xlat66;
        let x_1576 : f32 = u_xlat46.x;
        u_xlat46.x = ((x_1572 * x_1573) + x_1576);
        let x_1580 : vec3<f32> = u_xlat28;
        let x_1581 : vec2<f32> = vec2<f32>(x_1580.x, x_1580.y);
        let x_1583 : f32 = vs_TEXCOORD6.z;
        txVec23 = vec3<f32>(x_1581.x, x_1581.y, x_1583);
        let x_1590 : vec3<f32> = txVec23;
        let x_1592 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1590.xy, x_1590.z);
        u_xlat66 = x_1592;
        let x_1594 : f32 = u_xlat19.z;
        let x_1595 : f32 = u_xlat66;
        let x_1598 : f32 = u_xlat46.x;
        u_xlat46.x = ((x_1594 * x_1595) + x_1598);
        let x_1602 : vec2<f32> = u_xlat54;
        let x_1604 : f32 = vs_TEXCOORD6.z;
        txVec24 = vec3<f32>(x_1602.x, x_1602.y, x_1604);
        let x_1611 : vec3<f32> = txVec24;
        let x_1613 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1611.xy, x_1611.z);
        u_xlat66 = x_1613;
        let x_1615 : f32 = u_xlat19.w;
        let x_1616 : f32 = u_xlat66;
        let x_1619 : f32 = u_xlat46.x;
        u_xlat46.x = ((x_1615 * x_1616) + x_1619);
        let x_1623 : vec4<f32> = u_xlat11;
        let x_1624 : vec2<f32> = vec2<f32>(x_1623.x, x_1623.y);
        let x_1626 : f32 = vs_TEXCOORD6.z;
        txVec25 = vec3<f32>(x_1624.x, x_1624.y, x_1626);
        let x_1633 : vec3<f32> = txVec25;
        let x_1635 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1633.xy, x_1633.z);
        u_xlat66 = x_1635;
        let x_1637 : f32 = u_xlat7.x;
        let x_1638 : f32 = u_xlat66;
        let x_1641 : f32 = u_xlat46.x;
        u_xlat46.x = ((x_1637 * x_1638) + x_1641);
        let x_1645 : vec4<f32> = u_xlat11;
        let x_1646 : vec2<f32> = vec2<f32>(x_1645.z, x_1645.w);
        let x_1648 : f32 = vs_TEXCOORD6.z;
        txVec26 = vec3<f32>(x_1646.x, x_1646.y, x_1648);
        let x_1655 : vec3<f32> = txVec26;
        let x_1657 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1655.xy, x_1655.z);
        u_xlat66 = x_1657;
        let x_1659 : f32 = u_xlat7.y;
        let x_1660 : f32 = u_xlat66;
        let x_1663 : f32 = u_xlat46.x;
        u_xlat46.x = ((x_1659 * x_1660) + x_1663);
        let x_1667 : vec2<f32> = u_xlat49;
        let x_1669 : f32 = vs_TEXCOORD6.z;
        txVec27 = vec3<f32>(x_1667.x, x_1667.y, x_1669);
        let x_1676 : vec3<f32> = txVec27;
        let x_1678 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1676.xy, x_1676.z);
        u_xlat66 = x_1678;
        let x_1680 : f32 = u_xlat7.z;
        let x_1681 : f32 = u_xlat66;
        let x_1684 : f32 = u_xlat46.x;
        u_xlat46.x = ((x_1680 * x_1681) + x_1684);
        let x_1688 : vec4<f32> = u_xlat6;
        let x_1689 : vec2<f32> = vec2<f32>(x_1688.x, x_1688.y);
        let x_1691 : f32 = vs_TEXCOORD6.z;
        txVec28 = vec3<f32>(x_1689.x, x_1689.y, x_1691);
        let x_1698 : vec3<f32> = txVec28;
        let x_1700 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1698.xy, x_1698.z);
        u_xlat6.x = x_1700;
        let x_1703 : f32 = u_xlat7.w;
        let x_1705 : f32 = u_xlat6.x;
        let x_1708 : f32 = u_xlat46.x;
        u_xlat64 = ((x_1703 * x_1705) + x_1708);
      }
    }
  } else {
    let x_1712 : vec4<f32> = vs_TEXCOORD6;
    let x_1713 : vec2<f32> = vec2<f32>(x_1712.x, x_1712.y);
    let x_1715 : f32 = vs_TEXCOORD6.z;
    txVec29 = vec3<f32>(x_1713.x, x_1713.y, x_1715);
    let x_1722 : vec3<f32> = txVec29;
    let x_1724 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1722.xy, x_1722.z);
    u_xlat64 = x_1724;
  }
  let x_1726 : f32 = x_463.x_MainLightShadowParams.x;
  u_xlat6.x = (-(x_1726) + 1.0f);
  let x_1730 : f32 = u_xlat64;
  let x_1732 : f32 = x_463.x_MainLightShadowParams.x;
  let x_1735 : f32 = u_xlat6.x;
  u_xlat64 = ((x_1730 * x_1732) + x_1735);
  let x_1738 : f32 = vs_TEXCOORD6.z;
  u_xlatb6 = (0.0f >= x_1738);
  let x_1742 : f32 = vs_TEXCOORD6.z;
  u_xlatb26 = (x_1742 >= 1.0f);
  let x_1744 : bool = u_xlatb26;
  let x_1745 : bool = u_xlatb6;
  u_xlatb6 = (x_1744 | x_1745);
  let x_1747 : bool = u_xlatb6;
  let x_1748 : f32 = u_xlat64;
  u_xlat64 = select(x_1748, 1.0f, x_1747);
  let x_1750 : vec3<f32> = vs_TEXCOORD1;
  let x_1752 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_1754 : vec3<f32> = (x_1750 + -(x_1752));
  let x_1755 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1754.x, x_1754.y, x_1754.z, x_1755.w);
  let x_1757 : vec4<f32> = u_xlat6;
  let x_1759 : vec4<f32> = u_xlat6;
  u_xlat6.x = dot(vec3<f32>(x_1757.x, x_1757.y, x_1757.z), vec3<f32>(x_1759.x, x_1759.y, x_1759.z));
  let x_1764 : f32 = u_xlat6.x;
  let x_1766 : f32 = x_463.x_MainLightShadowParams.z;
  let x_1769 : f32 = x_463.x_MainLightShadowParams.w;
  u_xlat6.x = ((x_1764 * x_1766) + x_1769);
  let x_1773 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_1773, 0.0f, 1.0f);
  let x_1776 : f32 = u_xlat64;
  u_xlat26 = (-(x_1776) + 1.0f);
  let x_1780 : f32 = u_xlat6.x;
  let x_1781 : f32 = u_xlat26;
  let x_1783 : f32 = u_xlat64;
  u_xlat64 = ((x_1780 * x_1781) + x_1783);
  let x_1785 : f32 = u_xlat65;
  let x_1789 : vec4<f32> = x_44.x_MainLightColor;
  let x_1791 : vec3<f32> = (vec3<f32>(x_1785, x_1785, x_1785) * vec3<f32>(x_1789.x, x_1789.y, x_1789.z));
  let x_1792 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1791.x, x_1791.y, x_1791.z, x_1792.w);
  let x_1794 : vec3<f32> = u_xlat5;
  let x_1796 : vec3<f32> = u_xlat23;
  u_xlat66 = dot(-(x_1794), x_1796);
  let x_1798 : f32 = u_xlat66;
  let x_1799 : f32 = u_xlat66;
  u_xlat66 = (x_1798 + x_1799);
  let x_1801 : vec3<f32> = u_xlat23;
  let x_1802 : f32 = u_xlat66;
  let x_1806 : vec3<f32> = u_xlat5;
  let x_1808 : vec3<f32> = ((x_1801 * -(vec3<f32>(x_1802, x_1802, x_1802))) + -(x_1806));
  let x_1809 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1808.x, x_1808.y, x_1808.z, x_1809.w);
  let x_1811 : vec3<f32> = u_xlat23;
  let x_1812 : vec3<f32> = u_xlat5;
  u_xlat66 = dot(x_1811, x_1812);
  let x_1814 : f32 = u_xlat66;
  u_xlat66 = clamp(x_1814, 0.0f, 1.0f);
  let x_1816 : f32 = u_xlat66;
  u_xlat66 = (-(x_1816) + 1.0f);
  let x_1819 : f32 = u_xlat66;
  let x_1820 : f32 = u_xlat66;
  u_xlat66 = (x_1819 * x_1820);
  let x_1822 : f32 = u_xlat66;
  let x_1823 : f32 = u_xlat66;
  u_xlat66 = (x_1822 * x_1823);
  let x_1826 : f32 = u_xlat60;
  u_xlat67 = ((-(x_1826) * 0.699999988f) + 1.700000048f);
  let x_1832 : f32 = u_xlat60;
  let x_1833 : f32 = u_xlat67;
  u_xlat60 = (x_1832 * x_1833);
  let x_1835 : f32 = u_xlat60;
  u_xlat60 = (x_1835 * 6.0f);
  let x_1846 : vec4<f32> = u_xlat7;
  let x_1848 : f32 = u_xlat60;
  let x_1849 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1846.x, x_1846.y, x_1846.z), x_1848);
  u_xlat7 = x_1849;
  let x_1851 : f32 = u_xlat7.w;
  u_xlat60 = (x_1851 + -1.0f);
  let x_1858 : f32 = x_1856.unity_SpecCube0_HDR.w;
  let x_1859 : f32 = u_xlat60;
  u_xlat60 = ((x_1858 * x_1859) + 1.0f);
  let x_1862 : f32 = u_xlat60;
  u_xlat60 = max(x_1862, 0.0f);
  let x_1864 : f32 = u_xlat60;
  u_xlat60 = log2(x_1864);
  let x_1866 : f32 = u_xlat60;
  let x_1868 : f32 = x_1856.unity_SpecCube0_HDR.y;
  u_xlat60 = (x_1866 * x_1868);
  let x_1870 : f32 = u_xlat60;
  u_xlat60 = exp2(x_1870);
  let x_1872 : f32 = u_xlat60;
  let x_1874 : f32 = x_1856.unity_SpecCube0_HDR.x;
  u_xlat60 = (x_1872 * x_1874);
  let x_1876 : vec4<f32> = u_xlat7;
  let x_1878 : f32 = u_xlat60;
  let x_1880 : vec3<f32> = (vec3<f32>(x_1876.x, x_1876.y, x_1876.z) * vec3<f32>(x_1878, x_1878, x_1878));
  let x_1881 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1880.x, x_1880.y, x_1880.z, x_1881.w);
  let x_1883 : vec2<f32> = u_xlat1;
  let x_1885 : vec2<f32> = u_xlat1;
  let x_1889 : vec2<f32> = ((vec2<f32>(x_1883.x, x_1883.x) * vec2<f32>(x_1885.x, x_1885.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_1890 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1889.x, x_1889.y, x_1890.z, x_1890.w);
  let x_1893 : f32 = u_xlat8.y;
  u_xlat60 = (1.0f / x_1893);
  let x_1895 : vec4<f32> = u_xlat0;
  let x_1898 : vec2<f32> = u_xlat41;
  u_xlat28 = (-(vec3<f32>(x_1895.x, x_1895.y, x_1895.z)) + vec3<f32>(x_1898.x, x_1898.x, x_1898.x));
  let x_1901 : f32 = u_xlat66;
  let x_1903 : vec3<f32> = u_xlat28;
  let x_1905 : vec4<f32> = u_xlat0;
  u_xlat28 = ((vec3<f32>(x_1901, x_1901, x_1901) * x_1903) + vec3<f32>(x_1905.x, x_1905.y, x_1905.z));
  let x_1908 : f32 = u_xlat60;
  let x_1910 : vec3<f32> = u_xlat28;
  u_xlat28 = (vec3<f32>(x_1908, x_1908, x_1908) * x_1910);
  let x_1912 : vec4<f32> = u_xlat7;
  let x_1914 : vec3<f32> = u_xlat28;
  let x_1915 : vec3<f32> = (vec3<f32>(x_1912.x, x_1912.y, x_1912.z) * x_1914);
  let x_1916 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1915.x, x_1915.y, x_1915.z, x_1916.w);
  let x_1918 : vec4<f32> = u_xlat4;
  let x_1920 : vec3<f32> = u_xlat22;
  let x_1922 : vec4<f32> = u_xlat7;
  let x_1924 : vec3<f32> = ((vec3<f32>(x_1918.x, x_1918.y, x_1918.z) * x_1920) + vec3<f32>(x_1922.x, x_1922.y, x_1922.z));
  let x_1925 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1924.x, x_1924.y, x_1924.z, x_1925.w);
  let x_1927 : f32 = u_xlat64;
  let x_1930 : f32 = x_1856.unity_LightData.z;
  u_xlat60 = (x_1927 * x_1930);
  let x_1932 : vec3<f32> = u_xlat23;
  let x_1934 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat1.x = dot(x_1932, vec3<f32>(x_1934.x, x_1934.y, x_1934.z));
  let x_1939 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1939, 0.0f, 1.0f);
  let x_1942 : f32 = u_xlat60;
  let x_1944 : f32 = u_xlat1.x;
  u_xlat60 = (x_1942 * x_1944);
  let x_1946 : f32 = u_xlat60;
  let x_1948 : vec4<f32> = u_xlat6;
  let x_1950 : vec3<f32> = (vec3<f32>(x_1946, x_1946, x_1946) * vec3<f32>(x_1948.x, x_1948.y, x_1948.z));
  let x_1951 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1950.x, x_1950.y, x_1950.z, x_1951.w);
  let x_1953 : vec3<f32> = u_xlat5;
  let x_1955 : vec4<f32> = x_44.x_MainLightPosition;
  let x_1957 : vec3<f32> = (x_1953 + vec3<f32>(x_1955.x, x_1955.y, x_1955.z));
  let x_1958 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1957.x, x_1957.y, x_1957.z, x_1958.w);
  let x_1960 : vec4<f32> = u_xlat7;
  let x_1962 : vec4<f32> = u_xlat7;
  u_xlat60 = dot(vec3<f32>(x_1960.x, x_1960.y, x_1960.z), vec3<f32>(x_1962.x, x_1962.y, x_1962.z));
  let x_1965 : f32 = u_xlat60;
  u_xlat60 = max(x_1965, 1.17549435e-37f);
  let x_1968 : f32 = u_xlat60;
  u_xlat60 = inverseSqrt(x_1968);
  let x_1970 : f32 = u_xlat60;
  let x_1972 : vec4<f32> = u_xlat7;
  let x_1974 : vec3<f32> = (vec3<f32>(x_1970, x_1970, x_1970) * vec3<f32>(x_1972.x, x_1972.y, x_1972.z));
  let x_1975 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1974.x, x_1974.y, x_1974.z, x_1975.w);
  let x_1977 : vec3<f32> = u_xlat23;
  let x_1978 : vec4<f32> = u_xlat7;
  u_xlat60 = dot(x_1977, vec3<f32>(x_1978.x, x_1978.y, x_1978.z));
  let x_1981 : f32 = u_xlat60;
  u_xlat60 = clamp(x_1981, 0.0f, 1.0f);
  let x_1984 : vec4<f32> = x_44.x_MainLightPosition;
  let x_1986 : vec4<f32> = u_xlat7;
  u_xlat1.x = dot(vec3<f32>(x_1984.x, x_1984.y, x_1984.z), vec3<f32>(x_1986.x, x_1986.y, x_1986.z));
  let x_1991 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1991, 0.0f, 1.0f);
  let x_1994 : f32 = u_xlat60;
  let x_1995 : f32 = u_xlat60;
  u_xlat60 = (x_1994 * x_1995);
  let x_1997 : f32 = u_xlat60;
  let x_1999 : f32 = u_xlat8.x;
  u_xlat60 = ((x_1997 * x_1999) + 1.000010014f);
  let x_2004 : f32 = u_xlat1.x;
  let x_2006 : f32 = u_xlat1.x;
  u_xlat1.x = (x_2004 * x_2006);
  let x_2009 : f32 = u_xlat60;
  let x_2010 : f32 = u_xlat60;
  u_xlat60 = (x_2009 * x_2010);
  let x_2013 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_2013, 0.100000001f);
  let x_2017 : f32 = u_xlat60;
  let x_2019 : f32 = u_xlat1.x;
  u_xlat60 = (x_2017 * x_2019);
  let x_2021 : f32 = u_xlat61;
  let x_2022 : f32 = u_xlat60;
  u_xlat60 = (x_2021 * x_2022);
  let x_2024 : f32 = u_xlat21;
  let x_2025 : f32 = u_xlat60;
  u_xlat60 = (x_2024 / x_2025);
  let x_2027 : vec4<f32> = u_xlat0;
  let x_2029 : f32 = u_xlat60;
  let x_2032 : vec3<f32> = u_xlat22;
  let x_2033 : vec3<f32> = ((vec3<f32>(x_2027.x, x_2027.y, x_2027.z) * vec3<f32>(x_2029, x_2029, x_2029)) + x_2032);
  let x_2034 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2033.x, x_2033.y, x_2033.z, x_2034.w);
  let x_2036 : vec4<f32> = u_xlat6;
  let x_2038 : vec4<f32> = u_xlat7;
  let x_2040 : vec3<f32> = (vec3<f32>(x_2036.x, x_2036.y, x_2036.z) * vec3<f32>(x_2038.x, x_2038.y, x_2038.z));
  let x_2041 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2040.x, x_2040.y, x_2040.z, x_2041.w);
  let x_2044 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_2046 : f32 = x_1856.unity_LightData.y;
  u_xlat60 = min(x_2044, x_2046);
  let x_2050 : f32 = u_xlat60;
  u_xlatu60 = bitcast<u32>(i32(x_2050));
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2062 : u32 = u_xlatu_loop_1;
    let x_2063 : u32 = u_xlatu60;
    if ((x_2062 < x_2063)) {
    } else {
      break;
    }
    let x_2066 : u32 = u_xlatu_loop_1;
    u_xlatu41 = (x_2066 >> 2u);
    let x_2070 : u32 = u_xlatu_loop_1;
    u_xlati64 = bitcast<i32>((x_2070 & 3u));
    let x_2073 : u32 = u_xlatu41;
    let x_2076 : vec4<f32> = x_1856.unity_LightIndices[bitcast<i32>(x_2073)];
    let x_2086 : i32 = u_xlati64;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2091 : vec4<u32> = indexable[x_2086];
    u_xlat41.x = dot(x_2076, bitcast<vec4<f32>>(x_2091));
    let x_2097 : f32 = u_xlat41.x;
    u_xlati41 = i32(x_2097);
    let x_2099 : vec3<f32> = vs_TEXCOORD1;
    let x_2111 : i32 = u_xlati41;
    let x_2113 : vec4<f32> = x_2110.x_AdditionalLightsPosition[x_2111];
    let x_2116 : i32 = u_xlati41;
    let x_2118 : vec4<f32> = x_2110.x_AdditionalLightsPosition[x_2116];
    u_xlat28 = ((-(x_2099) * vec3<f32>(x_2113.w, x_2113.w, x_2113.w)) + vec3<f32>(x_2118.x, x_2118.y, x_2118.z));
    let x_2121 : vec3<f32> = u_xlat28;
    let x_2122 : vec3<f32> = u_xlat28;
    u_xlat64 = dot(x_2121, x_2122);
    let x_2124 : f32 = u_xlat64;
    u_xlat64 = max(x_2124, 6.10351562e-05f);
    let x_2127 : f32 = u_xlat64;
    u_xlat66 = inverseSqrt(x_2127);
    let x_2129 : f32 = u_xlat66;
    let x_2131 : vec3<f32> = u_xlat28;
    let x_2132 : vec3<f32> = (vec3<f32>(x_2129, x_2129, x_2129) * x_2131);
    let x_2133 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2132.x, x_2132.y, x_2132.z, x_2133.w);
    let x_2135 : f32 = u_xlat64;
    u_xlat67 = (1.0f / x_2135);
    let x_2137 : f32 = u_xlat64;
    let x_2138 : i32 = u_xlati41;
    let x_2140 : f32 = x_2110.x_AdditionalLightsAttenuation[x_2138].x;
    u_xlat64 = (x_2137 * x_2140);
    let x_2142 : f32 = u_xlat64;
    let x_2144 : f32 = u_xlat64;
    u_xlat64 = ((-(x_2142) * x_2144) + 1.0f);
    let x_2147 : f32 = u_xlat64;
    u_xlat64 = max(x_2147, 0.0f);
    let x_2149 : f32 = u_xlat64;
    let x_2150 : f32 = u_xlat64;
    u_xlat64 = (x_2149 * x_2150);
    let x_2152 : f32 = u_xlat64;
    let x_2153 : f32 = u_xlat67;
    u_xlat64 = (x_2152 * x_2153);
    let x_2155 : i32 = u_xlati41;
    let x_2157 : vec4<f32> = x_2110.x_AdditionalLightsSpotDir[x_2155];
    let x_2159 : vec4<f32> = u_xlat9;
    u_xlat67 = dot(vec3<f32>(x_2157.x, x_2157.y, x_2157.z), vec3<f32>(x_2159.x, x_2159.y, x_2159.z));
    let x_2162 : f32 = u_xlat67;
    let x_2163 : i32 = u_xlati41;
    let x_2165 : f32 = x_2110.x_AdditionalLightsAttenuation[x_2163].z;
    let x_2167 : i32 = u_xlati41;
    let x_2169 : f32 = x_2110.x_AdditionalLightsAttenuation[x_2167].w;
    u_xlat67 = ((x_2162 * x_2165) + x_2169);
    let x_2171 : f32 = u_xlat67;
    u_xlat67 = clamp(x_2171, 0.0f, 1.0f);
    let x_2173 : f32 = u_xlat67;
    let x_2174 : f32 = u_xlat67;
    u_xlat67 = (x_2173 * x_2174);
    let x_2176 : f32 = u_xlat64;
    let x_2177 : f32 = u_xlat67;
    u_xlat64 = (x_2176 * x_2177);
    let x_2179 : f32 = u_xlat65;
    let x_2181 : i32 = u_xlati41;
    let x_2183 : vec4<f32> = x_2110.x_AdditionalLightsColor[x_2181];
    let x_2185 : vec3<f32> = (vec3<f32>(x_2179, x_2179, x_2179) * vec3<f32>(x_2183.x, x_2183.y, x_2183.z));
    let x_2186 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2185.x, x_2185.y, x_2185.z, x_2186.w);
    let x_2188 : vec3<f32> = u_xlat23;
    let x_2189 : vec4<f32> = u_xlat9;
    u_xlat41.x = dot(x_2188, vec3<f32>(x_2189.x, x_2189.y, x_2189.z));
    let x_2194 : f32 = u_xlat41.x;
    u_xlat41.x = clamp(x_2194, 0.0f, 1.0f);
    let x_2198 : f32 = u_xlat41.x;
    let x_2199 : f32 = u_xlat64;
    u_xlat41.x = (x_2198 * x_2199);
    let x_2202 : vec2<f32> = u_xlat41;
    let x_2204 : vec4<f32> = u_xlat10;
    let x_2206 : vec3<f32> = (vec3<f32>(x_2202.x, x_2202.x, x_2202.x) * vec3<f32>(x_2204.x, x_2204.y, x_2204.z));
    let x_2207 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2206.x, x_2206.y, x_2206.z, x_2207.w);
    let x_2209 : vec3<f32> = u_xlat28;
    let x_2210 : f32 = u_xlat66;
    let x_2213 : vec3<f32> = u_xlat5;
    u_xlat28 = ((x_2209 * vec3<f32>(x_2210, x_2210, x_2210)) + x_2213);
    let x_2215 : vec3<f32> = u_xlat28;
    let x_2216 : vec3<f32> = u_xlat28;
    u_xlat41.x = dot(x_2215, x_2216);
    let x_2220 : f32 = u_xlat41.x;
    u_xlat41.x = max(x_2220, 1.17549435e-37f);
    let x_2224 : f32 = u_xlat41.x;
    u_xlat41.x = inverseSqrt(x_2224);
    let x_2227 : vec2<f32> = u_xlat41;
    let x_2229 : vec3<f32> = u_xlat28;
    u_xlat28 = (vec3<f32>(x_2227.x, x_2227.x, x_2227.x) * x_2229);
    let x_2231 : vec3<f32> = u_xlat23;
    let x_2232 : vec3<f32> = u_xlat28;
    u_xlat41.x = dot(x_2231, x_2232);
    let x_2236 : f32 = u_xlat41.x;
    u_xlat41.x = clamp(x_2236, 0.0f, 1.0f);
    let x_2239 : vec4<f32> = u_xlat9;
    let x_2241 : vec3<f32> = u_xlat28;
    u_xlat64 = dot(vec3<f32>(x_2239.x, x_2239.y, x_2239.z), x_2241);
    let x_2243 : f32 = u_xlat64;
    u_xlat64 = clamp(x_2243, 0.0f, 1.0f);
    let x_2246 : f32 = u_xlat41.x;
    let x_2248 : f32 = u_xlat41.x;
    u_xlat41.x = (x_2246 * x_2248);
    let x_2252 : f32 = u_xlat41.x;
    let x_2254 : f32 = u_xlat8.x;
    u_xlat41.x = ((x_2252 * x_2254) + 1.000010014f);
    let x_2258 : f32 = u_xlat64;
    let x_2259 : f32 = u_xlat64;
    u_xlat64 = (x_2258 * x_2259);
    let x_2262 : f32 = u_xlat41.x;
    let x_2264 : f32 = u_xlat41.x;
    u_xlat41.x = (x_2262 * x_2264);
    let x_2267 : f32 = u_xlat64;
    u_xlat64 = max(x_2267, 0.100000001f);
    let x_2270 : f32 = u_xlat41.x;
    let x_2271 : f32 = u_xlat64;
    u_xlat41.x = (x_2270 * x_2271);
    let x_2274 : f32 = u_xlat61;
    let x_2276 : f32 = u_xlat41.x;
    u_xlat41.x = (x_2274 * x_2276);
    let x_2279 : f32 = u_xlat21;
    let x_2281 : f32 = u_xlat41.x;
    u_xlat41.x = (x_2279 / x_2281);
    let x_2284 : vec4<f32> = u_xlat0;
    let x_2286 : vec2<f32> = u_xlat41;
    let x_2289 : vec3<f32> = u_xlat22;
    u_xlat28 = ((vec3<f32>(x_2284.x, x_2284.y, x_2284.z) * vec3<f32>(x_2286.x, x_2286.x, x_2286.x)) + x_2289);
    let x_2291 : vec3<f32> = u_xlat28;
    let x_2292 : vec4<f32> = u_xlat10;
    let x_2295 : vec4<f32> = u_xlat7;
    let x_2297 : vec3<f32> = ((x_2291 * vec3<f32>(x_2292.x, x_2292.y, x_2292.z)) + vec3<f32>(x_2295.x, x_2295.y, x_2295.z));
    let x_2298 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2297.x, x_2297.y, x_2297.z, x_2298.w);

    continuing {
      let x_2300 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2300 + bitcast<u32>(1i));
    }
  }
  let x_2302 : vec4<f32> = u_xlat4;
  let x_2304 : vec3<f32> = u_xlat3;
  let x_2307 : vec4<f32> = u_xlat6;
  let x_2309 : vec3<f32> = ((vec3<f32>(x_2302.x, x_2302.y, x_2302.z) * vec3<f32>(x_2304.x, x_2304.x, x_2304.x)) + vec3<f32>(x_2307.x, x_2307.y, x_2307.z));
  let x_2310 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2309.x, x_2309.y, x_2309.z, x_2310.w);
  let x_2314 : vec4<f32> = u_xlat7;
  let x_2316 : vec4<f32> = u_xlat0;
  let x_2318 : vec3<f32> = (vec3<f32>(x_2314.x, x_2314.y, x_2314.z) + vec3<f32>(x_2316.x, x_2316.y, x_2316.z));
  let x_2319 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2318.x, x_2318.y, x_2318.z, x_2319.w);
  let x_2324 : f32 = x_69.x_Surface;
  u_xlatb0 = (x_2324 == 1.0f);
  let x_2326 : bool = u_xlatb0;
  if (x_2326) {
    let x_2331 : f32 = u_xlat2.x;
    x_2327 = x_2331;
  } else {
    x_2327 = 1.0f;
  }
  let x_2333 : f32 = x_2327;
  SV_Target0.w = x_2333;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(5) vs_TEXCOORD8_param : vec2<f32>, @location(4) vs_TEXCOORD6_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD8 = vs_TEXCOORD8_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  main_1();
  return main_out(SV_Target0);
}

