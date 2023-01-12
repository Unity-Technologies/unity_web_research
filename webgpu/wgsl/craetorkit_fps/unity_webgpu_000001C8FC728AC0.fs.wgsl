struct PGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  unity_OcclusionMaskSelector : vec4<f32>,
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

@group(0) @binding(5) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_32 : PGlobals;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec3<f32>;

@group(0) @binding(3) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(4) var samplerunity_ProbeVolumeSH : sampler;

var<private> vs_TEXCOORD7 : vec4<f32>;

@group(0) @binding(1) var x_ShadowMapTexture : texture_2d<f32>;

@group(0) @binding(6) var sampler_ShadowMapTexture : sampler;

@group(0) @binding(2) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(7) var sampler_LightTexture0 : sampler;

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
  var u_xlat24 : f32;
  var u_xlat4 : vec3<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat22 : f32;
  var u_xlatb22 : bool;
  var x_307 : vec3<f32>;
  var u_xlat18 : vec2<f32>;
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
  let x_37 : vec4<f32> = x_32.x_Color;
  u_xlat1 = (x_27 * x_37);
  let x_39 : vec4<f32> = u_xlat0;
  let x_42 : vec4<f32> = x_32.x_Color;
  let x_47 : vec3<f32> = ((vec3<f32>(x_39.x, x_39.y, x_39.z) * vec3<f32>(x_42.x, x_42.y, x_42.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_48 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_47.x, x_47.y, x_47.z, x_48.w);
  let x_53 : f32 = x_32.x_Metallic;
  let x_55 : f32 = x_32.x_Metallic;
  let x_57 : f32 = x_32.x_Metallic;
  let x_58 : vec3<f32> = vec3<f32>(x_53, x_55, x_57);
  let x_63 : vec4<f32> = u_xlat0;
  let x_68 : vec3<f32> = ((vec3<f32>(x_58.x, x_58.y, x_58.z) * vec3<f32>(x_63.x, x_63.y, x_63.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_69 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_68.x, x_68.y, x_68.z, x_69.w);
  let x_74 : f32 = x_32.x_Metallic;
  u_xlat21 = ((-(x_74) * 0.959999979f) + 0.959999979f);
  let x_79 : f32 = u_xlat21;
  let x_81 : vec4<f32> = u_xlat1;
  let x_83 : vec3<f32> = (vec3<f32>(x_79, x_79, x_79) * vec3<f32>(x_81.x, x_81.y, x_81.z));
  let x_84 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_83.x, x_83.y, x_83.z, x_84.w);
  let x_88 : vec4<f32> = vs_TEXCOORD4;
  let x_90 : vec4<f32> = vs_TEXCOORD4;
  u_xlat2.x = dot(vec3<f32>(x_88.x, x_88.y, x_88.z), vec3<f32>(x_90.x, x_90.y, x_90.z));
  let x_97 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_97);
  let x_100 : vec4<f32> = u_xlat2;
  let x_102 : vec4<f32> = vs_TEXCOORD4;
  let x_104 : vec3<f32> = (vec3<f32>(x_100.x, x_100.x, x_100.x) * vec3<f32>(x_102.x, x_102.y, x_102.z));
  let x_105 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_104.x, x_104.y, x_104.z, x_105.w);
  let x_109 : vec4<f32> = vs_TEXCOORD1;
  let x_111 : vec4<f32> = vs_TEXCOORD1;
  u_xlat23 = dot(vec3<f32>(x_109.x, x_109.y, x_109.z), vec3<f32>(x_111.x, x_111.y, x_111.z));
  let x_114 : f32 = u_xlat23;
  u_xlat23 = inverseSqrt(x_114);
  let x_118 : f32 = u_xlat23;
  let x_120 : vec4<f32> = vs_TEXCOORD1;
  u_xlat3 = (vec3<f32>(x_118, x_118, x_118) * vec3<f32>(x_120.x, x_120.y, x_120.z));
  let x_123 : vec4<f32> = u_xlat1;
  let x_125 : vec4<f32> = u_xlat1;
  let x_127 : vec3<f32> = (vec3<f32>(x_123.w, x_123.w, x_123.w) * vec3<f32>(x_125.x, x_125.y, x_125.z));
  let x_128 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_127.x, x_127.y, x_127.z, x_128.w);
  let x_131 : f32 = u_xlat21;
  u_xlat24 = (-(x_131) + 1.0f);
  let x_139 : f32 = u_xlat1.w;
  let x_140 : f32 = u_xlat21;
  let x_142 : f32 = u_xlat24;
  SV_Target0.w = ((x_139 * x_140) + x_142);
  let x_149 : vec3<f32> = vs_TEXCOORD5;
  let x_154 : vec4<f32> = x_32.unity_WorldToLight[1i];
  let x_156 : vec2<f32> = (vec2<f32>(x_149.y, x_149.y) * vec2<f32>(x_154.x, x_154.y));
  let x_157 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_156.x, x_156.y, x_157.z);
  let x_161 : vec4<f32> = x_32.unity_WorldToLight[0i];
  let x_163 : vec3<f32> = vs_TEXCOORD5;
  let x_166 : vec3<f32> = u_xlat4;
  let x_168 : vec2<f32> = ((vec2<f32>(x_161.x, x_161.y) * vec2<f32>(x_163.x, x_163.x)) + vec2<f32>(x_166.x, x_166.y));
  let x_169 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_168.x, x_168.y, x_169.z);
  let x_173 : vec4<f32> = x_32.unity_WorldToLight[2i];
  let x_175 : vec3<f32> = vs_TEXCOORD5;
  let x_178 : vec3<f32> = u_xlat4;
  let x_180 : vec2<f32> = ((vec2<f32>(x_173.x, x_173.y) * vec2<f32>(x_175.z, x_175.z)) + vec2<f32>(x_178.x, x_178.y));
  let x_181 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_180.x, x_180.y, x_181.z);
  let x_183 : vec3<f32> = u_xlat4;
  let x_187 : vec4<f32> = x_32.unity_WorldToLight[3i];
  let x_189 : vec2<f32> = (vec2<f32>(x_183.x, x_183.y) + vec2<f32>(x_187.x, x_187.y));
  let x_190 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_189.x, x_189.y, x_190.z);
  let x_193 : vec3<f32> = vs_TEXCOORD5;
  let x_197 : vec3<f32> = x_32.x_WorldSpaceCameraPos;
  let x_198 : vec3<f32> = (-(x_193) + x_197);
  let x_199 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_198.x, x_198.y, x_198.z, x_199.w);
  let x_205 : f32 = x_32.unity_MatrixV[0i].z;
  u_xlat6.x = x_205;
  let x_208 : f32 = x_32.unity_MatrixV[1i].z;
  u_xlat6.y = x_208;
  let x_212 : f32 = x_32.unity_MatrixV[2i].z;
  u_xlat6.z = x_212;
  let x_214 : vec4<f32> = u_xlat5;
  let x_216 : vec3<f32> = u_xlat6;
  u_xlat21 = dot(vec3<f32>(x_214.x, x_214.y, x_214.z), x_216);
  let x_218 : vec3<f32> = vs_TEXCOORD5;
  let x_220 : vec4<f32> = x_32.unity_ShadowFadeCenterAndType;
  let x_223 : vec3<f32> = (x_218 + -(vec3<f32>(x_220.x, x_220.y, x_220.z)));
  let x_224 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_223.x, x_223.y, x_223.z, x_224.w);
  let x_227 : vec4<f32> = u_xlat5;
  let x_229 : vec4<f32> = u_xlat5;
  u_xlat22 = dot(vec3<f32>(x_227.x, x_227.y, x_227.z), vec3<f32>(x_229.x, x_229.y, x_229.z));
  let x_232 : f32 = u_xlat22;
  u_xlat22 = sqrt(x_232);
  let x_234 : f32 = u_xlat21;
  let x_236 : f32 = u_xlat22;
  u_xlat22 = (-(x_234) + x_236);
  let x_239 : f32 = x_32.unity_ShadowFadeCenterAndType.w;
  let x_240 : f32 = u_xlat22;
  let x_242 : f32 = u_xlat21;
  u_xlat21 = ((x_239 * x_240) + x_242);
  let x_244 : f32 = u_xlat21;
  let x_246 : f32 = x_32.x_LightShadowData.z;
  let x_249 : f32 = x_32.x_LightShadowData.w;
  u_xlat21 = ((x_244 * x_246) + x_249);
  let x_251 : f32 = u_xlat21;
  u_xlat21 = clamp(x_251, 0.0f, 1.0f);
  let x_259 : f32 = x_32.unity_ProbeVolumeParams.x;
  u_xlatb22 = (x_259 == 1.0f);
  let x_261 : bool = u_xlatb22;
  if (x_261) {
    let x_265 : f32 = x_32.unity_ProbeVolumeParams.y;
    u_xlatb22 = (x_265 == 1.0f);
    let x_267 : vec3<f32> = vs_TEXCOORD5;
    let x_271 : vec4<f32> = x_32.unity_ProbeVolumeWorldToObject[1i];
    let x_273 : vec3<f32> = (vec3<f32>(x_267.y, x_267.y, x_267.y) * vec3<f32>(x_271.x, x_271.y, x_271.z));
    let x_274 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_273.x, x_273.y, x_273.z, x_274.w);
    let x_277 : vec4<f32> = x_32.unity_ProbeVolumeWorldToObject[0i];
    let x_279 : vec3<f32> = vs_TEXCOORD5;
    let x_282 : vec4<f32> = u_xlat5;
    let x_284 : vec3<f32> = ((vec3<f32>(x_277.x, x_277.y, x_277.z) * vec3<f32>(x_279.x, x_279.x, x_279.x)) + vec3<f32>(x_282.x, x_282.y, x_282.z));
    let x_285 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_284.x, x_284.y, x_284.z, x_285.w);
    let x_288 : vec4<f32> = x_32.unity_ProbeVolumeWorldToObject[2i];
    let x_290 : vec3<f32> = vs_TEXCOORD5;
    let x_293 : vec4<f32> = u_xlat5;
    let x_295 : vec3<f32> = ((vec3<f32>(x_288.x, x_288.y, x_288.z) * vec3<f32>(x_290.z, x_290.z, x_290.z)) + vec3<f32>(x_293.x, x_293.y, x_293.z));
    let x_296 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_295.x, x_295.y, x_295.z, x_296.w);
    let x_298 : vec4<f32> = u_xlat5;
    let x_301 : vec4<f32> = x_32.unity_ProbeVolumeWorldToObject[3i];
    let x_303 : vec3<f32> = (vec3<f32>(x_298.x, x_298.y, x_298.z) + vec3<f32>(x_301.x, x_301.y, x_301.z));
    let x_304 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_303.x, x_303.y, x_303.z, x_304.w);
    let x_306 : bool = u_xlatb22;
    if (x_306) {
      let x_310 : vec4<f32> = u_xlat5;
      x_307 = vec3<f32>(x_310.x, x_310.y, x_310.z);
    } else {
      let x_313 : vec3<f32> = vs_TEXCOORD5;
      x_307 = x_313;
    }
    let x_314 : vec3<f32> = x_307;
    let x_315 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_314.x, x_314.y, x_314.z, x_315.w);
    let x_317 : vec4<f32> = u_xlat5;
    let x_321 : vec3<f32> = x_32.unity_ProbeVolumeMin;
    let x_323 : vec3<f32> = (vec3<f32>(x_317.x, x_317.y, x_317.z) + -(x_321));
    let x_324 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_323.x, x_323.y, x_323.z, x_324.w);
    let x_326 : vec4<f32> = u_xlat5;
    let x_330 : vec3<f32> = x_32.unity_ProbeVolumeSizeInv;
    let x_331 : vec3<f32> = (vec3<f32>(x_326.x, x_326.y, x_326.z) * x_330);
    let x_332 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_332.x, x_331.x, x_331.y, x_331.z);
    let x_335 : f32 = u_xlat5.y;
    u_xlat22 = ((x_335 * 0.25f) + 0.75f);
    let x_341 : f32 = x_32.unity_ProbeVolumeParams.z;
    u_xlat24 = ((x_341 * 0.5f) + 0.75f);
    let x_345 : f32 = u_xlat22;
    let x_346 : f32 = u_xlat24;
    u_xlat5.x = max(x_345, x_346);
    let x_357 : vec4<f32> = u_xlat5;
    let x_359 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_357.x, x_357.z, x_357.w));
    u_xlat5 = x_359;
  } else {
    u_xlat5.x = 1.0f;
    u_xlat5.y = 1.0f;
    u_xlat5.z = 1.0f;
    u_xlat5.w = 1.0f;
  }
  let x_365 : vec4<f32> = u_xlat5;
  let x_367 : vec4<f32> = x_32.unity_OcclusionMaskSelector;
  u_xlat22 = dot(x_365, x_367);
  let x_369 : f32 = u_xlat22;
  u_xlat22 = clamp(x_369, 0.0f, 1.0f);
  let x_374 : vec4<f32> = vs_TEXCOORD7;
  let x_376 : vec4<f32> = vs_TEXCOORD7;
  u_xlat18 = (vec2<f32>(x_374.x, x_374.y) / vec2<f32>(x_376.w, x_376.w));
  let x_384 : vec2<f32> = u_xlat18;
  let x_385 : vec4<f32> = textureSample(x_ShadowMapTexture, sampler_ShadowMapTexture, x_384);
  u_xlat24 = x_385.x;
  let x_387 : f32 = u_xlat22;
  let x_388 : f32 = u_xlat24;
  u_xlat22 = (x_387 + -(x_388));
  let x_391 : f32 = u_xlat21;
  let x_392 : f32 = u_xlat22;
  let x_394 : f32 = u_xlat24;
  u_xlat21 = ((x_391 * x_392) + x_394);
  let x_401 : vec3<f32> = u_xlat4;
  let x_403 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, vec2<f32>(x_401.x, x_401.y));
  u_xlat22 = x_403.w;
  let x_405 : f32 = u_xlat21;
  let x_406 : f32 = u_xlat22;
  u_xlat21 = (x_405 * x_406);
  let x_408 : f32 = u_xlat21;
  let x_412 : vec4<f32> = x_32.x_LightColor0;
  u_xlat4 = (vec3<f32>(x_408, x_408, x_408) * vec3<f32>(x_412.x, x_412.y, x_412.z));
  let x_417 : f32 = x_32.x_Glossiness;
  u_xlat21 = (-(x_417) + 1.0f);
  let x_423 : f32 = vs_TEXCOORD2.w;
  u_xlat5.x = x_423;
  let x_427 : f32 = vs_TEXCOORD3.w;
  u_xlat5.y = x_427;
  let x_430 : f32 = vs_TEXCOORD4.w;
  u_xlat5.z = x_430;
  let x_432 : vec4<f32> = vs_TEXCOORD1;
  let x_435 : f32 = u_xlat23;
  let x_438 : vec4<f32> = u_xlat5;
  u_xlat6 = ((-(vec3<f32>(x_432.x, x_432.y, x_432.z)) * vec3<f32>(x_435, x_435, x_435)) + vec3<f32>(x_438.x, x_438.y, x_438.z));
  let x_441 : vec3<f32> = u_xlat6;
  let x_442 : vec3<f32> = u_xlat6;
  u_xlat22 = dot(x_441, x_442);
  let x_444 : f32 = u_xlat22;
  u_xlat22 = max(x_444, 0.001f);
  let x_447 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_447);
  let x_449 : f32 = u_xlat22;
  let x_451 : vec3<f32> = u_xlat6;
  u_xlat6 = (vec3<f32>(x_449, x_449, x_449) * x_451);
  let x_453 : vec4<f32> = u_xlat2;
  let x_455 : vec3<f32> = u_xlat3;
  u_xlat22 = dot(vec3<f32>(x_453.x, x_453.y, x_453.z), -(x_455));
  let x_458 : vec4<f32> = u_xlat2;
  let x_460 : vec4<f32> = u_xlat5;
  u_xlat23 = dot(vec3<f32>(x_458.x, x_458.y, x_458.z), vec3<f32>(x_460.x, x_460.y, x_460.z));
  let x_463 : f32 = u_xlat23;
  u_xlat23 = clamp(x_463, 0.0f, 1.0f);
  let x_465 : vec4<f32> = u_xlat2;
  let x_467 : vec3<f32> = u_xlat6;
  u_xlat2.x = dot(vec3<f32>(x_465.x, x_465.y, x_465.z), x_467);
  let x_471 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_471, 0.0f, 1.0f);
  let x_475 : vec4<f32> = u_xlat5;
  let x_477 : vec3<f32> = u_xlat6;
  u_xlat9 = dot(vec3<f32>(x_475.x, x_475.y, x_475.z), x_477);
  let x_479 : f32 = u_xlat9;
  u_xlat9 = clamp(x_479, 0.0f, 1.0f);
  let x_482 : f32 = u_xlat9;
  let x_483 : f32 = u_xlat9;
  u_xlat16 = (x_482 * x_483);
  let x_485 : f32 = u_xlat16;
  let x_487 : f32 = u_xlat21;
  u_xlat16 = dot(vec2<f32>(x_485, x_485), vec2<f32>(x_487, x_487));
  let x_490 : f32 = u_xlat16;
  u_xlat16 = (x_490 + -0.5f);
  let x_493 : f32 = u_xlat23;
  u_xlat3.x = (-(x_493) + 1.0f);
  let x_499 : f32 = u_xlat3.x;
  let x_501 : f32 = u_xlat3.x;
  u_xlat10 = (x_499 * x_501);
  let x_503 : f32 = u_xlat10;
  let x_504 : f32 = u_xlat10;
  u_xlat10 = (x_503 * x_504);
  let x_507 : f32 = u_xlat3.x;
  let x_508 : f32 = u_xlat10;
  u_xlat3.x = (x_507 * x_508);
  let x_511 : f32 = u_xlat16;
  let x_513 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_511 * x_513) + 1.0f);
  let x_517 : f32 = u_xlat22;
  u_xlat10 = (-(abs(x_517)) + 1.0f);
  let x_522 : f32 = u_xlat10;
  let x_523 : f32 = u_xlat10;
  u_xlat17 = (x_522 * x_523);
  let x_525 : f32 = u_xlat17;
  let x_526 : f32 = u_xlat17;
  u_xlat17 = (x_525 * x_526);
  let x_528 : f32 = u_xlat10;
  let x_529 : f32 = u_xlat17;
  u_xlat10 = (x_528 * x_529);
  let x_531 : f32 = u_xlat16;
  let x_532 : f32 = u_xlat10;
  u_xlat16 = ((x_531 * x_532) + 1.0f);
  let x_535 : f32 = u_xlat16;
  let x_537 : f32 = u_xlat3.x;
  u_xlat16 = (x_535 * x_537);
  let x_539 : f32 = u_xlat23;
  let x_540 : f32 = u_xlat16;
  u_xlat16 = (x_539 * x_540);
  let x_542 : f32 = u_xlat21;
  let x_543 : f32 = u_xlat21;
  u_xlat21 = (x_542 * x_543);
  let x_545 : f32 = u_xlat21;
  u_xlat21 = max(x_545, 0.002f);
  let x_548 : f32 = u_xlat21;
  u_xlat3.x = (-(x_548) + 1.0f);
  let x_552 : f32 = u_xlat22;
  let x_555 : f32 = u_xlat3.x;
  let x_557 : f32 = u_xlat21;
  u_xlat10 = ((abs(x_552) * x_555) + x_557);
  let x_559 : f32 = u_xlat23;
  let x_561 : f32 = u_xlat3.x;
  let x_563 : f32 = u_xlat21;
  u_xlat3.x = ((x_559 * x_561) + x_563);
  let x_566 : f32 = u_xlat22;
  let x_569 : f32 = u_xlat3.x;
  u_xlat22 = (abs(x_566) * x_569);
  let x_571 : f32 = u_xlat23;
  let x_572 : f32 = u_xlat10;
  let x_574 : f32 = u_xlat22;
  u_xlat22 = ((x_571 * x_572) + x_574);
  let x_576 : f32 = u_xlat22;
  u_xlat22 = (x_576 + 0.00001f);
  let x_579 : f32 = u_xlat22;
  u_xlat22 = (0.5f / x_579);
  let x_581 : f32 = u_xlat21;
  let x_582 : f32 = u_xlat21;
  u_xlat21 = (x_581 * x_582);
  let x_585 : f32 = u_xlat2.x;
  let x_586 : f32 = u_xlat21;
  let x_589 : f32 = u_xlat2.x;
  u_xlat3.x = ((x_585 * x_586) + -(x_589));
  let x_594 : f32 = u_xlat3.x;
  let x_596 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_594 * x_596) + 1.0f);
  let x_600 : f32 = u_xlat21;
  u_xlat21 = (x_600 * 0.318309873f);
  let x_604 : f32 = u_xlat2.x;
  let x_606 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_604 * x_606) + 0.0000001f);
  let x_611 : f32 = u_xlat21;
  let x_613 : f32 = u_xlat2.x;
  u_xlat21 = (x_611 / x_613);
  let x_615 : f32 = u_xlat21;
  let x_616 : f32 = u_xlat22;
  u_xlat21 = (x_615 * x_616);
  let x_618 : f32 = u_xlat23;
  let x_619 : f32 = u_xlat21;
  u_xlat21 = (x_618 * x_619);
  let x_621 : f32 = u_xlat21;
  u_xlat21 = (x_621 * 3.141592741f);
  let x_624 : f32 = u_xlat21;
  u_xlat21 = max(x_624, 0.0f);
  let x_626 : vec4<f32> = u_xlat0;
  let x_628 : vec4<f32> = u_xlat0;
  u_xlat22 = dot(vec3<f32>(x_626.x, x_626.y, x_626.z), vec3<f32>(x_628.x, x_628.y, x_628.z));
  let x_631 : f32 = u_xlat22;
  u_xlatb22 = !((x_631 == 0.0f));
  let x_633 : bool = u_xlatb22;
  u_xlat22 = select(0.0f, 1.0f, x_633);
  let x_635 : f32 = u_xlat21;
  let x_636 : f32 = u_xlat22;
  u_xlat21 = (x_635 * x_636);
  let x_638 : f32 = u_xlat16;
  let x_640 : vec3<f32> = u_xlat4;
  let x_641 : vec3<f32> = (vec3<f32>(x_638, x_638, x_638) * x_640);
  let x_642 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_641.x, x_642.y, x_641.y, x_641.z);
  let x_644 : vec3<f32> = u_xlat4;
  let x_645 : f32 = u_xlat21;
  u_xlat3 = (x_644 * vec3<f32>(x_645, x_645, x_645));
  let x_648 : f32 = u_xlat9;
  u_xlat21 = (-(x_648) + 1.0f);
  let x_651 : f32 = u_xlat21;
  let x_652 : f32 = u_xlat21;
  u_xlat22 = (x_651 * x_652);
  let x_654 : f32 = u_xlat22;
  let x_655 : f32 = u_xlat22;
  u_xlat22 = (x_654 * x_655);
  let x_657 : f32 = u_xlat21;
  let x_658 : f32 = u_xlat22;
  u_xlat21 = (x_657 * x_658);
  let x_660 : vec4<f32> = u_xlat0;
  u_xlat4 = (-(vec3<f32>(x_660.x, x_660.y, x_660.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_665 : vec3<f32> = u_xlat4;
  let x_666 : f32 = u_xlat21;
  let x_669 : vec4<f32> = u_xlat0;
  let x_671 : vec3<f32> = ((x_665 * vec3<f32>(x_666, x_666, x_666)) + vec3<f32>(x_669.x, x_669.y, x_669.z));
  let x_672 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_671.x, x_671.y, x_671.z, x_672.w);
  let x_674 : vec4<f32> = u_xlat0;
  let x_676 : vec3<f32> = u_xlat3;
  let x_677 : vec3<f32> = (vec3<f32>(x_674.x, x_674.y, x_674.z) * x_676);
  let x_678 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_677.x, x_677.y, x_677.z, x_678.w);
  let x_680 : vec4<f32> = u_xlat1;
  let x_682 : vec4<f32> = u_xlat2;
  let x_685 : vec4<f32> = u_xlat0;
  let x_687 : vec3<f32> = ((vec3<f32>(x_680.x, x_680.y, x_680.z) * vec3<f32>(x_682.x, x_682.z, x_682.w)) + vec3<f32>(x_685.x, x_685.y, x_685.z));
  let x_688 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_687.x, x_687.y, x_687.z, x_688.w);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(5) vs_TEXCOORD5_param : vec3<f32>, @location(6) vs_TEXCOORD7_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

