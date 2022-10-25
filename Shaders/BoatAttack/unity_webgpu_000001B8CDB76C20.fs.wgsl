struct PGlobals {
  x_ScaledScreenParams : vec4<f32>,
  x_GlobalMipBias : vec2<f32>,
  @size(8)
  padding : u32,
  x_MainLightPosition : vec4<f32>,
  x_MainLightColor : vec4<f32>,
  x_AmbientOcclusionParam : vec4<f32>,
  x_AdditionalLightsCount : vec4<f32>,
  x_RenderingLayerMaxInt : u32,
  x_RenderingLayerRcpMaxInt : f32,
  @size(8)
  padding_1 : u32,
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding_2 : u32,
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

@group(1) @binding(3) var<uniform> x_305 : MainLightShadows;

@group(0) @binding(1) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(9) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1145 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

var<private> SV_Target1 : vec4<f32>;

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
  var u_xlat5 : vec4<f32>;
  var x_289 : vec3<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat8 : vec3<f32>;
  var u_xlatb5 : vec4<bool>;
  var u_xlatu36 : u32;
  var u_xlati36 : i32;
  var u_xlat39 : f32;
  var u_xlat40 : f32;
  var u_xlat15 : f32;
  var u_xlat41 : f32;
  var u_xlat42 : f32;
  var u_xlat27 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat17 : vec3<f32>;
  var u_xlatb17 : bool;
  var u_xlatb29 : bool;
  var x_771 : f32;
  var u_xlat29 : f32;
  var u_xlat43 : f32;
  var u_xlat44 : f32;
  var u_xlat9 : vec4<f32>;
  var u_xlat21 : vec3<f32>;
  var u_xlatu38 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu15 : u32;
  var u_xlati41 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati15 : i32;
  var u_xlat10 : vec3<f32>;
  var u_xlat11 : vec3<f32>;
  var u_xlatu0 : u32;
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
    let x_295 : vec4<f32> = u_xlat5;
    x_289 = vec3<f32>(x_295.x, x_295.y, x_295.z);
  }
  let x_297 : vec3<f32> = x_289;
  let x_298 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_297.x, x_297.y, x_298.z, x_297.z);
  let x_300 : vec3<f32> = vs_INTERP0;
  let x_307 : vec4<f32> = x_305.x_CascadeShadowSplitSpheres0;
  let x_310 : vec3<f32> = (x_300 + -(vec3<f32>(x_307.x, x_307.y, x_307.z)));
  let x_311 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_310.x, x_310.y, x_310.z, x_311.w);
  let x_314 : vec3<f32> = vs_INTERP0;
  let x_316 : vec4<f32> = x_305.x_CascadeShadowSplitSpheres1;
  let x_319 : vec3<f32> = (x_314 + -(vec3<f32>(x_316.x, x_316.y, x_316.z)));
  let x_320 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_319.x, x_319.y, x_319.z, x_320.w);
  let x_323 : vec3<f32> = vs_INTERP0;
  let x_325 : vec4<f32> = x_305.x_CascadeShadowSplitSpheres2;
  let x_328 : vec3<f32> = (x_323 + -(vec3<f32>(x_325.x, x_325.y, x_325.z)));
  let x_329 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_328.x, x_328.y, x_328.z, x_329.w);
  let x_332 : vec3<f32> = vs_INTERP0;
  let x_335 : vec4<f32> = x_305.x_CascadeShadowSplitSpheres3;
  u_xlat8 = (x_332 + -(vec3<f32>(x_335.x, x_335.y, x_335.z)));
  let x_339 : vec4<f32> = u_xlat5;
  let x_341 : vec4<f32> = u_xlat5;
  u_xlat5.x = dot(vec3<f32>(x_339.x, x_339.y, x_339.z), vec3<f32>(x_341.x, x_341.y, x_341.z));
  let x_345 : vec4<f32> = u_xlat6;
  let x_347 : vec4<f32> = u_xlat6;
  u_xlat5.y = dot(vec3<f32>(x_345.x, x_345.y, x_345.z), vec3<f32>(x_347.x, x_347.y, x_347.z));
  let x_351 : vec4<f32> = u_xlat7;
  let x_353 : vec4<f32> = u_xlat7;
  u_xlat5.z = dot(vec3<f32>(x_351.x, x_351.y, x_351.z), vec3<f32>(x_353.x, x_353.y, x_353.z));
  let x_357 : vec3<f32> = u_xlat8;
  let x_358 : vec3<f32> = u_xlat8;
  u_xlat5.w = dot(x_357, x_358);
  let x_364 : vec4<f32> = u_xlat5;
  let x_367 : vec4<f32> = x_305.x_CascadeShadowSplitSphereRadii;
  u_xlatb5 = (x_364 < x_367);
  let x_370 : bool = u_xlatb5.x;
  u_xlat6.x = select(0.0f, 1.0f, x_370);
  let x_374 : bool = u_xlatb5.y;
  u_xlat6.y = select(0.0f, 1.0f, x_374);
  let x_378 : bool = u_xlatb5.z;
  u_xlat6.z = select(0.0f, 1.0f, x_378);
  let x_382 : bool = u_xlatb5.w;
  u_xlat6.w = select(0.0f, 1.0f, x_382);
  let x_386 : bool = u_xlatb5.x;
  u_xlat5.x = select(-0.0f, -1.0f, x_386);
  let x_391 : bool = u_xlatb5.y;
  u_xlat5.y = select(-0.0f, -1.0f, x_391);
  let x_395 : bool = u_xlatb5.z;
  u_xlat5.z = select(-0.0f, -1.0f, x_395);
  let x_398 : vec4<f32> = u_xlat5;
  let x_400 : vec4<f32> = u_xlat6;
  let x_402 : vec3<f32> = (vec3<f32>(x_398.x, x_398.y, x_398.z) + vec3<f32>(x_400.y, x_400.z, x_400.w));
  let x_403 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_402.x, x_402.y, x_402.z, x_403.w);
  let x_405 : vec4<f32> = u_xlat5;
  let x_408 : vec3<f32> = max(vec3<f32>(x_405.x, x_405.y, x_405.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_409 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_409.x, x_408.x, x_408.y, x_408.z);
  let x_411 : vec4<f32> = u_xlat6;
  u_xlat36 = dot(x_411, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_416 : f32 = u_xlat36;
  u_xlat36 = (-(x_416) + 4.0f);
  let x_421 : f32 = u_xlat36;
  u_xlatu36 = u32(x_421);
  let x_425 : u32 = u_xlatu36;
  u_xlati36 = (bitcast<i32>(x_425) << bitcast<u32>(2i));
  let x_428 : vec3<f32> = vs_INTERP0;
  let x_430 : i32 = u_xlati36;
  let x_433 : i32 = u_xlati36;
  let x_437 : vec4<f32> = x_305.x_MainLightWorldToShadow[((x_430 + 1i) / 4i)][((x_433 + 1i) % 4i)];
  let x_439 : vec3<f32> = (vec3<f32>(x_428.y, x_428.y, x_428.y) * vec3<f32>(x_437.x, x_437.y, x_437.z));
  let x_440 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_439.x, x_439.y, x_439.z, x_440.w);
  let x_442 : i32 = u_xlati36;
  let x_444 : i32 = u_xlati36;
  let x_447 : vec4<f32> = x_305.x_MainLightWorldToShadow[(x_442 / 4i)][(x_444 % 4i)];
  let x_449 : vec3<f32> = vs_INTERP0;
  let x_452 : vec4<f32> = u_xlat5;
  let x_454 : vec3<f32> = ((vec3<f32>(x_447.x, x_447.y, x_447.z) * vec3<f32>(x_449.x, x_449.x, x_449.x)) + vec3<f32>(x_452.x, x_452.y, x_452.z));
  let x_455 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_454.x, x_454.y, x_454.z, x_455.w);
  let x_457 : i32 = u_xlati36;
  let x_460 : i32 = u_xlati36;
  let x_464 : vec4<f32> = x_305.x_MainLightWorldToShadow[((x_457 + 2i) / 4i)][((x_460 + 2i) % 4i)];
  let x_466 : vec3<f32> = vs_INTERP0;
  let x_469 : vec4<f32> = u_xlat5;
  let x_471 : vec3<f32> = ((vec3<f32>(x_464.x, x_464.y, x_464.z) * vec3<f32>(x_466.z, x_466.z, x_466.z)) + vec3<f32>(x_469.x, x_469.y, x_469.z));
  let x_472 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_471.x, x_471.y, x_471.z, x_472.w);
  let x_474 : vec4<f32> = u_xlat5;
  let x_476 : i32 = u_xlati36;
  let x_479 : i32 = u_xlati36;
  let x_483 : vec4<f32> = x_305.x_MainLightWorldToShadow[((x_476 + 3i) / 4i)][((x_479 + 3i) % 4i)];
  let x_485 : vec3<f32> = (vec3<f32>(x_474.x, x_474.y, x_474.z) + vec3<f32>(x_483.x, x_483.y, x_483.z));
  let x_486 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_485.x, x_485.y, x_485.z, x_486.w);
  let x_489 : f32 = vs_INTERP0.y;
  let x_491 : f32 = x_45.unity_MatrixV[1i].z;
  u_xlat36 = (x_489 * x_491);
  let x_494 : f32 = x_45.unity_MatrixV[0i].z;
  let x_496 : f32 = vs_INTERP0.x;
  let x_498 : f32 = u_xlat36;
  u_xlat36 = ((x_494 * x_496) + x_498);
  let x_501 : f32 = x_45.unity_MatrixV[2i].z;
  let x_503 : f32 = vs_INTERP0.z;
  let x_505 : f32 = u_xlat36;
  u_xlat36 = ((x_501 * x_503) + x_505);
  let x_507 : f32 = u_xlat36;
  let x_509 : f32 = x_45.unity_MatrixV[3i].z;
  u_xlat36 = (x_507 + x_509);
  let x_511 : f32 = u_xlat36;
  let x_515 : f32 = x_45.x_ProjectionParams.y;
  u_xlat36 = (-(x_511) + -(x_515));
  let x_518 : f32 = u_xlat36;
  u_xlat36 = max(x_518, 0.0f);
  let x_520 : f32 = u_xlat36;
  let x_523 : f32 = x_45.unity_FogParams.x;
  u_xlat36 = (x_520 * x_523);
  u_xlat4.w = 1.0f;
  let x_528 : vec4<f32> = x_120.unity_SHAr;
  let x_529 : vec4<f32> = u_xlat4;
  u_xlat6.x = dot(x_528, x_529);
  let x_534 : vec4<f32> = x_120.unity_SHAg;
  let x_535 : vec4<f32> = u_xlat4;
  u_xlat6.y = dot(x_534, x_535);
  let x_540 : vec4<f32> = x_120.unity_SHAb;
  let x_541 : vec4<f32> = u_xlat4;
  u_xlat6.z = dot(x_540, x_541);
  let x_544 : vec4<f32> = u_xlat4;
  let x_546 : vec4<f32> = u_xlat4;
  u_xlat7 = (vec4<f32>(x_544.y, x_544.z, x_544.z, x_544.x) * vec4<f32>(x_546.x, x_546.y, x_546.z, x_546.z));
  let x_551 : vec4<f32> = x_120.unity_SHBr;
  let x_552 : vec4<f32> = u_xlat7;
  u_xlat8.x = dot(x_551, x_552);
  let x_557 : vec4<f32> = x_120.unity_SHBg;
  let x_558 : vec4<f32> = u_xlat7;
  u_xlat8.y = dot(x_557, x_558);
  let x_563 : vec4<f32> = x_120.unity_SHBb;
  let x_564 : vec4<f32> = u_xlat7;
  u_xlat8.z = dot(x_563, x_564);
  let x_568 : f32 = u_xlat4.y;
  let x_570 : f32 = u_xlat4.y;
  u_xlat38 = (x_568 * x_570);
  let x_573 : f32 = u_xlat4.x;
  let x_575 : f32 = u_xlat4.x;
  let x_577 : f32 = u_xlat38;
  u_xlat38 = ((x_573 * x_575) + -(x_577));
  let x_582 : vec4<f32> = x_120.unity_SHC;
  let x_584 : f32 = u_xlat38;
  let x_587 : vec3<f32> = u_xlat8;
  let x_588 : vec3<f32> = ((vec3<f32>(x_582.x, x_582.y, x_582.z) * vec3<f32>(x_584, x_584, x_584)) + x_587);
  let x_589 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_588.x, x_588.y, x_588.z, x_589.w);
  let x_591 : vec4<f32> = u_xlat6;
  let x_593 : vec4<f32> = u_xlat7;
  let x_595 : vec3<f32> = (vec3<f32>(x_591.x, x_591.y, x_591.z) + vec3<f32>(x_593.x, x_593.y, x_593.z));
  let x_596 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_595.x, x_595.y, x_595.z, x_596.w);
  let x_598 : vec4<f32> = u_xlat6;
  let x_600 : vec3<f32> = max(vec3<f32>(x_598.x, x_598.y, x_598.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_601 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_600.x, x_600.y, x_600.z, x_601.w);
  let x_605 : vec4<f32> = x_45.x_ScaledScreenParams;
  let x_606 : vec2<f32> = vec2<f32>(x_605.x, x_605.y);
  let x_610 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_606.x, x_606.y));
  let x_611 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_610.x, x_610.y, x_611.z, x_611.w);
  let x_613 : vec4<f32> = u_xlat7;
  let x_615 : vec4<f32> = hlslcc_FragCoord;
  let x_617 : vec2<f32> = (vec2<f32>(x_613.x, x_613.y) * vec2<f32>(x_615.x, x_615.y));
  let x_618 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_617.x, x_617.y, x_618.z, x_618.w);
  let x_621 : f32 = u_xlat7.y;
  let x_624 : f32 = x_45.x_ScaleBiasRt.x;
  let x_627 : f32 = x_45.x_ScaleBiasRt.y;
  u_xlat38 = ((x_621 * x_624) + x_627);
  let x_629 : f32 = u_xlat38;
  u_xlat7.z = (-(x_629) + 1.0f);
  let x_633 : vec3<f32> = u_xlat3;
  let x_634 : vec2<f32> = vec2<f32>(x_633.x, x_633.y);
  let x_635 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_634.x, x_634.y, x_635.z);
  let x_637 : vec3<f32> = u_xlat3;
  let x_641 : vec2<f32> = clamp(vec2<f32>(x_637.x, x_637.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_642 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_641.x, x_641.y, x_642.z);
  let x_645 : f32 = u_xlat3.x;
  u_xlat38 = ((-(x_645) * 0.959999979f) + 0.959999979f);
  let x_651 : f32 = u_xlat38;
  u_xlat39 = (-(x_651) + 1.0f);
  let x_654 : vec3<f32> = u_xlat0;
  let x_655 : f32 = u_xlat38;
  u_xlat8 = (x_654 * vec3<f32>(x_655, x_655, x_655));
  let x_658 : vec3<f32> = u_xlat0;
  u_xlat0 = (x_658 + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_662 : vec3<f32> = u_xlat3;
  let x_664 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_662.x, x_662.x, x_662.x) * x_664) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_670 : f32 = u_xlat3.y;
  u_xlat38 = (-(x_670) + 1.0f);
  let x_673 : f32 = u_xlat38;
  let x_674 : f32 = u_xlat38;
  u_xlat3.x = (x_673 * x_674);
  let x_678 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_678, 0.0078125f);
  let x_684 : f32 = u_xlat3.x;
  let x_686 : f32 = u_xlat3.x;
  u_xlat40 = (x_684 * x_686);
  let x_689 : f32 = u_xlat39;
  let x_691 : f32 = u_xlat3.y;
  u_xlat15 = (x_689 + x_691);
  let x_693 : f32 = u_xlat15;
  u_xlat15 = min(x_693, 1.0f);
  let x_696 : f32 = u_xlat3.x;
  u_xlat39 = ((x_696 * 4.0f) + 2.0f);
  let x_705 : vec4<f32> = u_xlat7;
  let x_708 : f32 = x_45.x_GlobalMipBias.x;
  let x_709 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_705.x, x_705.z), x_708);
  u_xlat41 = x_709.x;
  let x_712 : f32 = u_xlat41;
  u_xlat42 = (x_712 + -1.0f);
  let x_715 : f32 = x_45.x_AmbientOcclusionParam.w;
  let x_716 : f32 = u_xlat42;
  u_xlat42 = ((x_715 * x_716) + 1.0f);
  let x_721 : f32 = u_xlat3.z;
  let x_722 : f32 = u_xlat41;
  u_xlat27 = min(x_721, x_722);
  let x_725 : vec4<f32> = u_xlat5;
  let x_726 : vec2<f32> = vec2<f32>(x_725.x, x_725.y);
  let x_728 : f32 = u_xlat5.z;
  txVec0 = vec3<f32>(x_726.x, x_726.y, x_728);
  let x_740 : vec3<f32> = txVec0;
  let x_742 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_740.xy, x_740.z);
  u_xlat5.x = x_742;
  let x_746 : f32 = x_305.x_MainLightShadowParams.x;
  u_xlat17.x = (-(x_746) + 1.0f);
  let x_751 : f32 = u_xlat5.x;
  let x_753 : f32 = x_305.x_MainLightShadowParams.x;
  let x_756 : f32 = u_xlat17.x;
  u_xlat5.x = ((x_751 * x_753) + x_756);
  let x_761 : f32 = u_xlat5.z;
  u_xlatb17 = (0.0f >= x_761);
  let x_765 : f32 = u_xlat5.z;
  u_xlatb29 = (x_765 >= 1.0f);
  let x_767 : bool = u_xlatb29;
  let x_768 : bool = u_xlatb17;
  u_xlatb17 = (x_767 | x_768);
  let x_770 : bool = u_xlatb17;
  if (x_770) {
    x_771 = 1.0f;
  } else {
    let x_776 : f32 = u_xlat5.x;
    x_771 = x_776;
  }
  let x_777 : f32 = x_771;
  u_xlat5.x = x_777;
  let x_779 : vec3<f32> = vs_INTERP0;
  let x_781 : vec3<f32> = x_45.x_WorldSpaceCameraPos;
  u_xlat17 = (x_779 + -(x_781));
  let x_784 : vec3<f32> = u_xlat17;
  let x_785 : vec3<f32> = u_xlat17;
  u_xlat17.x = dot(x_784, x_785);
  let x_789 : f32 = u_xlat17.x;
  let x_791 : f32 = x_305.x_MainLightShadowParams.z;
  let x_794 : f32 = x_305.x_MainLightShadowParams.w;
  u_xlat17.x = ((x_789 * x_791) + x_794);
  let x_798 : f32 = u_xlat17.x;
  u_xlat17.x = clamp(x_798, 0.0f, 1.0f);
  let x_803 : f32 = u_xlat5.x;
  u_xlat29 = (-(x_803) + 1.0f);
  let x_807 : f32 = u_xlat17.x;
  let x_808 : f32 = u_xlat29;
  let x_811 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_807 * x_808) + x_811);
  let x_814 : f32 = u_xlat42;
  let x_817 : vec4<f32> = x_45.x_MainLightColor;
  u_xlat17 = (vec3<f32>(x_814, x_814, x_814) * vec3<f32>(x_817.x, x_817.y, x_817.z));
  let x_820 : vec4<f32> = u_xlat1;
  let x_823 : vec4<f32> = u_xlat4;
  u_xlat7.x = dot(-(vec3<f32>(x_820.x, x_820.y, x_820.w)), vec3<f32>(x_823.x, x_823.y, x_823.z));
  let x_828 : f32 = u_xlat7.x;
  let x_830 : f32 = u_xlat7.x;
  u_xlat7.x = (x_828 + x_830);
  let x_833 : vec4<f32> = u_xlat4;
  let x_835 : vec4<f32> = u_xlat7;
  let x_839 : vec4<f32> = u_xlat1;
  let x_842 : vec3<f32> = ((vec3<f32>(x_833.x, x_833.y, x_833.z) * -(vec3<f32>(x_835.x, x_835.x, x_835.x))) + -(vec3<f32>(x_839.x, x_839.y, x_839.w)));
  let x_843 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_842.x, x_842.y, x_842.z, x_843.w);
  let x_846 : vec4<f32> = u_xlat4;
  let x_848 : vec4<f32> = u_xlat1;
  u_xlat43 = dot(vec3<f32>(x_846.x, x_846.y, x_846.z), vec3<f32>(x_848.x, x_848.y, x_848.w));
  let x_851 : f32 = u_xlat43;
  u_xlat43 = clamp(x_851, 0.0f, 1.0f);
  let x_853 : f32 = u_xlat43;
  u_xlat43 = (-(x_853) + 1.0f);
  let x_856 : f32 = u_xlat43;
  let x_857 : f32 = u_xlat43;
  u_xlat43 = (x_856 * x_857);
  let x_859 : f32 = u_xlat43;
  let x_860 : f32 = u_xlat43;
  u_xlat43 = (x_859 * x_860);
  let x_863 : f32 = u_xlat38;
  u_xlat44 = ((-(x_863) * 0.699999988f) + 1.700000048f);
  let x_869 : f32 = u_xlat38;
  let x_870 : f32 = u_xlat44;
  u_xlat2.w = (x_869 * x_870);
  let x_873 : vec4<f32> = u_xlat2;
  u_xlat2 = (x_873 * vec4<f32>(14.0f, 14.0f, 14.0f, 6.0f));
  let x_887 : vec4<f32> = u_xlat7;
  let x_890 : f32 = u_xlat2.w;
  let x_891 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_887.x, x_887.y, x_887.z), x_890);
  u_xlat9 = x_891;
  let x_893 : f32 = u_xlat9.w;
  u_xlat38 = (x_893 + -1.0f);
  let x_896 : f32 = x_120.unity_SpecCube0_HDR.w;
  let x_897 : f32 = u_xlat38;
  u_xlat38 = ((x_896 * x_897) + 1.0f);
  let x_900 : f32 = u_xlat38;
  u_xlat38 = max(x_900, 0.0f);
  let x_902 : f32 = u_xlat38;
  u_xlat38 = log2(x_902);
  let x_904 : f32 = u_xlat38;
  let x_906 : f32 = x_120.unity_SpecCube0_HDR.y;
  u_xlat38 = (x_904 * x_906);
  let x_908 : f32 = u_xlat38;
  u_xlat38 = exp2(x_908);
  let x_910 : f32 = u_xlat38;
  let x_912 : f32 = x_120.unity_SpecCube0_HDR.x;
  u_xlat38 = (x_910 * x_912);
  let x_914 : vec4<f32> = u_xlat9;
  let x_916 : f32 = u_xlat38;
  let x_918 : vec3<f32> = (vec3<f32>(x_914.x, x_914.y, x_914.z) * vec3<f32>(x_916, x_916, x_916));
  let x_919 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_918.x, x_918.y, x_918.z, x_919.w);
  let x_921 : vec3<f32> = u_xlat3;
  let x_923 : vec3<f32> = u_xlat3;
  let x_927 : vec2<f32> = ((vec2<f32>(x_921.x, x_921.x) * vec2<f32>(x_923.x, x_923.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_928 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_927.x, x_927.y, x_928.z, x_928.w);
  let x_931 : f32 = u_xlat9.y;
  u_xlat38 = (1.0f / x_931);
  let x_934 : vec3<f32> = u_xlat0;
  let x_936 : f32 = u_xlat15;
  u_xlat21 = (-(x_934) + vec3<f32>(x_936, x_936, x_936));
  let x_939 : f32 = u_xlat43;
  let x_941 : vec3<f32> = u_xlat21;
  let x_943 : vec3<f32> = u_xlat0;
  u_xlat21 = ((vec3<f32>(x_939, x_939, x_939) * x_941) + x_943);
  let x_945 : f32 = u_xlat38;
  let x_947 : vec3<f32> = u_xlat21;
  u_xlat21 = (vec3<f32>(x_945, x_945, x_945) * x_947);
  let x_949 : vec4<f32> = u_xlat7;
  let x_951 : vec3<f32> = u_xlat21;
  let x_952 : vec3<f32> = (vec3<f32>(x_949.x, x_949.y, x_949.z) * x_951);
  let x_953 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_952.x, x_952.y, x_952.z, x_953.w);
  let x_955 : vec4<f32> = u_xlat6;
  let x_957 : vec3<f32> = u_xlat8;
  let x_959 : vec4<f32> = u_xlat7;
  let x_961 : vec3<f32> = ((vec3<f32>(x_955.x, x_955.y, x_955.z) * x_957) + vec3<f32>(x_959.x, x_959.y, x_959.z));
  let x_962 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_961.x, x_961.y, x_961.z, x_962.w);
  let x_965 : f32 = u_xlat5.x;
  let x_967 : f32 = x_120.unity_LightData.z;
  u_xlat38 = (x_965 * x_967);
  let x_969 : vec4<f32> = u_xlat4;
  let x_972 : vec4<f32> = x_45.x_MainLightPosition;
  u_xlat3.x = dot(vec3<f32>(x_969.x, x_969.y, x_969.z), vec3<f32>(x_972.x, x_972.y, x_972.z));
  let x_977 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_977, 0.0f, 1.0f);
  let x_980 : f32 = u_xlat38;
  let x_982 : f32 = u_xlat3.x;
  u_xlat38 = (x_980 * x_982);
  let x_984 : f32 = u_xlat38;
  let x_986 : vec3<f32> = u_xlat17;
  let x_987 : vec3<f32> = (vec3<f32>(x_984, x_984, x_984) * x_986);
  let x_988 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_987.x, x_987.y, x_987.z, x_988.w);
  let x_990 : vec4<f32> = u_xlat1;
  let x_993 : vec4<f32> = x_45.x_MainLightPosition;
  let x_995 : vec3<f32> = (vec3<f32>(x_990.x, x_990.y, x_990.w) + vec3<f32>(x_993.x, x_993.y, x_993.z));
  let x_996 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_995.x, x_995.y, x_995.z, x_996.w);
  let x_998 : vec4<f32> = u_xlat7;
  let x_1000 : vec4<f32> = u_xlat7;
  u_xlat38 = dot(vec3<f32>(x_998.x, x_998.y, x_998.z), vec3<f32>(x_1000.x, x_1000.y, x_1000.z));
  let x_1003 : f32 = u_xlat38;
  u_xlat38 = max(x_1003, 1.17549435e-37f);
  let x_1006 : f32 = u_xlat38;
  u_xlat38 = inverseSqrt(x_1006);
  let x_1008 : f32 = u_xlat38;
  let x_1010 : vec4<f32> = u_xlat7;
  let x_1012 : vec3<f32> = (vec3<f32>(x_1008, x_1008, x_1008) * vec3<f32>(x_1010.x, x_1010.y, x_1010.z));
  let x_1013 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1012.x, x_1012.y, x_1012.z, x_1013.w);
  let x_1015 : vec4<f32> = u_xlat4;
  let x_1017 : vec4<f32> = u_xlat7;
  u_xlat38 = dot(vec3<f32>(x_1015.x, x_1015.y, x_1015.z), vec3<f32>(x_1017.x, x_1017.y, x_1017.z));
  let x_1020 : f32 = u_xlat38;
  u_xlat38 = clamp(x_1020, 0.0f, 1.0f);
  let x_1023 : vec4<f32> = x_45.x_MainLightPosition;
  let x_1025 : vec4<f32> = u_xlat7;
  u_xlat3.x = dot(vec3<f32>(x_1023.x, x_1023.y, x_1023.z), vec3<f32>(x_1025.x, x_1025.y, x_1025.z));
  let x_1030 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_1030, 0.0f, 1.0f);
  let x_1033 : f32 = u_xlat38;
  let x_1034 : f32 = u_xlat38;
  u_xlat38 = (x_1033 * x_1034);
  let x_1036 : f32 = u_xlat38;
  let x_1038 : f32 = u_xlat9.x;
  u_xlat38 = ((x_1036 * x_1038) + 1.000010014f);
  let x_1043 : f32 = u_xlat3.x;
  let x_1045 : f32 = u_xlat3.x;
  u_xlat3.x = (x_1043 * x_1045);
  let x_1048 : f32 = u_xlat38;
  let x_1049 : f32 = u_xlat38;
  u_xlat38 = (x_1048 * x_1049);
  let x_1052 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_1052, 0.100000001f);
  let x_1056 : f32 = u_xlat38;
  let x_1058 : f32 = u_xlat3.x;
  u_xlat38 = (x_1056 * x_1058);
  let x_1060 : f32 = u_xlat39;
  let x_1061 : f32 = u_xlat38;
  u_xlat38 = (x_1060 * x_1061);
  let x_1063 : f32 = u_xlat40;
  let x_1064 : f32 = u_xlat38;
  u_xlat38 = (x_1063 / x_1064);
  let x_1066 : vec3<f32> = u_xlat0;
  let x_1067 : f32 = u_xlat38;
  let x_1070 : vec3<f32> = u_xlat8;
  let x_1071 : vec3<f32> = ((x_1066 * vec3<f32>(x_1067, x_1067, x_1067)) + x_1070);
  let x_1072 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1071.x, x_1071.y, x_1071.z, x_1072.w);
  let x_1074 : vec4<f32> = u_xlat5;
  let x_1076 : vec4<f32> = u_xlat7;
  let x_1078 : vec3<f32> = (vec3<f32>(x_1074.x, x_1074.y, x_1074.z) * vec3<f32>(x_1076.x, x_1076.y, x_1076.z));
  let x_1079 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1078.x, x_1078.y, x_1078.z, x_1079.w);
  let x_1082 : f32 = x_45.x_AdditionalLightsCount.x;
  let x_1084 : f32 = x_120.unity_LightData.y;
  u_xlat38 = min(x_1082, x_1084);
  let x_1087 : f32 = u_xlat38;
  u_xlatu38 = bitcast<u32>(i32(x_1087));
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1099 : u32 = u_xlatu_loop_1;
    let x_1100 : u32 = u_xlatu38;
    if ((x_1099 < x_1100)) {
    } else {
      break;
    }
    let x_1103 : u32 = u_xlatu_loop_1;
    u_xlatu15 = (x_1103 >> 2u);
    let x_1106 : u32 = u_xlatu_loop_1;
    u_xlati41 = bitcast<i32>((x_1106 & 3u));
    let x_1110 : u32 = u_xlatu15;
    let x_1113 : vec4<f32> = x_120.unity_LightIndices[bitcast<i32>(x_1110)];
    let x_1123 : i32 = u_xlati41;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1128 : vec4<u32> = indexable[x_1123];
    u_xlat15 = dot(x_1113, bitcast<vec4<f32>>(x_1128));
    let x_1132 : f32 = u_xlat15;
    u_xlati15 = i32(x_1132);
    let x_1134 : vec3<f32> = vs_INTERP0;
    let x_1146 : i32 = u_xlati15;
    let x_1148 : vec4<f32> = x_1145.x_AdditionalLightsPosition[x_1146];
    let x_1151 : i32 = u_xlati15;
    let x_1153 : vec4<f32> = x_1145.x_AdditionalLightsPosition[x_1151];
    u_xlat21 = ((-(x_1134) * vec3<f32>(x_1148.w, x_1148.w, x_1148.w)) + vec3<f32>(x_1153.x, x_1153.y, x_1153.z));
    let x_1156 : vec3<f32> = u_xlat21;
    let x_1157 : vec3<f32> = u_xlat21;
    u_xlat41 = dot(x_1156, x_1157);
    let x_1159 : f32 = u_xlat41;
    u_xlat41 = max(x_1159, 6.10351562e-05f);
    let x_1162 : f32 = u_xlat41;
    u_xlat43 = inverseSqrt(x_1162);
    let x_1165 : f32 = u_xlat43;
    let x_1167 : vec3<f32> = u_xlat21;
    u_xlat10 = (vec3<f32>(x_1165, x_1165, x_1165) * x_1167);
    let x_1169 : f32 = u_xlat41;
    u_xlat44 = (1.0f / x_1169);
    let x_1171 : f32 = u_xlat41;
    let x_1172 : i32 = u_xlati15;
    let x_1174 : f32 = x_1145.x_AdditionalLightsAttenuation[x_1172].x;
    u_xlat41 = (x_1171 * x_1174);
    let x_1176 : f32 = u_xlat41;
    let x_1178 : f32 = u_xlat41;
    u_xlat41 = ((-(x_1176) * x_1178) + 1.0f);
    let x_1181 : f32 = u_xlat41;
    u_xlat41 = max(x_1181, 0.0f);
    let x_1183 : f32 = u_xlat41;
    let x_1184 : f32 = u_xlat41;
    u_xlat41 = (x_1183 * x_1184);
    let x_1186 : f32 = u_xlat41;
    let x_1187 : f32 = u_xlat44;
    u_xlat41 = (x_1186 * x_1187);
    let x_1189 : i32 = u_xlati15;
    let x_1191 : vec4<f32> = x_1145.x_AdditionalLightsSpotDir[x_1189];
    let x_1193 : vec3<f32> = u_xlat10;
    u_xlat44 = dot(vec3<f32>(x_1191.x, x_1191.y, x_1191.z), x_1193);
    let x_1195 : f32 = u_xlat44;
    let x_1196 : i32 = u_xlati15;
    let x_1198 : f32 = x_1145.x_AdditionalLightsAttenuation[x_1196].z;
    let x_1200 : i32 = u_xlati15;
    let x_1202 : f32 = x_1145.x_AdditionalLightsAttenuation[x_1200].w;
    u_xlat44 = ((x_1195 * x_1198) + x_1202);
    let x_1204 : f32 = u_xlat44;
    u_xlat44 = clamp(x_1204, 0.0f, 1.0f);
    let x_1206 : f32 = u_xlat44;
    let x_1207 : f32 = u_xlat44;
    u_xlat44 = (x_1206 * x_1207);
    let x_1209 : f32 = u_xlat41;
    let x_1210 : f32 = u_xlat44;
    u_xlat41 = (x_1209 * x_1210);
    let x_1213 : f32 = u_xlat42;
    let x_1215 : i32 = u_xlati15;
    let x_1217 : vec4<f32> = x_1145.x_AdditionalLightsColor[x_1215];
    u_xlat11 = (vec3<f32>(x_1213, x_1213, x_1213) * vec3<f32>(x_1217.x, x_1217.y, x_1217.z));
    let x_1220 : vec4<f32> = u_xlat4;
    let x_1222 : vec3<f32> = u_xlat10;
    u_xlat15 = dot(vec3<f32>(x_1220.x, x_1220.y, x_1220.z), x_1222);
    let x_1224 : f32 = u_xlat15;
    u_xlat15 = clamp(x_1224, 0.0f, 1.0f);
    let x_1226 : f32 = u_xlat15;
    let x_1227 : f32 = u_xlat41;
    u_xlat15 = (x_1226 * x_1227);
    let x_1229 : f32 = u_xlat15;
    let x_1231 : vec3<f32> = u_xlat11;
    u_xlat11 = (vec3<f32>(x_1229, x_1229, x_1229) * x_1231);
    let x_1233 : vec3<f32> = u_xlat21;
    let x_1234 : f32 = u_xlat43;
    let x_1237 : vec4<f32> = u_xlat1;
    u_xlat21 = ((x_1233 * vec3<f32>(x_1234, x_1234, x_1234)) + vec3<f32>(x_1237.x, x_1237.y, x_1237.w));
    let x_1240 : vec3<f32> = u_xlat21;
    let x_1241 : vec3<f32> = u_xlat21;
    u_xlat15 = dot(x_1240, x_1241);
    let x_1243 : f32 = u_xlat15;
    u_xlat15 = max(x_1243, 1.17549435e-37f);
    let x_1245 : f32 = u_xlat15;
    u_xlat15 = inverseSqrt(x_1245);
    let x_1247 : f32 = u_xlat15;
    let x_1249 : vec3<f32> = u_xlat21;
    u_xlat21 = (vec3<f32>(x_1247, x_1247, x_1247) * x_1249);
    let x_1251 : vec4<f32> = u_xlat4;
    let x_1253 : vec3<f32> = u_xlat21;
    u_xlat15 = dot(vec3<f32>(x_1251.x, x_1251.y, x_1251.z), x_1253);
    let x_1255 : f32 = u_xlat15;
    u_xlat15 = clamp(x_1255, 0.0f, 1.0f);
    let x_1257 : vec3<f32> = u_xlat10;
    let x_1258 : vec3<f32> = u_xlat21;
    u_xlat41 = dot(x_1257, x_1258);
    let x_1260 : f32 = u_xlat41;
    u_xlat41 = clamp(x_1260, 0.0f, 1.0f);
    let x_1262 : f32 = u_xlat15;
    let x_1263 : f32 = u_xlat15;
    u_xlat15 = (x_1262 * x_1263);
    let x_1265 : f32 = u_xlat15;
    let x_1267 : f32 = u_xlat9.x;
    u_xlat15 = ((x_1265 * x_1267) + 1.000010014f);
    let x_1270 : f32 = u_xlat41;
    let x_1271 : f32 = u_xlat41;
    u_xlat41 = (x_1270 * x_1271);
    let x_1273 : f32 = u_xlat15;
    let x_1274 : f32 = u_xlat15;
    u_xlat15 = (x_1273 * x_1274);
    let x_1276 : f32 = u_xlat41;
    u_xlat41 = max(x_1276, 0.100000001f);
    let x_1278 : f32 = u_xlat15;
    let x_1279 : f32 = u_xlat41;
    u_xlat15 = (x_1278 * x_1279);
    let x_1281 : f32 = u_xlat39;
    let x_1282 : f32 = u_xlat15;
    u_xlat15 = (x_1281 * x_1282);
    let x_1284 : f32 = u_xlat40;
    let x_1285 : f32 = u_xlat15;
    u_xlat15 = (x_1284 / x_1285);
    let x_1287 : vec3<f32> = u_xlat0;
    let x_1288 : f32 = u_xlat15;
    let x_1291 : vec3<f32> = u_xlat8;
    u_xlat21 = ((x_1287 * vec3<f32>(x_1288, x_1288, x_1288)) + x_1291);
    let x_1293 : vec3<f32> = u_xlat21;
    let x_1294 : vec3<f32> = u_xlat11;
    let x_1296 : vec4<f32> = u_xlat7;
    let x_1298 : vec3<f32> = ((x_1293 * x_1294) + vec3<f32>(x_1296.x, x_1296.y, x_1296.z));
    let x_1299 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1298.x, x_1298.y, x_1298.z, x_1299.w);

    continuing {
      let x_1301 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1301 + bitcast<u32>(1i));
    }
  }
  let x_1303 : vec4<f32> = u_xlat6;
  let x_1305 : f32 = u_xlat27;
  let x_1308 : vec4<f32> = u_xlat5;
  u_xlat0 = ((vec3<f32>(x_1303.x, x_1303.y, x_1303.z) * vec3<f32>(x_1305, x_1305, x_1305)) + vec3<f32>(x_1308.x, x_1308.y, x_1308.z));
  let x_1311 : vec4<f32> = u_xlat7;
  let x_1313 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_1311.x, x_1311.y, x_1311.z) + x_1313);
  let x_1315 : vec4<f32> = u_xlat2;
  let x_1317 : f32 = u_xlat25;
  let x_1320 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_1315.x, x_1315.y, x_1315.z) * vec3<f32>(x_1317, x_1317, x_1317)) + x_1320);
  let x_1322 : f32 = u_xlat36;
  let x_1323 : f32 = u_xlat36;
  u_xlat36 = (x_1322 * -(x_1323));
  let x_1326 : f32 = u_xlat36;
  u_xlat36 = exp2(x_1326);
  let x_1328 : vec3<f32> = u_xlat0;
  let x_1331 : vec4<f32> = x_45.unity_FogColor;
  u_xlat0 = (x_1328 + -(vec3<f32>(x_1331.x, x_1331.y, x_1331.z)));
  let x_1337 : f32 = u_xlat36;
  let x_1339 : vec3<f32> = u_xlat0;
  let x_1342 : vec4<f32> = x_45.unity_FogColor;
  let x_1344 : vec3<f32> = ((vec3<f32>(x_1337, x_1337, x_1337) * x_1339) + vec3<f32>(x_1342.x, x_1342.y, x_1342.z));
  let x_1345 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1344.x, x_1344.y, x_1344.z, x_1345.w);
  let x_1350 : u32 = x_45.x_RenderingLayerMaxInt;
  let x_1352 : f32 = x_120.unity_RenderingLayer.x;
  u_xlatu0 = (x_1350 & bitcast<u32>(x_1352));
  let x_1355 : u32 = u_xlatu0;
  u_xlat0.x = f32(x_1355);
  let x_1360 : f32 = u_xlat0.x;
  let x_1363 : f32 = x_45.x_RenderingLayerRcpMaxInt;
  SV_Target1.x = (x_1360 * x_1363);
  let x_1368 : f32 = SV_Target1.x;
  SV_Target1.x = clamp(x_1368, 0.0f, 1.0f);
  SV_Target0.w = 1.0f;
  let x_1372 : vec4<f32> = SV_Target1;
  SV_Target1 = vec4<f32>(x_1372.x, vec3<f32>(0.0f, 0.0f, 0.0f).x, vec3<f32>(0.0f, 0.0f, 0.0f).y, vec3<f32>(0.0f, 0.0f, 0.0f).z);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
  @location(1)
  SV_Target1_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(3) vs_INTERP3_param : vec4<f32>, @location(2) vs_INTERP2_param : vec4<f32>, @location(1) vs_INTERP1_param : vec3<f32>, @location(0) vs_INTERP0_param : vec3<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_INTERP3 = vs_INTERP3_param;
  vs_INTERP2 = vs_INTERP2_param;
  vs_INTERP1 = vs_INTERP1_param;
  vs_INTERP0 = vs_INTERP0_param;
  main_1();
  return main_out(SV_Target0, SV_Target1);
}

