type Arr = array<mat4x4<f32>, 4u>;

struct PGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  unity_OcclusionMaskSelector : vec4<f32>,
  unity_WorldToShadow : Arr,
  x_LightShadowData : vec4<f32>,
  unity_ShadowFadeCenterAndType : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
  unity_ProbeVolumeParams : vec4<f32>,
  unity_ProbeVolumeWorldToObject : mat4x4<f32>,
  unity_ProbeVolumeSizeInv : vec3<f32>,
  @size(4)
  padding_1 : u32,
  unity_ProbeVolumeMin : vec3<f32>,
  @size(4)
  padding_2 : u32,
  x_LightColor0 : vec4<f32>,
  x_Color : vec4<f32>,
  x_Metallic : f32,
  x_Glossiness : f32,
  @size(8)
  padding_3 : u32,
  unity_WorldToLight : mat4x4<f32>,
}

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_35 : PGlobals;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec3<f32>;

@group(0) @binding(3) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(5) var samplerunity_ProbeVolumeSH : sampler;

@group(0) @binding(4) var x_ShadowMapTexture : texture_depth_2d;

@group(0) @binding(6) var sampler_ShadowMapTexture : sampler_comparison;

@group(0) @binding(1) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(8) var sampler_LightTexture0 : sampler;

@group(0) @binding(2) var x_LightTextureB0 : texture_2d<f32>;

