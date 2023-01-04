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

@group(0) @binding(2) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(10) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(0) @binding(5) var x_MetallicGlossMap : texture_2d<f32>;

@group(0) @binding(13) var sampler_MetallicGlossMap : sampler;

@group(1) @binding(3) var<uniform> x_69 : UnityPerMaterial;

@group(0) @binding(3) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(11) var sampler_BumpMap : sampler;

@group(0) @binding(4) var x_OcclusionMap : texture_2d<f32>;

@group(0) @binding(12) var sampler_OcclusionMap : sampler;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

@group(1) @binding(4) var<uniform> x_279 : MainLightShadows;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(9) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD8 : vec2<f32>;

@group(0) @binding(6) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(14) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(7) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(15) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_1997 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_2247 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec2<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat43 : vec2<f32>;
  var u_xlat63 : f32;
  var u_xlat24 : vec3<f32>;
  var u_xlatb24 : bool;
  var u_xlat4 : vec4<f32>;
  var u_xlat45 : f32;
  var u_xlat5 : vec3<f32>;
  var x_195 : f32;
  var x_208 : f32;
  var x_219 : f32;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlatb4 : vec4<bool>;
  var u_xlatu63 : u32;
  var u_xlati63 : i32;
  var u_xlat23 : vec3<f32>;
  var u_xlat22 : f32;
  var u_xlat64 : f32;
  var u_xlat67 : f32;
  var u_xlat68 : f32;
  var u_xlatb67 : bool;
  var txVec0 : vec3<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var u_xlatb69 : bool;
  var u_xlat49 : vec2<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat51 : vec2<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlat11 : vec4<f32>;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec4<f32>;
  var u_xlat14 : vec4<f32>;
  var u_xlat15 : vec4<f32>;
  var u_xlat69 : f32;
  var txVec4 : vec3<f32>;
  var txVec5 : vec3<f32>;
  var u_xlat28 : f32;
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
  var u_xlatb25 : bool;
  var u_xlatb46 : bool;
  var x_1885 : f32;
  var u_xlat25 : vec3<f32>;
  var u_xlat46 : f32;
  var u_xlat70 : f32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu43 : u32;
  var u_xlati67 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati43 : i32;
  var u_xlatb0 : bool;
  var x_2464 : f32;
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
  u_xlat43 = ((vec2<f32>(x_97.x, x_97.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_106 : vec2<f32> = u_xlat43;
  let x_107 : vec2<f32> = u_xlat43;
  u_xlat63 = dot(x_106, x_107);
  let x_109 : f32 = u_xlat63;
  u_xlat63 = min(x_109, 1.0f);
  let x_111 : f32 = u_xlat63;
  u_xlat63 = (-(x_111) + 1.0f);
  let x_114 : f32 = u_xlat63;
  u_xlat63 = sqrt(x_114);
  let x_116 : f32 = u_xlat63;
  u_xlat63 = max(x_116, 1.00000002e-16f);
  let x_119 : vec2<f32> = u_xlat43;
  let x_122 : f32 = x_69.x_BumpScale;
  let x_124 : f32 = x_69.x_BumpScale;
  let x_125 : vec2<f32> = vec2<f32>(x_122, x_124);
  u_xlat43 = (x_119 * vec2<f32>(x_125.x, x_125.y));
  let x_135 : vec2<f32> = vs_TEXCOORD0;
  let x_137 : f32 = x_44.x_GlobalMipBias.x;
  let x_138 : vec4<f32> = textureSampleBias(x_OcclusionMap, sampler_OcclusionMap, x_135, x_137);
  u_xlat3.x = x_138.y;
  let x_145 : f32 = x_69.x_OcclusionStrength;
  u_xlat24.x = (-(x_145) + 1.0f);
  let x_150 : f32 = u_xlat3.x;
  let x_152 : f32 = x_69.x_OcclusionStrength;
  let x_155 : f32 = u_xlat24.x;
  u_xlat3.x = ((x_150 * x_152) + x_155);
  let x_163 : f32 = x_44.unity_OrthoParams.w;
  u_xlatb24 = (x_163 == 0.0f);
  let x_169 : vec3<f32> = vs_TEXCOORD1;
  let x_174 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_175 : vec3<f32> = (-(x_169) + x_174);
  let x_176 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_175.x, x_175.y, x_175.z, x_176.w);
  let x_179 : vec4<f32> = u_xlat4;
  let x_181 : vec4<f32> = u_xlat4;
  u_xlat45 = dot(vec3<f32>(x_179.x, x_179.y, x_179.z), vec3<f32>(x_181.x, x_181.y, x_181.z));
  let x_184 : f32 = u_xlat45;
  u_xlat45 = inverseSqrt(x_184);
  let x_186 : f32 = u_xlat45;
  let x_188 : vec4<f32> = u_xlat4;
  let x_190 : vec3<f32> = (vec3<f32>(x_186, x_186, x_186) * vec3<f32>(x_188.x, x_188.y, x_188.z));
  let x_191 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_190.x, x_190.y, x_190.z, x_191.w);
  let x_194 : bool = u_xlatb24;
  if (x_194) {
    let x_199 : f32 = u_xlat4.x;
    x_195 = x_199;
  } else {
    let x_204 : f32 = x_44.unity_MatrixV[0i].z;
    x_195 = x_204;
  }
  let x_205 : f32 = x_195;
  u_xlat5.x = x_205;
  let x_207 : bool = u_xlatb24;
  if (x_207) {
    let x_212 : f32 = u_xlat4.y;
    x_208 = x_212;
  } else {
    let x_215 : f32 = x_44.unity_MatrixV[1i].z;
    x_208 = x_215;
  }
  let x_216 : f32 = x_208;
  u_xlat5.y = x_216;
  let x_218 : bool = u_xlatb24;
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
  u_xlat24 = (vec3<f32>(x_230.z, x_230.x, x_230.y) * vec3<f32>(x_233.y, x_233.z, x_233.x));
  let x_236 : vec3<f32> = vs_TEXCOORD2;
  let x_238 : vec4<f32> = vs_TEXCOORD3;
  let x_241 : vec3<f32> = u_xlat24;
  u_xlat24 = ((vec3<f32>(x_236.y, x_236.z, x_236.x) * vec3<f32>(x_238.z, x_238.x, x_238.y)) + -(x_241));
  let x_244 : vec3<f32> = u_xlat24;
  let x_245 : vec4<f32> = vs_TEXCOORD3;
  u_xlat24 = (x_244 * vec3<f32>(x_245.w, x_245.w, x_245.w));
  let x_248 : vec2<f32> = u_xlat43;
  let x_250 : vec3<f32> = u_xlat24;
  u_xlat24 = (vec3<f32>(x_248.y, x_248.y, x_248.y) * x_250);
  let x_252 : vec2<f32> = u_xlat43;
  let x_254 : vec4<f32> = vs_TEXCOORD3;
  let x_257 : vec3<f32> = u_xlat24;
  u_xlat24 = ((vec3<f32>(x_252.x, x_252.x, x_252.x) * vec3<f32>(x_254.x, x_254.y, x_254.z)) + x_257);
  let x_259 : f32 = u_xlat63;
  let x_261 : vec3<f32> = vs_TEXCOORD2;
  let x_263 : vec3<f32> = u_xlat24;
  u_xlat24 = ((vec3<f32>(x_259, x_259, x_259) * x_261) + x_263);
  let x_265 : vec3<f32> = u_xlat24;
  let x_266 : vec3<f32> = u_xlat24;
  u_xlat63 = dot(x_265, x_266);
  let x_268 : f32 = u_xlat63;
  u_xlat63 = inverseSqrt(x_268);
  let x_270 : f32 = u_xlat63;
  let x_272 : vec3<f32> = u_xlat24;
  u_xlat24 = (vec3<f32>(x_270, x_270, x_270) * x_272);
  let x_274 : vec3<f32> = vs_TEXCOORD1;
  let x_281 : vec4<f32> = x_279.x_CascadeShadowSplitSpheres0;
  let x_284 : vec3<f32> = (x_274 + -(vec3<f32>(x_281.x, x_281.y, x_281.z)));
  let x_285 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_284.x, x_284.y, x_284.z, x_285.w);
  let x_288 : vec3<f32> = vs_TEXCOORD1;
  let x_290 : vec4<f32> = x_279.x_CascadeShadowSplitSpheres1;
  let x_293 : vec3<f32> = (x_288 + -(vec3<f32>(x_290.x, x_290.y, x_290.z)));
  let x_294 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_293.x, x_293.y, x_293.z, x_294.w);
  let x_297 : vec3<f32> = vs_TEXCOORD1;
  let x_300 : vec4<f32> = x_279.x_CascadeShadowSplitSpheres2;
  let x_303 : vec3<f32> = (x_297 + -(vec3<f32>(x_300.x, x_300.y, x_300.z)));
  let x_304 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_303.x, x_303.y, x_303.z, x_304.w);
  let x_307 : vec3<f32> = vs_TEXCOORD1;
  let x_310 : vec4<f32> = x_279.x_CascadeShadowSplitSpheres3;
  let x_313 : vec3<f32> = (x_307 + -(vec3<f32>(x_310.x, x_310.y, x_310.z)));
  let x_314 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_313.x, x_313.y, x_313.z, x_314.w);
  let x_316 : vec4<f32> = u_xlat4;
  let x_318 : vec4<f32> = u_xlat4;
  u_xlat4.x = dot(vec3<f32>(x_316.x, x_316.y, x_316.z), vec3<f32>(x_318.x, x_318.y, x_318.z));
  let x_322 : vec4<f32> = u_xlat6;
  let x_324 : vec4<f32> = u_xlat6;
  u_xlat4.y = dot(vec3<f32>(x_322.x, x_322.y, x_322.z), vec3<f32>(x_324.x, x_324.y, x_324.z));
  let x_328 : vec4<f32> = u_xlat7;
  let x_330 : vec4<f32> = u_xlat7;
  u_xlat4.z = dot(vec3<f32>(x_328.x, x_328.y, x_328.z), vec3<f32>(x_330.x, x_330.y, x_330.z));
  let x_334 : vec4<f32> = u_xlat8;
  let x_336 : vec4<f32> = u_xlat8;
  u_xlat4.w = dot(vec3<f32>(x_334.x, x_334.y, x_334.z), vec3<f32>(x_336.x, x_336.y, x_336.z));
  let x_343 : vec4<f32> = u_xlat4;
  let x_346 : vec4<f32> = x_279.x_CascadeShadowSplitSphereRadii;
  u_xlatb4 = (x_343 < x_346);
  let x_349 : bool = u_xlatb4.x;
  u_xlat6.x = select(0.0f, 1.0f, x_349);
  let x_353 : bool = u_xlatb4.y;
  u_xlat6.y = select(0.0f, 1.0f, x_353);
  let x_357 : bool = u_xlatb4.z;
  u_xlat6.z = select(0.0f, 1.0f, x_357);
  let x_361 : bool = u_xlatb4.w;
  u_xlat6.w = select(0.0f, 1.0f, x_361);
  let x_365 : bool = u_xlatb4.x;
  u_xlat4.x = select(-0.0f, -1.0f, x_365);
  let x_370 : bool = u_xlatb4.y;
  u_xlat4.y = select(-0.0f, -1.0f, x_370);
  let x_374 : bool = u_xlatb4.z;
  u_xlat4.z = select(-0.0f, -1.0f, x_374);
  let x_377 : vec4<f32> = u_xlat4;
  let x_379 : vec4<f32> = u_xlat6;
  let x_381 : vec3<f32> = (vec3<f32>(x_377.x, x_377.y, x_377.z) + vec3<f32>(x_379.y, x_379.z, x_379.w));
  let x_382 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_381.x, x_381.y, x_381.z, x_382.w);
  let x_384 : vec4<f32> = u_xlat4;
  let x_387 : vec3<f32> = max(vec3<f32>(x_384.x, x_384.y, x_384.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_388 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_388.x, x_387.x, x_387.y, x_387.z);
  let x_390 : vec4<f32> = u_xlat6;
  u_xlat63 = dot(x_390, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_395 : f32 = u_xlat63;
  u_xlat63 = (-(x_395) + 4.0f);
  let x_400 : f32 = u_xlat63;
  u_xlatu63 = u32(x_400);
  let x_404 : u32 = u_xlatu63;
  u_xlati63 = (bitcast<i32>(x_404) << bitcast<u32>(2i));
  let x_407 : vec3<f32> = vs_TEXCOORD1;
  let x_409 : i32 = u_xlati63;
  let x_412 : i32 = u_xlati63;
  let x_416 : vec4<f32> = x_279.x_MainLightWorldToShadow[((x_409 + 1i) / 4i)][((x_412 + 1i) % 4i)];
  let x_418 : vec3<f32> = (vec3<f32>(x_407.y, x_407.y, x_407.y) * vec3<f32>(x_416.x, x_416.y, x_416.z));
  let x_419 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_418.x, x_418.y, x_418.z, x_419.w);
  let x_421 : i32 = u_xlati63;
  let x_423 : i32 = u_xlati63;
  let x_426 : vec4<f32> = x_279.x_MainLightWorldToShadow[(x_421 / 4i)][(x_423 % 4i)];
  let x_428 : vec3<f32> = vs_TEXCOORD1;
  let x_431 : vec4<f32> = u_xlat4;
  let x_433 : vec3<f32> = ((vec3<f32>(x_426.x, x_426.y, x_426.z) * vec3<f32>(x_428.x, x_428.x, x_428.x)) + vec3<f32>(x_431.x, x_431.y, x_431.z));
  let x_434 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_433.x, x_433.y, x_433.z, x_434.w);
  let x_436 : i32 = u_xlati63;
  let x_439 : i32 = u_xlati63;
  let x_443 : vec4<f32> = x_279.x_MainLightWorldToShadow[((x_436 + 2i) / 4i)][((x_439 + 2i) % 4i)];
  let x_445 : vec3<f32> = vs_TEXCOORD1;
  let x_448 : vec4<f32> = u_xlat4;
  let x_450 : vec3<f32> = ((vec3<f32>(x_443.x, x_443.y, x_443.z) * vec3<f32>(x_445.z, x_445.z, x_445.z)) + vec3<f32>(x_448.x, x_448.y, x_448.z));
  let x_451 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_450.x, x_450.y, x_450.z, x_451.w);
  let x_453 : vec4<f32> = u_xlat4;
  let x_455 : i32 = u_xlati63;
  let x_458 : i32 = u_xlati63;
  let x_462 : vec4<f32> = x_279.x_MainLightWorldToShadow[((x_455 + 3i) / 4i)][((x_458 + 3i) % 4i)];
  let x_464 : vec3<f32> = (vec3<f32>(x_453.x, x_453.y, x_453.z) + vec3<f32>(x_462.x, x_462.y, x_462.z));
  let x_465 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_464.x, x_464.y, x_464.z, x_465.w);
  let x_473 : vec2<f32> = vs_TEXCOORD8;
  let x_475 : f32 = x_44.x_GlobalMipBias.x;
  let x_476 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_473, x_475);
  let x_477 : vec3<f32> = vec3<f32>(x_476.x, x_476.y, x_476.z);
  let x_478 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_477.x, x_477.y, x_477.z, x_478.w);
  let x_482 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_483 : vec2<f32> = vec2<f32>(x_482.x, x_482.y);
  u_xlat43 = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_483.x, x_483.y));
  let x_488 : vec2<f32> = u_xlat43;
  let x_489 : vec4<f32> = hlslcc_FragCoord;
  let x_491 : vec2<f32> = (x_488 * vec2<f32>(x_489.x, x_489.y));
  let x_492 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_491.x, x_491.y, x_492.z, x_492.w);
  let x_495 : f32 = u_xlat7.y;
  let x_497 : f32 = x_44.x_ScaleBiasRt.x;
  let x_500 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat63 = ((x_495 * x_497) + x_500);
  let x_502 : f32 = u_xlat63;
  u_xlat7.z = (-(x_502) + 1.0f);
  let x_507 : f32 = u_xlat1.x;
  u_xlat63 = ((-(x_507) * 0.959999979f) + 0.959999979f);
  let x_513 : f32 = u_xlat1.y;
  let x_515 : f32 = x_69.x_Smoothness;
  let x_517 : f32 = u_xlat63;
  u_xlat43.x = ((x_513 * x_515) + -(x_517));
  let x_522 : f32 = u_xlat63;
  let x_524 : vec4<f32> = u_xlat2;
  u_xlat23 = (vec3<f32>(x_522, x_522, x_522) * vec3<f32>(x_524.y, x_524.z, x_524.w));
  let x_527 : vec4<f32> = u_xlat0;
  let x_530 : vec4<f32> = x_69.x_BaseColor;
  let x_535 : vec3<f32> = ((vec3<f32>(x_527.x, x_527.y, x_527.z) * vec3<f32>(x_530.x, x_530.y, x_530.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_536 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_535.x, x_535.y, x_535.z, x_536.w);
  let x_538 : vec2<f32> = u_xlat1;
  let x_540 : vec4<f32> = u_xlat0;
  let x_545 : vec3<f32> = ((vec3<f32>(x_538.x, x_538.x, x_538.x) * vec3<f32>(x_540.x, x_540.y, x_540.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_546 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_545.x, x_545.y, x_545.z, x_546.w);
  let x_549 : f32 = u_xlat1.y;
  let x_552 : f32 = x_69.x_Smoothness;
  u_xlat63 = ((-(x_549) * x_552) + 1.0f);
  let x_555 : f32 = u_xlat63;
  let x_556 : f32 = u_xlat63;
  u_xlat1.x = (x_555 * x_556);
  let x_560 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_560, 0.0078125f);
  let x_566 : f32 = u_xlat1.x;
  let x_568 : f32 = u_xlat1.x;
  u_xlat22 = (x_566 * x_568);
  let x_571 : f32 = u_xlat43.x;
  u_xlat43.x = (x_571 + 1.0f);
  let x_575 : f32 = u_xlat43.x;
  u_xlat43.x = clamp(x_575, 0.0f, 1.0f);
  let x_580 : f32 = u_xlat1.x;
  u_xlat64 = ((x_580 * 4.0f) + 2.0f);
  let x_589 : vec4<f32> = u_xlat7;
  let x_592 : f32 = x_44.x_GlobalMipBias.x;
  let x_593 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_589.x, x_589.z), x_592);
  u_xlat67 = x_593.x;
  let x_596 : f32 = u_xlat67;
  u_xlat68 = (x_596 + -1.0f);
  let x_599 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_600 : f32 = u_xlat68;
  u_xlat68 = ((x_599 * x_600) + 1.0f);
  let x_604 : f32 = u_xlat3.x;
  let x_605 : f32 = u_xlat67;
  u_xlat3.x = min(x_604, x_605);
  let x_610 : f32 = x_279.x_MainLightShadowParams.y;
  u_xlatb67 = (0.0f < x_610);
  let x_612 : bool = u_xlatb67;
  if (x_612) {
    let x_616 : f32 = x_279.x_MainLightShadowParams.y;
    u_xlatb67 = (x_616 == 1.0f);
    let x_618 : bool = u_xlatb67;
    if (x_618) {
      let x_621 : vec4<f32> = u_xlat4;
      let x_624 : vec4<f32> = x_279.x_MainLightShadowOffset0;
      u_xlat7 = (vec4<f32>(x_621.x, x_621.y, x_621.x, x_621.y) + x_624);
      let x_627 : vec4<f32> = u_xlat7;
      let x_628 : vec2<f32> = vec2<f32>(x_627.x, x_627.y);
      let x_630 : f32 = u_xlat4.z;
      txVec0 = vec3<f32>(x_628.x, x_628.y, x_630);
      let x_642 : vec3<f32> = txVec0;
      let x_644 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_642.xy, x_642.z);
      u_xlat8.x = x_644;
      let x_647 : vec4<f32> = u_xlat7;
      let x_648 : vec2<f32> = vec2<f32>(x_647.z, x_647.w);
      let x_650 : f32 = u_xlat4.z;
      txVec1 = vec3<f32>(x_648.x, x_648.y, x_650);
      let x_657 : vec3<f32> = txVec1;
      let x_659 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_657.xy, x_657.z);
      u_xlat8.y = x_659;
      let x_661 : vec4<f32> = u_xlat4;
      let x_664 : vec4<f32> = x_279.x_MainLightShadowOffset1;
      u_xlat7 = (vec4<f32>(x_661.x, x_661.y, x_661.x, x_661.y) + x_664);
      let x_667 : vec4<f32> = u_xlat7;
      let x_668 : vec2<f32> = vec2<f32>(x_667.x, x_667.y);
      let x_670 : f32 = u_xlat4.z;
      txVec2 = vec3<f32>(x_668.x, x_668.y, x_670);
      let x_677 : vec3<f32> = txVec2;
      let x_679 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_677.xy, x_677.z);
      u_xlat8.z = x_679;
      let x_682 : vec4<f32> = u_xlat7;
      let x_683 : vec2<f32> = vec2<f32>(x_682.z, x_682.w);
      let x_685 : f32 = u_xlat4.z;
      txVec3 = vec3<f32>(x_683.x, x_683.y, x_685);
      let x_692 : vec3<f32> = txVec3;
      let x_694 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_692.xy, x_692.z);
      u_xlat8.w = x_694;
      let x_696 : vec4<f32> = u_xlat8;
      u_xlat67 = dot(x_696, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_703 : f32 = x_279.x_MainLightShadowParams.y;
      u_xlatb69 = (x_703 == 2.0f);
      let x_705 : bool = u_xlatb69;
      if (x_705) {
        let x_708 : vec4<f32> = u_xlat4;
        let x_711 : vec4<f32> = x_279.x_MainLightShadowmapSize;
        let x_716 : vec2<f32> = ((vec2<f32>(x_708.x, x_708.y) * vec2<f32>(x_711.z, x_711.w)) + vec2<f32>(0.5f, 0.5f));
        let x_717 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_716.x, x_716.y, x_717.z, x_717.w);
        let x_719 : vec4<f32> = u_xlat7;
        let x_721 : vec2<f32> = floor(vec2<f32>(x_719.x, x_719.y));
        let x_722 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_721.x, x_721.y, x_722.z, x_722.w);
        let x_725 : vec4<f32> = u_xlat4;
        let x_728 : vec4<f32> = x_279.x_MainLightShadowmapSize;
        let x_731 : vec4<f32> = u_xlat7;
        u_xlat49 = ((vec2<f32>(x_725.x, x_725.y) * vec2<f32>(x_728.z, x_728.w)) + -(vec2<f32>(x_731.x, x_731.y)));
        let x_735 : vec2<f32> = u_xlat49;
        u_xlat8 = (vec4<f32>(x_735.x, x_735.x, x_735.y, x_735.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_740 : vec4<f32> = u_xlat8;
        let x_742 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_740.x, x_740.x, x_740.z, x_740.z) * vec4<f32>(x_742.x, x_742.x, x_742.z, x_742.z));
        let x_745 : vec4<f32> = u_xlat9;
        let x_749 : vec2<f32> = (vec2<f32>(x_745.y, x_745.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_750 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_749.x, x_750.y, x_749.y, x_750.w);
        let x_752 : vec4<f32> = u_xlat9;
        let x_755 : vec2<f32> = u_xlat49;
        let x_757 : vec2<f32> = ((vec2<f32>(x_752.x, x_752.z) * vec2<f32>(0.5f, 0.5f)) + -(x_755));
        let x_758 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_757.x, x_757.y, x_758.z, x_758.w);
        let x_761 : vec2<f32> = u_xlat49;
        u_xlat51 = (-(x_761) + vec2<f32>(1.0f, 1.0f));
        let x_765 : vec2<f32> = u_xlat49;
        let x_767 : vec2<f32> = min(x_765, vec2<f32>(0.0f, 0.0f));
        let x_768 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_767.x, x_767.y, x_768.z, x_768.w);
        let x_770 : vec4<f32> = u_xlat10;
        let x_773 : vec4<f32> = u_xlat10;
        let x_776 : vec2<f32> = u_xlat51;
        let x_777 : vec2<f32> = ((-(vec2<f32>(x_770.x, x_770.y)) * vec2<f32>(x_773.x, x_773.y)) + x_776);
        let x_778 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_777.x, x_777.y, x_778.z, x_778.w);
        let x_780 : vec2<f32> = u_xlat49;
        u_xlat49 = max(x_780, vec2<f32>(0.0f, 0.0f));
        let x_782 : vec2<f32> = u_xlat49;
        let x_784 : vec2<f32> = u_xlat49;
        let x_786 : vec4<f32> = u_xlat8;
        u_xlat49 = ((-(x_782) * x_784) + vec2<f32>(x_786.y, x_786.w));
        let x_789 : vec4<f32> = u_xlat10;
        let x_791 : vec2<f32> = (vec2<f32>(x_789.x, x_789.y) + vec2<f32>(1.0f, 1.0f));
        let x_792 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_791.x, x_791.y, x_792.z, x_792.w);
        let x_794 : vec2<f32> = u_xlat49;
        u_xlat49 = (x_794 + vec2<f32>(1.0f, 1.0f));
        let x_797 : vec4<f32> = u_xlat9;
        let x_801 : vec2<f32> = (vec2<f32>(x_797.x, x_797.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_802 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_801.x, x_801.y, x_802.z, x_802.w);
        let x_804 : vec2<f32> = u_xlat51;
        let x_805 : vec2<f32> = (x_804 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_806 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_805.x, x_805.y, x_806.z, x_806.w);
        let x_808 : vec4<f32> = u_xlat10;
        let x_810 : vec2<f32> = (vec2<f32>(x_808.x, x_808.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_811 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_810.x, x_810.y, x_811.z, x_811.w);
        let x_814 : vec2<f32> = u_xlat49;
        let x_815 : vec2<f32> = (x_814 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_816 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_815.x, x_815.y, x_816.z, x_816.w);
        let x_818 : vec4<f32> = u_xlat8;
        u_xlat49 = (vec2<f32>(x_818.y, x_818.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_822 : f32 = u_xlat10.x;
        u_xlat11.z = x_822;
        let x_825 : f32 = u_xlat49.x;
        u_xlat11.w = x_825;
        let x_828 : f32 = u_xlat12.x;
        u_xlat9.z = x_828;
        let x_831 : f32 = u_xlat8.x;
        u_xlat9.w = x_831;
        let x_834 : vec4<f32> = u_xlat9;
        let x_836 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_834.z, x_834.w, x_834.x, x_834.z) + vec4<f32>(x_836.z, x_836.w, x_836.x, x_836.z));
        let x_840 : f32 = u_xlat11.y;
        u_xlat10.z = x_840;
        let x_843 : f32 = u_xlat49.y;
        u_xlat10.w = x_843;
        let x_846 : f32 = u_xlat9.y;
        u_xlat12.z = x_846;
        let x_849 : f32 = u_xlat8.z;
        u_xlat12.w = x_849;
        let x_851 : vec4<f32> = u_xlat10;
        let x_853 : vec4<f32> = u_xlat12;
        let x_855 : vec3<f32> = (vec3<f32>(x_851.z, x_851.y, x_851.w) + vec3<f32>(x_853.z, x_853.y, x_853.w));
        let x_856 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_855.x, x_855.y, x_855.z, x_856.w);
        let x_858 : vec4<f32> = u_xlat9;
        let x_860 : vec4<f32> = u_xlat13;
        let x_862 : vec3<f32> = (vec3<f32>(x_858.x, x_858.z, x_858.w) / vec3<f32>(x_860.z, x_860.w, x_860.y));
        let x_863 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_862.x, x_862.y, x_862.z, x_863.w);
        let x_865 : vec4<f32> = u_xlat9;
        let x_871 : vec3<f32> = (vec3<f32>(x_865.x, x_865.y, x_865.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_872 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_871.x, x_871.y, x_871.z, x_872.w);
        let x_874 : vec4<f32> = u_xlat12;
        let x_876 : vec4<f32> = u_xlat8;
        let x_878 : vec3<f32> = (vec3<f32>(x_874.z, x_874.y, x_874.w) / vec3<f32>(x_876.x, x_876.y, x_876.z));
        let x_879 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_878.x, x_878.y, x_878.z, x_879.w);
        let x_881 : vec4<f32> = u_xlat10;
        let x_883 : vec3<f32> = (vec3<f32>(x_881.x, x_881.y, x_881.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_884 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_883.x, x_883.y, x_883.z, x_884.w);
        let x_886 : vec4<f32> = u_xlat9;
        let x_889 : vec4<f32> = x_279.x_MainLightShadowmapSize;
        let x_891 : vec3<f32> = (vec3<f32>(x_886.y, x_886.x, x_886.z) * vec3<f32>(x_889.x, x_889.x, x_889.x));
        let x_892 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_891.x, x_891.y, x_891.z, x_892.w);
        let x_894 : vec4<f32> = u_xlat10;
        let x_897 : vec4<f32> = x_279.x_MainLightShadowmapSize;
        let x_899 : vec3<f32> = (vec3<f32>(x_894.x, x_894.y, x_894.z) * vec3<f32>(x_897.y, x_897.y, x_897.y));
        let x_900 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_899.x, x_899.y, x_899.z, x_900.w);
        let x_903 : f32 = u_xlat10.x;
        u_xlat9.w = x_903;
        let x_905 : vec4<f32> = u_xlat7;
        let x_908 : vec4<f32> = x_279.x_MainLightShadowmapSize;
        let x_911 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_905.x, x_905.y, x_905.x, x_905.y) * vec4<f32>(x_908.x, x_908.y, x_908.x, x_908.y)) + vec4<f32>(x_911.y, x_911.w, x_911.x, x_911.w));
        let x_914 : vec4<f32> = u_xlat7;
        let x_917 : vec4<f32> = x_279.x_MainLightShadowmapSize;
        let x_920 : vec4<f32> = u_xlat9;
        u_xlat49 = ((vec2<f32>(x_914.x, x_914.y) * vec2<f32>(x_917.x, x_917.y)) + vec2<f32>(x_920.z, x_920.w));
        let x_924 : f32 = u_xlat9.y;
        u_xlat10.w = x_924;
        let x_926 : vec4<f32> = u_xlat10;
        let x_927 : vec2<f32> = vec2<f32>(x_926.y, x_926.z);
        let x_928 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_928.x, x_927.x, x_928.z, x_927.y);
        let x_930 : vec4<f32> = u_xlat7;
        let x_933 : vec4<f32> = x_279.x_MainLightShadowmapSize;
        let x_936 : vec4<f32> = u_xlat9;
        u_xlat12 = ((vec4<f32>(x_930.x, x_930.y, x_930.x, x_930.y) * vec4<f32>(x_933.x, x_933.y, x_933.x, x_933.y)) + vec4<f32>(x_936.x, x_936.y, x_936.z, x_936.y));
        let x_939 : vec4<f32> = u_xlat7;
        let x_942 : vec4<f32> = x_279.x_MainLightShadowmapSize;
        let x_945 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_939.x, x_939.y, x_939.x, x_939.y) * vec4<f32>(x_942.x, x_942.y, x_942.x, x_942.y)) + vec4<f32>(x_945.w, x_945.y, x_945.w, x_945.z));
        let x_948 : vec4<f32> = u_xlat7;
        let x_951 : vec4<f32> = x_279.x_MainLightShadowmapSize;
        let x_954 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_948.x, x_948.y, x_948.x, x_948.y) * vec4<f32>(x_951.x, x_951.y, x_951.x, x_951.y)) + vec4<f32>(x_954.x, x_954.w, x_954.z, x_954.w));
        let x_958 : vec4<f32> = u_xlat8;
        let x_960 : vec4<f32> = u_xlat13;
        u_xlat14 = (vec4<f32>(x_958.x, x_958.x, x_958.x, x_958.y) * vec4<f32>(x_960.z, x_960.w, x_960.y, x_960.z));
        let x_964 : vec4<f32> = u_xlat8;
        let x_966 : vec4<f32> = u_xlat13;
        u_xlat15 = (vec4<f32>(x_964.y, x_964.y, x_964.z, x_964.z) * x_966);
        let x_970 : f32 = u_xlat8.z;
        let x_972 : f32 = u_xlat13.y;
        u_xlat69 = (x_970 * x_972);
        let x_975 : vec4<f32> = u_xlat11;
        let x_976 : vec2<f32> = vec2<f32>(x_975.x, x_975.y);
        let x_978 : f32 = u_xlat4.z;
        txVec4 = vec3<f32>(x_976.x, x_976.y, x_978);
        let x_985 : vec3<f32> = txVec4;
        let x_987 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_985.xy, x_985.z);
        u_xlat7.x = x_987;
        let x_990 : vec4<f32> = u_xlat11;
        let x_991 : vec2<f32> = vec2<f32>(x_990.z, x_990.w);
        let x_993 : f32 = u_xlat4.z;
        txVec5 = vec3<f32>(x_991.x, x_991.y, x_993);
        let x_1001 : vec3<f32> = txVec5;
        let x_1003 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1001.xy, x_1001.z);
        u_xlat28 = x_1003;
        let x_1004 : f32 = u_xlat28;
        let x_1006 : f32 = u_xlat14.y;
        u_xlat28 = (x_1004 * x_1006);
        let x_1009 : f32 = u_xlat14.x;
        let x_1011 : f32 = u_xlat7.x;
        let x_1013 : f32 = u_xlat28;
        u_xlat7.x = ((x_1009 * x_1011) + x_1013);
        let x_1017 : vec2<f32> = u_xlat49;
        let x_1019 : f32 = u_xlat4.z;
        txVec6 = vec3<f32>(x_1017.x, x_1017.y, x_1019);
        let x_1026 : vec3<f32> = txVec6;
        let x_1028 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1026.xy, x_1026.z);
        u_xlat28 = x_1028;
        let x_1030 : f32 = u_xlat14.z;
        let x_1031 : f32 = u_xlat28;
        let x_1034 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1030 * x_1031) + x_1034);
        let x_1038 : vec4<f32> = u_xlat10;
        let x_1039 : vec2<f32> = vec2<f32>(x_1038.x, x_1038.y);
        let x_1041 : f32 = u_xlat4.z;
        txVec7 = vec3<f32>(x_1039.x, x_1039.y, x_1041);
        let x_1048 : vec3<f32> = txVec7;
        let x_1050 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1048.xy, x_1048.z);
        u_xlat28 = x_1050;
        let x_1052 : f32 = u_xlat14.w;
        let x_1053 : f32 = u_xlat28;
        let x_1056 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1052 * x_1053) + x_1056);
        let x_1060 : vec4<f32> = u_xlat12;
        let x_1061 : vec2<f32> = vec2<f32>(x_1060.x, x_1060.y);
        let x_1063 : f32 = u_xlat4.z;
        txVec8 = vec3<f32>(x_1061.x, x_1061.y, x_1063);
        let x_1070 : vec3<f32> = txVec8;
        let x_1072 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1070.xy, x_1070.z);
        u_xlat28 = x_1072;
        let x_1074 : f32 = u_xlat15.x;
        let x_1075 : f32 = u_xlat28;
        let x_1078 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1074 * x_1075) + x_1078);
        let x_1082 : vec4<f32> = u_xlat12;
        let x_1083 : vec2<f32> = vec2<f32>(x_1082.z, x_1082.w);
        let x_1085 : f32 = u_xlat4.z;
        txVec9 = vec3<f32>(x_1083.x, x_1083.y, x_1085);
        let x_1092 : vec3<f32> = txVec9;
        let x_1094 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1092.xy, x_1092.z);
        u_xlat28 = x_1094;
        let x_1096 : f32 = u_xlat15.y;
        let x_1097 : f32 = u_xlat28;
        let x_1100 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1096 * x_1097) + x_1100);
        let x_1104 : vec4<f32> = u_xlat10;
        let x_1105 : vec2<f32> = vec2<f32>(x_1104.z, x_1104.w);
        let x_1107 : f32 = u_xlat4.z;
        txVec10 = vec3<f32>(x_1105.x, x_1105.y, x_1107);
        let x_1114 : vec3<f32> = txVec10;
        let x_1116 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1114.xy, x_1114.z);
        u_xlat28 = x_1116;
        let x_1118 : f32 = u_xlat15.z;
        let x_1119 : f32 = u_xlat28;
        let x_1122 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1118 * x_1119) + x_1122);
        let x_1126 : vec4<f32> = u_xlat9;
        let x_1127 : vec2<f32> = vec2<f32>(x_1126.x, x_1126.y);
        let x_1129 : f32 = u_xlat4.z;
        txVec11 = vec3<f32>(x_1127.x, x_1127.y, x_1129);
        let x_1136 : vec3<f32> = txVec11;
        let x_1138 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1136.xy, x_1136.z);
        u_xlat28 = x_1138;
        let x_1140 : f32 = u_xlat15.w;
        let x_1141 : f32 = u_xlat28;
        let x_1144 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1140 * x_1141) + x_1144);
        let x_1148 : vec4<f32> = u_xlat9;
        let x_1149 : vec2<f32> = vec2<f32>(x_1148.z, x_1148.w);
        let x_1151 : f32 = u_xlat4.z;
        txVec12 = vec3<f32>(x_1149.x, x_1149.y, x_1151);
        let x_1158 : vec3<f32> = txVec12;
        let x_1160 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1158.xy, x_1158.z);
        u_xlat28 = x_1160;
        let x_1161 : f32 = u_xlat69;
        let x_1162 : f32 = u_xlat28;
        let x_1165 : f32 = u_xlat7.x;
        u_xlat67 = ((x_1161 * x_1162) + x_1165);
      } else {
        let x_1168 : vec4<f32> = u_xlat4;
        let x_1171 : vec4<f32> = x_279.x_MainLightShadowmapSize;
        let x_1174 : vec2<f32> = ((vec2<f32>(x_1168.x, x_1168.y) * vec2<f32>(x_1171.z, x_1171.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1175 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1174.x, x_1174.y, x_1175.z, x_1175.w);
        let x_1177 : vec4<f32> = u_xlat7;
        let x_1179 : vec2<f32> = floor(vec2<f32>(x_1177.x, x_1177.y));
        let x_1180 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1179.x, x_1179.y, x_1180.z, x_1180.w);
        let x_1182 : vec4<f32> = u_xlat4;
        let x_1185 : vec4<f32> = x_279.x_MainLightShadowmapSize;
        let x_1188 : vec4<f32> = u_xlat7;
        u_xlat49 = ((vec2<f32>(x_1182.x, x_1182.y) * vec2<f32>(x_1185.z, x_1185.w)) + -(vec2<f32>(x_1188.x, x_1188.y)));
        let x_1192 : vec2<f32> = u_xlat49;
        u_xlat8 = (vec4<f32>(x_1192.x, x_1192.x, x_1192.y, x_1192.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1195 : vec4<f32> = u_xlat8;
        let x_1197 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1195.x, x_1195.x, x_1195.z, x_1195.z) * vec4<f32>(x_1197.x, x_1197.x, x_1197.z, x_1197.z));
        let x_1200 : vec4<f32> = u_xlat9;
        let x_1204 : vec2<f32> = (vec2<f32>(x_1200.y, x_1200.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1205 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1205.x, x_1204.x, x_1205.z, x_1204.y);
        let x_1207 : vec4<f32> = u_xlat9;
        let x_1210 : vec2<f32> = u_xlat49;
        let x_1212 : vec2<f32> = ((vec2<f32>(x_1207.x, x_1207.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1210));
        let x_1213 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1212.x, x_1213.y, x_1212.y, x_1213.w);
        let x_1215 : vec2<f32> = u_xlat49;
        let x_1217 : vec2<f32> = (-(x_1215) + vec2<f32>(1.0f, 1.0f));
        let x_1218 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1217.x, x_1217.y, x_1218.z, x_1218.w);
        let x_1220 : vec2<f32> = u_xlat49;
        u_xlat51 = min(x_1220, vec2<f32>(0.0f, 0.0f));
        let x_1222 : vec2<f32> = u_xlat51;
        let x_1224 : vec2<f32> = u_xlat51;
        let x_1226 : vec4<f32> = u_xlat9;
        let x_1228 : vec2<f32> = ((-(x_1222) * x_1224) + vec2<f32>(x_1226.x, x_1226.y));
        let x_1229 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1228.x, x_1228.y, x_1229.z, x_1229.w);
        let x_1231 : vec2<f32> = u_xlat49;
        u_xlat51 = max(x_1231, vec2<f32>(0.0f, 0.0f));
        let x_1234 : vec2<f32> = u_xlat51;
        let x_1236 : vec2<f32> = u_xlat51;
        let x_1238 : vec4<f32> = u_xlat8;
        let x_1240 : vec2<f32> = ((-(x_1234) * x_1236) + vec2<f32>(x_1238.y, x_1238.w));
        let x_1241 : vec3<f32> = u_xlat29;
        u_xlat29 = vec3<f32>(x_1240.x, x_1241.y, x_1240.y);
        let x_1243 : vec4<f32> = u_xlat9;
        let x_1245 : vec2<f32> = (vec2<f32>(x_1243.x, x_1243.y) + vec2<f32>(2.0f, 2.0f));
        let x_1246 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1245.x, x_1245.y, x_1246.z, x_1246.w);
        let x_1248 : vec3<f32> = u_xlat29;
        let x_1250 : vec2<f32> = (vec2<f32>(x_1248.x, x_1248.z) + vec2<f32>(2.0f, 2.0f));
        let x_1251 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1251.x, x_1250.x, x_1251.z, x_1250.y);
        let x_1254 : f32 = u_xlat8.y;
        u_xlat11.z = (x_1254 * 0.081632003f);
        let x_1258 : vec4<f32> = u_xlat8;
        let x_1261 : vec3<f32> = (vec3<f32>(x_1258.z, x_1258.x, x_1258.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_1262 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1261.x, x_1261.y, x_1261.z, x_1262.w);
        let x_1264 : vec4<f32> = u_xlat9;
        let x_1267 : vec2<f32> = (vec2<f32>(x_1264.x, x_1264.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1268 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1267.x, x_1267.y, x_1268.z, x_1268.w);
        let x_1271 : f32 = u_xlat12.y;
        u_xlat11.x = x_1271;
        let x_1273 : vec2<f32> = u_xlat49;
        let x_1280 : vec2<f32> = ((vec2<f32>(x_1273.x, x_1273.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1281 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1281.x, x_1280.x, x_1281.z, x_1280.y);
        let x_1283 : vec2<f32> = u_xlat49;
        let x_1287 : vec2<f32> = ((vec2<f32>(x_1283.x, x_1283.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1288 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1287.x, x_1288.y, x_1287.y, x_1288.w);
        let x_1291 : f32 = u_xlat8.x;
        u_xlat9.y = x_1291;
        let x_1294 : f32 = u_xlat10.y;
        u_xlat9.w = x_1294;
        let x_1296 : vec4<f32> = u_xlat9;
        let x_1297 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_1296 + x_1297);
        let x_1299 : vec2<f32> = u_xlat49;
        let x_1302 : vec2<f32> = ((vec2<f32>(x_1299.y, x_1299.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1303 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1303.x, x_1302.x, x_1303.z, x_1302.y);
        let x_1305 : vec2<f32> = u_xlat49;
        let x_1308 : vec2<f32> = ((vec2<f32>(x_1305.y, x_1305.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1309 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1308.x, x_1309.y, x_1308.y, x_1309.w);
        let x_1312 : f32 = u_xlat8.y;
        u_xlat10.y = x_1312;
        let x_1314 : vec4<f32> = u_xlat10;
        let x_1315 : vec4<f32> = u_xlat12;
        u_xlat8 = (x_1314 + x_1315);
        let x_1317 : vec4<f32> = u_xlat9;
        let x_1318 : vec4<f32> = u_xlat11;
        u_xlat9 = (x_1317 / x_1318);
        let x_1320 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1320 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1326 : vec4<f32> = u_xlat10;
        let x_1327 : vec4<f32> = u_xlat8;
        u_xlat10 = (x_1326 / x_1327);
        let x_1329 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1329 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1331 : vec4<f32> = u_xlat9;
        let x_1334 : vec4<f32> = x_279.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1331.w, x_1331.x, x_1331.y, x_1331.z) * vec4<f32>(x_1334.x, x_1334.x, x_1334.x, x_1334.x));
        let x_1337 : vec4<f32> = u_xlat10;
        let x_1340 : vec4<f32> = x_279.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1337.x, x_1337.w, x_1337.y, x_1337.z) * vec4<f32>(x_1340.y, x_1340.y, x_1340.y, x_1340.y));
        let x_1343 : vec4<f32> = u_xlat9;
        let x_1344 : vec3<f32> = vec3<f32>(x_1343.y, x_1343.z, x_1343.w);
        let x_1345 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1344.x, x_1345.y, x_1344.y, x_1344.z);
        let x_1348 : f32 = u_xlat10.x;
        u_xlat12.y = x_1348;
        let x_1350 : vec4<f32> = u_xlat7;
        let x_1353 : vec4<f32> = x_279.x_MainLightShadowmapSize;
        let x_1356 : vec4<f32> = u_xlat12;
        u_xlat13 = ((vec4<f32>(x_1350.x, x_1350.y, x_1350.x, x_1350.y) * vec4<f32>(x_1353.x, x_1353.y, x_1353.x, x_1353.y)) + vec4<f32>(x_1356.x, x_1356.y, x_1356.z, x_1356.y));
        let x_1359 : vec4<f32> = u_xlat7;
        let x_1362 : vec4<f32> = x_279.x_MainLightShadowmapSize;
        let x_1365 : vec4<f32> = u_xlat12;
        u_xlat49 = ((vec2<f32>(x_1359.x, x_1359.y) * vec2<f32>(x_1362.x, x_1362.y)) + vec2<f32>(x_1365.w, x_1365.y));
        let x_1369 : f32 = u_xlat12.y;
        u_xlat9.y = x_1369;
        let x_1372 : f32 = u_xlat10.z;
        u_xlat12.y = x_1372;
        let x_1374 : vec4<f32> = u_xlat7;
        let x_1377 : vec4<f32> = x_279.x_MainLightShadowmapSize;
        let x_1380 : vec4<f32> = u_xlat12;
        u_xlat14 = ((vec4<f32>(x_1374.x, x_1374.y, x_1374.x, x_1374.y) * vec4<f32>(x_1377.x, x_1377.y, x_1377.x, x_1377.y)) + vec4<f32>(x_1380.x, x_1380.y, x_1380.z, x_1380.y));
        let x_1383 : vec4<f32> = u_xlat7;
        let x_1386 : vec4<f32> = x_279.x_MainLightShadowmapSize;
        let x_1389 : vec4<f32> = u_xlat12;
        let x_1391 : vec2<f32> = ((vec2<f32>(x_1383.x, x_1383.y) * vec2<f32>(x_1386.x, x_1386.y)) + vec2<f32>(x_1389.w, x_1389.y));
        let x_1392 : vec4<f32> = u_xlat15;
        u_xlat15 = vec4<f32>(x_1391.x, x_1391.y, x_1392.z, x_1392.w);
        let x_1395 : f32 = u_xlat12.y;
        u_xlat9.z = x_1395;
        let x_1398 : vec4<f32> = u_xlat7;
        let x_1401 : vec4<f32> = x_279.x_MainLightShadowmapSize;
        let x_1404 : vec4<f32> = u_xlat9;
        u_xlat16 = ((vec4<f32>(x_1398.x, x_1398.y, x_1398.x, x_1398.y) * vec4<f32>(x_1401.x, x_1401.y, x_1401.x, x_1401.y)) + vec4<f32>(x_1404.x, x_1404.y, x_1404.x, x_1404.z));
        let x_1408 : f32 = u_xlat10.w;
        u_xlat12.y = x_1408;
        let x_1411 : vec4<f32> = u_xlat7;
        let x_1414 : vec4<f32> = x_279.x_MainLightShadowmapSize;
        let x_1417 : vec4<f32> = u_xlat12;
        u_xlat17 = ((vec4<f32>(x_1411.x, x_1411.y, x_1411.x, x_1411.y) * vec4<f32>(x_1414.x, x_1414.y, x_1414.x, x_1414.y)) + vec4<f32>(x_1417.x, x_1417.y, x_1417.z, x_1417.y));
        let x_1421 : vec4<f32> = u_xlat7;
        let x_1424 : vec4<f32> = x_279.x_MainLightShadowmapSize;
        let x_1427 : vec4<f32> = u_xlat12;
        u_xlat30 = ((vec2<f32>(x_1421.x, x_1421.y) * vec2<f32>(x_1424.x, x_1424.y)) + vec2<f32>(x_1427.w, x_1427.y));
        let x_1431 : f32 = u_xlat12.y;
        u_xlat9.w = x_1431;
        let x_1434 : vec4<f32> = u_xlat7;
        let x_1437 : vec4<f32> = x_279.x_MainLightShadowmapSize;
        let x_1440 : vec4<f32> = u_xlat9;
        u_xlat57 = ((vec2<f32>(x_1434.x, x_1434.y) * vec2<f32>(x_1437.x, x_1437.y)) + vec2<f32>(x_1440.x, x_1440.w));
        let x_1443 : vec4<f32> = u_xlat12;
        let x_1444 : vec3<f32> = vec3<f32>(x_1443.x, x_1443.z, x_1443.w);
        let x_1445 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1444.x, x_1445.y, x_1444.y, x_1444.z);
        let x_1447 : vec4<f32> = u_xlat7;
        let x_1450 : vec4<f32> = x_279.x_MainLightShadowmapSize;
        let x_1453 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1447.x, x_1447.y, x_1447.x, x_1447.y) * vec4<f32>(x_1450.x, x_1450.y, x_1450.x, x_1450.y)) + vec4<f32>(x_1453.x, x_1453.y, x_1453.z, x_1453.y));
        let x_1457 : vec4<f32> = u_xlat7;
        let x_1460 : vec4<f32> = x_279.x_MainLightShadowmapSize;
        let x_1463 : vec4<f32> = u_xlat10;
        u_xlat52 = ((vec2<f32>(x_1457.x, x_1457.y) * vec2<f32>(x_1460.x, x_1460.y)) + vec2<f32>(x_1463.w, x_1463.y));
        let x_1467 : f32 = u_xlat9.x;
        u_xlat10.x = x_1467;
        let x_1469 : vec4<f32> = u_xlat7;
        let x_1472 : vec4<f32> = x_279.x_MainLightShadowmapSize;
        let x_1475 : vec4<f32> = u_xlat10;
        let x_1477 : vec2<f32> = ((vec2<f32>(x_1469.x, x_1469.y) * vec2<f32>(x_1472.x, x_1472.y)) + vec2<f32>(x_1475.x, x_1475.y));
        let x_1478 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1477.x, x_1477.y, x_1478.z, x_1478.w);
        let x_1481 : vec4<f32> = u_xlat8;
        let x_1483 : vec4<f32> = u_xlat11;
        u_xlat18 = (vec4<f32>(x_1481.x, x_1481.x, x_1481.x, x_1481.x) * x_1483);
        let x_1486 : vec4<f32> = u_xlat8;
        let x_1488 : vec4<f32> = u_xlat11;
        u_xlat19 = (vec4<f32>(x_1486.y, x_1486.y, x_1486.y, x_1486.y) * x_1488);
        let x_1491 : vec4<f32> = u_xlat8;
        let x_1493 : vec4<f32> = u_xlat11;
        u_xlat20 = (vec4<f32>(x_1491.z, x_1491.z, x_1491.z, x_1491.z) * x_1493);
        let x_1495 : vec4<f32> = u_xlat8;
        let x_1497 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_1495.w, x_1495.w, x_1495.w, x_1495.w) * x_1497);
        let x_1500 : vec4<f32> = u_xlat13;
        let x_1501 : vec2<f32> = vec2<f32>(x_1500.x, x_1500.y);
        let x_1503 : f32 = u_xlat4.z;
        txVec13 = vec3<f32>(x_1501.x, x_1501.y, x_1503);
        let x_1510 : vec3<f32> = txVec13;
        let x_1512 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1510.xy, x_1510.z);
        u_xlat69 = x_1512;
        let x_1514 : vec4<f32> = u_xlat13;
        let x_1515 : vec2<f32> = vec2<f32>(x_1514.z, x_1514.w);
        let x_1517 : f32 = u_xlat4.z;
        txVec14 = vec3<f32>(x_1515.x, x_1515.y, x_1517);
        let x_1524 : vec3<f32> = txVec14;
        let x_1526 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1524.xy, x_1524.z);
        u_xlat9.x = x_1526;
        let x_1529 : f32 = u_xlat9.x;
        let x_1531 : f32 = u_xlat18.y;
        u_xlat9.x = (x_1529 * x_1531);
        let x_1535 : f32 = u_xlat18.x;
        let x_1536 : f32 = u_xlat69;
        let x_1539 : f32 = u_xlat9.x;
        u_xlat69 = ((x_1535 * x_1536) + x_1539);
        let x_1542 : vec2<f32> = u_xlat49;
        let x_1544 : f32 = u_xlat4.z;
        txVec15 = vec3<f32>(x_1542.x, x_1542.y, x_1544);
        let x_1551 : vec3<f32> = txVec15;
        let x_1553 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1551.xy, x_1551.z);
        u_xlat49.x = x_1553;
        let x_1556 : f32 = u_xlat18.z;
        let x_1558 : f32 = u_xlat49.x;
        let x_1560 : f32 = u_xlat69;
        u_xlat69 = ((x_1556 * x_1558) + x_1560);
        let x_1563 : vec4<f32> = u_xlat16;
        let x_1564 : vec2<f32> = vec2<f32>(x_1563.x, x_1563.y);
        let x_1566 : f32 = u_xlat4.z;
        txVec16 = vec3<f32>(x_1564.x, x_1564.y, x_1566);
        let x_1573 : vec3<f32> = txVec16;
        let x_1575 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1573.xy, x_1573.z);
        u_xlat49.x = x_1575;
        let x_1578 : f32 = u_xlat18.w;
        let x_1580 : f32 = u_xlat49.x;
        let x_1582 : f32 = u_xlat69;
        u_xlat69 = ((x_1578 * x_1580) + x_1582);
        let x_1585 : vec4<f32> = u_xlat14;
        let x_1586 : vec2<f32> = vec2<f32>(x_1585.x, x_1585.y);
        let x_1588 : f32 = u_xlat4.z;
        txVec17 = vec3<f32>(x_1586.x, x_1586.y, x_1588);
        let x_1595 : vec3<f32> = txVec17;
        let x_1597 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1595.xy, x_1595.z);
        u_xlat49.x = x_1597;
        let x_1600 : f32 = u_xlat19.x;
        let x_1602 : f32 = u_xlat49.x;
        let x_1604 : f32 = u_xlat69;
        u_xlat69 = ((x_1600 * x_1602) + x_1604);
        let x_1607 : vec4<f32> = u_xlat14;
        let x_1608 : vec2<f32> = vec2<f32>(x_1607.z, x_1607.w);
        let x_1610 : f32 = u_xlat4.z;
        txVec18 = vec3<f32>(x_1608.x, x_1608.y, x_1610);
        let x_1617 : vec3<f32> = txVec18;
        let x_1619 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1617.xy, x_1617.z);
        u_xlat49.x = x_1619;
        let x_1622 : f32 = u_xlat19.y;
        let x_1624 : f32 = u_xlat49.x;
        let x_1626 : f32 = u_xlat69;
        u_xlat69 = ((x_1622 * x_1624) + x_1626);
        let x_1629 : vec4<f32> = u_xlat15;
        let x_1630 : vec2<f32> = vec2<f32>(x_1629.x, x_1629.y);
        let x_1632 : f32 = u_xlat4.z;
        txVec19 = vec3<f32>(x_1630.x, x_1630.y, x_1632);
        let x_1639 : vec3<f32> = txVec19;
        let x_1641 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1639.xy, x_1639.z);
        u_xlat49.x = x_1641;
        let x_1644 : f32 = u_xlat19.z;
        let x_1646 : f32 = u_xlat49.x;
        let x_1648 : f32 = u_xlat69;
        u_xlat69 = ((x_1644 * x_1646) + x_1648);
        let x_1651 : vec4<f32> = u_xlat16;
        let x_1652 : vec2<f32> = vec2<f32>(x_1651.z, x_1651.w);
        let x_1654 : f32 = u_xlat4.z;
        txVec20 = vec3<f32>(x_1652.x, x_1652.y, x_1654);
        let x_1661 : vec3<f32> = txVec20;
        let x_1663 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1661.xy, x_1661.z);
        u_xlat49.x = x_1663;
        let x_1666 : f32 = u_xlat19.w;
        let x_1668 : f32 = u_xlat49.x;
        let x_1670 : f32 = u_xlat69;
        u_xlat69 = ((x_1666 * x_1668) + x_1670);
        let x_1673 : vec4<f32> = u_xlat17;
        let x_1674 : vec2<f32> = vec2<f32>(x_1673.x, x_1673.y);
        let x_1676 : f32 = u_xlat4.z;
        txVec21 = vec3<f32>(x_1674.x, x_1674.y, x_1676);
        let x_1683 : vec3<f32> = txVec21;
        let x_1685 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1683.xy, x_1683.z);
        u_xlat49.x = x_1685;
        let x_1688 : f32 = u_xlat20.x;
        let x_1690 : f32 = u_xlat49.x;
        let x_1692 : f32 = u_xlat69;
        u_xlat69 = ((x_1688 * x_1690) + x_1692);
        let x_1695 : vec4<f32> = u_xlat17;
        let x_1696 : vec2<f32> = vec2<f32>(x_1695.z, x_1695.w);
        let x_1698 : f32 = u_xlat4.z;
        txVec22 = vec3<f32>(x_1696.x, x_1696.y, x_1698);
        let x_1705 : vec3<f32> = txVec22;
        let x_1707 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1705.xy, x_1705.z);
        u_xlat49.x = x_1707;
        let x_1710 : f32 = u_xlat20.y;
        let x_1712 : f32 = u_xlat49.x;
        let x_1714 : f32 = u_xlat69;
        u_xlat69 = ((x_1710 * x_1712) + x_1714);
        let x_1717 : vec2<f32> = u_xlat30;
        let x_1719 : f32 = u_xlat4.z;
        txVec23 = vec3<f32>(x_1717.x, x_1717.y, x_1719);
        let x_1726 : vec3<f32> = txVec23;
        let x_1728 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1726.xy, x_1726.z);
        u_xlat49.x = x_1728;
        let x_1731 : f32 = u_xlat20.z;
        let x_1733 : f32 = u_xlat49.x;
        let x_1735 : f32 = u_xlat69;
        u_xlat69 = ((x_1731 * x_1733) + x_1735);
        let x_1738 : vec2<f32> = u_xlat57;
        let x_1740 : f32 = u_xlat4.z;
        txVec24 = vec3<f32>(x_1738.x, x_1738.y, x_1740);
        let x_1747 : vec3<f32> = txVec24;
        let x_1749 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1747.xy, x_1747.z);
        u_xlat49.x = x_1749;
        let x_1752 : f32 = u_xlat20.w;
        let x_1754 : f32 = u_xlat49.x;
        let x_1756 : f32 = u_xlat69;
        u_xlat69 = ((x_1752 * x_1754) + x_1756);
        let x_1759 : vec4<f32> = u_xlat12;
        let x_1760 : vec2<f32> = vec2<f32>(x_1759.x, x_1759.y);
        let x_1762 : f32 = u_xlat4.z;
        txVec25 = vec3<f32>(x_1760.x, x_1760.y, x_1762);
        let x_1769 : vec3<f32> = txVec25;
        let x_1771 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1769.xy, x_1769.z);
        u_xlat49.x = x_1771;
        let x_1774 : f32 = u_xlat8.x;
        let x_1776 : f32 = u_xlat49.x;
        let x_1778 : f32 = u_xlat69;
        u_xlat69 = ((x_1774 * x_1776) + x_1778);
        let x_1781 : vec4<f32> = u_xlat12;
        let x_1782 : vec2<f32> = vec2<f32>(x_1781.z, x_1781.w);
        let x_1784 : f32 = u_xlat4.z;
        txVec26 = vec3<f32>(x_1782.x, x_1782.y, x_1784);
        let x_1791 : vec3<f32> = txVec26;
        let x_1793 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1791.xy, x_1791.z);
        u_xlat49.x = x_1793;
        let x_1796 : f32 = u_xlat8.y;
        let x_1798 : f32 = u_xlat49.x;
        let x_1800 : f32 = u_xlat69;
        u_xlat69 = ((x_1796 * x_1798) + x_1800);
        let x_1803 : vec2<f32> = u_xlat52;
        let x_1805 : f32 = u_xlat4.z;
        txVec27 = vec3<f32>(x_1803.x, x_1803.y, x_1805);
        let x_1812 : vec3<f32> = txVec27;
        let x_1814 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1812.xy, x_1812.z);
        u_xlat49.x = x_1814;
        let x_1817 : f32 = u_xlat8.z;
        let x_1819 : f32 = u_xlat49.x;
        let x_1821 : f32 = u_xlat69;
        u_xlat69 = ((x_1817 * x_1819) + x_1821);
        let x_1824 : vec4<f32> = u_xlat7;
        let x_1825 : vec2<f32> = vec2<f32>(x_1824.x, x_1824.y);
        let x_1827 : f32 = u_xlat4.z;
        txVec28 = vec3<f32>(x_1825.x, x_1825.y, x_1827);
        let x_1834 : vec3<f32> = txVec28;
        let x_1836 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1834.xy, x_1834.z);
        u_xlat7.x = x_1836;
        let x_1839 : f32 = u_xlat8.w;
        let x_1841 : f32 = u_xlat7.x;
        let x_1843 : f32 = u_xlat69;
        u_xlat67 = ((x_1839 * x_1841) + x_1843);
      }
    }
  } else {
    let x_1847 : vec4<f32> = u_xlat4;
    let x_1848 : vec2<f32> = vec2<f32>(x_1847.x, x_1847.y);
    let x_1850 : f32 = u_xlat4.z;
    txVec29 = vec3<f32>(x_1848.x, x_1848.y, x_1850);
    let x_1857 : vec3<f32> = txVec29;
    let x_1859 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1857.xy, x_1857.z);
    u_xlat67 = x_1859;
  }
  let x_1861 : f32 = x_279.x_MainLightShadowParams.x;
  u_xlat4.x = (-(x_1861) + 1.0f);
  let x_1865 : f32 = u_xlat67;
  let x_1867 : f32 = x_279.x_MainLightShadowParams.x;
  let x_1870 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_1865 * x_1867) + x_1870);
  let x_1875 : f32 = u_xlat4.z;
  u_xlatb25 = (0.0f >= x_1875);
  let x_1879 : f32 = u_xlat4.z;
  u_xlatb46 = (x_1879 >= 1.0f);
  let x_1881 : bool = u_xlatb46;
  let x_1882 : bool = u_xlatb25;
  u_xlatb25 = (x_1881 | x_1882);
  let x_1884 : bool = u_xlatb25;
  if (x_1884) {
    x_1885 = 1.0f;
  } else {
    let x_1890 : f32 = u_xlat4.x;
    x_1885 = x_1890;
  }
  let x_1891 : f32 = x_1885;
  u_xlat4.x = x_1891;
  let x_1894 : vec3<f32> = vs_TEXCOORD1;
  let x_1896 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat25 = (x_1894 + -(x_1896));
  let x_1899 : vec3<f32> = u_xlat25;
  let x_1900 : vec3<f32> = u_xlat25;
  u_xlat25.x = dot(x_1899, x_1900);
  let x_1904 : f32 = u_xlat25.x;
  let x_1906 : f32 = x_279.x_MainLightShadowParams.z;
  let x_1909 : f32 = x_279.x_MainLightShadowParams.w;
  u_xlat25.x = ((x_1904 * x_1906) + x_1909);
  let x_1913 : f32 = u_xlat25.x;
  u_xlat25.x = clamp(x_1913, 0.0f, 1.0f);
  let x_1918 : f32 = u_xlat4.x;
  u_xlat46 = (-(x_1918) + 1.0f);
  let x_1922 : f32 = u_xlat25.x;
  let x_1923 : f32 = u_xlat46;
  let x_1926 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_1922 * x_1923) + x_1926);
  let x_1929 : f32 = u_xlat68;
  let x_1932 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat25 = (vec3<f32>(x_1929, x_1929, x_1929) * vec3<f32>(x_1932.x, x_1932.y, x_1932.z));
  let x_1935 : vec3<f32> = u_xlat5;
  let x_1937 : vec3<f32> = u_xlat24;
  u_xlat69 = dot(-(x_1935), x_1937);
  let x_1939 : f32 = u_xlat69;
  let x_1940 : f32 = u_xlat69;
  u_xlat69 = (x_1939 + x_1940);
  let x_1942 : vec3<f32> = u_xlat24;
  let x_1943 : f32 = u_xlat69;
  let x_1947 : vec3<f32> = u_xlat5;
  let x_1949 : vec3<f32> = ((x_1942 * -(vec3<f32>(x_1943, x_1943, x_1943))) + -(x_1947));
  let x_1950 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1949.x, x_1949.y, x_1949.z, x_1950.w);
  let x_1952 : vec3<f32> = u_xlat24;
  let x_1953 : vec3<f32> = u_xlat5;
  u_xlat69 = dot(x_1952, x_1953);
  let x_1955 : f32 = u_xlat69;
  u_xlat69 = clamp(x_1955, 0.0f, 1.0f);
  let x_1957 : f32 = u_xlat69;
  u_xlat69 = (-(x_1957) + 1.0f);
  let x_1960 : f32 = u_xlat69;
  let x_1961 : f32 = u_xlat69;
  u_xlat69 = (x_1960 * x_1961);
  let x_1963 : f32 = u_xlat69;
  let x_1964 : f32 = u_xlat69;
  u_xlat69 = (x_1963 * x_1964);
  let x_1967 : f32 = u_xlat63;
  u_xlat70 = ((-(x_1967) * 0.699999988f) + 1.700000048f);
  let x_1973 : f32 = u_xlat63;
  let x_1974 : f32 = u_xlat70;
  u_xlat63 = (x_1973 * x_1974);
  let x_1976 : f32 = u_xlat63;
  u_xlat63 = (x_1976 * 6.0f);
  let x_1987 : vec4<f32> = u_xlat7;
  let x_1989 : f32 = u_xlat63;
  let x_1990 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1987.x, x_1987.y, x_1987.z), x_1989);
  u_xlat7 = x_1990;
  let x_1992 : f32 = u_xlat7.w;
  u_xlat63 = (x_1992 + -1.0f);
  let x_1999 : f32 = x_1997.unity_SpecCube0_HDR.w;
  let x_2000 : f32 = u_xlat63;
  u_xlat63 = ((x_1999 * x_2000) + 1.0f);
  let x_2003 : f32 = u_xlat63;
  u_xlat63 = max(x_2003, 0.0f);
  let x_2005 : f32 = u_xlat63;
  u_xlat63 = log2(x_2005);
  let x_2007 : f32 = u_xlat63;
  let x_2009 : f32 = x_1997.unity_SpecCube0_HDR.y;
  u_xlat63 = (x_2007 * x_2009);
  let x_2011 : f32 = u_xlat63;
  u_xlat63 = exp2(x_2011);
  let x_2013 : f32 = u_xlat63;
  let x_2015 : f32 = x_1997.unity_SpecCube0_HDR.x;
  u_xlat63 = (x_2013 * x_2015);
  let x_2017 : vec4<f32> = u_xlat7;
  let x_2019 : f32 = u_xlat63;
  let x_2021 : vec3<f32> = (vec3<f32>(x_2017.x, x_2017.y, x_2017.z) * vec3<f32>(x_2019, x_2019, x_2019));
  let x_2022 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2021.x, x_2021.y, x_2021.z, x_2022.w);
  let x_2024 : vec2<f32> = u_xlat1;
  let x_2026 : vec2<f32> = u_xlat1;
  let x_2030 : vec2<f32> = ((vec2<f32>(x_2024.x, x_2024.x) * vec2<f32>(x_2026.x, x_2026.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_2031 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2030.x, x_2030.y, x_2031.z, x_2031.w);
  let x_2034 : f32 = u_xlat8.y;
  u_xlat63 = (1.0f / x_2034);
  let x_2036 : vec4<f32> = u_xlat0;
  let x_2039 : vec2<f32> = u_xlat43;
  u_xlat29 = (-(vec3<f32>(x_2036.x, x_2036.y, x_2036.z)) + vec3<f32>(x_2039.x, x_2039.x, x_2039.x));
  let x_2042 : f32 = u_xlat69;
  let x_2044 : vec3<f32> = u_xlat29;
  let x_2046 : vec4<f32> = u_xlat0;
  u_xlat29 = ((vec3<f32>(x_2042, x_2042, x_2042) * x_2044) + vec3<f32>(x_2046.x, x_2046.y, x_2046.z));
  let x_2049 : f32 = u_xlat63;
  let x_2051 : vec3<f32> = u_xlat29;
  u_xlat29 = (vec3<f32>(x_2049, x_2049, x_2049) * x_2051);
  let x_2053 : vec4<f32> = u_xlat7;
  let x_2055 : vec3<f32> = u_xlat29;
  let x_2056 : vec3<f32> = (vec3<f32>(x_2053.x, x_2053.y, x_2053.z) * x_2055);
  let x_2057 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2056.x, x_2056.y, x_2056.z, x_2057.w);
  let x_2059 : vec4<f32> = u_xlat6;
  let x_2061 : vec3<f32> = u_xlat23;
  let x_2063 : vec4<f32> = u_xlat7;
  let x_2065 : vec3<f32> = ((vec3<f32>(x_2059.x, x_2059.y, x_2059.z) * x_2061) + vec3<f32>(x_2063.x, x_2063.y, x_2063.z));
  let x_2066 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2065.x, x_2065.y, x_2065.z, x_2066.w);
  let x_2069 : f32 = u_xlat4.x;
  let x_2071 : f32 = x_1997.unity_LightData.z;
  u_xlat63 = (x_2069 * x_2071);
  let x_2073 : vec3<f32> = u_xlat24;
  let x_2075 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat1.x = dot(x_2073, vec3<f32>(x_2075.x, x_2075.y, x_2075.z));
  let x_2080 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_2080, 0.0f, 1.0f);
  let x_2083 : f32 = u_xlat63;
  let x_2085 : f32 = u_xlat1.x;
  u_xlat63 = (x_2083 * x_2085);
  let x_2087 : f32 = u_xlat63;
  let x_2089 : vec3<f32> = u_xlat25;
  let x_2090 : vec3<f32> = (vec3<f32>(x_2087, x_2087, x_2087) * x_2089);
  let x_2091 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2090.x, x_2090.y, x_2090.z, x_2091.w);
  let x_2093 : vec3<f32> = u_xlat5;
  let x_2095 : vec4<f32> = x_44.x_MainLightPosition;
  let x_2097 : vec3<f32> = (x_2093 + vec3<f32>(x_2095.x, x_2095.y, x_2095.z));
  let x_2098 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2097.x, x_2097.y, x_2097.z, x_2098.w);
  let x_2100 : vec4<f32> = u_xlat7;
  let x_2102 : vec4<f32> = u_xlat7;
  u_xlat63 = dot(vec3<f32>(x_2100.x, x_2100.y, x_2100.z), vec3<f32>(x_2102.x, x_2102.y, x_2102.z));
  let x_2105 : f32 = u_xlat63;
  u_xlat63 = max(x_2105, 1.17549435e-37f);
  let x_2108 : f32 = u_xlat63;
  u_xlat63 = inverseSqrt(x_2108);
  let x_2110 : f32 = u_xlat63;
  let x_2112 : vec4<f32> = u_xlat7;
  let x_2114 : vec3<f32> = (vec3<f32>(x_2110, x_2110, x_2110) * vec3<f32>(x_2112.x, x_2112.y, x_2112.z));
  let x_2115 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2114.x, x_2114.y, x_2114.z, x_2115.w);
  let x_2117 : vec3<f32> = u_xlat24;
  let x_2118 : vec4<f32> = u_xlat7;
  u_xlat63 = dot(x_2117, vec3<f32>(x_2118.x, x_2118.y, x_2118.z));
  let x_2121 : f32 = u_xlat63;
  u_xlat63 = clamp(x_2121, 0.0f, 1.0f);
  let x_2124 : vec4<f32> = x_44.x_MainLightPosition;
  let x_2126 : vec4<f32> = u_xlat7;
  u_xlat1.x = dot(vec3<f32>(x_2124.x, x_2124.y, x_2124.z), vec3<f32>(x_2126.x, x_2126.y, x_2126.z));
  let x_2131 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_2131, 0.0f, 1.0f);
  let x_2134 : f32 = u_xlat63;
  let x_2135 : f32 = u_xlat63;
  u_xlat63 = (x_2134 * x_2135);
  let x_2137 : f32 = u_xlat63;
  let x_2139 : f32 = u_xlat8.x;
  u_xlat63 = ((x_2137 * x_2139) + 1.000010014f);
  let x_2144 : f32 = u_xlat1.x;
  let x_2146 : f32 = u_xlat1.x;
  u_xlat1.x = (x_2144 * x_2146);
  let x_2149 : f32 = u_xlat63;
  let x_2150 : f32 = u_xlat63;
  u_xlat63 = (x_2149 * x_2150);
  let x_2153 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_2153, 0.100000001f);
  let x_2157 : f32 = u_xlat63;
  let x_2159 : f32 = u_xlat1.x;
  u_xlat63 = (x_2157 * x_2159);
  let x_2161 : f32 = u_xlat64;
  let x_2162 : f32 = u_xlat63;
  u_xlat63 = (x_2161 * x_2162);
  let x_2164 : f32 = u_xlat22;
  let x_2165 : f32 = u_xlat63;
  u_xlat63 = (x_2164 / x_2165);
  let x_2167 : vec4<f32> = u_xlat0;
  let x_2169 : f32 = u_xlat63;
  let x_2172 : vec3<f32> = u_xlat23;
  let x_2173 : vec3<f32> = ((vec3<f32>(x_2167.x, x_2167.y, x_2167.z) * vec3<f32>(x_2169, x_2169, x_2169)) + x_2172);
  let x_2174 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2173.x, x_2173.y, x_2173.z, x_2174.w);
  let x_2176 : vec4<f32> = u_xlat4;
  let x_2178 : vec4<f32> = u_xlat7;
  let x_2180 : vec3<f32> = (vec3<f32>(x_2176.x, x_2176.y, x_2176.z) * vec3<f32>(x_2178.x, x_2178.y, x_2178.z));
  let x_2181 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2180.x, x_2180.y, x_2180.z, x_2181.w);
  let x_2184 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_2186 : f32 = x_1997.unity_LightData.y;
  u_xlat63 = min(x_2184, x_2186);
  let x_2188 : f32 = u_xlat63;
  u_xlatu63 = bitcast<u32>(i32(x_2188));
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2200 : u32 = u_xlatu_loop_1;
    let x_2201 : u32 = u_xlatu63;
    if ((x_2200 < x_2201)) {
    } else {
      break;
    }
    let x_2204 : u32 = u_xlatu_loop_1;
    u_xlatu43 = (x_2204 >> 2u);
    let x_2207 : u32 = u_xlatu_loop_1;
    u_xlati67 = bitcast<i32>((x_2207 & 3u));
    let x_2210 : u32 = u_xlatu43;
    let x_2213 : vec4<f32> = x_1997.unity_LightIndices[bitcast<i32>(x_2210)];
    let x_2223 : i32 = u_xlati67;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2228 : vec4<u32> = indexable[x_2223];
    u_xlat43.x = dot(x_2213, bitcast<vec4<f32>>(x_2228));
    let x_2234 : f32 = u_xlat43.x;
    u_xlati43 = i32(x_2234);
    let x_2236 : vec3<f32> = vs_TEXCOORD1;
    let x_2248 : i32 = u_xlati43;
    let x_2250 : vec4<f32> = x_2247.x_AdditionalLightsPosition[x_2248];
    let x_2253 : i32 = u_xlati43;
    let x_2255 : vec4<f32> = x_2247.x_AdditionalLightsPosition[x_2253];
    u_xlat29 = ((-(x_2236) * vec3<f32>(x_2250.w, x_2250.w, x_2250.w)) + vec3<f32>(x_2255.x, x_2255.y, x_2255.z));
    let x_2258 : vec3<f32> = u_xlat29;
    let x_2259 : vec3<f32> = u_xlat29;
    u_xlat67 = dot(x_2258, x_2259);
    let x_2261 : f32 = u_xlat67;
    u_xlat67 = max(x_2261, 6.10351562e-05f);
    let x_2264 : f32 = u_xlat67;
    u_xlat69 = inverseSqrt(x_2264);
    let x_2266 : f32 = u_xlat69;
    let x_2268 : vec3<f32> = u_xlat29;
    let x_2269 : vec3<f32> = (vec3<f32>(x_2266, x_2266, x_2266) * x_2268);
    let x_2270 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2269.x, x_2269.y, x_2269.z, x_2270.w);
    let x_2272 : f32 = u_xlat67;
    u_xlat70 = (1.0f / x_2272);
    let x_2274 : f32 = u_xlat67;
    let x_2275 : i32 = u_xlati43;
    let x_2277 : f32 = x_2247.x_AdditionalLightsAttenuation[x_2275].x;
    u_xlat67 = (x_2274 * x_2277);
    let x_2279 : f32 = u_xlat67;
    let x_2281 : f32 = u_xlat67;
    u_xlat67 = ((-(x_2279) * x_2281) + 1.0f);
    let x_2284 : f32 = u_xlat67;
    u_xlat67 = max(x_2284, 0.0f);
    let x_2286 : f32 = u_xlat67;
    let x_2287 : f32 = u_xlat67;
    u_xlat67 = (x_2286 * x_2287);
    let x_2289 : f32 = u_xlat67;
    let x_2290 : f32 = u_xlat70;
    u_xlat67 = (x_2289 * x_2290);
    let x_2292 : i32 = u_xlati43;
    let x_2294 : vec4<f32> = x_2247.x_AdditionalLightsSpotDir[x_2292];
    let x_2296 : vec4<f32> = u_xlat9;
    u_xlat70 = dot(vec3<f32>(x_2294.x, x_2294.y, x_2294.z), vec3<f32>(x_2296.x, x_2296.y, x_2296.z));
    let x_2299 : f32 = u_xlat70;
    let x_2300 : i32 = u_xlati43;
    let x_2302 : f32 = x_2247.x_AdditionalLightsAttenuation[x_2300].z;
    let x_2304 : i32 = u_xlati43;
    let x_2306 : f32 = x_2247.x_AdditionalLightsAttenuation[x_2304].w;
    u_xlat70 = ((x_2299 * x_2302) + x_2306);
    let x_2308 : f32 = u_xlat70;
    u_xlat70 = clamp(x_2308, 0.0f, 1.0f);
    let x_2310 : f32 = u_xlat70;
    let x_2311 : f32 = u_xlat70;
    u_xlat70 = (x_2310 * x_2311);
    let x_2313 : f32 = u_xlat67;
    let x_2314 : f32 = u_xlat70;
    u_xlat67 = (x_2313 * x_2314);
    let x_2316 : f32 = u_xlat68;
    let x_2318 : i32 = u_xlati43;
    let x_2320 : vec4<f32> = x_2247.x_AdditionalLightsColor[x_2318];
    let x_2322 : vec3<f32> = (vec3<f32>(x_2316, x_2316, x_2316) * vec3<f32>(x_2320.x, x_2320.y, x_2320.z));
    let x_2323 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2322.x, x_2322.y, x_2322.z, x_2323.w);
    let x_2325 : vec3<f32> = u_xlat24;
    let x_2326 : vec4<f32> = u_xlat9;
    u_xlat43.x = dot(x_2325, vec3<f32>(x_2326.x, x_2326.y, x_2326.z));
    let x_2331 : f32 = u_xlat43.x;
    u_xlat43.x = clamp(x_2331, 0.0f, 1.0f);
    let x_2335 : f32 = u_xlat43.x;
    let x_2336 : f32 = u_xlat67;
    u_xlat43.x = (x_2335 * x_2336);
    let x_2339 : vec2<f32> = u_xlat43;
    let x_2341 : vec4<f32> = u_xlat10;
    let x_2343 : vec3<f32> = (vec3<f32>(x_2339.x, x_2339.x, x_2339.x) * vec3<f32>(x_2341.x, x_2341.y, x_2341.z));
    let x_2344 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2343.x, x_2343.y, x_2343.z, x_2344.w);
    let x_2346 : vec3<f32> = u_xlat29;
    let x_2347 : f32 = u_xlat69;
    let x_2350 : vec3<f32> = u_xlat5;
    u_xlat29 = ((x_2346 * vec3<f32>(x_2347, x_2347, x_2347)) + x_2350);
    let x_2352 : vec3<f32> = u_xlat29;
    let x_2353 : vec3<f32> = u_xlat29;
    u_xlat43.x = dot(x_2352, x_2353);
    let x_2357 : f32 = u_xlat43.x;
    u_xlat43.x = max(x_2357, 1.17549435e-37f);
    let x_2361 : f32 = u_xlat43.x;
    u_xlat43.x = inverseSqrt(x_2361);
    let x_2364 : vec2<f32> = u_xlat43;
    let x_2366 : vec3<f32> = u_xlat29;
    u_xlat29 = (vec3<f32>(x_2364.x, x_2364.x, x_2364.x) * x_2366);
    let x_2368 : vec3<f32> = u_xlat24;
    let x_2369 : vec3<f32> = u_xlat29;
    u_xlat43.x = dot(x_2368, x_2369);
    let x_2373 : f32 = u_xlat43.x;
    u_xlat43.x = clamp(x_2373, 0.0f, 1.0f);
    let x_2376 : vec4<f32> = u_xlat9;
    let x_2378 : vec3<f32> = u_xlat29;
    u_xlat67 = dot(vec3<f32>(x_2376.x, x_2376.y, x_2376.z), x_2378);
    let x_2380 : f32 = u_xlat67;
    u_xlat67 = clamp(x_2380, 0.0f, 1.0f);
    let x_2383 : f32 = u_xlat43.x;
    let x_2385 : f32 = u_xlat43.x;
    u_xlat43.x = (x_2383 * x_2385);
    let x_2389 : f32 = u_xlat43.x;
    let x_2391 : f32 = u_xlat8.x;
    u_xlat43.x = ((x_2389 * x_2391) + 1.000010014f);
    let x_2395 : f32 = u_xlat67;
    let x_2396 : f32 = u_xlat67;
    u_xlat67 = (x_2395 * x_2396);
    let x_2399 : f32 = u_xlat43.x;
    let x_2401 : f32 = u_xlat43.x;
    u_xlat43.x = (x_2399 * x_2401);
    let x_2404 : f32 = u_xlat67;
    u_xlat67 = max(x_2404, 0.100000001f);
    let x_2407 : f32 = u_xlat43.x;
    let x_2408 : f32 = u_xlat67;
    u_xlat43.x = (x_2407 * x_2408);
    let x_2411 : f32 = u_xlat64;
    let x_2413 : f32 = u_xlat43.x;
    u_xlat43.x = (x_2411 * x_2413);
    let x_2416 : f32 = u_xlat22;
    let x_2418 : f32 = u_xlat43.x;
    u_xlat43.x = (x_2416 / x_2418);
    let x_2421 : vec4<f32> = u_xlat0;
    let x_2423 : vec2<f32> = u_xlat43;
    let x_2426 : vec3<f32> = u_xlat23;
    u_xlat29 = ((vec3<f32>(x_2421.x, x_2421.y, x_2421.z) * vec3<f32>(x_2423.x, x_2423.x, x_2423.x)) + x_2426);
    let x_2428 : vec3<f32> = u_xlat29;
    let x_2429 : vec4<f32> = u_xlat10;
    let x_2432 : vec4<f32> = u_xlat7;
    let x_2434 : vec3<f32> = ((x_2428 * vec3<f32>(x_2429.x, x_2429.y, x_2429.z)) + vec3<f32>(x_2432.x, x_2432.y, x_2432.z));
    let x_2435 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2434.x, x_2434.y, x_2434.z, x_2435.w);

    continuing {
      let x_2437 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2437 + bitcast<u32>(1i));
    }
  }
  let x_2439 : vec4<f32> = u_xlat6;
  let x_2441 : vec3<f32> = u_xlat3;
  let x_2444 : vec4<f32> = u_xlat4;
  let x_2446 : vec3<f32> = ((vec3<f32>(x_2439.x, x_2439.y, x_2439.z) * vec3<f32>(x_2441.x, x_2441.x, x_2441.x)) + vec3<f32>(x_2444.x, x_2444.y, x_2444.z));
  let x_2447 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2446.x, x_2446.y, x_2446.z, x_2447.w);
  let x_2451 : vec4<f32> = u_xlat7;
  let x_2453 : vec4<f32> = u_xlat0;
  let x_2455 : vec3<f32> = (vec3<f32>(x_2451.x, x_2451.y, x_2451.z) + vec3<f32>(x_2453.x, x_2453.y, x_2453.z));
  let x_2456 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2455.x, x_2455.y, x_2455.z, x_2456.w);
  let x_2461 : f32 = x_69.x_Surface;
  u_xlatb0 = (x_2461 == 1.0f);
  let x_2463 : bool = u_xlatb0;
  if (x_2463) {
    let x_2468 : f32 = u_xlat2.x;
    x_2464 = x_2468;
  } else {
    x_2464 = 1.0f;
  }
  let x_2470 : f32 = x_2464;
  SV_Target0.w = x_2470;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(4) vs_TEXCOORD8_param : vec2<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD8 = vs_TEXCOORD8_param;
  main_1();
  return main_out(SV_Target0);
}

