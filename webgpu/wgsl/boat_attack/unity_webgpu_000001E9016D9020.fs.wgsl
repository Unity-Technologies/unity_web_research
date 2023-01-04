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
  x_NightFade : f32,
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

@group(0) @binding(3) var Texture2D_52571568 : texture_2d<f32>;

@group(0) @binding(10) var samplerTexture2D_52571568 : sampler;

var<private> vs_INTERP3 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_45 : PGlobals;

@group(0) @binding(5) var Texture2D_8BA53EED : texture_2d<f32>;

@group(0) @binding(12) var samplerTexture2D_8BA53EED : sampler;

@group(0) @binding(6) var Texture2D_AB84E4D0 : texture_2d<f32>;

@group(0) @binding(13) var samplerTexture2D_AB84E4D0 : sampler;

@group(1) @binding(2) var<uniform> x_120 : UnityPerDraw;

@group(0) @binding(4) var Texture2D_F0A81025 : texture_2d<f32>;

@group(0) @binding(11) var samplerTexture2D_F0A81025 : sampler;

var<private> vs_INTERP2 : vec4<f32>;

var<private> vs_INTERP1 : vec3<f32>;

var<private> vs_INTERP0 : vec3<f32>;

@group(0) @binding(1) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_INTERP8 : vec4<f32>;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(9) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(3) var<uniform> x_561 : MainLightShadows;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_940 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat36 : f32;
  var u_xlat2 : vec4<f32>;
  var u_xlat25 : f32;
  var u_xlatb25 : bool;
  var u_xlat3 : vec3<f32>;
  var u_xlatb37 : bool;
  var u_xlat37 : f32;
  var u_xlatb38 : bool;
  var u_xlat38 : f32;
  var u_xlat4 : vec4<f32>;
  var u_xlatb36 : bool;
  var u_xlat5 : vec3<f32>;
  var x_289 : vec3<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec3<f32>;
  var u_xlat39 : f32;
  var u_xlat15 : f32;
  var u_xlat40 : f32;
  var u_xlat41 : f32;
  var u_xlat27 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat18 : vec3<f32>;
  var u_xlatb18 : bool;
  var u_xlatb30 : bool;
  var u_xlat30 : f32;
  var u_xlat43 : f32;
  var u_xlat8 : vec4<f32>;
  var u_xlat44 : f32;
  var u_xlat9 : vec2<f32>;
  var u_xlat21 : vec3<f32>;
  var u_xlatu38 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu39 : u32;
  var u_xlati41 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati39 : i32;
  var u_xlat10 : vec3<f32>;
  var u_xlat11 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_40 : vec4<f32> = vs_INTERP3;
  let x_51 : f32 = x_45.x_GlobalMipBias.x;
  let x_52 : vec4<f32> = textureSampleBias(Texture2D_52571568, samplerTexture2D_52571568, vec2<f32>(x_40.x, x_40.y), x_51);
  u_xlat0 = vec3<f32>(x_52.x, x_52.y, x_52.z);
  let x_60 : vec4<f32> = vs_INTERP3;
  let x_63 : f32 = x_45.x_GlobalMipBias.x;
  let x_64 : vec4<f32> = textureSampleBias(Texture2D_8BA53EED, samplerTexture2D_8BA53EED, vec2<f32>(x_60.x, x_60.y), x_63);
  let x_65 : vec3<f32> = vec3<f32>(x_64.x, x_64.y, x_64.w);
  let x_66 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_65.x, x_65.y, x_65.z, x_66.w);
  let x_70 : f32 = u_xlat1.x;
  let x_73 : f32 = u_xlat1.z;
  u_xlat1.x = (x_70 * x_73);
  let x_76 : vec4<f32> = u_xlat1;
  let x_83 : vec2<f32> = ((vec2<f32>(x_76.x, x_76.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_84 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_83.x, x_83.y, x_84.z, x_84.w);
  let x_87 : vec4<f32> = u_xlat1;
  let x_89 : vec4<f32> = u_xlat1;
  u_xlat36 = dot(vec2<f32>(x_87.x, x_87.y), vec2<f32>(x_89.x, x_89.y));
  let x_92 : f32 = u_xlat36;
  u_xlat36 = min(x_92, 1.0f);
  let x_94 : f32 = u_xlat36;
  u_xlat36 = (-(x_94) + 1.0f);
  let x_97 : f32 = u_xlat36;
  u_xlat36 = sqrt(x_97);
  let x_99 : f32 = u_xlat36;
  u_xlat36 = max(x_99, 1.00000002e-16f);
  let x_108 : vec4<f32> = vs_INTERP3;
  let x_111 : f32 = x_45.x_GlobalMipBias.x;
  let x_112 : vec4<f32> = textureSampleBias(Texture2D_AB84E4D0, samplerTexture2D_AB84E4D0, vec2<f32>(x_108.x, x_108.y), x_111);
  let x_113 : vec3<f32> = vec3<f32>(x_112.x, x_112.y, x_112.z);
  let x_114 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_113.x, x_113.y, x_113.z, x_114.w);
  let x_125 : vec4<f32> = x_120.unity_ObjectToWorld[3i];
  let x_128 : vec4<f32> = x_120.unity_ObjectToWorld[3i];
  u_xlat25 = dot(vec3<f32>(x_125.x, x_125.y, x_125.z), vec3<f32>(x_128.x, x_128.y, x_128.z));
  let x_131 : f32 = u_xlat25;
  u_xlat25 = sqrt(x_131);
  let x_133 : f32 = u_xlat25;
  u_xlat25 = fract(x_133);
  let x_135 : f32 = u_xlat25;
  let x_138 : f32 = x_45.x_NightFade;
  u_xlat25 = (x_135 + x_138);
  let x_143 : f32 = u_xlat25;
  u_xlatb25 = (x_143 >= 1.0f);
  let x_145 : bool = u_xlatb25;
  u_xlat25 = select(0.0f, 1.0f, x_145);
  let x_154 : vec4<f32> = vs_INTERP3;
  let x_157 : f32 = x_45.x_GlobalMipBias.x;
  let x_158 : vec4<f32> = textureSampleBias(Texture2D_F0A81025, samplerTexture2D_F0A81025, vec2<f32>(x_154.x, x_154.y), x_157);
  u_xlat3 = vec3<f32>(x_158.x, x_158.w, x_158.y);
  let x_163 : f32 = vs_INTERP2.w;
  u_xlatb37 = (0.0f < x_163);
  let x_166 : bool = u_xlatb37;
  u_xlat37 = select(-1.0f, 1.0f, x_166);
  let x_170 : f32 = x_120.unity_WorldTransformParams.w;
  u_xlatb38 = (x_170 >= 0.0f);
  let x_173 : bool = u_xlatb38;
  u_xlat38 = select(-1.0f, 1.0f, x_173);
  let x_175 : f32 = u_xlat37;
  let x_176 : f32 = u_xlat38;
  u_xlat37 = (x_175 * x_176);
  let x_181 : vec3<f32> = vs_INTERP1;
  let x_183 : vec4<f32> = vs_INTERP2;
  let x_185 : vec3<f32> = (vec3<f32>(x_181.z, x_181.x, x_181.y) * vec3<f32>(x_183.y, x_183.z, x_183.x));
  let x_186 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_185.x, x_185.y, x_185.z, x_186.w);
  let x_188 : vec3<f32> = vs_INTERP1;
  let x_190 : vec4<f32> = vs_INTERP2;
  let x_193 : vec4<f32> = u_xlat4;
  let x_196 : vec3<f32> = ((vec3<f32>(x_188.y, x_188.z, x_188.x) * vec3<f32>(x_190.z, x_190.x, x_190.y)) + -(vec3<f32>(x_193.x, x_193.y, x_193.z)));
  let x_197 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_196.x, x_196.y, x_196.z, x_197.w);
  let x_199 : f32 = u_xlat37;
  let x_201 : vec4<f32> = u_xlat4;
  let x_203 : vec3<f32> = (vec3<f32>(x_199, x_199, x_199) * vec3<f32>(x_201.x, x_201.y, x_201.z));
  let x_204 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_203.x, x_203.y, x_203.z, x_204.w);
  let x_206 : vec4<f32> = u_xlat1;
  let x_208 : vec4<f32> = u_xlat4;
  let x_210 : vec3<f32> = (vec3<f32>(x_206.y, x_206.y, x_206.y) * vec3<f32>(x_208.x, x_208.y, x_208.z));
  let x_211 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_210.x, x_210.y, x_210.z, x_211.w);
  let x_213 : vec4<f32> = u_xlat1;
  let x_215 : vec4<f32> = vs_INTERP2;
  let x_218 : vec4<f32> = u_xlat4;
  let x_220 : vec3<f32> = ((vec3<f32>(x_213.x, x_213.x, x_213.x) * vec3<f32>(x_215.x, x_215.y, x_215.z)) + vec3<f32>(x_218.x, x_218.y, x_218.z));
  let x_221 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_220.x, x_220.y, x_221.z, x_220.z);
  let x_223 : f32 = u_xlat36;
  let x_225 : vec3<f32> = vs_INTERP1;
  let x_227 : vec4<f32> = u_xlat1;
  let x_229 : vec3<f32> = ((vec3<f32>(x_223, x_223, x_223) * x_225) + vec3<f32>(x_227.x, x_227.y, x_227.w));
  let x_230 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_229.x, x_229.y, x_230.z, x_229.z);
  let x_232 : vec4<f32> = u_xlat1;
  let x_234 : vec4<f32> = u_xlat1;
  u_xlat36 = dot(vec3<f32>(x_232.x, x_232.y, x_232.w), vec3<f32>(x_234.x, x_234.y, x_234.w));
  let x_237 : f32 = u_xlat36;
  u_xlat36 = inverseSqrt(x_237);
  let x_239 : f32 = u_xlat36;
  let x_241 : vec4<f32> = u_xlat1;
  let x_243 : vec3<f32> = (vec3<f32>(x_239, x_239, x_239) * vec3<f32>(x_241.x, x_241.y, x_241.w));
  let x_244 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_243.x, x_243.y, x_243.z, x_244.w);
  let x_249 : f32 = x_45.unity_OrthoParams.w;
  u_xlatb36 = (x_249 == 0.0f);
  let x_252 : vec3<f32> = vs_INTERP0;
  let x_257 : vec3<f32> = x_45.x_WorldSpaceCameraPos;
  let x_258 : vec3<f32> = (-(x_252) + x_257);
  let x_259 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_258.x, x_258.y, x_259.z, x_258.z);
  let x_261 : vec4<f32> = u_xlat1;
  let x_263 : vec4<f32> = u_xlat1;
  u_xlat38 = dot(vec3<f32>(x_261.x, x_261.y, x_261.w), vec3<f32>(x_263.x, x_263.y, x_263.w));
  let x_266 : f32 = u_xlat38;
  u_xlat38 = inverseSqrt(x_266);
  let x_268 : vec4<f32> = u_xlat1;
  let x_270 : f32 = u_xlat38;
  let x_272 : vec3<f32> = (vec3<f32>(x_268.x, x_268.y, x_268.w) * vec3<f32>(x_270, x_270, x_270));
  let x_273 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_272.x, x_272.y, x_273.z, x_272.z);
  let x_278 : f32 = x_45.unity_MatrixV[0i].z;
  u_xlat5.x = x_278;
  let x_281 : f32 = x_45.unity_MatrixV[1i].z;
  u_xlat5.y = x_281;
  let x_286 : f32 = x_45.unity_MatrixV[2i].z;
  u_xlat5.z = x_286;
  let x_288 : bool = u_xlatb36;
  if (x_288) {
    let x_292 : vec4<f32> = u_xlat1;
    x_289 = vec3<f32>(x_292.x, x_292.y, x_292.w);
  } else {
    let x_295 : vec3<f32> = u_xlat5;
    x_289 = x_295;
  }
  let x_296 : vec3<f32> = x_289;
  let x_297 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_296.x, x_296.y, x_297.z, x_296.z);
  let x_300 : f32 = vs_INTERP0.y;
  let x_302 : f32 = x_45.unity_MatrixV[1i].z;
  u_xlat36 = (x_300 * x_302);
  let x_305 : f32 = x_45.unity_MatrixV[0i].z;
  let x_307 : f32 = vs_INTERP0.x;
  let x_309 : f32 = u_xlat36;
  u_xlat36 = ((x_305 * x_307) + x_309);
  let x_312 : f32 = x_45.unity_MatrixV[2i].z;
  let x_314 : f32 = vs_INTERP0.z;
  let x_316 : f32 = u_xlat36;
  u_xlat36 = ((x_312 * x_314) + x_316);
  let x_318 : f32 = u_xlat36;
  let x_320 : f32 = x_45.unity_MatrixV[3i].z;
  u_xlat36 = (x_318 + x_320);
  let x_322 : f32 = u_xlat36;
  let x_326 : f32 = x_45.x_ProjectionParams.y;
  u_xlat36 = (-(x_322) + -(x_326));
  let x_329 : f32 = u_xlat36;
  u_xlat36 = max(x_329, 0.0f);
  let x_331 : f32 = u_xlat36;
  let x_334 : f32 = x_45.unity_FogParams.x;
  u_xlat36 = (x_331 * x_334);
  u_xlat4.w = 1.0f;
  let x_339 : vec4<f32> = x_120.unity_SHAr;
  let x_340 : vec4<f32> = u_xlat4;
  u_xlat5.x = dot(x_339, x_340);
  let x_345 : vec4<f32> = x_120.unity_SHAg;
  let x_346 : vec4<f32> = u_xlat4;
  u_xlat5.y = dot(x_345, x_346);
  let x_351 : vec4<f32> = x_120.unity_SHAb;
  let x_352 : vec4<f32> = u_xlat4;
  u_xlat5.z = dot(x_351, x_352);
  let x_356 : vec4<f32> = u_xlat4;
  let x_358 : vec4<f32> = u_xlat4;
  u_xlat6 = (vec4<f32>(x_356.y, x_356.z, x_356.z, x_356.x) * vec4<f32>(x_358.x, x_358.y, x_358.z, x_358.z));
  let x_364 : vec4<f32> = x_120.unity_SHBr;
  let x_365 : vec4<f32> = u_xlat6;
  u_xlat7.x = dot(x_364, x_365);
  let x_370 : vec4<f32> = x_120.unity_SHBg;
  let x_371 : vec4<f32> = u_xlat6;
  u_xlat7.y = dot(x_370, x_371);
  let x_376 : vec4<f32> = x_120.unity_SHBb;
  let x_377 : vec4<f32> = u_xlat6;
  u_xlat7.z = dot(x_376, x_377);
  let x_381 : f32 = u_xlat4.y;
  let x_383 : f32 = u_xlat4.y;
  u_xlat38 = (x_381 * x_383);
  let x_386 : f32 = u_xlat4.x;
  let x_388 : f32 = u_xlat4.x;
  let x_390 : f32 = u_xlat38;
  u_xlat38 = ((x_386 * x_388) + -(x_390));
  let x_395 : vec4<f32> = x_120.unity_SHC;
  let x_397 : f32 = u_xlat38;
  let x_400 : vec3<f32> = u_xlat7;
  let x_401 : vec3<f32> = ((vec3<f32>(x_395.x, x_395.y, x_395.z) * vec3<f32>(x_397, x_397, x_397)) + x_400);
  let x_402 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_401.x, x_401.y, x_401.z, x_402.w);
  let x_404 : vec3<f32> = u_xlat5;
  let x_405 : vec4<f32> = u_xlat6;
  u_xlat5 = (x_404 + vec3<f32>(x_405.x, x_405.y, x_405.z));
  let x_408 : vec3<f32> = u_xlat5;
  u_xlat5 = max(x_408, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_413 : vec4<f32> = x_45.x_ScaledScreenParams;
  let x_414 : vec2<f32> = vec2<f32>(x_413.x, x_413.y);
  let x_418 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_414.x, x_414.y));
  let x_419 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_418.x, x_418.y, x_419.z, x_419.w);
  let x_421 : vec4<f32> = u_xlat6;
  let x_423 : vec4<f32> = hlslcc_FragCoord;
  let x_425 : vec2<f32> = (vec2<f32>(x_421.x, x_421.y) * vec2<f32>(x_423.x, x_423.y));
  let x_426 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_425.x, x_425.y, x_426.z, x_426.w);
  let x_429 : f32 = u_xlat6.y;
  let x_432 : f32 = x_45.x_ScaleBiasRt.x;
  let x_435 : f32 = x_45.x_ScaleBiasRt.y;
  u_xlat38 = ((x_429 * x_432) + x_435);
  let x_437 : f32 = u_xlat38;
  u_xlat6.z = (-(x_437) + 1.0f);
  let x_441 : vec3<f32> = u_xlat3;
  let x_442 : vec2<f32> = vec2<f32>(x_441.x, x_441.y);
  let x_443 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_442.x, x_442.y, x_443.z);
  let x_445 : vec3<f32> = u_xlat3;
  let x_449 : vec2<f32> = clamp(vec2<f32>(x_445.x, x_445.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_450 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_449.x, x_449.y, x_450.z);
  let x_453 : f32 = u_xlat3.x;
  u_xlat38 = ((-(x_453) * 0.959999979f) + 0.959999979f);
  let x_459 : f32 = u_xlat38;
  let x_462 : f32 = u_xlat3.y;
  u_xlat39 = (-(x_459) + x_462);
  let x_464 : vec3<f32> = u_xlat0;
  let x_465 : f32 = u_xlat38;
  u_xlat7 = (x_464 * vec3<f32>(x_465, x_465, x_465));
  let x_468 : vec3<f32> = u_xlat0;
  u_xlat0 = (x_468 + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_472 : vec3<f32> = u_xlat3;
  let x_474 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_472.x, x_472.x, x_472.x) * x_474) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_480 : f32 = u_xlat3.y;
  u_xlat38 = (-(x_480) + 1.0f);
  let x_483 : f32 = u_xlat38;
  let x_484 : f32 = u_xlat38;
  u_xlat3.x = (x_483 * x_484);
  let x_488 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_488, 0.0078125f);
  let x_494 : f32 = u_xlat3.x;
  let x_496 : f32 = u_xlat3.x;
  u_xlat15 = (x_494 * x_496);
  let x_498 : f32 = u_xlat39;
  u_xlat39 = (x_498 + 1.0f);
  let x_500 : f32 = u_xlat39;
  u_xlat39 = min(x_500, 1.0f);
  let x_504 : f32 = u_xlat3.x;
  u_xlat40 = ((x_504 * 4.0f) + 2.0f);
  let x_514 : vec4<f32> = u_xlat6;
  let x_517 : f32 = x_45.x_GlobalMipBias.x;
  let x_518 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_514.x, x_514.z), x_517);
  u_xlat41 = x_518.x;
  let x_520 : f32 = u_xlat41;
  u_xlat6.x = (x_520 + -1.0f);
  let x_525 : f32 = x_45.x_AmbientOcclusionParam.w;
  let x_527 : f32 = u_xlat6.x;
  u_xlat6.x = ((x_525 * x_527) + 1.0f);
  let x_533 : f32 = u_xlat3.z;
  let x_534 : f32 = u_xlat41;
  u_xlat27 = min(x_533, x_534);
  let x_538 : vec4<f32> = vs_INTERP8;
  let x_539 : vec2<f32> = vec2<f32>(x_538.x, x_538.y);
  let x_541 : f32 = vs_INTERP8.z;
  txVec0 = vec3<f32>(x_539.x, x_539.y, x_541);
  let x_553 : vec3<f32> = txVec0;
  let x_555 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_553.xy, x_553.z);
  u_xlat41 = x_555;
  let x_563 : f32 = x_561.x_MainLightShadowParams.x;
  u_xlat18.x = (-(x_563) + 1.0f);
  let x_567 : f32 = u_xlat41;
  let x_569 : f32 = x_561.x_MainLightShadowParams.x;
  let x_572 : f32 = u_xlat18.x;
  u_xlat41 = ((x_567 * x_569) + x_572);
  let x_576 : f32 = vs_INTERP8.z;
  u_xlatb18 = (0.0f >= x_576);
  let x_580 : f32 = vs_INTERP8.z;
  u_xlatb30 = (x_580 >= 1.0f);
  let x_582 : bool = u_xlatb30;
  let x_583 : bool = u_xlatb18;
  u_xlatb18 = (x_582 | x_583);
  let x_585 : bool = u_xlatb18;
  let x_586 : f32 = u_xlat41;
  u_xlat41 = select(x_586, 1.0f, x_585);
  let x_588 : vec3<f32> = vs_INTERP0;
  let x_590 : vec3<f32> = x_45.x_WorldSpaceCameraPos;
  u_xlat18 = (x_588 + -(x_590));
  let x_593 : vec3<f32> = u_xlat18;
  let x_594 : vec3<f32> = u_xlat18;
  u_xlat18.x = dot(x_593, x_594);
  let x_598 : f32 = u_xlat18.x;
  let x_600 : f32 = x_561.x_MainLightShadowParams.z;
  let x_603 : f32 = x_561.x_MainLightShadowParams.w;
  u_xlat18.x = ((x_598 * x_600) + x_603);
  let x_607 : f32 = u_xlat18.x;
  u_xlat18.x = clamp(x_607, 0.0f, 1.0f);
  let x_611 : f32 = u_xlat41;
  u_xlat30 = (-(x_611) + 1.0f);
  let x_615 : f32 = u_xlat18.x;
  let x_616 : f32 = u_xlat30;
  let x_618 : f32 = u_xlat41;
  u_xlat41 = ((x_615 * x_616) + x_618);
  let x_620 : vec4<f32> = u_xlat6;
  let x_623 : vec4<f32> = x_45.x_MainLightColor;
  u_xlat18 = (vec3<f32>(x_620.x, x_620.x, x_620.x) * vec3<f32>(x_623.x, x_623.y, x_623.z));
  let x_627 : vec4<f32> = u_xlat1;
  let x_630 : vec4<f32> = u_xlat4;
  u_xlat43 = dot(-(vec3<f32>(x_627.x, x_627.y, x_627.w)), vec3<f32>(x_630.x, x_630.y, x_630.z));
  let x_633 : f32 = u_xlat43;
  let x_634 : f32 = u_xlat43;
  u_xlat43 = (x_633 + x_634);
  let x_637 : vec4<f32> = u_xlat4;
  let x_639 : f32 = u_xlat43;
  let x_643 : vec4<f32> = u_xlat1;
  let x_646 : vec3<f32> = ((vec3<f32>(x_637.x, x_637.y, x_637.z) * -(vec3<f32>(x_639, x_639, x_639))) + -(vec3<f32>(x_643.x, x_643.y, x_643.w)));
  let x_647 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_646.x, x_646.y, x_646.z, x_647.w);
  let x_649 : vec4<f32> = u_xlat4;
  let x_651 : vec4<f32> = u_xlat1;
  u_xlat43 = dot(vec3<f32>(x_649.x, x_649.y, x_649.z), vec3<f32>(x_651.x, x_651.y, x_651.w));
  let x_654 : f32 = u_xlat43;
  u_xlat43 = clamp(x_654, 0.0f, 1.0f);
  let x_656 : f32 = u_xlat43;
  u_xlat43 = (-(x_656) + 1.0f);
  let x_659 : f32 = u_xlat43;
  let x_660 : f32 = u_xlat43;
  u_xlat43 = (x_659 * x_660);
  let x_662 : f32 = u_xlat43;
  let x_663 : f32 = u_xlat43;
  u_xlat43 = (x_662 * x_663);
  let x_666 : f32 = u_xlat38;
  u_xlat44 = ((-(x_666) * 0.699999988f) + 1.700000048f);
  let x_672 : f32 = u_xlat38;
  let x_673 : f32 = u_xlat44;
  u_xlat2.w = (x_672 * x_673);
  let x_676 : vec4<f32> = u_xlat2;
  u_xlat2 = (x_676 * vec4<f32>(14.0f, 14.0f, 14.0f, 6.0f));
  let x_689 : vec4<f32> = u_xlat8;
  let x_692 : f32 = u_xlat2.w;
  let x_693 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_689.x, x_689.y, x_689.z), x_692);
  u_xlat8 = x_693;
  let x_695 : f32 = u_xlat8.w;
  u_xlat38 = (x_695 + -1.0f);
  let x_698 : f32 = x_120.unity_SpecCube0_HDR.w;
  let x_699 : f32 = u_xlat38;
  u_xlat38 = ((x_698 * x_699) + 1.0f);
  let x_702 : f32 = u_xlat38;
  u_xlat38 = max(x_702, 0.0f);
  let x_704 : f32 = u_xlat38;
  u_xlat38 = log2(x_704);
  let x_706 : f32 = u_xlat38;
  let x_708 : f32 = x_120.unity_SpecCube0_HDR.y;
  u_xlat38 = (x_706 * x_708);
  let x_710 : f32 = u_xlat38;
  u_xlat38 = exp2(x_710);
  let x_712 : f32 = u_xlat38;
  let x_714 : f32 = x_120.unity_SpecCube0_HDR.x;
  u_xlat38 = (x_712 * x_714);
  let x_716 : vec4<f32> = u_xlat8;
  let x_718 : f32 = u_xlat38;
  let x_720 : vec3<f32> = (vec3<f32>(x_716.x, x_716.y, x_716.z) * vec3<f32>(x_718, x_718, x_718));
  let x_721 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_720.x, x_720.y, x_720.z, x_721.w);
  let x_725 : vec3<f32> = u_xlat3;
  let x_727 : vec3<f32> = u_xlat3;
  u_xlat9 = ((vec2<f32>(x_725.x, x_725.x) * vec2<f32>(x_727.x, x_727.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_733 : f32 = u_xlat9.y;
  u_xlat38 = (1.0f / x_733);
  let x_736 : vec3<f32> = u_xlat0;
  let x_738 : f32 = u_xlat39;
  u_xlat21 = (-(x_736) + vec3<f32>(x_738, x_738, x_738));
  let x_741 : f32 = u_xlat43;
  let x_743 : vec3<f32> = u_xlat21;
  let x_745 : vec3<f32> = u_xlat0;
  u_xlat21 = ((vec3<f32>(x_741, x_741, x_741) * x_743) + x_745);
  let x_747 : f32 = u_xlat38;
  let x_749 : vec3<f32> = u_xlat21;
  u_xlat21 = (vec3<f32>(x_747, x_747, x_747) * x_749);
  let x_751 : vec4<f32> = u_xlat8;
  let x_753 : vec3<f32> = u_xlat21;
  let x_754 : vec3<f32> = (vec3<f32>(x_751.x, x_751.y, x_751.z) * x_753);
  let x_755 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_754.x, x_754.y, x_754.z, x_755.w);
  let x_757 : vec3<f32> = u_xlat5;
  let x_758 : vec3<f32> = u_xlat7;
  let x_760 : vec4<f32> = u_xlat8;
  u_xlat5 = ((x_757 * x_758) + vec3<f32>(x_760.x, x_760.y, x_760.z));
  let x_763 : f32 = u_xlat41;
  let x_766 : f32 = x_120.unity_LightData.z;
  u_xlat38 = (x_763 * x_766);
  let x_768 : vec4<f32> = u_xlat4;
  let x_771 : vec4<f32> = x_45.x_MainLightPosition;
  u_xlat3.x = dot(vec3<f32>(x_768.x, x_768.y, x_768.z), vec3<f32>(x_771.x, x_771.y, x_771.z));
  let x_776 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_776, 0.0f, 1.0f);
  let x_779 : f32 = u_xlat38;
  let x_781 : f32 = u_xlat3.x;
  u_xlat38 = (x_779 * x_781);
  let x_783 : f32 = u_xlat38;
  let x_785 : vec3<f32> = u_xlat18;
  u_xlat18 = (vec3<f32>(x_783, x_783, x_783) * x_785);
  let x_787 : vec4<f32> = u_xlat1;
  let x_790 : vec4<f32> = x_45.x_MainLightPosition;
  let x_792 : vec3<f32> = (vec3<f32>(x_787.x, x_787.y, x_787.w) + vec3<f32>(x_790.x, x_790.y, x_790.z));
  let x_793 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_792.x, x_792.y, x_792.z, x_793.w);
  let x_795 : vec4<f32> = u_xlat8;
  let x_797 : vec4<f32> = u_xlat8;
  u_xlat38 = dot(vec3<f32>(x_795.x, x_795.y, x_795.z), vec3<f32>(x_797.x, x_797.y, x_797.z));
  let x_800 : f32 = u_xlat38;
  u_xlat38 = max(x_800, 1.17549435e-37f);
  let x_803 : f32 = u_xlat38;
  u_xlat38 = inverseSqrt(x_803);
  let x_805 : f32 = u_xlat38;
  let x_807 : vec4<f32> = u_xlat8;
  let x_809 : vec3<f32> = (vec3<f32>(x_805, x_805, x_805) * vec3<f32>(x_807.x, x_807.y, x_807.z));
  let x_810 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_809.x, x_809.y, x_809.z, x_810.w);
  let x_812 : vec4<f32> = u_xlat4;
  let x_814 : vec4<f32> = u_xlat8;
  u_xlat38 = dot(vec3<f32>(x_812.x, x_812.y, x_812.z), vec3<f32>(x_814.x, x_814.y, x_814.z));
  let x_817 : f32 = u_xlat38;
  u_xlat38 = clamp(x_817, 0.0f, 1.0f);
  let x_820 : vec4<f32> = x_45.x_MainLightPosition;
  let x_822 : vec4<f32> = u_xlat8;
  u_xlat3.x = dot(vec3<f32>(x_820.x, x_820.y, x_820.z), vec3<f32>(x_822.x, x_822.y, x_822.z));
  let x_827 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_827, 0.0f, 1.0f);
  let x_830 : f32 = u_xlat38;
  let x_831 : f32 = u_xlat38;
  u_xlat38 = (x_830 * x_831);
  let x_833 : f32 = u_xlat38;
  let x_835 : f32 = u_xlat9.x;
  u_xlat38 = ((x_833 * x_835) + 1.000010014f);
  let x_840 : f32 = u_xlat3.x;
  let x_842 : f32 = u_xlat3.x;
  u_xlat3.x = (x_840 * x_842);
  let x_845 : f32 = u_xlat38;
  let x_846 : f32 = u_xlat38;
  u_xlat38 = (x_845 * x_846);
  let x_849 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_849, 0.100000001f);
  let x_853 : f32 = u_xlat38;
  let x_855 : f32 = u_xlat3.x;
  u_xlat38 = (x_853 * x_855);
  let x_857 : f32 = u_xlat40;
  let x_858 : f32 = u_xlat38;
  u_xlat38 = (x_857 * x_858);
  let x_860 : f32 = u_xlat15;
  let x_861 : f32 = u_xlat38;
  u_xlat38 = (x_860 / x_861);
  let x_863 : vec3<f32> = u_xlat0;
  let x_864 : f32 = u_xlat38;
  let x_867 : vec3<f32> = u_xlat7;
  let x_868 : vec3<f32> = ((x_863 * vec3<f32>(x_864, x_864, x_864)) + x_867);
  let x_869 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_868.x, x_868.y, x_868.z, x_869.w);
  let x_871 : vec3<f32> = u_xlat18;
  let x_872 : vec4<f32> = u_xlat8;
  u_xlat18 = (x_871 * vec3<f32>(x_872.x, x_872.y, x_872.z));
  let x_876 : f32 = x_45.x_AdditionalLightsCount.x;
  let x_878 : f32 = x_120.unity_LightData.y;
  u_xlat38 = min(x_876, x_878);
  let x_882 : f32 = u_xlat38;
  u_xlatu38 = bitcast<u32>(i32(x_882));
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_894 : u32 = u_xlatu_loop_1;
    let x_895 : u32 = u_xlatu38;
    if ((x_894 < x_895)) {
    } else {
      break;
    }
    let x_898 : u32 = u_xlatu_loop_1;
    u_xlatu39 = (x_898 >> 2u);
    let x_902 : u32 = u_xlatu_loop_1;
    u_xlati41 = bitcast<i32>((x_902 & 3u));
    let x_905 : u32 = u_xlatu39;
    let x_908 : vec4<f32> = x_120.unity_LightIndices[bitcast<i32>(x_905)];
    let x_918 : i32 = u_xlati41;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_923 : vec4<u32> = indexable[x_918];
    u_xlat39 = dot(x_908, bitcast<vec4<f32>>(x_923));
    let x_927 : f32 = u_xlat39;
    u_xlati39 = i32(x_927);
    let x_929 : vec3<f32> = vs_INTERP0;
    let x_941 : i32 = u_xlati39;
    let x_943 : vec4<f32> = x_940.x_AdditionalLightsPosition[x_941];
    let x_946 : i32 = u_xlati39;
    let x_948 : vec4<f32> = x_940.x_AdditionalLightsPosition[x_946];
    u_xlat21 = ((-(x_929) * vec3<f32>(x_943.w, x_943.w, x_943.w)) + vec3<f32>(x_948.x, x_948.y, x_948.z));
    let x_951 : vec3<f32> = u_xlat21;
    let x_952 : vec3<f32> = u_xlat21;
    u_xlat41 = dot(x_951, x_952);
    let x_954 : f32 = u_xlat41;
    u_xlat41 = max(x_954, 6.10351562e-05f);
    let x_957 : f32 = u_xlat41;
    u_xlat43 = inverseSqrt(x_957);
    let x_960 : f32 = u_xlat43;
    let x_962 : vec3<f32> = u_xlat21;
    u_xlat10 = (vec3<f32>(x_960, x_960, x_960) * x_962);
    let x_964 : f32 = u_xlat41;
    u_xlat44 = (1.0f / x_964);
    let x_966 : f32 = u_xlat41;
    let x_967 : i32 = u_xlati39;
    let x_969 : f32 = x_940.x_AdditionalLightsAttenuation[x_967].x;
    u_xlat41 = (x_966 * x_969);
    let x_971 : f32 = u_xlat41;
    let x_973 : f32 = u_xlat41;
    u_xlat41 = ((-(x_971) * x_973) + 1.0f);
    let x_976 : f32 = u_xlat41;
    u_xlat41 = max(x_976, 0.0f);
    let x_978 : f32 = u_xlat41;
    let x_979 : f32 = u_xlat41;
    u_xlat41 = (x_978 * x_979);
    let x_981 : f32 = u_xlat41;
    let x_982 : f32 = u_xlat44;
    u_xlat41 = (x_981 * x_982);
    let x_984 : i32 = u_xlati39;
    let x_986 : vec4<f32> = x_940.x_AdditionalLightsSpotDir[x_984];
    let x_988 : vec3<f32> = u_xlat10;
    u_xlat44 = dot(vec3<f32>(x_986.x, x_986.y, x_986.z), x_988);
    let x_990 : f32 = u_xlat44;
    let x_991 : i32 = u_xlati39;
    let x_993 : f32 = x_940.x_AdditionalLightsAttenuation[x_991].z;
    let x_995 : i32 = u_xlati39;
    let x_997 : f32 = x_940.x_AdditionalLightsAttenuation[x_995].w;
    u_xlat44 = ((x_990 * x_993) + x_997);
    let x_999 : f32 = u_xlat44;
    u_xlat44 = clamp(x_999, 0.0f, 1.0f);
    let x_1001 : f32 = u_xlat44;
    let x_1002 : f32 = u_xlat44;
    u_xlat44 = (x_1001 * x_1002);
    let x_1004 : f32 = u_xlat41;
    let x_1005 : f32 = u_xlat44;
    u_xlat41 = (x_1004 * x_1005);
    let x_1008 : vec4<f32> = u_xlat6;
    let x_1010 : i32 = u_xlati39;
    let x_1012 : vec4<f32> = x_940.x_AdditionalLightsColor[x_1010];
    u_xlat11 = (vec3<f32>(x_1008.x, x_1008.x, x_1008.x) * vec3<f32>(x_1012.x, x_1012.y, x_1012.z));
    let x_1015 : vec4<f32> = u_xlat4;
    let x_1017 : vec3<f32> = u_xlat10;
    u_xlat39 = dot(vec3<f32>(x_1015.x, x_1015.y, x_1015.z), x_1017);
    let x_1019 : f32 = u_xlat39;
    u_xlat39 = clamp(x_1019, 0.0f, 1.0f);
    let x_1021 : f32 = u_xlat39;
    let x_1022 : f32 = u_xlat41;
    u_xlat39 = (x_1021 * x_1022);
    let x_1024 : f32 = u_xlat39;
    let x_1026 : vec3<f32> = u_xlat11;
    u_xlat11 = (vec3<f32>(x_1024, x_1024, x_1024) * x_1026);
    let x_1028 : vec3<f32> = u_xlat21;
    let x_1029 : f32 = u_xlat43;
    let x_1032 : vec4<f32> = u_xlat1;
    u_xlat21 = ((x_1028 * vec3<f32>(x_1029, x_1029, x_1029)) + vec3<f32>(x_1032.x, x_1032.y, x_1032.w));
    let x_1035 : vec3<f32> = u_xlat21;
    let x_1036 : vec3<f32> = u_xlat21;
    u_xlat39 = dot(x_1035, x_1036);
    let x_1038 : f32 = u_xlat39;
    u_xlat39 = max(x_1038, 1.17549435e-37f);
    let x_1040 : f32 = u_xlat39;
    u_xlat39 = inverseSqrt(x_1040);
    let x_1042 : f32 = u_xlat39;
    let x_1044 : vec3<f32> = u_xlat21;
    u_xlat21 = (vec3<f32>(x_1042, x_1042, x_1042) * x_1044);
    let x_1046 : vec4<f32> = u_xlat4;
    let x_1048 : vec3<f32> = u_xlat21;
    u_xlat39 = dot(vec3<f32>(x_1046.x, x_1046.y, x_1046.z), x_1048);
    let x_1050 : f32 = u_xlat39;
    u_xlat39 = clamp(x_1050, 0.0f, 1.0f);
    let x_1052 : vec3<f32> = u_xlat10;
    let x_1053 : vec3<f32> = u_xlat21;
    u_xlat41 = dot(x_1052, x_1053);
    let x_1055 : f32 = u_xlat41;
    u_xlat41 = clamp(x_1055, 0.0f, 1.0f);
    let x_1057 : f32 = u_xlat39;
    let x_1058 : f32 = u_xlat39;
    u_xlat39 = (x_1057 * x_1058);
    let x_1060 : f32 = u_xlat39;
    let x_1062 : f32 = u_xlat9.x;
    u_xlat39 = ((x_1060 * x_1062) + 1.000010014f);
    let x_1065 : f32 = u_xlat41;
    let x_1066 : f32 = u_xlat41;
    u_xlat41 = (x_1065 * x_1066);
    let x_1068 : f32 = u_xlat39;
    let x_1069 : f32 = u_xlat39;
    u_xlat39 = (x_1068 * x_1069);
    let x_1071 : f32 = u_xlat41;
    u_xlat41 = max(x_1071, 0.100000001f);
    let x_1073 : f32 = u_xlat39;
    let x_1074 : f32 = u_xlat41;
    u_xlat39 = (x_1073 * x_1074);
    let x_1076 : f32 = u_xlat40;
    let x_1077 : f32 = u_xlat39;
    u_xlat39 = (x_1076 * x_1077);
    let x_1079 : f32 = u_xlat15;
    let x_1080 : f32 = u_xlat39;
    u_xlat39 = (x_1079 / x_1080);
    let x_1082 : vec3<f32> = u_xlat0;
    let x_1083 : f32 = u_xlat39;
    let x_1086 : vec3<f32> = u_xlat7;
    u_xlat21 = ((x_1082 * vec3<f32>(x_1083, x_1083, x_1083)) + x_1086);
    let x_1088 : vec3<f32> = u_xlat21;
    let x_1089 : vec3<f32> = u_xlat11;
    let x_1091 : vec4<f32> = u_xlat8;
    let x_1093 : vec3<f32> = ((x_1088 * x_1089) + vec3<f32>(x_1091.x, x_1091.y, x_1091.z));
    let x_1094 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1093.x, x_1093.y, x_1093.z, x_1094.w);

    continuing {
      let x_1096 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1096 + bitcast<u32>(1i));
    }
  }
  let x_1098 : vec3<f32> = u_xlat5;
  let x_1099 : f32 = u_xlat27;
  let x_1102 : vec3<f32> = u_xlat18;
  u_xlat0 = ((x_1098 * vec3<f32>(x_1099, x_1099, x_1099)) + x_1102);
  let x_1104 : vec4<f32> = u_xlat8;
  let x_1106 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_1104.x, x_1104.y, x_1104.z) + x_1106);
  let x_1108 : vec4<f32> = u_xlat2;
  let x_1110 : f32 = u_xlat25;
  let x_1113 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_1108.x, x_1108.y, x_1108.z) * vec3<f32>(x_1110, x_1110, x_1110)) + x_1113);
  let x_1115 : f32 = u_xlat36;
  let x_1116 : f32 = u_xlat36;
  u_xlat36 = (x_1115 * -(x_1116));
  let x_1119 : f32 = u_xlat36;
  u_xlat36 = exp2(x_1119);
  let x_1121 : vec3<f32> = u_xlat0;
  let x_1124 : vec4<f32> = x_45.unity_FogColor;
  u_xlat0 = (x_1121 + -(vec3<f32>(x_1124.x, x_1124.y, x_1124.z)));
  let x_1130 : f32 = u_xlat36;
  let x_1132 : vec3<f32> = u_xlat0;
  let x_1135 : vec4<f32> = x_45.unity_FogColor;
  let x_1137 : vec3<f32> = ((vec3<f32>(x_1130, x_1130, x_1130) * x_1132) + vec3<f32>(x_1135.x, x_1135.y, x_1135.z));
  let x_1138 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1137.x, x_1137.y, x_1137.z, x_1138.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(3) vs_INTERP3_param : vec4<f32>, @location(2) vs_INTERP2_param : vec4<f32>, @location(1) vs_INTERP1_param : vec3<f32>, @location(0) vs_INTERP0_param : vec3<f32>, @location(4) vs_INTERP8_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_INTERP3 = vs_INTERP3_param;
  vs_INTERP2 = vs_INTERP2_param;
  vs_INTERP1 = vs_INTERP1_param;
  vs_INTERP0 = vs_INTERP0_param;
  vs_INTERP8 = vs_INTERP8_param;
  main_1();
  return main_out(SV_Target0);
}

