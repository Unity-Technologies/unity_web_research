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
  unity_OrthoParams : vec4<f32>,
  x_ScaleBiasRt : vec4<f32>,
  unity_FogParams : vec4<f32>,
  unity_FogColor : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
  x_DitheringTextureInvSize : f32,
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

@group(0) @binding(1) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(9) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(0) @binding(4) var x_MetallicGlossMap : texture_2d<f32>;

@group(0) @binding(12) var sampler_MetallicGlossMap : sampler;

@group(1) @binding(3) var<uniform> x_69 : UnityPerMaterial;

@group(0) @binding(2) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(10) var sampler_BumpMap : sampler;

@group(0) @binding(3) var x_OcclusionMap : texture_2d<f32>;

@group(0) @binding(11) var sampler_OcclusionMap : sampler;

@group(0) @binding(7) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(15) var sampler_DitheringTexture : sampler;

@group(1) @binding(2) var<uniform> x_185 : UnityPerDraw;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

@group(0) @binding(5) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(6) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(14) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_618 : MainLightShadows;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1019 : AdditionalLights;

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
  var u_xlatb25 : bool;
  var x_191 : f32;
  var u_xlatb14 : bool;
  var u_xlat4 : vec4<f32>;
  var u_xlat25 : f32;
  var u_xlat5 : vec3<f32>;
  var x_266 : vec3<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec3<f32>;
  var u_xlat34 : f32;
  var u_xlat13 : vec3<f32>;
  var u_xlat12 : vec3<f32>;
  var u_xlat37 : f32;
  var u_xlat38 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat17 : vec3<f32>;
  var u_xlatb17 : bool;
  var u_xlatb28 : bool;
  var u_xlat28 : f32;
  var u_xlat40 : f32;
  var u_xlat8 : vec4<f32>;
  var u_xlatu12 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu38 : u32;
  var u_xlati40 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati38 : i32;
  var u_xlat41 : f32;
  var u_xlat9 : vec3<f32>;
  var u_xlat42 : f32;
  var u_xlat10 : vec3<f32>;
  var u_xlatb0 : bool;
  var x_1244 : f32;
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
  let x_158 : vec4<f32> = hlslcc_FragCoord;
  let x_162 : f32 = x_44.x_DitheringTextureInvSize;
  let x_164 : vec2<f32> = (vec2<f32>(x_158.x, x_158.y) * vec2<f32>(x_162, x_162));
  let x_165 : vec3<f32> = u_xlat14;
  u_xlat14 = vec3<f32>(x_164.x, x_164.y, x_165.z);
  let x_172 : vec3<f32> = u_xlat14;
  let x_175 : f32 = x_44.x_GlobalMipBias.x;
  let x_176 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_DitheringTexture, vec2<f32>(x_172.x, x_172.y), x_175);
  u_xlat14.x = x_176.w;
  let x_187 : f32 = x_185.unity_LODFade.x;
  u_xlatb25 = (x_187 >= 0.0f);
  let x_190 : bool = u_xlatb25;
  if (x_190) {
    let x_195 : f32 = u_xlat14.x;
    x_191 = abs(x_195);
  } else {
    let x_199 : f32 = u_xlat14.x;
    x_191 = -(abs(x_199));
  }
  let x_202 : f32 = x_191;
  u_xlat14.x = x_202;
  let x_205 : f32 = u_xlat14.x;
  let x_208 : f32 = x_185.unity_LODFade.x;
  u_xlat14.x = (-(x_205) + x_208);
  let x_213 : f32 = u_xlat14.x;
  u_xlatb14 = (x_213 < 0.0f);
  let x_215 : bool = u_xlatb14;
  if (((select(0i, 1i, x_215) * -1i) != 0i)) {
    discard;
  }
  let x_225 : f32 = x_44.unity_OrthoParams.w;
  u_xlatb14 = (x_225 == 0.0f);
  let x_230 : vec3<f32> = vs_TEXCOORD1;
  let x_235 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_236 : vec3<f32> = (-(x_230) + x_235);
  let x_237 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_236.x, x_236.y, x_236.z, x_237.w);
  let x_240 : vec4<f32> = u_xlat4;
  let x_242 : vec4<f32> = u_xlat4;
  u_xlat25 = dot(vec3<f32>(x_240.x, x_240.y, x_240.z), vec3<f32>(x_242.x, x_242.y, x_242.z));
  let x_245 : f32 = u_xlat25;
  u_xlat25 = inverseSqrt(x_245);
  let x_247 : f32 = u_xlat25;
  let x_249 : vec4<f32> = u_xlat4;
  let x_251 : vec3<f32> = (vec3<f32>(x_247, x_247, x_247) * vec3<f32>(x_249.x, x_249.y, x_249.z));
  let x_252 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_251.x, x_251.y, x_251.z, x_252.w);
  let x_257 : f32 = x_44.unity_MatrixV[0i].z;
  u_xlat5.x = x_257;
  let x_260 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat5.y = x_260;
  let x_263 : f32 = x_44.unity_MatrixV[2i].z;
  u_xlat5.z = x_263;
  let x_265 : bool = u_xlatb14;
  if (x_265) {
    let x_269 : vec4<f32> = u_xlat4;
    x_266 = vec3<f32>(x_269.x, x_269.y, x_269.z);
  } else {
    let x_272 : vec3<f32> = u_xlat5;
    x_266 = x_272;
  }
  let x_273 : vec3<f32> = x_266;
  u_xlat14 = x_273;
  let x_275 : vec3<f32> = vs_TEXCOORD2;
  let x_278 : vec4<f32> = vs_TEXCOORD3;
  let x_280 : vec3<f32> = (vec3<f32>(x_275.z, x_275.x, x_275.y) * vec3<f32>(x_278.y, x_278.z, x_278.x));
  let x_281 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_280.x, x_280.y, x_280.z, x_281.w);
  let x_283 : vec3<f32> = vs_TEXCOORD2;
  let x_285 : vec4<f32> = vs_TEXCOORD3;
  let x_288 : vec4<f32> = u_xlat4;
  let x_291 : vec3<f32> = ((vec3<f32>(x_283.y, x_283.z, x_283.x) * vec3<f32>(x_285.z, x_285.x, x_285.y)) + -(vec3<f32>(x_288.x, x_288.y, x_288.z)));
  let x_292 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_291.x, x_291.y, x_291.z, x_292.w);
  let x_294 : vec4<f32> = u_xlat4;
  let x_296 : vec4<f32> = vs_TEXCOORD3;
  let x_298 : vec3<f32> = (vec3<f32>(x_294.x, x_294.y, x_294.z) * vec3<f32>(x_296.w, x_296.w, x_296.w));
  let x_299 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_298.x, x_298.y, x_298.z, x_299.w);
  let x_301 : vec2<f32> = u_xlat23;
  let x_303 : vec4<f32> = u_xlat4;
  let x_305 : vec3<f32> = (vec3<f32>(x_301.y, x_301.y, x_301.y) * vec3<f32>(x_303.x, x_303.y, x_303.z));
  let x_306 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_305.x, x_305.y, x_305.z, x_306.w);
  let x_308 : vec2<f32> = u_xlat23;
  let x_310 : vec4<f32> = vs_TEXCOORD3;
  let x_313 : vec4<f32> = u_xlat4;
  let x_315 : vec3<f32> = ((vec3<f32>(x_308.x, x_308.x, x_308.x) * vec3<f32>(x_310.x, x_310.y, x_310.z)) + vec3<f32>(x_313.x, x_313.y, x_313.z));
  let x_316 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_315.x, x_315.y, x_315.z, x_316.w);
  let x_318 : f32 = u_xlat33;
  let x_320 : vec3<f32> = vs_TEXCOORD2;
  let x_322 : vec4<f32> = u_xlat4;
  let x_324 : vec3<f32> = ((vec3<f32>(x_318, x_318, x_318) * x_320) + vec3<f32>(x_322.x, x_322.y, x_322.z));
  let x_325 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_324.x, x_324.y, x_324.z, x_325.w);
  let x_327 : vec4<f32> = u_xlat4;
  let x_329 : vec4<f32> = u_xlat4;
  u_xlat33 = dot(vec3<f32>(x_327.x, x_327.y, x_327.z), vec3<f32>(x_329.x, x_329.y, x_329.z));
  let x_332 : f32 = u_xlat33;
  u_xlat33 = inverseSqrt(x_332);
  let x_334 : f32 = u_xlat33;
  let x_336 : vec4<f32> = u_xlat4;
  let x_338 : vec3<f32> = (vec3<f32>(x_334, x_334, x_334) * vec3<f32>(x_336.x, x_336.y, x_336.z));
  let x_339 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_338.x, x_338.y, x_338.z, x_339.w);
  let x_342 : f32 = vs_TEXCOORD1.y;
  let x_344 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat33 = (x_342 * x_344);
  let x_347 : f32 = x_44.unity_MatrixV[0i].z;
  let x_349 : f32 = vs_TEXCOORD1.x;
  let x_351 : f32 = u_xlat33;
  u_xlat33 = ((x_347 * x_349) + x_351);
  let x_354 : f32 = x_44.unity_MatrixV[2i].z;
  let x_356 : f32 = vs_TEXCOORD1.z;
  let x_358 : f32 = u_xlat33;
  u_xlat33 = ((x_354 * x_356) + x_358);
  let x_360 : f32 = u_xlat33;
  let x_363 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat33 = (x_360 + x_363);
  let x_365 : f32 = u_xlat33;
  let x_369 : f32 = x_44.x_ProjectionParams.y;
  u_xlat33 = (-(x_365) + -(x_369));
  let x_372 : f32 = u_xlat33;
  u_xlat33 = max(x_372, 0.0f);
  let x_374 : f32 = u_xlat33;
  let x_376 : f32 = x_44.unity_FogParams.x;
  u_xlat33 = (x_374 * x_376);
  u_xlat4.w = 1.0f;
  let x_381 : vec4<f32> = x_185.unity_SHAr;
  let x_382 : vec4<f32> = u_xlat4;
  u_xlat5.x = dot(x_381, x_382);
  let x_387 : vec4<f32> = x_185.unity_SHAg;
  let x_388 : vec4<f32> = u_xlat4;
  u_xlat5.y = dot(x_387, x_388);
  let x_393 : vec4<f32> = x_185.unity_SHAb;
  let x_394 : vec4<f32> = u_xlat4;
  u_xlat5.z = dot(x_393, x_394);
  let x_398 : vec4<f32> = u_xlat4;
  let x_400 : vec4<f32> = u_xlat4;
  u_xlat6 = (vec4<f32>(x_398.y, x_398.z, x_398.z, x_398.x) * vec4<f32>(x_400.x, x_400.y, x_400.z, x_400.z));
  let x_406 : vec4<f32> = x_185.unity_SHBr;
  let x_407 : vec4<f32> = u_xlat6;
  u_xlat7.x = dot(x_406, x_407);
  let x_412 : vec4<f32> = x_185.unity_SHBg;
  let x_413 : vec4<f32> = u_xlat6;
  u_xlat7.y = dot(x_412, x_413);
  let x_418 : vec4<f32> = x_185.unity_SHBb;
  let x_419 : vec4<f32> = u_xlat6;
  u_xlat7.z = dot(x_418, x_419);
  let x_423 : f32 = u_xlat4.y;
  let x_425 : f32 = u_xlat4.y;
  u_xlat23.x = (x_423 * x_425);
  let x_429 : f32 = u_xlat4.x;
  let x_431 : f32 = u_xlat4.x;
  let x_434 : f32 = u_xlat23.x;
  u_xlat23.x = ((x_429 * x_431) + -(x_434));
  let x_440 : vec4<f32> = x_185.unity_SHC;
  let x_442 : vec2<f32> = u_xlat23;
  let x_445 : vec3<f32> = u_xlat7;
  let x_446 : vec3<f32> = ((vec3<f32>(x_440.x, x_440.y, x_440.z) * vec3<f32>(x_442.x, x_442.x, x_442.x)) + x_445);
  let x_447 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_446.x, x_446.y, x_446.z, x_447.w);
  let x_449 : vec3<f32> = u_xlat5;
  let x_450 : vec4<f32> = u_xlat6;
  u_xlat5 = (x_449 + vec3<f32>(x_450.x, x_450.y, x_450.z));
  let x_453 : vec3<f32> = u_xlat5;
  u_xlat5 = max(x_453, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_458 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_459 : vec2<f32> = vec2<f32>(x_458.x, x_458.y);
  u_xlat23 = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_459.x, x_459.y));
  let x_464 : vec2<f32> = u_xlat23;
  let x_465 : vec4<f32> = hlslcc_FragCoord;
  let x_467 : vec2<f32> = (x_464 * vec2<f32>(x_465.x, x_465.y));
  let x_468 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_467.x, x_467.y, x_468.z, x_468.w);
  let x_471 : f32 = u_xlat6.y;
  let x_474 : f32 = x_44.x_ScaleBiasRt.x;
  let x_477 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat23.x = ((x_471 * x_474) + x_477);
  let x_481 : f32 = u_xlat23.x;
  u_xlat6.z = (-(x_481) + 1.0f);
  let x_486 : f32 = u_xlat1.x;
  u_xlat23.x = ((-(x_486) * 0.959999979f) + 0.959999979f);
  let x_494 : f32 = u_xlat1.y;
  let x_496 : f32 = x_69.x_Smoothness;
  let x_499 : f32 = u_xlat23.x;
  u_xlat34 = ((x_494 * x_496) + -(x_499));
  let x_503 : vec2<f32> = u_xlat23;
  let x_505 : vec4<f32> = u_xlat2;
  u_xlat13 = (vec3<f32>(x_503.x, x_503.x, x_503.x) * vec3<f32>(x_505.y, x_505.z, x_505.w));
  let x_508 : vec4<f32> = u_xlat0;
  let x_511 : vec4<f32> = x_69.x_BaseColor;
  let x_516 : vec3<f32> = ((vec3<f32>(x_508.x, x_508.y, x_508.z) * vec3<f32>(x_511.x, x_511.y, x_511.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_517 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_516.x, x_516.y, x_516.z, x_517.w);
  let x_519 : vec2<f32> = u_xlat1;
  let x_521 : vec4<f32> = u_xlat0;
  let x_526 : vec3<f32> = ((vec3<f32>(x_519.x, x_519.x, x_519.x) * vec3<f32>(x_521.x, x_521.y, x_521.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_527 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_526.x, x_526.y, x_526.z, x_527.w);
  let x_530 : f32 = u_xlat1.y;
  let x_533 : f32 = x_69.x_Smoothness;
  u_xlat1.x = ((-(x_530) * x_533) + 1.0f);
  let x_539 : f32 = u_xlat1.x;
  let x_541 : f32 = u_xlat1.x;
  u_xlat12.x = (x_539 * x_541);
  let x_545 : f32 = u_xlat12.x;
  u_xlat12.x = max(x_545, 0.0078125f);
  let x_550 : f32 = u_xlat12.x;
  let x_552 : f32 = u_xlat12.x;
  u_xlat23.x = (x_550 * x_552);
  let x_555 : f32 = u_xlat34;
  u_xlat34 = (x_555 + 1.0f);
  let x_557 : f32 = u_xlat34;
  u_xlat34 = clamp(x_557, 0.0f, 1.0f);
  let x_561 : f32 = u_xlat12.x;
  u_xlat37 = ((x_561 * 4.0f) + 2.0f);
  let x_571 : vec4<f32> = u_xlat6;
  let x_574 : f32 = x_44.x_GlobalMipBias.x;
  let x_575 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_571.x, x_571.z), x_574);
  u_xlat38 = x_575.x;
  let x_577 : f32 = u_xlat38;
  u_xlat6.x = (x_577 + -1.0f);
  let x_582 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_584 : f32 = u_xlat6.x;
  u_xlat6.x = ((x_582 * x_584) + 1.0f);
  let x_589 : f32 = u_xlat3.x;
  let x_590 : f32 = u_xlat38;
  u_xlat3.x = min(x_589, x_590);
  let x_595 : vec4<f32> = vs_TEXCOORD6;
  let x_596 : vec2<f32> = vec2<f32>(x_595.x, x_595.y);
  let x_598 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_596.x, x_596.y, x_598);
  let x_610 : vec3<f32> = txVec0;
  let x_612 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_610.xy, x_610.z);
  u_xlat38 = x_612;
  let x_620 : f32 = x_618.x_MainLightShadowParams.x;
  u_xlat17.x = (-(x_620) + 1.0f);
  let x_624 : f32 = u_xlat38;
  let x_626 : f32 = x_618.x_MainLightShadowParams.x;
  let x_629 : f32 = u_xlat17.x;
  u_xlat38 = ((x_624 * x_626) + x_629);
  let x_633 : f32 = vs_TEXCOORD6.z;
  u_xlatb17 = (0.0f >= x_633);
  let x_637 : f32 = vs_TEXCOORD6.z;
  u_xlatb28 = (x_637 >= 1.0f);
  let x_639 : bool = u_xlatb28;
  let x_640 : bool = u_xlatb17;
  u_xlatb17 = (x_639 | x_640);
  let x_642 : bool = u_xlatb17;
  let x_643 : f32 = u_xlat38;
  u_xlat38 = select(x_643, 1.0f, x_642);
  let x_645 : vec3<f32> = vs_TEXCOORD1;
  let x_647 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat17 = (x_645 + -(x_647));
  let x_650 : vec3<f32> = u_xlat17;
  let x_651 : vec3<f32> = u_xlat17;
  u_xlat17.x = dot(x_650, x_651);
  let x_655 : f32 = u_xlat17.x;
  let x_657 : f32 = x_618.x_MainLightShadowParams.z;
  let x_660 : f32 = x_618.x_MainLightShadowParams.w;
  u_xlat17.x = ((x_655 * x_657) + x_660);
  let x_664 : f32 = u_xlat17.x;
  u_xlat17.x = clamp(x_664, 0.0f, 1.0f);
  let x_668 : f32 = u_xlat38;
  u_xlat28 = (-(x_668) + 1.0f);
  let x_672 : f32 = u_xlat17.x;
  let x_673 : f32 = u_xlat28;
  let x_675 : f32 = u_xlat38;
  u_xlat38 = ((x_672 * x_673) + x_675);
  let x_677 : vec4<f32> = u_xlat6;
  let x_680 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat17 = (vec3<f32>(x_677.x, x_677.x, x_677.x) * vec3<f32>(x_680.x, x_680.y, x_680.z));
  let x_683 : vec3<f32> = u_xlat14;
  let x_685 : vec4<f32> = u_xlat4;
  u_xlat7.x = dot(-(x_683), vec3<f32>(x_685.x, x_685.y, x_685.z));
  let x_690 : f32 = u_xlat7.x;
  let x_692 : f32 = u_xlat7.x;
  u_xlat7.x = (x_690 + x_692);
  let x_695 : vec4<f32> = u_xlat4;
  let x_697 : vec3<f32> = u_xlat7;
  let x_701 : vec3<f32> = u_xlat14;
  u_xlat7 = ((vec3<f32>(x_695.x, x_695.y, x_695.z) * -(vec3<f32>(x_697.x, x_697.x, x_697.x))) + -(x_701));
  let x_705 : vec4<f32> = u_xlat4;
  let x_707 : vec3<f32> = u_xlat14;
  u_xlat40 = dot(vec3<f32>(x_705.x, x_705.y, x_705.z), x_707);
  let x_709 : f32 = u_xlat40;
  u_xlat40 = clamp(x_709, 0.0f, 1.0f);
  let x_711 : f32 = u_xlat40;
  u_xlat40 = (-(x_711) + 1.0f);
  let x_714 : f32 = u_xlat40;
  let x_715 : f32 = u_xlat40;
  u_xlat40 = (x_714 * x_715);
  let x_717 : f32 = u_xlat40;
  let x_718 : f32 = u_xlat40;
  u_xlat40 = (x_717 * x_718);
  let x_722 : f32 = u_xlat1.x;
  u_xlat8.x = ((-(x_722) * 0.699999988f) + 1.700000048f);
  let x_730 : f32 = u_xlat1.x;
  let x_732 : f32 = u_xlat8.x;
  u_xlat1.x = (x_730 * x_732);
  let x_736 : f32 = u_xlat1.x;
  u_xlat1.x = (x_736 * 6.0f);
  let x_748 : vec3<f32> = u_xlat7;
  let x_750 : f32 = u_xlat1.x;
  let x_751 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, x_748, x_750);
  u_xlat8 = x_751;
  let x_753 : f32 = u_xlat8.w;
  u_xlat1.x = (x_753 + -1.0f);
  let x_757 : f32 = x_185.unity_SpecCube0_HDR.w;
  let x_759 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_757 * x_759) + 1.0f);
  let x_764 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_764, 0.0f);
  let x_768 : f32 = u_xlat1.x;
  u_xlat1.x = log2(x_768);
  let x_772 : f32 = u_xlat1.x;
  let x_774 : f32 = x_185.unity_SpecCube0_HDR.y;
  u_xlat1.x = (x_772 * x_774);
  let x_778 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_778);
  let x_782 : f32 = u_xlat1.x;
  let x_784 : f32 = x_185.unity_SpecCube0_HDR.x;
  u_xlat1.x = (x_782 * x_784);
  let x_787 : vec4<f32> = u_xlat8;
  let x_789 : vec2<f32> = u_xlat1;
  u_xlat7 = (vec3<f32>(x_787.x, x_787.y, x_787.z) * vec3<f32>(x_789.x, x_789.x, x_789.x));
  let x_792 : vec3<f32> = u_xlat12;
  let x_794 : vec3<f32> = u_xlat12;
  u_xlat1 = ((vec2<f32>(x_792.x, x_792.x) * vec2<f32>(x_794.x, x_794.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_800 : f32 = u_xlat1.y;
  u_xlat12.x = (1.0f / x_800);
  let x_803 : vec4<f32> = u_xlat0;
  let x_806 : f32 = u_xlat34;
  let x_808 : vec3<f32> = (-(vec3<f32>(x_803.x, x_803.y, x_803.z)) + vec3<f32>(x_806, x_806, x_806));
  let x_809 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_808.x, x_808.y, x_808.z, x_809.w);
  let x_811 : f32 = u_xlat40;
  let x_813 : vec4<f32> = u_xlat8;
  let x_816 : vec4<f32> = u_xlat0;
  let x_818 : vec3<f32> = ((vec3<f32>(x_811, x_811, x_811) * vec3<f32>(x_813.x, x_813.y, x_813.z)) + vec3<f32>(x_816.x, x_816.y, x_816.z));
  let x_819 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_818.x, x_818.y, x_818.z, x_819.w);
  let x_821 : vec3<f32> = u_xlat12;
  let x_823 : vec4<f32> = u_xlat8;
  let x_825 : vec3<f32> = (vec3<f32>(x_821.x, x_821.x, x_821.x) * vec3<f32>(x_823.x, x_823.y, x_823.z));
  let x_826 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_825.x, x_825.y, x_825.z, x_826.w);
  let x_828 : vec3<f32> = u_xlat7;
  let x_829 : vec4<f32> = u_xlat8;
  u_xlat7 = (x_828 * vec3<f32>(x_829.x, x_829.y, x_829.z));
  let x_832 : vec3<f32> = u_xlat5;
  let x_833 : vec3<f32> = u_xlat13;
  let x_835 : vec3<f32> = u_xlat7;
  u_xlat5 = ((x_832 * x_833) + x_835);
  let x_837 : f32 = u_xlat38;
  let x_840 : f32 = x_185.unity_LightData.z;
  u_xlat12.x = (x_837 * x_840);
  let x_843 : vec4<f32> = u_xlat4;
  let x_846 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat34 = dot(vec3<f32>(x_843.x, x_843.y, x_843.z), vec3<f32>(x_846.x, x_846.y, x_846.z));
  let x_849 : f32 = u_xlat34;
  u_xlat34 = clamp(x_849, 0.0f, 1.0f);
  let x_851 : f32 = u_xlat34;
  let x_853 : f32 = u_xlat12.x;
  u_xlat12.x = (x_851 * x_853);
  let x_856 : vec3<f32> = u_xlat12;
  let x_858 : vec3<f32> = u_xlat17;
  u_xlat17 = (vec3<f32>(x_856.x, x_856.x, x_856.x) * x_858);
  let x_860 : vec3<f32> = u_xlat14;
  let x_862 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat7 = (x_860 + vec3<f32>(x_862.x, x_862.y, x_862.z));
  let x_865 : vec3<f32> = u_xlat7;
  let x_866 : vec3<f32> = u_xlat7;
  u_xlat12.x = dot(x_865, x_866);
  let x_870 : f32 = u_xlat12.x;
  u_xlat12.x = max(x_870, 1.17549435e-37f);
  let x_875 : f32 = u_xlat12.x;
  u_xlat12.x = inverseSqrt(x_875);
  let x_878 : vec3<f32> = u_xlat12;
  let x_880 : vec3<f32> = u_xlat7;
  u_xlat7 = (vec3<f32>(x_878.x, x_878.x, x_878.x) * x_880);
  let x_882 : vec4<f32> = u_xlat4;
  let x_884 : vec3<f32> = u_xlat7;
  u_xlat12.x = dot(vec3<f32>(x_882.x, x_882.y, x_882.z), x_884);
  let x_888 : f32 = u_xlat12.x;
  u_xlat12.x = clamp(x_888, 0.0f, 1.0f);
  let x_892 : vec4<f32> = x_44.x_MainLightPosition;
  let x_894 : vec3<f32> = u_xlat7;
  u_xlat12.z = dot(vec3<f32>(x_892.x, x_892.y, x_892.z), x_894);
  let x_898 : f32 = u_xlat12.z;
  u_xlat12.z = clamp(x_898, 0.0f, 1.0f);
  let x_901 : vec3<f32> = u_xlat12;
  let x_903 : vec3<f32> = u_xlat12;
  let x_905 : vec2<f32> = (vec2<f32>(x_901.x, x_901.z) * vec2<f32>(x_903.x, x_903.z));
  let x_906 : vec3<f32> = u_xlat12;
  u_xlat12 = vec3<f32>(x_905.x, x_906.y, x_905.y);
  let x_909 : f32 = u_xlat12.x;
  let x_911 : f32 = u_xlat1.x;
  u_xlat12.x = ((x_909 * x_911) + 1.000010014f);
  let x_917 : f32 = u_xlat12.x;
  let x_919 : f32 = u_xlat12.x;
  u_xlat12.x = (x_917 * x_919);
  let x_923 : f32 = u_xlat12.z;
  u_xlat34 = max(x_923, 0.100000001f);
  let x_926 : f32 = u_xlat34;
  let x_928 : f32 = u_xlat12.x;
  u_xlat12.x = (x_926 * x_928);
  let x_931 : f32 = u_xlat37;
  let x_933 : f32 = u_xlat12.x;
  u_xlat12.x = (x_931 * x_933);
  let x_937 : f32 = u_xlat23.x;
  let x_939 : f32 = u_xlat12.x;
  u_xlat12.x = (x_937 / x_939);
  let x_942 : vec4<f32> = u_xlat0;
  let x_944 : vec3<f32> = u_xlat12;
  let x_947 : vec3<f32> = u_xlat13;
  u_xlat7 = ((vec3<f32>(x_942.x, x_942.y, x_942.z) * vec3<f32>(x_944.x, x_944.x, x_944.x)) + x_947);
  let x_949 : vec3<f32> = u_xlat17;
  let x_950 : vec3<f32> = u_xlat7;
  u_xlat17 = (x_949 * x_950);
  let x_953 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_955 : f32 = x_185.unity_LightData.y;
  u_xlat12.x = min(x_953, x_955);
  let x_961 : f32 = u_xlat12.x;
  u_xlatu12 = bitcast<u32>(i32(x_961));
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_973 : u32 = u_xlatu_loop_1;
    let x_974 : u32 = u_xlatu12;
    if ((x_973 < x_974)) {
    } else {
      break;
    }
    let x_977 : u32 = u_xlatu_loop_1;
    u_xlatu38 = (x_977 >> 2u);
    let x_981 : u32 = u_xlatu_loop_1;
    u_xlati40 = bitcast<i32>((x_981 & 3u));
    let x_984 : u32 = u_xlatu38;
    let x_987 : vec4<f32> = x_185.unity_LightIndices[bitcast<i32>(x_984)];
    let x_997 : i32 = u_xlati40;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1002 : vec4<u32> = indexable[x_997];
    u_xlat38 = dot(x_987, bitcast<vec4<f32>>(x_1002));
    let x_1006 : f32 = u_xlat38;
    u_xlati38 = i32(x_1006);
    let x_1008 : vec3<f32> = vs_TEXCOORD1;
    let x_1020 : i32 = u_xlati38;
    let x_1022 : vec4<f32> = x_1019.x_AdditionalLightsPosition[x_1020];
    let x_1025 : i32 = u_xlati38;
    let x_1027 : vec4<f32> = x_1019.x_AdditionalLightsPosition[x_1025];
    let x_1029 : vec3<f32> = ((-(x_1008) * vec3<f32>(x_1022.w, x_1022.w, x_1022.w)) + vec3<f32>(x_1027.x, x_1027.y, x_1027.z));
    let x_1030 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1029.x, x_1029.y, x_1029.z, x_1030.w);
    let x_1032 : vec4<f32> = u_xlat8;
    let x_1034 : vec4<f32> = u_xlat8;
    u_xlat40 = dot(vec3<f32>(x_1032.x, x_1032.y, x_1032.z), vec3<f32>(x_1034.x, x_1034.y, x_1034.z));
    let x_1037 : f32 = u_xlat40;
    u_xlat40 = max(x_1037, 6.10351562e-05f);
    let x_1041 : f32 = u_xlat40;
    u_xlat41 = inverseSqrt(x_1041);
    let x_1044 : f32 = u_xlat41;
    let x_1046 : vec4<f32> = u_xlat8;
    u_xlat9 = (vec3<f32>(x_1044, x_1044, x_1044) * vec3<f32>(x_1046.x, x_1046.y, x_1046.z));
    let x_1050 : f32 = u_xlat40;
    u_xlat42 = (1.0f / x_1050);
    let x_1052 : f32 = u_xlat40;
    let x_1053 : i32 = u_xlati38;
    let x_1055 : f32 = x_1019.x_AdditionalLightsAttenuation[x_1053].x;
    u_xlat40 = (x_1052 * x_1055);
    let x_1057 : f32 = u_xlat40;
    let x_1059 : f32 = u_xlat40;
    u_xlat40 = ((-(x_1057) * x_1059) + 1.0f);
    let x_1062 : f32 = u_xlat40;
    u_xlat40 = max(x_1062, 0.0f);
    let x_1064 : f32 = u_xlat40;
    let x_1065 : f32 = u_xlat40;
    u_xlat40 = (x_1064 * x_1065);
    let x_1067 : f32 = u_xlat40;
    let x_1068 : f32 = u_xlat42;
    u_xlat40 = (x_1067 * x_1068);
    let x_1070 : i32 = u_xlati38;
    let x_1072 : vec4<f32> = x_1019.x_AdditionalLightsSpotDir[x_1070];
    let x_1074 : vec3<f32> = u_xlat9;
    u_xlat42 = dot(vec3<f32>(x_1072.x, x_1072.y, x_1072.z), x_1074);
    let x_1076 : f32 = u_xlat42;
    let x_1077 : i32 = u_xlati38;
    let x_1079 : f32 = x_1019.x_AdditionalLightsAttenuation[x_1077].z;
    let x_1081 : i32 = u_xlati38;
    let x_1083 : f32 = x_1019.x_AdditionalLightsAttenuation[x_1081].w;
    u_xlat42 = ((x_1076 * x_1079) + x_1083);
    let x_1085 : f32 = u_xlat42;
    u_xlat42 = clamp(x_1085, 0.0f, 1.0f);
    let x_1087 : f32 = u_xlat42;
    let x_1088 : f32 = u_xlat42;
    u_xlat42 = (x_1087 * x_1088);
    let x_1090 : f32 = u_xlat40;
    let x_1091 : f32 = u_xlat42;
    u_xlat40 = (x_1090 * x_1091);
    let x_1094 : vec4<f32> = u_xlat6;
    let x_1096 : i32 = u_xlati38;
    let x_1098 : vec4<f32> = x_1019.x_AdditionalLightsColor[x_1096];
    u_xlat10 = (vec3<f32>(x_1094.x, x_1094.x, x_1094.x) * vec3<f32>(x_1098.x, x_1098.y, x_1098.z));
    let x_1101 : vec4<f32> = u_xlat4;
    let x_1103 : vec3<f32> = u_xlat9;
    u_xlat38 = dot(vec3<f32>(x_1101.x, x_1101.y, x_1101.z), x_1103);
    let x_1105 : f32 = u_xlat38;
    u_xlat38 = clamp(x_1105, 0.0f, 1.0f);
    let x_1107 : f32 = u_xlat38;
    let x_1108 : f32 = u_xlat40;
    u_xlat38 = (x_1107 * x_1108);
    let x_1110 : f32 = u_xlat38;
    let x_1112 : vec3<f32> = u_xlat10;
    u_xlat10 = (vec3<f32>(x_1110, x_1110, x_1110) * x_1112);
    let x_1114 : vec4<f32> = u_xlat8;
    let x_1116 : f32 = u_xlat41;
    let x_1119 : vec3<f32> = u_xlat14;
    let x_1120 : vec3<f32> = ((vec3<f32>(x_1114.x, x_1114.y, x_1114.z) * vec3<f32>(x_1116, x_1116, x_1116)) + x_1119);
    let x_1121 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1120.x, x_1120.y, x_1120.z, x_1121.w);
    let x_1123 : vec4<f32> = u_xlat8;
    let x_1125 : vec4<f32> = u_xlat8;
    u_xlat38 = dot(vec3<f32>(x_1123.x, x_1123.y, x_1123.z), vec3<f32>(x_1125.x, x_1125.y, x_1125.z));
    let x_1128 : f32 = u_xlat38;
    u_xlat38 = max(x_1128, 1.17549435e-37f);
    let x_1130 : f32 = u_xlat38;
    u_xlat38 = inverseSqrt(x_1130);
    let x_1132 : f32 = u_xlat38;
    let x_1134 : vec4<f32> = u_xlat8;
    let x_1136 : vec3<f32> = (vec3<f32>(x_1132, x_1132, x_1132) * vec3<f32>(x_1134.x, x_1134.y, x_1134.z));
    let x_1137 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1136.x, x_1136.y, x_1136.z, x_1137.w);
    let x_1139 : vec4<f32> = u_xlat4;
    let x_1141 : vec4<f32> = u_xlat8;
    u_xlat38 = dot(vec3<f32>(x_1139.x, x_1139.y, x_1139.z), vec3<f32>(x_1141.x, x_1141.y, x_1141.z));
    let x_1144 : f32 = u_xlat38;
    u_xlat38 = clamp(x_1144, 0.0f, 1.0f);
    let x_1146 : vec3<f32> = u_xlat9;
    let x_1147 : vec4<f32> = u_xlat8;
    u_xlat40 = dot(x_1146, vec3<f32>(x_1147.x, x_1147.y, x_1147.z));
    let x_1150 : f32 = u_xlat40;
    u_xlat40 = clamp(x_1150, 0.0f, 1.0f);
    let x_1152 : f32 = u_xlat38;
    let x_1153 : f32 = u_xlat38;
    u_xlat38 = (x_1152 * x_1153);
    let x_1155 : f32 = u_xlat38;
    let x_1157 : f32 = u_xlat1.x;
    u_xlat38 = ((x_1155 * x_1157) + 1.000010014f);
    let x_1160 : f32 = u_xlat40;
    let x_1161 : f32 = u_xlat40;
    u_xlat40 = (x_1160 * x_1161);
    let x_1163 : f32 = u_xlat38;
    let x_1164 : f32 = u_xlat38;
    u_xlat38 = (x_1163 * x_1164);
    let x_1166 : f32 = u_xlat40;
    u_xlat40 = max(x_1166, 0.100000001f);
    let x_1168 : f32 = u_xlat38;
    let x_1169 : f32 = u_xlat40;
    u_xlat38 = (x_1168 * x_1169);
    let x_1171 : f32 = u_xlat37;
    let x_1172 : f32 = u_xlat38;
    u_xlat38 = (x_1171 * x_1172);
    let x_1175 : f32 = u_xlat23.x;
    let x_1176 : f32 = u_xlat38;
    u_xlat38 = (x_1175 / x_1176);
    let x_1178 : vec4<f32> = u_xlat0;
    let x_1180 : f32 = u_xlat38;
    let x_1183 : vec3<f32> = u_xlat13;
    let x_1184 : vec3<f32> = ((vec3<f32>(x_1178.x, x_1178.y, x_1178.z) * vec3<f32>(x_1180, x_1180, x_1180)) + x_1183);
    let x_1185 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1184.x, x_1184.y, x_1184.z, x_1185.w);
    let x_1187 : vec4<f32> = u_xlat8;
    let x_1189 : vec3<f32> = u_xlat10;
    let x_1191 : vec3<f32> = u_xlat7;
    u_xlat7 = ((vec3<f32>(x_1187.x, x_1187.y, x_1187.z) * x_1189) + x_1191);

    continuing {
      let x_1193 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1193 + bitcast<u32>(1i));
    }
  }
  let x_1195 : vec3<f32> = u_xlat5;
  let x_1196 : vec3<f32> = u_xlat3;
  let x_1199 : vec3<f32> = u_xlat17;
  let x_1200 : vec3<f32> = ((x_1195 * vec3<f32>(x_1196.x, x_1196.x, x_1196.x)) + x_1199);
  let x_1201 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1200.x, x_1200.y, x_1200.z, x_1201.w);
  let x_1203 : vec3<f32> = u_xlat7;
  let x_1204 : vec4<f32> = u_xlat0;
  let x_1206 : vec3<f32> = (x_1203 + vec3<f32>(x_1204.x, x_1204.y, x_1204.z));
  let x_1207 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1206.x, x_1206.y, x_1206.z, x_1207.w);
  let x_1209 : f32 = u_xlat33;
  let x_1210 : f32 = u_xlat33;
  u_xlat33 = (x_1209 * -(x_1210));
  let x_1213 : f32 = u_xlat33;
  u_xlat33 = exp2(x_1213);
  let x_1215 : vec4<f32> = u_xlat0;
  let x_1219 : vec4<f32> = x_44.unity_FogColor;
  let x_1222 : vec3<f32> = (vec3<f32>(x_1215.x, x_1215.y, x_1215.z) + -(vec3<f32>(x_1219.x, x_1219.y, x_1219.z)));
  let x_1223 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1222.x, x_1222.y, x_1222.z, x_1223.w);
  let x_1227 : f32 = u_xlat33;
  let x_1229 : vec4<f32> = u_xlat0;
  let x_1233 : vec4<f32> = x_44.unity_FogColor;
  let x_1235 : vec3<f32> = ((vec3<f32>(x_1227, x_1227, x_1227) * vec3<f32>(x_1229.x, x_1229.y, x_1229.z)) + vec3<f32>(x_1233.x, x_1233.y, x_1233.z));
  let x_1236 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1235.x, x_1235.y, x_1235.z, x_1236.w);
  let x_1241 : f32 = x_69.x_Surface;
  u_xlatb0 = (x_1241 == 1.0f);
  let x_1243 : bool = u_xlatb0;
  if (x_1243) {
    let x_1248 : f32 = u_xlat2.x;
    x_1244 = x_1248;
  } else {
    x_1244 = 1.0f;
  }
  let x_1250 : f32 = x_1244;
  SV_Target0.w = x_1250;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(4) vs_TEXCOORD6_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  main_1();
  return main_out(SV_Target0);
}