@group(0) @binding(9) var sampler_LightTextureB0 : sampler;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat21 : f32;
  var u_xlat2 : vec4<f32>;
  var u_xlat23 : f32;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat22 : f32;
  var u_xlatb22 : bool;
  var x_294 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var u_xlat24 : f32;
  var u_xlat9 : f32;
  var u_xlat16 : f32;
  var u_xlat10 : f32;
  var u_xlat17 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec4<f32> = vs_TEXCOORD0;
  let x_25 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_23.x, x_23.y));
  u_xlat0 = x_25;
  let x_27 : vec4<f32> = u_xlat0;
  let x_40 : vec4<f32> = x_35.x_Color;
  u_xlat1 = (x_27 * x_40);
  let x_42 : vec4<f32> = u_xlat0;
  let x_45 : vec4<f32> = x_35.x_Color;
  let x_50 : vec3<f32> = ((vec3<f32>(x_42.x, x_42.y, x_42.z) * vec3<f32>(x_45.x, x_45.y, x_45.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_51 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_50.x, x_50.y, x_50.z, x_51.w);
  let x_56 : f32 = x_35.x_Metallic;
  let x_58 : f32 = x_35.x_Metallic;
  let x_60 : f32 = x_35.x_Metallic;
  let x_61 : vec3<f32> = vec3<f32>(x_56, x_58, x_60);
  let x_66 : vec4<f32> = u_xlat0;
  let x_71 : vec3<f32> = ((vec3<f32>(x_61.x, x_61.y, x_61.z) * vec3<f32>(x_66.x, x_66.y, x_66.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_72 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_71.x, x_71.y, x_71.z, x_72.w);
  let x_77 : f32 = x_35.x_Metallic;
  u_xlat21 = ((-(x_77) * 0.959999979f) + 0.959999979f);
  let x_82 : f32 = u_xlat21;
  let x_84 : vec4<f32> = u_xlat1;
  let x_86 : vec3<f32> = (vec3<f32>(x_82, x_82, x_82) * vec3<f32>(x_84.x, x_84.y, x_84.z));
  let x_87 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_86.x, x_86.y, x_86.z, x_87.w);
  let x_91 : vec4<f32> = vs_TEXCOORD4;
  let x_93 : vec4<f32> = vs_TEXCOORD4;
  u_xlat2.x = dot(vec3<f32>(x_91.x, x_91.y, x_91.z), vec3<f32>(x_93.x, x_93.y, x_93.z));
  let x_99 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_99);
  let x_102 : vec4<f32> = u_xlat2;
  let x_104 : vec4<f32> = vs_TEXCOORD4;
  let x_106 : vec3<f32> = (vec3<f32>(x_102.x, x_102.x, x_102.x) * vec3<f32>(x_104.x, x_104.y, x_104.z));
  let x_107 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_106.x, x_106.y, x_106.z, x_107.w);
  let x_111 : vec4<f32> = vs_TEXCOORD1;
  let x_113 : vec4<f32> = vs_TEXCOORD1;
  u_xlat23 = dot(vec3<f32>(x_111.x, x_111.y, x_111.z), vec3<f32>(x_113.x, x_113.y, x_113.z));
  let x_116 : f32 = u_xlat23;
  u_xlat23 = inverseSqrt(x_116);
  let x_120 : f32 = u_xlat23;
  let x_122 : vec4<f32> = vs_TEXCOORD1;
  u_xlat3 = (vec3<f32>(x_120, x_120, x_120) * vec3<f32>(x_122.x, x_122.y, x_122.z));
  let x_125 : vec4<f32> = u_xlat1;
  let x_127 : vec4<f32> = u_xlat1;
  let x_129 : vec3<f32> = (vec3<f32>(x_125.w, x_125.w, x_125.w) * vec3<f32>(x_127.x, x_127.y, x_127.z));
  let x_130 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_129.x, x_129.y, x_129.z, x_130.w);
  let x_132 : f32 = u_xlat21;
  u_xlat23 = (-(x_132) + 1.0f);
  let x_140 : f32 = u_xlat1.w;
  let x_141 : f32 = u_xlat21;
  let x_143 : f32 = u_xlat23;
  SV_Target0.w = ((x_140 * x_141) + x_143);
  let x_150 : vec3<f32> = vs_TEXCOORD5;
  let x_155 : vec4<f32> = x_35.unity_WorldToLight[1i];
  u_xlat4 = (vec4<f32>(x_150.y, x_150.y, x_150.y, x_150.y) * x_155);
  let x_159 : vec4<f32> = x_35.unity_WorldToLight[0i];
  let x_160 : vec3<f32> = vs_TEXCOORD5;
  let x_163 : vec4<f32> = u_xlat4;
  u_xlat4 = ((x_159 * vec4<f32>(x_160.x, x_160.x, x_160.x, x_160.x)) + x_163);
  let x_167 : vec4<f32> = x_35.unity_WorldToLight[2i];
  let x_168 : vec3<f32> = vs_TEXCOORD5;
  let x_171 : vec4<f32> = u_xlat4;
  u_xlat4 = ((x_167 * vec4<f32>(x_168.z, x_168.z, x_168.z, x_168.z)) + x_171);
  let x_173 : vec4<f32> = u_xlat4;
  let x_176 : vec4<f32> = x_35.unity_WorldToLight[3i];
  u_xlat4 = (x_173 + x_176);
  let x_179 : vec3<f32> = vs_TEXCOORD5;
  let x_183 : vec3<f32> = x_35.x_WorldSpaceCameraPos;
  let x_184 : vec3<f32> = (-(x_179) + x_183);
  let x_185 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_184.x, x_184.y, x_184.z, x_185.w);
  let x_191 : f32 = x_35.unity_MatrixV[0i].z;
  u_xlat6.x = x_191;
  let x_194 : f32 = x_35.unity_MatrixV[1i].z;
  u_xlat6.y = x_194;
  let x_198 : f32 = x_35.unity_MatrixV[2i].z;
  u_xlat6.z = x_198;
  let x_200 : vec4<f32> = u_xlat5;
  let x_202 : vec3<f32> = u_xlat6;
  u_xlat21 = dot(vec3<f32>(x_200.x, x_200.y, x_200.z), x_202);
  let x_204 : vec3<f32> = vs_TEXCOORD5;
  let x_207 : vec4<f32> = x_35.unity_ShadowFadeCenterAndType;
  let x_210 : vec3<f32> = (x_204 + -(vec3<f32>(x_207.x, x_207.y, x_207.z)));
  let x_211 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_210.x, x_210.y, x_210.z, x_211.w);
  let x_214 : vec4<f32> = u_xlat5;
  let x_216 : vec4<f32> = u_xlat5;
  u_xlat22 = dot(vec3<f32>(x_214.x, x_214.y, x_214.z), vec3<f32>(x_216.x, x_216.y, x_216.z));
  let x_219 : f32 = u_xlat22;
  u_xlat22 = sqrt(x_219);
  let x_221 : f32 = u_xlat21;
  let x_223 : f32 = u_xlat22;
  u_xlat22 = (-(x_221) + x_223);
  let x_226 : f32 = x_35.unity_ShadowFadeCenterAndType.w;
  let x_227 : f32 = u_xlat22;
  let x_229 : f32 = u_xlat21;
  u_xlat21 = ((x_226 * x_227) + x_229);
  let x_231 : f32 = u_xlat21;
  let x_233 : f32 = x_35.x_LightShadowData.z;
  let x_236 : f32 = x_35.x_LightShadowData.w;
  u_xlat21 = ((x_231 * x_233) + x_236);
  let x_238 : f32 = u_xlat21;
  u_xlat21 = clamp(x_238, 0.0f, 1.0f);
  let x_246 : f32 = x_35.unity_ProbeVolumeParams.x;
  u_xlatb22 = (x_246 == 1.0f);
  let x_248 : bool = u_xlatb22;
  if (x_248) {
    let x_252 : f32 = x_35.unity_ProbeVolumeParams.y;
    u_xlatb22 = (x_252 == 1.0f);
    let x_254 : vec3<f32> = vs_TEXCOORD5;
    let x_258 : vec4<f32> = x_35.unity_ProbeVolumeWorldToObject[1i];
    let x_260 : vec3<f32> = (vec3<f32>(x_254.y, x_254.y, x_254.y) * vec3<f32>(x_258.x, x_258.y, x_258.z));
    let x_261 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_260.x, x_260.y, x_260.z, x_261.w);
    let x_264 : vec4<f32> = x_35.unity_ProbeVolumeWorldToObject[0i];
    let x_266 : vec3<f32> = vs_TEXCOORD5;
    let x_269 : vec4<f32> = u_xlat5;
    let x_271 : vec3<f32> = ((vec3<f32>(x_264.x, x_264.y, x_264.z) * vec3<f32>(x_266.x, x_266.x, x_266.x)) + vec3<f32>(x_269.x, x_269.y, x_269.z));
    let x_272 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_271.x, x_271.y, x_271.z, x_272.w);
    let x_275 : vec4<f32> = x_35.unity_ProbeVolumeWorldToObject[2i];
    let x_277 : vec3<f32> = vs_TEXCOORD5;
    let x_280 : vec4<f32> = u_xlat5;
    let x_282 : vec3<f32> = ((vec3<f32>(x_275.x, x_275.y, x_275.z) * vec3<f32>(x_277.z, x_277.z, x_277.z)) + vec3<f32>(x_280.x, x_280.y, x_280.z));
    let x_283 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_282.x, x_282.y, x_282.z, x_283.w);
    let x_285 : vec4<f32> = u_xlat5;
    let x_288 : vec4<f32> = x_35.unity_ProbeVolumeWorldToObject[3i];
    let x_290 : vec3<f32> = (vec3<f32>(x_285.x, x_285.y, x_285.z) + vec3<f32>(x_288.x, x_288.y, x_288.z));
    let x_291 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_290.x, x_290.y, x_290.z, x_291.w);
    let x_293 : bool = u_xlatb22;
    if (x_293) {
      let x_297 : vec4<f32> = u_xlat5;
      x_294 = vec3<f32>(x_297.x, x_297.y, x_297.z);
    } else {
      let x_300 : vec3<f32> = vs_TEXCOORD5;
      x_294 = x_300;
    }
    let x_301 : vec3<f32> = x_294;
    let x_302 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_301.x, x_301.y, x_301.z, x_302.w);
    let x_304 : vec4<f32> = u_xlat5;
    let x_308 : vec3<f32> = x_35.unity_ProbeVolumeMin;
    let x_310 : vec3<f32> = (vec3<f32>(x_304.x, x_304.y, x_304.z) + -(x_308));
    let x_311 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_310.x, x_310.y, x_310.z, x_311.w);
    let x_313 : vec4<f32> = u_xlat5;
    let x_317 : vec3<f32> = x_35.unity_ProbeVolumeSizeInv;
    let x_318 : vec3<f32> = (vec3<f32>(x_313.x, x_313.y, x_313.z) * x_317);
    let x_319 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_319.x, x_318.x, x_318.y, x_318.z);
    let x_322 : f32 = u_xlat5.y;
    u_xlat22 = ((x_322 * 0.25f) + 0.75f);
    let x_328 : f32 = x_35.unity_ProbeVolumeParams.z;
    u_xlat23 = ((x_328 * 0.5f) + 0.75f);
    let x_332 : f32 = u_xlat22;
    let x_333 : f32 = u_xlat23;
    u_xlat5.x = max(x_332, x_333);
    let x_344 : vec4<f32> = u_xlat5;
    let x_346 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_344.x, x_344.z, x_344.w));
    u_xlat5 = x_346;
  } else {
    u_xlat5.x = 1.0f;
    u_xlat5.y = 1.0f;
    u_xlat5.z = 1.0f;
    u_xlat5.w = 1.0f;
  }
  let x_352 : vec4<f32> = u_xlat5;
  let x_354 : vec4<f32> = x_35.unity_OcclusionMaskSelector;
  u_xlat22 = dot(x_352, x_354);
  let x_356 : f32 = u_xlat22;
  u_xlat22 = clamp(x_356, 0.0f, 1.0f);
  let x_358 : vec3<f32> = vs_TEXCOORD5;
  let x_361 : vec4<f32> = x_35.unity_WorldToShadow[0i][1i];
  u_xlat5 = (vec4<f32>(x_358.y, x_358.y, x_358.y, x_358.y) * x_361);
  let x_364 : vec4<f32> = x_35.unity_WorldToShadow[0i][0i];
  let x_365 : vec3<f32> = vs_TEXCOORD5;
  let x_368 : vec4<f32> = u_xlat5;
  u_xlat5 = ((x_364 * vec4<f32>(x_365.x, x_365.x, x_365.x, x_365.x)) + x_368);
  let x_371 : vec4<f32> = x_35.unity_WorldToShadow[0i][2i];
  let x_372 : vec3<f32> = vs_TEXCOORD5;
  let x_375 : vec4<f32> = u_xlat5;
  u_xlat5 = ((x_371 * vec4<f32>(x_372.z, x_372.z, x_372.z, x_372.z)) + x_375);
  let x_377 : vec4<f32> = u_xlat5;
  let x_379 : vec4<f32> = x_35.unity_WorldToShadow[0i][3i];
  u_xlat5 = (x_377 + x_379);
  let x_381 : vec4<f32> = u_xlat5;
  let x_383 : vec4<f32> = u_xlat5;
  let x_385 : vec3<f32> = (vec3<f32>(x_381.x, x_381.y, x_381.z) / vec3<f32>(x_383.w, x_383.w, x_383.w));
  let x_386 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_385.x, x_385.y, x_385.z, x_386.w);
  let x_389 : vec4<f32> = u_xlat5;
  let x_390 : vec2<f32> = vec2<f32>(x_389.x, x_389.y);
  let x_392 : f32 = u_xlat5.z;
  txVec0 = vec3<f32>(x_390.x, x_390.y, x_392);
  let x_404 : vec3<f32> = txVec0;
  let x_406 : f32 = textureSampleCompareLevel(x_ShadowMapTexture, sampler_ShadowMapTexture, x_404.xy, x_404.z);
  u_xlat23 = x_406;
  let x_409 : f32 = x_35.x_LightShadowData.x;
  u_xlat24 = (-(x_409) + 1.0f);
  let x_412 : f32 = u_xlat23;
  let x_413 : f32 = u_xlat24;
  let x_416 : f32 = x_35.x_LightShadowData.x;
  u_xlat23 = ((x_412 * x_413) + x_416);
  let x_418 : f32 = u_xlat22;
  let x_419 : f32 = u_xlat23;
  u_xlat22 = (x_418 + -(x_419));
  let x_422 : f32 = u_xlat21;
  let x_423 : f32 = u_xlat22;
  let x_425 : f32 = u_xlat23;
  u_xlat21 = ((x_422 * x_423) + x_425);
  let x_428 : f32 = u_xlat4.z;
  u_xlatb22 = (0.0f < x_428);
  let x_430 : bool = u_xlatb22;
  u_xlat22 = select(0.0f, 1.0f, x_430);
  let x_432 : vec4<f32> = u_xlat4;
  let x_434 : vec4<f32> = u_xlat4;
  let x_436 : vec2<f32> = (vec2<f32>(x_432.x, x_432.y) / vec2<f32>(x_434.w, x_434.w));
  let x_437 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_436.x, x_436.y, x_437.z, x_437.w);
  let x_439 : vec4<f32> = u_xlat5;
  let x_442 : vec2<f32> = (vec2<f32>(x_439.x, x_439.y) + vec2<f32>(0.5f, 0.5f));
  let x_443 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_442.x, x_442.y, x_443.z, x_443.w);
  let x_450 : vec4<f32> = u_xlat5;
  let x_452 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, vec2<f32>(x_450.x, x_450.y));
  u_xlat23 = x_452.w;
  let x_454 : f32 = u_xlat22;
  let x_455 : f32 = u_xlat23;
  u_xlat22 = (x_454 * x_455);
  let x_457 : vec4<f32> = u_xlat4;
  let x_459 : vec4<f32> = u_xlat4;
  u_xlat23 = dot(vec3<f32>(x_457.x, x_457.y, x_457.z), vec3<f32>(x_459.x, x_459.y, x_459.z));
  let x_467 : f32 = u_xlat23;
  let x_469 : vec4<f32> = textureSample(x_LightTextureB0, sampler_LightTextureB0, vec2<f32>(x_467, x_467));
  u_xlat23 = x_469.x;
  let x_471 : f32 = u_xlat22;
  let x_472 : f32 = u_xlat23;
  u_xlat22 = (x_471 * x_472);
  let x_474 : f32 = u_xlat21;
  let x_475 : f32 = u_xlat22;
  u_xlat21 = (x_474 * x_475);
  let x_480 : f32 = vs_TEXCOORD2.w;
  u_xlat4.x = x_480;
  let x_484 : f32 = vs_TEXCOORD3.w;
  u_xlat4.y = x_484;
  let x_487 : f32 = vs_TEXCOORD4.w;
  u_xlat4.z = x_487;
  let x_489 : vec4<f32> = u_xlat4;
  let x_491 : vec4<f32> = u_xlat4;
  u_xlat22 = dot(vec3<f32>(x_489.x, x_489.y, x_489.z), vec3<f32>(x_491.x, x_491.y, x_491.z));
  let x_494 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_494);
  let x_496 : f32 = u_xlat22;
  let x_498 : vec4<f32> = u_xlat4;
  let x_500 : vec3<f32> = (vec3<f32>(x_496, x_496, x_496) * vec3<f32>(x_498.x, x_498.y, x_498.z));
  let x_501 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_500.x, x_500.y, x_500.z, x_501.w);
  let x_503 : f32 = u_xlat21;
  let x_507 : vec4<f32> = x_35.x_LightColor0;
  u_xlat6 = (vec3<f32>(x_503, x_503, x_503) * vec3<f32>(x_507.x, x_507.y, x_507.z));
  let x_512 : f32 = x_35.x_Glossiness;
  u_xlat21 = (-(x_512) + 1.0f);
  let x_515 : vec4<f32> = u_xlat4;
  let x_517 : f32 = u_xlat22;
  let x_520 : vec3<f32> = u_xlat3;
  let x_522 : vec3<f32> = ((vec3<f32>(x_515.x, x_515.y, x_515.z) * vec3<f32>(x_517, x_517, x_517)) + -(x_520));
  let x_523 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_522.x, x_522.y, x_522.z, x_523.w);
  let x_525 : vec4<f32> = u_xlat4;
  let x_527 : vec4<f32> = u_xlat4;
  u_xlat22 = dot(vec3<f32>(x_525.x, x_525.y, x_525.z), vec3<f32>(x_527.x, x_527.y, x_527.z));
  let x_530 : f32 = u_xlat22;
  u_xlat22 = max(x_530, 0.001f);
  let x_533 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_533);
  let x_535 : f32 = u_xlat22;
  let x_537 : vec4<f32> = u_xlat4;
  let x_539 : vec3<f32> = (vec3<f32>(x_535, x_535, x_535) * vec3<f32>(x_537.x, x_537.y, x_537.z));
  let x_540 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_539.x, x_539.y, x_539.z, x_540.w);
  let x_542 : vec4<f32> = u_xlat2;
  let x_544 : vec3<f32> = u_xlat3;
  u_xlat22 = dot(vec3<f32>(x_542.x, x_542.y, x_542.z), -(x_544));
  let x_547 : vec4<f32> = u_xlat2;
  let x_549 : vec4<f32> = u_xlat5;
  u_xlat23 = dot(vec3<f32>(x_547.x, x_547.y, x_547.z), vec3<f32>(x_549.x, x_549.y, x_549.z));
  let x_552 : f32 = u_xlat23;
  u_xlat23 = clamp(x_552, 0.0f, 1.0f);
  let x_554 : vec4<f32> = u_xlat2;
  let x_556 : vec4<f32> = u_xlat4;
  u_xlat2.x = dot(vec3<f32>(x_554.x, x_554.y, x_554.z), vec3<f32>(x_556.x, x_556.y, x_556.z));
  let x_561 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_561, 0.0f, 1.0f);
  let x_565 : vec4<f32> = u_xlat5;
  let x_567 : vec4<f32> = u_xlat4;
  u_xlat9 = dot(vec3<f32>(x_565.x, x_565.y, x_565.z), vec3<f32>(x_567.x, x_567.y, x_567.z));
  let x_570 : f32 = u_xlat9;
  u_xlat9 = clamp(x_570, 0.0f, 1.0f);
  let x_573 : f32 = u_xlat9;
  let x_574 : f32 = u_xlat9;
  u_xlat16 = (x_573 * x_574);
  let x_576 : f32 = u_xlat16;
  let x_578 : f32 = u_xlat21;
  u_xlat16 = dot(vec2<f32>(x_576, x_576), vec2<f32>(x_578, x_578));
  let x_581 : f32 = u_xlat16;
  u_xlat16 = (x_581 + -0.5f);
  let x_584 : f32 = u_xlat23;
  u_xlat3.x = (-(x_584) + 1.0f);
  let x_590 : f32 = u_xlat3.x;
  let x_592 : f32 = u_xlat3.x;
  u_xlat10 = (x_590 * x_592);
  let x_594 : f32 = u_xlat10;
  let x_595 : f32 = u_xlat10;
  u_xlat10 = (x_594 * x_595);
  let x_598 : f32 = u_xlat3.x;
  let x_599 : f32 = u_xlat10;
  u_xlat3.x = (x_598 * x_599);
  let x_602 : f32 = u_xlat16;
  let x_604 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_602 * x_604) + 1.0f);
  let x_608 : f32 = u_xlat22;
  u_xlat10 = (-(abs(x_608)) + 1.0f);
  let x_613 : f32 = u_xlat10;
  let x_614 : f32 = u_xlat10;
  u_xlat17 = (x_613 * x_614);
  let x_616 : f32 = u_xlat17;
  let x_617 : f32 = u_xlat17;
  u_xlat17 = (x_616 * x_617);
  let x_619 : f32 = u_xlat10;
  let x_620 : f32 = u_xlat17;
  u_xlat10 = (x_619 * x_620);
  let x_622 : f32 = u_xlat16;
  let x_623 : f32 = u_xlat10;
  u_xlat16 = ((x_622 * x_623) + 1.0f);
  let x_626 : f32 = u_xlat16;
  let x_628 : f32 = u_xlat3.x;
  u_xlat16 = (x_626 * x_628);
  let x_630 : f32 = u_xlat23;
  let x_631 : f32 = u_xlat16;
  u_xlat16 = (x_630 * x_631);
  let x_633 : f32 = u_xlat21;
  let x_634 : f32 = u_xlat21;
  u_xlat21 = (x_633 * x_634);
  let x_636 : f32 = u_xlat21;
  u_xlat21 = max(x_636, 0.002f);
  let x_639 : f32 = u_xlat21;
  u_xlat3.x = (-(x_639) + 1.0f);
  let x_643 : f32 = u_xlat22;
  let x_646 : f32 = u_xlat3.x;
  let x_648 : f32 = u_xlat21;
  u_xlat10 = ((abs(x_643) * x_646) + x_648);
  let x_650 : f32 = u_xlat23;
  let x_652 : f32 = u_xlat3.x;
  let x_654 : f32 = u_xlat21;
  u_xlat3.x = ((x_650 * x_652) + x_654);
  let x_657 : f32 = u_xlat22;
  let x_660 : f32 = u_xlat3.x;
  u_xlat22 = (abs(x_657) * x_660);
  let x_662 : f32 = u_xlat23;
  let x_663 : f32 = u_xlat10;
  let x_665 : f32 = u_xlat22;
  u_xlat22 = ((x_662 * x_663) + x_665);
  let x_667 : f32 = u_xlat22;
  u_xlat22 = (x_667 + 0.00001f);
  let x_670 : f32 = u_xlat22;
  u_xlat22 = (0.5f / x_670);
  let x_672 : f32 = u_xlat21;
  let x_673 : f32 = u_xlat21;
  u_xlat21 = (x_672 * x_673);
  let x_676 : f32 = u_xlat2.x;
  let x_677 : f32 = u_xlat21;
  let x_680 : f32 = u_xlat2.x;
  u_xlat3.x = ((x_676 * x_677) + -(x_680));
  let x_685 : f32 = u_xlat3.x;
  let x_687 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_685 * x_687) + 1.0f);
  let x_691 : f32 = u_xlat21;
  u_xlat21 = (x_691 * 0.318309873f);
  let x_695 : f32 = u_xlat2.x;
  let x_697 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_695 * x_697) + 0.0000001f);
  let x_702 : f32 = u_xlat21;
  let x_704 : f32 = u_xlat2.x;
  u_xlat21 = (x_702 / x_704);
  let x_706 : f32 = u_xlat21;
  let x_707 : f32 = u_xlat22;
  u_xlat21 = (x_706 * x_707);
  let x_709 : f32 = u_xlat23;
  let x_710 : f32 = u_xlat21;
  u_xlat21 = (x_709 * x_710);
  let x_712 : f32 = u_xlat21;
  u_xlat21 = (x_712 * 3.141592741f);
  let x_715 : f32 = u_xlat21;
  u_xlat21 = max(x_715, 0.0f);
  let x_717 : vec4<f32> = u_xlat0;
  let x_719 : vec4<f32> = u_xlat0;
  u_xlat22 = dot(vec3<f32>(x_717.x, x_717.y, x_717.z), vec3<f32>(x_719.x, x_719.y, x_719.z));
  let x_722 : f32 = u_xlat22;
  u_xlatb22 = !((x_722 == 0.0f));
  let x_724 : bool = u_xlatb22;
  u_xlat22 = select(0.0f, 1.0f, x_724);
  let x_726 : f32 = u_xlat21;
  let x_727 : f32 = u_xlat22;
  u_xlat21 = (x_726 * x_727);
  let x_729 : f32 = u_xlat16;
  let x_731 : vec3<f32> = u_xlat6;
  let x_732 : vec3<f32> = (vec3<f32>(x_729, x_729, x_729) * x_731);
  let x_733 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_732.x, x_733.y, x_732.y, x_732.z);
  let x_735 : vec3<f32> = u_xlat6;
  let x_736 : f32 = u_xlat21;
  u_xlat3 = (x_735 * vec3<f32>(x_736, x_736, x_736));
  let x_739 : f32 = u_xlat9;
  u_xlat21 = (-(x_739) + 1.0f);
  let x_742 : f32 = u_xlat21;
  let x_743 : f32 = u_xlat21;
  u_xlat22 = (x_742 * x_743);
  let x_745 : f32 = u_xlat22;
  let x_746 : f32 = u_xlat22;
  u_xlat22 = (x_745 * x_746);
  let x_748 : f32 = u_xlat21;
  let x_749 : f32 = u_xlat22;
  u_xlat21 = (x_748 * x_749);
  let x_751 : vec4<f32> = u_xlat0;
  let x_755 : vec3<f32> = (-(vec3<f32>(x_751.x, x_751.y, x_751.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_756 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_755.x, x_755.y, x_755.z, x_756.w);
  let x_758 : vec4<f32> = u_xlat4;
  let x_760 : f32 = u_xlat21;
  let x_763 : vec4<f32> = u_xlat0;
  let x_765 : vec3<f32> = ((vec3<f32>(x_758.x, x_758.y, x_758.z) * vec3<f32>(x_760, x_760, x_760)) + vec3<f32>(x_763.x, x_763.y, x_763.z));
  let x_766 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_765.x, x_765.y, x_765.z, x_766.w);
  let x_768 : vec4<f32> = u_xlat0;
  let x_770 : vec3<f32> = u_xlat3;
  let x_771 : vec3<f32> = (vec3<f32>(x_768.x, x_768.y, x_768.z) * x_770);
  let x_772 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_771.x, x_771.y, x_771.z, x_772.w);
  let x_774 : vec4<f32> = u_xlat1;
  let x_776 : vec4<f32> = u_xlat2;
  let x_779 : vec4<f32> = u_xlat0;
  let x_781 : vec3<f32> = ((vec3<f32>(x_774.x, x_774.y, x_774.z) * vec3<f32>(x_776.x, x_776.z, x_776.w)) + vec3<f32>(x_779.x, x_779.y, x_779.z));
  let x_782 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_781.x, x_781.y, x_781.z, x_782.w);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(5) vs_TEXCOORD5_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

