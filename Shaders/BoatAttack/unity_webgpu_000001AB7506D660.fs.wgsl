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

@group(0) @binding(1) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(8) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(0) @binding(4) var x_MetallicGlossMap : texture_2d<f32>;

@group(0) @binding(11) var sampler_MetallicGlossMap : sampler;

@group(1) @binding(3) var<uniform> x_69 : UnityPerMaterial;

@group(0) @binding(2) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(9) var sampler_BumpMap : sampler;

@group(0) @binding(3) var x_OcclusionMap : texture_2d<f32>;

@group(0) @binding(10) var sampler_OcclusionMap : sampler;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

@group(1) @binding(4) var<uniform> x_281 : MainLightShadows;

@group(1) @binding(2) var<uniform> x_451 : UnityPerDraw;

@group(0) @binding(5) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(6) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(13) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1048 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec2<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat23 : vec2<f32>;
  var u_xlat33 : f32;
  var u_xlat14 : vec3<f32>;
  var u_xlatb14 : bool;
  var u_xlat4 : vec4<f32>;
  var u_xlat25 : f32;
  var u_xlat5 : vec3<f32>;
  var x_195 : f32;
  var x_208 : f32;
  var x_219 : f32;
  var u_xlat6 : vec3<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlatb6 : vec4<bool>;
  var u_xlatu33 : u32;
  var u_xlati33 : i32;
  var u_xlat13 : vec3<f32>;
  var u_xlat34 : f32;
  var u_xlat12 : f32;
  var u_xlat37 : f32;
  var u_xlat38 : f32;
  var txVec0 : vec3<f32>;
  var u_xlatb25 : bool;
  var u_xlatb36 : bool;
  var x_694 : f32;
  var u_xlat36 : f32;
  var u_xlat20 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu12 : u32;
  var u_xlati37 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati12 : i32;
  var u_xlat39 : f32;
  var u_xlat40 : f32;
  var u_xlat10 : vec3<f32>;
  var u_xlatb0 : bool;
  var x_1249 : f32;
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
  u_xlat23 = ((vec2<f32>(x_97.x, x_97.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_106 : vec2<f32> = u_xlat23;
  let x_107 : vec2<f32> = u_xlat23;
  u_xlat33 = dot(x_106, x_107);
  let x_109 : f32 = u_xlat33;
  u_xlat33 = min(x_109, 1.0f);
  let x_111 : f32 = u_xlat33;
  u_xlat33 = (-(x_111) + 1.0f);
  let x_114 : f32 = u_xlat33;
  u_xlat33 = sqrt(x_114);
  let x_116 : f32 = u_xlat33;
  u_xlat33 = max(x_116, 1.00000002e-16f);
  let x_119 : vec2<f32> = u_xlat23;
  let x_122 : f32 = x_69.x_BumpScale;
  let x_124 : f32 = x_69.x_BumpScale;
  let x_125 : vec2<f32> = vec2<f32>(x_122, x_124);
  u_xlat23 = (x_119 * vec2<f32>(x_125.x, x_125.y));
  let x_135 : vec2<f32> = vs_TEXCOORD0;
  let x_137 : f32 = x_44.x_GlobalMipBias.x;
  let x_138 : vec4<f32> = textureSampleBias(x_OcclusionMap, sampler_OcclusionMap, x_135, x_137);
  u_xlat3.x = x_138.y;
  let x_145 : f32 = x_69.x_OcclusionStrength;
  u_xlat14.x = (-(x_145) + 1.0f);
  let x_150 : f32 = u_xlat3.x;
  let x_152 : f32 = x_69.x_OcclusionStrength;
  let x_155 : f32 = u_xlat14.x;
  u_xlat3.x = ((x_150 * x_152) + x_155);
  let x_163 : f32 = x_44.unity_OrthoParams.w;
  u_xlatb14 = (x_163 == 0.0f);
  let x_169 : vec3<f32> = vs_TEXCOORD1;
  let x_174 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_175 : vec3<f32> = (-(x_169) + x_174);
  let x_176 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_175.x, x_175.y, x_175.z, x_176.w);
  let x_179 : vec4<f32> = u_xlat4;
  let x_181 : vec4<f32> = u_xlat4;
  u_xlat25 = dot(vec3<f32>(x_179.x, x_179.y, x_179.z), vec3<f32>(x_181.x, x_181.y, x_181.z));
  let x_184 : f32 = u_xlat25;
  u_xlat25 = inverseSqrt(x_184);
  let x_186 : f32 = u_xlat25;
  let x_188 : vec4<f32> = u_xlat4;
  let x_190 : vec3<f32> = (vec3<f32>(x_186, x_186, x_186) * vec3<f32>(x_188.x, x_188.y, x_188.z));
  let x_191 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_190.x, x_190.y, x_190.z, x_191.w);
  let x_194 : bool = u_xlatb14;
  if (x_194) {
    let x_199 : f32 = u_xlat4.x;
    x_195 = x_199;
  } else {
    let x_204 : f32 = x_44.unity_MatrixV[0i].z;
    x_195 = x_204;
  }
  let x_205 : f32 = x_195;
  u_xlat5.x = x_205;
  let x_207 : bool = u_xlatb14;
  if (x_207) {
    let x_212 : f32 = u_xlat4.y;
    x_208 = x_212;
  } else {
    let x_215 : f32 = x_44.unity_MatrixV[1i].z;
    x_208 = x_215;
  }
  let x_216 : f32 = x_208;
  u_xlat5.y = x_216;
  let x_218 : bool = u_xlatb14;
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
  u_xlat14 = (vec3<f32>(x_230.z, x_230.x, x_230.y) * vec3<f32>(x_233.y, x_233.z, x_233.x));
  let x_236 : vec3<f32> = vs_TEXCOORD2;
  let x_238 : vec4<f32> = vs_TEXCOORD3;
  let x_241 : vec3<f32> = u_xlat14;
  u_xlat14 = ((vec3<f32>(x_236.y, x_236.z, x_236.x) * vec3<f32>(x_238.z, x_238.x, x_238.y)) + -(x_241));
  let x_244 : vec3<f32> = u_xlat14;
  let x_245 : vec4<f32> = vs_TEXCOORD3;
  u_xlat14 = (x_244 * vec3<f32>(x_245.w, x_245.w, x_245.w));
  let x_248 : vec2<f32> = u_xlat23;
  let x_250 : vec3<f32> = u_xlat14;
  u_xlat14 = (vec3<f32>(x_248.y, x_248.y, x_248.y) * x_250);
  let x_252 : vec2<f32> = u_xlat23;
  let x_254 : vec4<f32> = vs_TEXCOORD3;
  let x_257 : vec3<f32> = u_xlat14;
  u_xlat14 = ((vec3<f32>(x_252.x, x_252.x, x_252.x) * vec3<f32>(x_254.x, x_254.y, x_254.z)) + x_257);
  let x_259 : f32 = u_xlat33;
  let x_261 : vec3<f32> = vs_TEXCOORD2;
  let x_263 : vec3<f32> = u_xlat14;
  u_xlat14 = ((vec3<f32>(x_259, x_259, x_259) * x_261) + x_263);
  let x_265 : vec3<f32> = u_xlat14;
  let x_266 : vec3<f32> = u_xlat14;
  u_xlat33 = dot(x_265, x_266);
  let x_268 : f32 = u_xlat33;
  u_xlat33 = inverseSqrt(x_268);
  let x_270 : f32 = u_xlat33;
  let x_272 : vec3<f32> = u_xlat14;
  let x_273 : vec3<f32> = (vec3<f32>(x_270, x_270, x_270) * x_272);
  let x_274 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_273.x, x_273.y, x_273.z, x_274.w);
  let x_276 : vec3<f32> = vs_TEXCOORD1;
  let x_283 : vec4<f32> = x_281.x_CascadeShadowSplitSpheres0;
  u_xlat14 = (x_276 + -(vec3<f32>(x_283.x, x_283.y, x_283.z)));
  let x_288 : vec3<f32> = vs_TEXCOORD1;
  let x_290 : vec4<f32> = x_281.x_CascadeShadowSplitSpheres1;
  u_xlat6 = (x_288 + -(vec3<f32>(x_290.x, x_290.y, x_290.z)));
  let x_295 : vec3<f32> = vs_TEXCOORD1;
  let x_298 : vec4<f32> = x_281.x_CascadeShadowSplitSpheres2;
  let x_301 : vec3<f32> = (x_295 + -(vec3<f32>(x_298.x, x_298.y, x_298.z)));
  let x_302 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_301.x, x_301.y, x_301.z, x_302.w);
  let x_305 : vec3<f32> = vs_TEXCOORD1;
  let x_308 : vec4<f32> = x_281.x_CascadeShadowSplitSpheres3;
  let x_311 : vec3<f32> = (x_305 + -(vec3<f32>(x_308.x, x_308.y, x_308.z)));
  let x_312 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_311.x, x_311.y, x_311.z, x_312.w);
  let x_315 : vec3<f32> = u_xlat14;
  let x_316 : vec3<f32> = u_xlat14;
  u_xlat9.x = dot(x_315, x_316);
  let x_319 : vec3<f32> = u_xlat6;
  let x_320 : vec3<f32> = u_xlat6;
  u_xlat9.y = dot(x_319, x_320);
  let x_323 : vec4<f32> = u_xlat7;
  let x_325 : vec4<f32> = u_xlat7;
  u_xlat9.z = dot(vec3<f32>(x_323.x, x_323.y, x_323.z), vec3<f32>(x_325.x, x_325.y, x_325.z));
  let x_329 : vec4<f32> = u_xlat8;
  let x_331 : vec4<f32> = u_xlat8;
  u_xlat9.w = dot(vec3<f32>(x_329.x, x_329.y, x_329.z), vec3<f32>(x_331.x, x_331.y, x_331.z));
  let x_338 : vec4<f32> = u_xlat9;
  let x_341 : vec4<f32> = x_281.x_CascadeShadowSplitSphereRadii;
  u_xlatb6 = (x_338 < x_341);
  let x_344 : bool = u_xlatb6.x;
  u_xlat7.x = select(0.0f, 1.0f, x_344);
  let x_348 : bool = u_xlatb6.y;
  u_xlat7.y = select(0.0f, 1.0f, x_348);
  let x_352 : bool = u_xlatb6.z;
  u_xlat7.z = select(0.0f, 1.0f, x_352);
  let x_356 : bool = u_xlatb6.w;
  u_xlat7.w = select(0.0f, 1.0f, x_356);
  let x_360 : bool = u_xlatb6.x;
  u_xlat14.x = select(-0.0f, -1.0f, x_360);
  let x_365 : bool = u_xlatb6.y;
  u_xlat14.y = select(-0.0f, -1.0f, x_365);
  let x_369 : bool = u_xlatb6.z;
  u_xlat14.z = select(-0.0f, -1.0f, x_369);
  let x_372 : vec3<f32> = u_xlat14;
  let x_373 : vec4<f32> = u_xlat7;
  u_xlat14 = (x_372 + vec3<f32>(x_373.y, x_373.z, x_373.w));
  let x_376 : vec3<f32> = u_xlat14;
  let x_378 : vec3<f32> = max(x_376, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_379 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_379.x, x_378.x, x_378.y, x_378.z);
  let x_381 : vec4<f32> = u_xlat7;
  u_xlat33 = dot(x_381, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_386 : f32 = u_xlat33;
  u_xlat33 = (-(x_386) + 4.0f);
  let x_391 : f32 = u_xlat33;
  u_xlatu33 = u32(x_391);
  let x_395 : u32 = u_xlatu33;
  u_xlati33 = (bitcast<i32>(x_395) << bitcast<u32>(2i));
  let x_398 : vec3<f32> = vs_TEXCOORD1;
  let x_400 : i32 = u_xlati33;
  let x_403 : i32 = u_xlati33;
  let x_407 : vec4<f32> = x_281.x_MainLightWorldToShadow[((x_400 + 1i) / 4i)][((x_403 + 1i) % 4i)];
  u_xlat14 = (vec3<f32>(x_398.y, x_398.y, x_398.y) * vec3<f32>(x_407.x, x_407.y, x_407.z));
  let x_410 : i32 = u_xlati33;
  let x_412 : i32 = u_xlati33;
  let x_415 : vec4<f32> = x_281.x_MainLightWorldToShadow[(x_410 / 4i)][(x_412 % 4i)];
  let x_417 : vec3<f32> = vs_TEXCOORD1;
  let x_420 : vec3<f32> = u_xlat14;
  u_xlat14 = ((vec3<f32>(x_415.x, x_415.y, x_415.z) * vec3<f32>(x_417.x, x_417.x, x_417.x)) + x_420);
  let x_422 : i32 = u_xlati33;
  let x_425 : i32 = u_xlati33;
  let x_429 : vec4<f32> = x_281.x_MainLightWorldToShadow[((x_422 + 2i) / 4i)][((x_425 + 2i) % 4i)];
  let x_431 : vec3<f32> = vs_TEXCOORD1;
  let x_434 : vec3<f32> = u_xlat14;
  u_xlat14 = ((vec3<f32>(x_429.x, x_429.y, x_429.z) * vec3<f32>(x_431.z, x_431.z, x_431.z)) + x_434);
  let x_436 : vec3<f32> = u_xlat14;
  let x_437 : i32 = u_xlati33;
  let x_440 : i32 = u_xlati33;
  let x_444 : vec4<f32> = x_281.x_MainLightWorldToShadow[((x_437 + 3i) / 4i)][((x_440 + 3i) % 4i)];
  u_xlat14 = (x_436 + vec3<f32>(x_444.x, x_444.y, x_444.z));
  u_xlat4.w = 1.0f;
  let x_454 : vec4<f32> = x_451.unity_SHAr;
  let x_455 : vec4<f32> = u_xlat4;
  u_xlat6.x = dot(x_454, x_455);
  let x_460 : vec4<f32> = x_451.unity_SHAg;
  let x_461 : vec4<f32> = u_xlat4;
  u_xlat6.y = dot(x_460, x_461);
  let x_466 : vec4<f32> = x_451.unity_SHAb;
  let x_467 : vec4<f32> = u_xlat4;
  u_xlat6.z = dot(x_466, x_467);
  let x_470 : vec4<f32> = u_xlat4;
  let x_472 : vec4<f32> = u_xlat4;
  u_xlat7 = (vec4<f32>(x_470.y, x_470.z, x_470.z, x_470.x) * vec4<f32>(x_472.x, x_472.y, x_472.z, x_472.z));
  let x_477 : vec4<f32> = x_451.unity_SHBr;
  let x_478 : vec4<f32> = u_xlat7;
  u_xlat8.x = dot(x_477, x_478);
  let x_483 : vec4<f32> = x_451.unity_SHBg;
  let x_484 : vec4<f32> = u_xlat7;
  u_xlat8.y = dot(x_483, x_484);
  let x_489 : vec4<f32> = x_451.unity_SHBb;
  let x_490 : vec4<f32> = u_xlat7;
  u_xlat8.z = dot(x_489, x_490);
  let x_494 : f32 = u_xlat4.y;
  let x_496 : f32 = u_xlat4.y;
  u_xlat33 = (x_494 * x_496);
  let x_499 : f32 = u_xlat4.x;
  let x_501 : f32 = u_xlat4.x;
  let x_503 : f32 = u_xlat33;
  u_xlat33 = ((x_499 * x_501) + -(x_503));
  let x_508 : vec4<f32> = x_451.unity_SHC;
  let x_510 : f32 = u_xlat33;
  let x_513 : vec4<f32> = u_xlat8;
  let x_515 : vec3<f32> = ((vec3<f32>(x_508.x, x_508.y, x_508.z) * vec3<f32>(x_510, x_510, x_510)) + vec3<f32>(x_513.x, x_513.y, x_513.z));
  let x_516 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_515.x, x_515.y, x_515.z, x_516.w);
  let x_518 : vec3<f32> = u_xlat6;
  let x_519 : vec4<f32> = u_xlat7;
  u_xlat6 = (x_518 + vec3<f32>(x_519.x, x_519.y, x_519.z));
  let x_522 : vec3<f32> = u_xlat6;
  u_xlat6 = max(x_522, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_526 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_527 : vec2<f32> = vec2<f32>(x_526.x, x_526.y);
  u_xlat23 = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_527.x, x_527.y));
  let x_532 : vec2<f32> = u_xlat23;
  let x_533 : vec4<f32> = hlslcc_FragCoord;
  let x_535 : vec2<f32> = (x_532 * vec2<f32>(x_533.x, x_533.y));
  let x_536 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_535.x, x_535.y, x_536.z, x_536.w);
  let x_539 : f32 = u_xlat7.y;
  let x_541 : f32 = x_44.x_ScaleBiasRt.x;
  let x_544 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat33 = ((x_539 * x_541) + x_544);
  let x_546 : f32 = u_xlat33;
  u_xlat7.z = (-(x_546) + 1.0f);
  let x_551 : f32 = u_xlat1.x;
  u_xlat33 = ((-(x_551) * 0.959999979f) + 0.959999979f);
  let x_556 : f32 = u_xlat33;
  u_xlat23.x = (-(x_556) + 1.0f);
  let x_561 : f32 = u_xlat33;
  let x_563 : vec4<f32> = u_xlat2;
  u_xlat13 = (vec3<f32>(x_561, x_561, x_561) * vec3<f32>(x_563.y, x_563.z, x_563.w));
  let x_566 : vec4<f32> = u_xlat0;
  let x_569 : vec4<f32> = x_69.x_BaseColor;
  let x_574 : vec3<f32> = ((vec3<f32>(x_566.x, x_566.y, x_566.z) * vec3<f32>(x_569.x, x_569.y, x_569.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_575 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_574.x, x_574.y, x_574.z, x_575.w);
  let x_577 : vec2<f32> = u_xlat1;
  let x_579 : vec4<f32> = u_xlat0;
  let x_584 : vec3<f32> = ((vec3<f32>(x_577.x, x_577.x, x_577.x) * vec3<f32>(x_579.x, x_579.y, x_579.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_585 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_584.x, x_584.y, x_584.z, x_585.w);
  let x_588 : f32 = u_xlat1.y;
  let x_591 : f32 = x_69.x_Smoothness;
  u_xlat33 = ((-(x_588) * x_591) + 1.0f);
  let x_594 : f32 = u_xlat33;
  let x_595 : f32 = u_xlat33;
  u_xlat1.x = (x_594 * x_595);
  let x_599 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_599, 0.0078125f);
  let x_605 : f32 = u_xlat1.x;
  let x_607 : f32 = u_xlat1.x;
  u_xlat34 = (x_605 * x_607);
  let x_611 : f32 = u_xlat1.y;
  let x_613 : f32 = x_69.x_Smoothness;
  let x_616 : f32 = u_xlat23.x;
  u_xlat12 = ((x_611 * x_613) + x_616);
  let x_618 : f32 = u_xlat12;
  u_xlat12 = clamp(x_618, 0.0f, 1.0f);
  let x_621 : f32 = u_xlat1.x;
  u_xlat23.x = ((x_621 * 4.0f) + 2.0f);
  let x_631 : vec4<f32> = u_xlat7;
  let x_634 : f32 = x_44.x_GlobalMipBias.x;
  let x_635 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_631.x, x_631.z), x_634);
  u_xlat37 = x_635.x;
  let x_638 : f32 = u_xlat37;
  u_xlat38 = (x_638 + -1.0f);
  let x_641 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_642 : f32 = u_xlat38;
  u_xlat38 = ((x_641 * x_642) + 1.0f);
  let x_646 : f32 = u_xlat3.x;
  let x_647 : f32 = u_xlat37;
  u_xlat3.x = min(x_646, x_647);
  let x_651 : vec3<f32> = u_xlat14;
  let x_652 : vec2<f32> = vec2<f32>(x_651.x, x_651.y);
  let x_654 : f32 = u_xlat14.z;
  txVec0 = vec3<f32>(x_652.x, x_652.y, x_654);
  let x_666 : vec3<f32> = txVec0;
  let x_668 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_666.xy, x_666.z);
  u_xlat14.x = x_668;
  let x_671 : f32 = x_281.x_MainLightShadowParams.x;
  u_xlat25 = (-(x_671) + 1.0f);
  let x_675 : f32 = u_xlat14.x;
  let x_677 : f32 = x_281.x_MainLightShadowParams.x;
  let x_679 : f32 = u_xlat25;
  u_xlat14.x = ((x_675 * x_677) + x_679);
  let x_684 : f32 = u_xlat14.z;
  u_xlatb25 = (0.0f >= x_684);
  let x_688 : f32 = u_xlat14.z;
  u_xlatb36 = (x_688 >= 1.0f);
  let x_690 : bool = u_xlatb36;
  let x_691 : bool = u_xlatb25;
  u_xlatb25 = (x_690 | x_691);
  let x_693 : bool = u_xlatb25;
  if (x_693) {
    x_694 = 1.0f;
  } else {
    let x_699 : f32 = u_xlat14.x;
    x_694 = x_699;
  }
  let x_700 : f32 = x_694;
  u_xlat14.x = x_700;
  let x_702 : vec3<f32> = vs_TEXCOORD1;
  let x_704 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_706 : vec3<f32> = (x_702 + -(x_704));
  let x_707 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_706.x, x_706.y, x_706.z, x_707.w);
  let x_709 : vec4<f32> = u_xlat7;
  let x_711 : vec4<f32> = u_xlat7;
  u_xlat25 = dot(vec3<f32>(x_709.x, x_709.y, x_709.z), vec3<f32>(x_711.x, x_711.y, x_711.z));
  let x_714 : f32 = u_xlat25;
  let x_716 : f32 = x_281.x_MainLightShadowParams.z;
  let x_719 : f32 = x_281.x_MainLightShadowParams.w;
  u_xlat25 = ((x_714 * x_716) + x_719);
  let x_721 : f32 = u_xlat25;
  u_xlat25 = clamp(x_721, 0.0f, 1.0f);
  let x_725 : f32 = u_xlat14.x;
  u_xlat36 = (-(x_725) + 1.0f);
  let x_728 : f32 = u_xlat25;
  let x_729 : f32 = u_xlat36;
  let x_732 : f32 = u_xlat14.x;
  u_xlat14.x = ((x_728 * x_729) + x_732);
  let x_735 : f32 = u_xlat38;
  let x_738 : vec4<f32> = x_44.x_MainLightColor;
  let x_740 : vec3<f32> = (vec3<f32>(x_735, x_735, x_735) * vec3<f32>(x_738.x, x_738.y, x_738.z));
  let x_741 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_740.x, x_740.y, x_740.z, x_741.w);
  let x_743 : vec3<f32> = u_xlat5;
  let x_745 : vec4<f32> = u_xlat4;
  u_xlat25 = dot(-(x_743), vec3<f32>(x_745.x, x_745.y, x_745.z));
  let x_748 : f32 = u_xlat25;
  let x_749 : f32 = u_xlat25;
  u_xlat25 = (x_748 + x_749);
  let x_751 : vec4<f32> = u_xlat4;
  let x_753 : f32 = u_xlat25;
  let x_757 : vec3<f32> = u_xlat5;
  let x_759 : vec3<f32> = ((vec3<f32>(x_751.x, x_751.y, x_751.z) * -(vec3<f32>(x_753, x_753, x_753))) + -(x_757));
  let x_760 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_759.x, x_759.y, x_759.z, x_760.w);
  let x_762 : vec4<f32> = u_xlat4;
  let x_764 : vec3<f32> = u_xlat5;
  u_xlat25 = dot(vec3<f32>(x_762.x, x_762.y, x_762.z), x_764);
  let x_766 : f32 = u_xlat25;
  u_xlat25 = clamp(x_766, 0.0f, 1.0f);
  let x_768 : f32 = u_xlat25;
  u_xlat25 = (-(x_768) + 1.0f);
  let x_771 : f32 = u_xlat25;
  let x_772 : f32 = u_xlat25;
  u_xlat25 = (x_771 * x_772);
  let x_774 : f32 = u_xlat25;
  let x_775 : f32 = u_xlat25;
  u_xlat25 = (x_774 * x_775);
  let x_777 : f32 = u_xlat33;
  u_xlat36 = ((-(x_777) * 0.699999988f) + 1.700000048f);
  let x_783 : f32 = u_xlat33;
  let x_784 : f32 = u_xlat36;
  u_xlat33 = (x_783 * x_784);
  let x_786 : f32 = u_xlat33;
  u_xlat33 = (x_786 * 6.0f);
  let x_797 : vec4<f32> = u_xlat8;
  let x_799 : f32 = u_xlat33;
  let x_800 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_797.x, x_797.y, x_797.z), x_799);
  u_xlat8 = x_800;
  let x_802 : f32 = u_xlat8.w;
  u_xlat33 = (x_802 + -1.0f);
  let x_805 : f32 = x_451.unity_SpecCube0_HDR.w;
  let x_806 : f32 = u_xlat33;
  u_xlat33 = ((x_805 * x_806) + 1.0f);
  let x_809 : f32 = u_xlat33;
  u_xlat33 = max(x_809, 0.0f);
  let x_811 : f32 = u_xlat33;
  u_xlat33 = log2(x_811);
  let x_813 : f32 = u_xlat33;
  let x_815 : f32 = x_451.unity_SpecCube0_HDR.y;
  u_xlat33 = (x_813 * x_815);
  let x_817 : f32 = u_xlat33;
  u_xlat33 = exp2(x_817);
  let x_819 : f32 = u_xlat33;
  let x_821 : f32 = x_451.unity_SpecCube0_HDR.x;
  u_xlat33 = (x_819 * x_821);
  let x_823 : vec4<f32> = u_xlat8;
  let x_825 : f32 = u_xlat33;
  let x_827 : vec3<f32> = (vec3<f32>(x_823.x, x_823.y, x_823.z) * vec3<f32>(x_825, x_825, x_825));
  let x_828 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_827.x, x_827.y, x_827.z, x_828.w);
  let x_830 : vec2<f32> = u_xlat1;
  let x_832 : vec2<f32> = u_xlat1;
  let x_836 : vec2<f32> = ((vec2<f32>(x_830.x, x_830.x) * vec2<f32>(x_832.x, x_832.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_837 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_836.x, x_836.y, x_837.z, x_837.w);
  let x_840 : f32 = u_xlat9.y;
  u_xlat33 = (1.0f / x_840);
  let x_843 : vec4<f32> = u_xlat0;
  let x_846 : f32 = u_xlat12;
  u_xlat20 = (-(vec3<f32>(x_843.x, x_843.y, x_843.z)) + vec3<f32>(x_846, x_846, x_846));
  let x_849 : f32 = u_xlat25;
  let x_851 : vec3<f32> = u_xlat20;
  let x_853 : vec4<f32> = u_xlat0;
  u_xlat20 = ((vec3<f32>(x_849, x_849, x_849) * x_851) + vec3<f32>(x_853.x, x_853.y, x_853.z));
  let x_856 : f32 = u_xlat33;
  let x_858 : vec3<f32> = u_xlat20;
  u_xlat20 = (vec3<f32>(x_856, x_856, x_856) * x_858);
  let x_860 : vec4<f32> = u_xlat8;
  let x_862 : vec3<f32> = u_xlat20;
  let x_863 : vec3<f32> = (vec3<f32>(x_860.x, x_860.y, x_860.z) * x_862);
  let x_864 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_863.x, x_863.y, x_863.z, x_864.w);
  let x_866 : vec3<f32> = u_xlat6;
  let x_867 : vec3<f32> = u_xlat13;
  let x_869 : vec4<f32> = u_xlat8;
  u_xlat6 = ((x_866 * x_867) + vec3<f32>(x_869.x, x_869.y, x_869.z));
  let x_873 : f32 = u_xlat14.x;
  let x_875 : f32 = x_451.unity_LightData.z;
  u_xlat33 = (x_873 * x_875);
  let x_877 : vec4<f32> = u_xlat4;
  let x_880 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat1.x = dot(vec3<f32>(x_877.x, x_877.y, x_877.z), vec3<f32>(x_880.x, x_880.y, x_880.z));
  let x_885 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_885, 0.0f, 1.0f);
  let x_888 : f32 = u_xlat33;
  let x_890 : f32 = u_xlat1.x;
  u_xlat33 = (x_888 * x_890);
  let x_892 : f32 = u_xlat33;
  let x_894 : vec4<f32> = u_xlat7;
  u_xlat14 = (vec3<f32>(x_892, x_892, x_892) * vec3<f32>(x_894.x, x_894.y, x_894.z));
  let x_897 : vec3<f32> = u_xlat5;
  let x_899 : vec4<f32> = x_44.x_MainLightPosition;
  let x_901 : vec3<f32> = (x_897 + vec3<f32>(x_899.x, x_899.y, x_899.z));
  let x_902 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_901.x, x_901.y, x_901.z, x_902.w);
  let x_904 : vec4<f32> = u_xlat7;
  let x_906 : vec4<f32> = u_xlat7;
  u_xlat33 = dot(vec3<f32>(x_904.x, x_904.y, x_904.z), vec3<f32>(x_906.x, x_906.y, x_906.z));
  let x_909 : f32 = u_xlat33;
  u_xlat33 = max(x_909, 1.17549435e-37f);
  let x_912 : f32 = u_xlat33;
  u_xlat33 = inverseSqrt(x_912);
  let x_914 : f32 = u_xlat33;
  let x_916 : vec4<f32> = u_xlat7;
  let x_918 : vec3<f32> = (vec3<f32>(x_914, x_914, x_914) * vec3<f32>(x_916.x, x_916.y, x_916.z));
  let x_919 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_918.x, x_918.y, x_918.z, x_919.w);
  let x_921 : vec4<f32> = u_xlat4;
  let x_923 : vec4<f32> = u_xlat7;
  u_xlat33 = dot(vec3<f32>(x_921.x, x_921.y, x_921.z), vec3<f32>(x_923.x, x_923.y, x_923.z));
  let x_926 : f32 = u_xlat33;
  u_xlat33 = clamp(x_926, 0.0f, 1.0f);
  let x_929 : vec4<f32> = x_44.x_MainLightPosition;
  let x_931 : vec4<f32> = u_xlat7;
  u_xlat1.x = dot(vec3<f32>(x_929.x, x_929.y, x_929.z), vec3<f32>(x_931.x, x_931.y, x_931.z));
  let x_936 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_936, 0.0f, 1.0f);
  let x_939 : f32 = u_xlat33;
  let x_940 : f32 = u_xlat33;
  u_xlat33 = (x_939 * x_940);
  let x_942 : f32 = u_xlat33;
  let x_944 : f32 = u_xlat9.x;
  u_xlat33 = ((x_942 * x_944) + 1.000010014f);
  let x_949 : f32 = u_xlat1.x;
  let x_951 : f32 = u_xlat1.x;
  u_xlat1.x = (x_949 * x_951);
  let x_954 : f32 = u_xlat33;
  let x_955 : f32 = u_xlat33;
  u_xlat33 = (x_954 * x_955);
  let x_958 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_958, 0.100000001f);
  let x_962 : f32 = u_xlat33;
  let x_964 : f32 = u_xlat1.x;
  u_xlat33 = (x_962 * x_964);
  let x_967 : f32 = u_xlat23.x;
  let x_968 : f32 = u_xlat33;
  u_xlat33 = (x_967 * x_968);
  let x_970 : f32 = u_xlat34;
  let x_971 : f32 = u_xlat33;
  u_xlat33 = (x_970 / x_971);
  let x_973 : vec4<f32> = u_xlat0;
  let x_975 : f32 = u_xlat33;
  let x_978 : vec3<f32> = u_xlat13;
  let x_979 : vec3<f32> = ((vec3<f32>(x_973.x, x_973.y, x_973.z) * vec3<f32>(x_975, x_975, x_975)) + x_978);
  let x_980 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_979.x, x_979.y, x_979.z, x_980.w);
  let x_982 : vec3<f32> = u_xlat14;
  let x_983 : vec4<f32> = u_xlat7;
  u_xlat14 = (x_982 * vec3<f32>(x_983.x, x_983.y, x_983.z));
  let x_987 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_989 : f32 = x_451.unity_LightData.y;
  u_xlat33 = min(x_987, x_989);
  let x_991 : f32 = u_xlat33;
  u_xlatu33 = bitcast<u32>(i32(x_991));
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1003 : u32 = u_xlatu_loop_1;
    let x_1004 : u32 = u_xlatu33;
    if ((x_1003 < x_1004)) {
    } else {
      break;
    }
    let x_1007 : u32 = u_xlatu_loop_1;
    u_xlatu12 = (x_1007 >> 2u);
    let x_1010 : u32 = u_xlatu_loop_1;
    u_xlati37 = bitcast<i32>((x_1010 & 3u));
    let x_1013 : u32 = u_xlatu12;
    let x_1016 : vec4<f32> = x_451.unity_LightIndices[bitcast<i32>(x_1013)];
    let x_1026 : i32 = u_xlati37;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1031 : vec4<u32> = indexable[x_1026];
    u_xlat12 = dot(x_1016, bitcast<vec4<f32>>(x_1031));
    let x_1035 : f32 = u_xlat12;
    u_xlati12 = i32(x_1035);
    let x_1037 : vec3<f32> = vs_TEXCOORD1;
    let x_1049 : i32 = u_xlati12;
    let x_1051 : vec4<f32> = x_1048.x_AdditionalLightsPosition[x_1049];
    let x_1054 : i32 = u_xlati12;
    let x_1056 : vec4<f32> = x_1048.x_AdditionalLightsPosition[x_1054];
    let x_1058 : vec3<f32> = ((-(x_1037) * vec3<f32>(x_1051.w, x_1051.w, x_1051.w)) + vec3<f32>(x_1056.x, x_1056.y, x_1056.z));
    let x_1059 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1058.x, x_1058.y, x_1058.z, x_1059.w);
    let x_1061 : vec4<f32> = u_xlat8;
    let x_1063 : vec4<f32> = u_xlat8;
    u_xlat37 = dot(vec3<f32>(x_1061.x, x_1061.y, x_1061.z), vec3<f32>(x_1063.x, x_1063.y, x_1063.z));
    let x_1066 : f32 = u_xlat37;
    u_xlat37 = max(x_1066, 6.10351562e-05f);
    let x_1070 : f32 = u_xlat37;
    u_xlat39 = inverseSqrt(x_1070);
    let x_1072 : f32 = u_xlat39;
    let x_1074 : vec4<f32> = u_xlat8;
    u_xlat20 = (vec3<f32>(x_1072, x_1072, x_1072) * vec3<f32>(x_1074.x, x_1074.y, x_1074.z));
    let x_1078 : f32 = u_xlat37;
    u_xlat40 = (1.0f / x_1078);
    let x_1080 : f32 = u_xlat37;
    let x_1081 : i32 = u_xlati12;
    let x_1083 : f32 = x_1048.x_AdditionalLightsAttenuation[x_1081].x;
    u_xlat37 = (x_1080 * x_1083);
    let x_1085 : f32 = u_xlat37;
    let x_1087 : f32 = u_xlat37;
    u_xlat37 = ((-(x_1085) * x_1087) + 1.0f);
    let x_1090 : f32 = u_xlat37;
    u_xlat37 = max(x_1090, 0.0f);
    let x_1092 : f32 = u_xlat37;
    let x_1093 : f32 = u_xlat37;
    u_xlat37 = (x_1092 * x_1093);
    let x_1095 : f32 = u_xlat37;
    let x_1096 : f32 = u_xlat40;
    u_xlat37 = (x_1095 * x_1096);
    let x_1098 : i32 = u_xlati12;
    let x_1100 : vec4<f32> = x_1048.x_AdditionalLightsSpotDir[x_1098];
    let x_1102 : vec3<f32> = u_xlat20;
    u_xlat40 = dot(vec3<f32>(x_1100.x, x_1100.y, x_1100.z), x_1102);
    let x_1104 : f32 = u_xlat40;
    let x_1105 : i32 = u_xlati12;
    let x_1107 : f32 = x_1048.x_AdditionalLightsAttenuation[x_1105].z;
    let x_1109 : i32 = u_xlati12;
    let x_1111 : f32 = x_1048.x_AdditionalLightsAttenuation[x_1109].w;
    u_xlat40 = ((x_1104 * x_1107) + x_1111);
    let x_1113 : f32 = u_xlat40;
    u_xlat40 = clamp(x_1113, 0.0f, 1.0f);
    let x_1115 : f32 = u_xlat40;
    let x_1116 : f32 = u_xlat40;
    u_xlat40 = (x_1115 * x_1116);
    let x_1118 : f32 = u_xlat37;
    let x_1119 : f32 = u_xlat40;
    u_xlat37 = (x_1118 * x_1119);
    let x_1122 : f32 = u_xlat38;
    let x_1124 : i32 = u_xlati12;
    let x_1126 : vec4<f32> = x_1048.x_AdditionalLightsColor[x_1124];
    u_xlat10 = (vec3<f32>(x_1122, x_1122, x_1122) * vec3<f32>(x_1126.x, x_1126.y, x_1126.z));
    let x_1129 : vec4<f32> = u_xlat4;
    let x_1131 : vec3<f32> = u_xlat20;
    u_xlat12 = dot(vec3<f32>(x_1129.x, x_1129.y, x_1129.z), x_1131);
    let x_1133 : f32 = u_xlat12;
    u_xlat12 = clamp(x_1133, 0.0f, 1.0f);
    let x_1135 : f32 = u_xlat12;
    let x_1136 : f32 = u_xlat37;
    u_xlat12 = (x_1135 * x_1136);
    let x_1138 : f32 = u_xlat12;
    let x_1140 : vec3<f32> = u_xlat10;
    u_xlat10 = (vec3<f32>(x_1138, x_1138, x_1138) * x_1140);
    let x_1142 : vec4<f32> = u_xlat8;
    let x_1144 : f32 = u_xlat39;
    let x_1147 : vec3<f32> = u_xlat5;
    let x_1148 : vec3<f32> = ((vec3<f32>(x_1142.x, x_1142.y, x_1142.z) * vec3<f32>(x_1144, x_1144, x_1144)) + x_1147);
    let x_1149 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1148.x, x_1148.y, x_1148.z, x_1149.w);
    let x_1151 : vec4<f32> = u_xlat8;
    let x_1153 : vec4<f32> = u_xlat8;
    u_xlat12 = dot(vec3<f32>(x_1151.x, x_1151.y, x_1151.z), vec3<f32>(x_1153.x, x_1153.y, x_1153.z));
    let x_1156 : f32 = u_xlat12;
    u_xlat12 = max(x_1156, 1.17549435e-37f);
    let x_1158 : f32 = u_xlat12;
    u_xlat12 = inverseSqrt(x_1158);
    let x_1160 : f32 = u_xlat12;
    let x_1162 : vec4<f32> = u_xlat8;
    let x_1164 : vec3<f32> = (vec3<f32>(x_1160, x_1160, x_1160) * vec3<f32>(x_1162.x, x_1162.y, x_1162.z));
    let x_1165 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1164.x, x_1164.y, x_1164.z, x_1165.w);
    let x_1167 : vec4<f32> = u_xlat4;
    let x_1169 : vec4<f32> = u_xlat8;
    u_xlat12 = dot(vec3<f32>(x_1167.x, x_1167.y, x_1167.z), vec3<f32>(x_1169.x, x_1169.y, x_1169.z));
    let x_1172 : f32 = u_xlat12;
    u_xlat12 = clamp(x_1172, 0.0f, 1.0f);
    let x_1174 : vec3<f32> = u_xlat20;
    let x_1175 : vec4<f32> = u_xlat8;
    u_xlat37 = dot(x_1174, vec3<f32>(x_1175.x, x_1175.y, x_1175.z));
    let x_1178 : f32 = u_xlat37;
    u_xlat37 = clamp(x_1178, 0.0f, 1.0f);
    let x_1180 : f32 = u_xlat12;
    let x_1181 : f32 = u_xlat12;
    u_xlat12 = (x_1180 * x_1181);
    let x_1183 : f32 = u_xlat12;
    let x_1185 : f32 = u_xlat9.x;
    u_xlat12 = ((x_1183 * x_1185) + 1.000010014f);
    let x_1188 : f32 = u_xlat37;
    let x_1189 : f32 = u_xlat37;
    u_xlat37 = (x_1188 * x_1189);
    let x_1191 : f32 = u_xlat12;
    let x_1192 : f32 = u_xlat12;
    u_xlat12 = (x_1191 * x_1192);
    let x_1194 : f32 = u_xlat37;
    u_xlat37 = max(x_1194, 0.100000001f);
    let x_1196 : f32 = u_xlat12;
    let x_1197 : f32 = u_xlat37;
    u_xlat12 = (x_1196 * x_1197);
    let x_1200 : f32 = u_xlat23.x;
    let x_1201 : f32 = u_xlat12;
    u_xlat12 = (x_1200 * x_1201);
    let x_1203 : f32 = u_xlat34;
    let x_1204 : f32 = u_xlat12;
    u_xlat12 = (x_1203 / x_1204);
    let x_1206 : vec4<f32> = u_xlat0;
    let x_1208 : f32 = u_xlat12;
    let x_1211 : vec3<f32> = u_xlat13;
    let x_1212 : vec3<f32> = ((vec3<f32>(x_1206.x, x_1206.y, x_1206.z) * vec3<f32>(x_1208, x_1208, x_1208)) + x_1211);
    let x_1213 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1212.x, x_1212.y, x_1212.z, x_1213.w);
    let x_1215 : vec4<f32> = u_xlat8;
    let x_1217 : vec3<f32> = u_xlat10;
    let x_1219 : vec4<f32> = u_xlat7;
    let x_1221 : vec3<f32> = ((vec3<f32>(x_1215.x, x_1215.y, x_1215.z) * x_1217) + vec3<f32>(x_1219.x, x_1219.y, x_1219.z));
    let x_1222 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1221.x, x_1221.y, x_1221.z, x_1222.w);

    continuing {
      let x_1224 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1224 + bitcast<u32>(1i));
    }
  }
  let x_1226 : vec3<f32> = u_xlat6;
  let x_1227 : vec3<f32> = u_xlat3;
  let x_1230 : vec3<f32> = u_xlat14;
  let x_1231 : vec3<f32> = ((x_1226 * vec3<f32>(x_1227.x, x_1227.x, x_1227.x)) + x_1230);
  let x_1232 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1231.x, x_1231.y, x_1231.z, x_1232.w);
  let x_1236 : vec4<f32> = u_xlat7;
  let x_1238 : vec4<f32> = u_xlat0;
  let x_1240 : vec3<f32> = (vec3<f32>(x_1236.x, x_1236.y, x_1236.z) + vec3<f32>(x_1238.x, x_1238.y, x_1238.z));
  let x_1241 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1240.x, x_1240.y, x_1240.z, x_1241.w);
  let x_1246 : f32 = x_69.x_Surface;
  u_xlatb0 = (x_1246 == 1.0f);
  let x_1248 : bool = u_xlatb0;
  if (x_1248) {
    let x_1253 : f32 = u_xlat2.x;
    x_1249 = x_1253;
  } else {
    x_1249 = 1.0f;
  }
  let x_1255 : f32 = x_1249;
  SV_Target0.w = x_1255;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  main_1();
  return main_out(SV_Target0);
}

