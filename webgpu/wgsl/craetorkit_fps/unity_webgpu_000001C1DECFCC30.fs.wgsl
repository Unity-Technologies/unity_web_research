struct PGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_ProjectionParams : vec4<f32>,
  x_WorldSpaceLightPos0 : vec4<f32>,
  unity_OcclusionMaskSelector : vec4<f32>,
  x_LightShadowData : vec4<f32>,
  unity_ShadowFadeCenterAndType : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
  unity_FogParams : vec4<f32>,
  unity_ProbeVolumeParams : vec4<f32>,
  unity_ProbeVolumeWorldToObject : mat4x4<f32>,
  unity_ProbeVolumeSizeInv : vec3<f32>,
  @size(4)
  padding_1 : u32,
  unity_ProbeVolumeMin : vec3<f32>,
  @size(4)
  padding_2 : u32,
  x_LightColor0 : vec4<f32>,
  unity_WorldToLight : mat4x4<f32>,
  x_Glossiness : f32,
  x_Metallic : f32,
  @size(8)
  padding_3 : u32,
  x_Color : vec4<f32>,
}

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(1) @binding(0) var<uniform> x_18 : PGlobals;

var<private> vs_TEXCOORD3 : f32;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(0) var x_Gradient : texture_2d<f32>;

@group(0) @binding(7) var sampler_Gradient : sampler;

@group(0) @binding(3) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(4) var samplerunity_ProbeVolumeSH : sampler;

var<private> vs_TEXCOORD5 : vec4<f32>;

@group(0) @binding(1) var x_ShadowMapTexture : texture_2d<f32>;

@group(0) @binding(5) var sampler_ShadowMapTexture : sampler;

@group(0) @binding(2) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(6) var sampler_LightTexture0 : sampler;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD6 : f32;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat18 : f32;
  var u_xlat1 : vec3<f32>;
  var u_xlat19 : f32;
  var u_xlat2 : vec3<f32>;
  var u_xlatb19 : bool;
  var u_xlat3 : vec4<f32>;
  var u_xlat14 : f32;
  var u_xlatb14 : bool;
  var x_257 : vec3<f32>;
  var u_xlat20 : f32;
  var u_xlat4 : vec3<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlat7 : f32;
  var u_xlat6 : vec3<f32>;
  var u_xlat12 : f32;
  var u_xlat13 : f32;
  var u_xlatb18 : bool;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec3<f32> = vs_TEXCOORD2;
  let x_23 : vec3<f32> = x_18.x_WorldSpaceCameraPos;
  u_xlat0 = (-(x_12) + x_23);
  let x_27 : vec3<f32> = u_xlat0;
  let x_28 : vec3<f32> = u_xlat0;
  u_xlat18 = dot(x_27, x_28);
  let x_30 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_30);
  let x_33 : f32 = u_xlat18;
  let x_35 : vec3<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_33, x_33, x_33) * x_35);
  let x_40 : f32 = vs_TEXCOORD3;
  u_xlat19 = (x_40 + -1.0f);
  let x_43 : f32 = u_xlat19;
  u_xlat19 = (x_43 * -9.999998093f);
  let x_46 : f32 = u_xlat19;
  u_xlat19 = clamp(x_46, 0.0f, 1.0f);
  let x_51 : f32 = u_xlat19;
  let x_57 : vec2<f32> = vs_TEXCOORD0;
  let x_58 : vec2<f32> = (-(vec2<f32>(x_51, x_51)) + x_57);
  let x_59 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_58.x, x_58.y, x_59.z);
  let x_71 : vec3<f32> = u_xlat2;
  let x_73 : vec4<f32> = textureSample(x_Gradient, sampler_Gradient, vec2<f32>(x_71.x, x_71.y));
  u_xlat19 = x_73.x;
  let x_80 : vec2<f32> = vs_TEXCOORD0;
  let x_81 : vec4<f32> = textureSample(x_Gradient, sampler_Gradient, x_80);
  u_xlat2.x = x_81.z;
  let x_85 : f32 = u_xlat19;
  u_xlat19 = ((x_85 * -2.0f) + 1.0f);
  let x_90 : f32 = u_xlat2.x;
  let x_92 : f32 = u_xlat19;
  u_xlat19 = (-(x_90) + x_92);
  let x_97 : f32 = u_xlat19;
  u_xlatb19 = (x_97 < 0.0f);
  let x_99 : bool = u_xlatb19;
  if (((select(0i, 1i, x_99) * -1i) != 0i)) {
    discard;
  }
  let x_108 : vec3<f32> = vs_TEXCOORD2;
  let x_113 : vec4<f32> = x_18.unity_WorldToLight[1i];
  let x_115 : vec2<f32> = (vec2<f32>(x_108.y, x_108.y) * vec2<f32>(x_113.x, x_113.y));
  let x_116 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_115.x, x_115.y, x_116.z);
  let x_119 : vec4<f32> = x_18.unity_WorldToLight[0i];
  let x_121 : vec3<f32> = vs_TEXCOORD2;
  let x_124 : vec3<f32> = u_xlat2;
  let x_126 : vec2<f32> = ((vec2<f32>(x_119.x, x_119.y) * vec2<f32>(x_121.x, x_121.x)) + vec2<f32>(x_124.x, x_124.y));
  let x_127 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_126.x, x_126.y, x_127.z);
  let x_131 : vec4<f32> = x_18.unity_WorldToLight[2i];
  let x_133 : vec3<f32> = vs_TEXCOORD2;
  let x_136 : vec3<f32> = u_xlat2;
  let x_138 : vec2<f32> = ((vec2<f32>(x_131.x, x_131.y) * vec2<f32>(x_133.z, x_133.z)) + vec2<f32>(x_136.x, x_136.y));
  let x_139 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_138.x, x_138.y, x_139.z);
  let x_141 : vec3<f32> = u_xlat2;
  let x_145 : vec4<f32> = x_18.unity_WorldToLight[3i];
  let x_147 : vec2<f32> = (vec2<f32>(x_141.x, x_141.y) + vec2<f32>(x_145.x, x_145.y));
  let x_148 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_147.x, x_147.y, x_148.z);
  let x_155 : f32 = x_18.unity_MatrixV[0i].z;
  u_xlat3.x = x_155;
  let x_158 : f32 = x_18.unity_MatrixV[1i].z;
  u_xlat3.y = x_158;
  let x_162 : f32 = x_18.unity_MatrixV[2i].z;
  u_xlat3.z = x_162;
  let x_164 : vec3<f32> = u_xlat0;
  let x_165 : vec4<f32> = u_xlat3;
  u_xlat19 = dot(x_164, vec3<f32>(x_165.x, x_165.y, x_165.z));
  let x_168 : vec3<f32> = vs_TEXCOORD2;
  let x_171 : vec4<f32> = x_18.unity_ShadowFadeCenterAndType;
  let x_174 : vec3<f32> = (x_168 + -(vec3<f32>(x_171.x, x_171.y, x_171.z)));
  let x_175 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_174.x, x_174.y, x_174.z, x_175.w);
  let x_178 : vec4<f32> = u_xlat3;
  let x_180 : vec4<f32> = u_xlat3;
  u_xlat14 = dot(vec3<f32>(x_178.x, x_178.y, x_178.z), vec3<f32>(x_180.x, x_180.y, x_180.z));
  let x_183 : f32 = u_xlat14;
  u_xlat14 = sqrt(x_183);
  let x_185 : f32 = u_xlat19;
  let x_187 : f32 = u_xlat14;
  u_xlat14 = (-(x_185) + x_187);
  let x_191 : f32 = x_18.unity_ShadowFadeCenterAndType.w;
  let x_192 : f32 = u_xlat14;
  let x_194 : f32 = u_xlat19;
  u_xlat19 = ((x_191 * x_192) + x_194);
  let x_196 : f32 = u_xlat19;
  let x_199 : f32 = x_18.x_LightShadowData.z;
  let x_202 : f32 = x_18.x_LightShadowData.w;
  u_xlat19 = ((x_196 * x_199) + x_202);
  let x_204 : f32 = u_xlat19;
  u_xlat19 = clamp(x_204, 0.0f, 1.0f);
  let x_209 : f32 = x_18.unity_ProbeVolumeParams.x;
  u_xlatb14 = (x_209 == 1.0f);
  let x_211 : bool = u_xlatb14;
  if (x_211) {
    let x_215 : f32 = x_18.unity_ProbeVolumeParams.y;
    u_xlatb14 = (x_215 == 1.0f);
    let x_217 : vec3<f32> = vs_TEXCOORD2;
    let x_221 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[1i];
    let x_223 : vec3<f32> = (vec3<f32>(x_217.y, x_217.y, x_217.y) * vec3<f32>(x_221.x, x_221.y, x_221.z));
    let x_224 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_223.x, x_223.y, x_223.z, x_224.w);
    let x_227 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[0i];
    let x_229 : vec3<f32> = vs_TEXCOORD2;
    let x_232 : vec4<f32> = u_xlat3;
    let x_234 : vec3<f32> = ((vec3<f32>(x_227.x, x_227.y, x_227.z) * vec3<f32>(x_229.x, x_229.x, x_229.x)) + vec3<f32>(x_232.x, x_232.y, x_232.z));
    let x_235 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_234.x, x_234.y, x_234.z, x_235.w);
    let x_238 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[2i];
    let x_240 : vec3<f32> = vs_TEXCOORD2;
    let x_243 : vec4<f32> = u_xlat3;
    let x_245 : vec3<f32> = ((vec3<f32>(x_238.x, x_238.y, x_238.z) * vec3<f32>(x_240.z, x_240.z, x_240.z)) + vec3<f32>(x_243.x, x_243.y, x_243.z));
    let x_246 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_245.x, x_245.y, x_245.z, x_246.w);
    let x_248 : vec4<f32> = u_xlat3;
    let x_251 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[3i];
    let x_253 : vec3<f32> = (vec3<f32>(x_248.x, x_248.y, x_248.z) + vec3<f32>(x_251.x, x_251.y, x_251.z));
    let x_254 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_253.x, x_253.y, x_253.z, x_254.w);
    let x_256 : bool = u_xlatb14;
    if (x_256) {
      let x_260 : vec4<f32> = u_xlat3;
      x_257 = vec3<f32>(x_260.x, x_260.y, x_260.z);
    } else {
      let x_263 : vec3<f32> = vs_TEXCOORD2;
      x_257 = x_263;
    }
    let x_264 : vec3<f32> = x_257;
    let x_265 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_264.x, x_264.y, x_264.z, x_265.w);
    let x_267 : vec4<f32> = u_xlat3;
    let x_271 : vec3<f32> = x_18.unity_ProbeVolumeMin;
    let x_273 : vec3<f32> = (vec3<f32>(x_267.x, x_267.y, x_267.z) + -(x_271));
    let x_274 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_273.x, x_273.y, x_273.z, x_274.w);
    let x_276 : vec4<f32> = u_xlat3;
    let x_280 : vec3<f32> = x_18.unity_ProbeVolumeSizeInv;
    let x_281 : vec3<f32> = (vec3<f32>(x_276.x, x_276.y, x_276.z) * x_280);
    let x_282 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_282.x, x_281.x, x_281.y, x_281.z);
    let x_285 : f32 = u_xlat3.y;
    u_xlat14 = ((x_285 * 0.25f) + 0.75f);
    let x_292 : f32 = x_18.unity_ProbeVolumeParams.z;
    u_xlat20 = ((x_292 * 0.5f) + 0.75f);
    let x_296 : f32 = u_xlat20;
    let x_297 : f32 = u_xlat14;
    u_xlat3.x = max(x_296, x_297);
    let x_308 : vec4<f32> = u_xlat3;
    let x_310 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_308.x, x_308.z, x_308.w));
    u_xlat3 = x_310;
  } else {
    u_xlat3.x = 1.0f;
    u_xlat3.y = 1.0f;
    u_xlat3.z = 1.0f;
    u_xlat3.w = 1.0f;
  }
  let x_316 : vec4<f32> = u_xlat3;
  let x_318 : vec4<f32> = x_18.unity_OcclusionMaskSelector;
  u_xlat14 = dot(x_316, x_318);
  let x_320 : f32 = u_xlat14;
  u_xlat14 = clamp(x_320, 0.0f, 1.0f);
  let x_324 : vec4<f32> = vs_TEXCOORD5;
  let x_326 : vec4<f32> = vs_TEXCOORD5;
  let x_328 : vec2<f32> = (vec2<f32>(x_324.x, x_324.y) / vec2<f32>(x_326.w, x_326.w));
  let x_329 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_328.x, x_328.y, x_329.z, x_329.w);
  let x_336 : vec4<f32> = u_xlat3;
  let x_338 : vec4<f32> = textureSample(x_ShadowMapTexture, sampler_ShadowMapTexture, vec2<f32>(x_336.x, x_336.y));
  u_xlat20 = x_338.x;
  let x_340 : f32 = u_xlat20;
  let x_342 : f32 = u_xlat14;
  u_xlat14 = (-(x_340) + x_342);
  let x_344 : f32 = u_xlat19;
  let x_345 : f32 = u_xlat14;
  let x_347 : f32 = u_xlat20;
  u_xlat19 = ((x_344 * x_345) + x_347);
  let x_354 : vec3<f32> = u_xlat2;
  let x_356 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, vec2<f32>(x_354.x, x_354.y));
  u_xlat2.x = x_356.w;
  let x_359 : f32 = u_xlat19;
  let x_361 : f32 = u_xlat2.x;
  u_xlat19 = (x_359 * x_361);
  let x_363 : f32 = u_xlat19;
  let x_367 : vec4<f32> = x_18.x_LightColor0;
  u_xlat2 = (vec3<f32>(x_363, x_363, x_363) * vec3<f32>(x_367.x, x_367.y, x_367.z));
  let x_371 : vec3<f32> = vs_TEXCOORD1;
  let x_372 : vec3<f32> = vs_TEXCOORD1;
  u_xlat19 = dot(x_371, x_372);
  let x_374 : f32 = u_xlat19;
  u_xlat19 = inverseSqrt(x_374);
  let x_376 : f32 = u_xlat19;
  let x_378 : vec3<f32> = vs_TEXCOORD1;
  let x_379 : vec3<f32> = (vec3<f32>(x_376, x_376, x_376) * x_378);
  let x_380 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_379.x, x_379.y, x_379.z, x_380.w);
  let x_385 : vec4<f32> = x_18.x_Color;
  u_xlat4 = (vec3<f32>(x_385.x, x_385.y, x_385.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_392 : f32 = x_18.x_Metallic;
  let x_394 : f32 = x_18.x_Metallic;
  let x_396 : f32 = x_18.x_Metallic;
  let x_397 : vec3<f32> = vec3<f32>(x_392, x_394, x_396);
  let x_402 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_397.x, x_397.y, x_397.z) * x_402) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_408 : f32 = x_18.x_Metallic;
  u_xlat19 = ((-(x_408) * 0.959999979f) + 0.959999979f);
  let x_414 : f32 = u_xlat19;
  let x_417 : vec4<f32> = x_18.x_Color;
  u_xlat5 = (vec3<f32>(x_414, x_414, x_414) * vec3<f32>(x_417.x, x_417.y, x_417.z));
  let x_422 : f32 = x_18.x_Glossiness;
  u_xlat19 = (-(x_422) + 1.0f);
  let x_425 : vec3<f32> = u_xlat0;
  let x_426 : f32 = u_xlat18;
  let x_430 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  u_xlat0 = ((x_425 * vec3<f32>(x_426, x_426, x_426)) + vec3<f32>(x_430.x, x_430.y, x_430.z));
  let x_433 : vec3<f32> = u_xlat0;
  let x_434 : vec3<f32> = u_xlat0;
  u_xlat18 = dot(x_433, x_434);
  let x_436 : f32 = u_xlat18;
  u_xlat18 = max(x_436, 0.001f);
  let x_439 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_439);
  let x_441 : f32 = u_xlat18;
  let x_443 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_441, x_441, x_441) * x_443);
  let x_445 : vec4<f32> = u_xlat3;
  let x_447 : vec3<f32> = u_xlat1;
  u_xlat18 = dot(vec3<f32>(x_445.x, x_445.y, x_445.z), x_447);
  let x_449 : vec4<f32> = u_xlat3;
  let x_452 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  u_xlat1.x = dot(vec3<f32>(x_449.x, x_449.y, x_449.z), vec3<f32>(x_452.x, x_452.y, x_452.z));
  let x_457 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_457, 0.0f, 1.0f);
  let x_461 : vec4<f32> = u_xlat3;
  let x_463 : vec3<f32> = u_xlat0;
  u_xlat7 = dot(vec3<f32>(x_461.x, x_461.y, x_461.z), x_463);
  let x_465 : f32 = u_xlat7;
  u_xlat7 = clamp(x_465, 0.0f, 1.0f);
  let x_468 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  let x_470 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(vec3<f32>(x_468.x, x_468.y, x_468.z), x_470);
  let x_474 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_474, 0.0f, 1.0f);
  let x_479 : f32 = u_xlat0.x;
  let x_481 : f32 = u_xlat0.x;
  u_xlat6.x = (x_479 * x_481);
  let x_484 : vec3<f32> = u_xlat6;
  let x_486 : f32 = u_xlat19;
  u_xlat6.x = dot(vec2<f32>(x_484.x, x_484.x), vec2<f32>(x_486, x_486));
  let x_491 : f32 = u_xlat6.x;
  u_xlat6.x = (x_491 + -0.5f);
  let x_497 : f32 = u_xlat1.x;
  u_xlat12 = (-(x_497) + 1.0f);
  let x_501 : f32 = u_xlat12;
  let x_502 : f32 = u_xlat12;
  u_xlat13 = (x_501 * x_502);
  let x_504 : f32 = u_xlat13;
  let x_505 : f32 = u_xlat13;
  u_xlat13 = (x_504 * x_505);
  let x_507 : f32 = u_xlat12;
  let x_508 : f32 = u_xlat13;
  u_xlat12 = (x_507 * x_508);
  let x_511 : f32 = u_xlat6.x;
  let x_512 : f32 = u_xlat12;
  u_xlat12 = ((x_511 * x_512) + 1.0f);
  let x_515 : f32 = u_xlat18;
  u_xlat13 = (-(abs(x_515)) + 1.0f);
  let x_519 : f32 = u_xlat13;
  let x_520 : f32 = u_xlat13;
  u_xlat20 = (x_519 * x_520);
  let x_522 : f32 = u_xlat20;
  let x_523 : f32 = u_xlat20;
  u_xlat20 = (x_522 * x_523);
  let x_525 : f32 = u_xlat13;
  let x_526 : f32 = u_xlat20;
  u_xlat13 = (x_525 * x_526);
  let x_529 : f32 = u_xlat6.x;
  let x_530 : f32 = u_xlat13;
  u_xlat6.x = ((x_529 * x_530) + 1.0f);
  let x_535 : f32 = u_xlat6.x;
  let x_536 : f32 = u_xlat12;
  u_xlat6.x = (x_535 * x_536);
  let x_539 : f32 = u_xlat19;
  let x_540 : f32 = u_xlat19;
  u_xlat12 = (x_539 * x_540);
  let x_542 : f32 = u_xlat12;
  u_xlat12 = max(x_542, 0.002f);
  let x_545 : f32 = u_xlat12;
  u_xlat13 = (-(x_545) + 1.0f);
  let x_548 : f32 = u_xlat18;
  let x_550 : f32 = u_xlat13;
  let x_552 : f32 = u_xlat12;
  u_xlat19 = ((abs(x_548) * x_550) + x_552);
  let x_555 : f32 = u_xlat1.x;
  let x_556 : f32 = u_xlat13;
  let x_558 : f32 = u_xlat12;
  u_xlat13 = ((x_555 * x_556) + x_558);
  let x_560 : f32 = u_xlat18;
  let x_562 : f32 = u_xlat13;
  u_xlat18 = (abs(x_560) * x_562);
  let x_565 : f32 = u_xlat1.x;
  let x_566 : f32 = u_xlat19;
  let x_568 : f32 = u_xlat18;
  u_xlat18 = ((x_565 * x_566) + x_568);
  let x_570 : f32 = u_xlat18;
  u_xlat18 = (x_570 + 0.00001f);
  let x_573 : f32 = u_xlat18;
  u_xlat18 = (0.5f / x_573);
  let x_575 : f32 = u_xlat12;
  let x_576 : f32 = u_xlat12;
  u_xlat12 = (x_575 * x_576);
  let x_578 : f32 = u_xlat7;
  let x_579 : f32 = u_xlat12;
  let x_581 : f32 = u_xlat7;
  u_xlat13 = ((x_578 * x_579) + -(x_581));
  let x_584 : f32 = u_xlat13;
  let x_585 : f32 = u_xlat7;
  u_xlat7 = ((x_584 * x_585) + 1.0f);
  let x_588 : f32 = u_xlat12;
  u_xlat12 = (x_588 * 0.318309873f);
  let x_591 : f32 = u_xlat7;
  let x_592 : f32 = u_xlat7;
  u_xlat7 = ((x_591 * x_592) + 0.0000001f);
  let x_596 : f32 = u_xlat12;
  let x_597 : f32 = u_xlat7;
  u_xlat12 = (x_596 / x_597);
  let x_599 : f32 = u_xlat12;
  let x_600 : f32 = u_xlat18;
  u_xlat6.y = (x_599 * x_600);
  let x_603 : vec3<f32> = u_xlat1;
  let x_605 : vec3<f32> = u_xlat6;
  let x_607 : vec2<f32> = (vec2<f32>(x_603.x, x_603.x) * vec2<f32>(x_605.x, x_605.y));
  let x_608 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_607.x, x_607.y, x_608.z);
  let x_611 : f32 = u_xlat6.y;
  u_xlat12 = (x_611 * 3.141592741f);
  let x_614 : f32 = u_xlat12;
  u_xlat12 = max(x_614, 0.0f);
  let x_616 : vec3<f32> = u_xlat4;
  let x_617 : vec3<f32> = u_xlat4;
  u_xlat18 = dot(x_616, x_617);
  let x_620 : f32 = u_xlat18;
  u_xlatb18 = !((x_620 == 0.0f));
  let x_622 : bool = u_xlatb18;
  u_xlat18 = select(0.0f, 1.0f, x_622);
  let x_624 : f32 = u_xlat18;
  let x_625 : f32 = u_xlat12;
  u_xlat12 = (x_624 * x_625);
  let x_627 : vec3<f32> = u_xlat6;
  let x_629 : vec3<f32> = u_xlat2;
  u_xlat1 = (vec3<f32>(x_627.x, x_627.x, x_627.x) * x_629);
  let x_631 : vec3<f32> = u_xlat2;
  let x_632 : f32 = u_xlat12;
  u_xlat6 = (x_631 * vec3<f32>(x_632, x_632, x_632));
  let x_636 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_636) + 1.0f);
  let x_641 : f32 = u_xlat0.x;
  let x_643 : f32 = u_xlat0.x;
  u_xlat19 = (x_641 * x_643);
  let x_645 : f32 = u_xlat19;
  let x_646 : f32 = u_xlat19;
  u_xlat19 = (x_645 * x_646);
  let x_649 : f32 = u_xlat0.x;
  let x_650 : f32 = u_xlat19;
  u_xlat0.x = (x_649 * x_650);
  let x_653 : vec3<f32> = u_xlat4;
  u_xlat2 = (-(x_653) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_657 : vec3<f32> = u_xlat2;
  let x_658 : vec3<f32> = u_xlat0;
  let x_661 : vec3<f32> = u_xlat4;
  u_xlat2 = ((x_657 * vec3<f32>(x_658.x, x_658.x, x_658.x)) + x_661);
  let x_663 : vec3<f32> = u_xlat6;
  let x_664 : vec3<f32> = u_xlat2;
  u_xlat0 = (x_663 * x_664);
  let x_666 : vec3<f32> = u_xlat5;
  let x_667 : vec3<f32> = u_xlat1;
  let x_669 : vec3<f32> = u_xlat0;
  u_xlat0 = ((x_666 * x_667) + x_669);
  let x_672 : f32 = vs_TEXCOORD6;
  let x_674 : f32 = x_18.x_ProjectionParams.y;
  u_xlat18 = (x_672 / x_674);
  let x_676 : f32 = u_xlat18;
  u_xlat18 = (-(x_676) + 1.0f);
  let x_679 : f32 = u_xlat18;
  let x_681 : f32 = x_18.x_ProjectionParams.z;
  u_xlat18 = (x_679 * x_681);
  let x_683 : f32 = u_xlat18;
  u_xlat18 = max(x_683, 0.0f);
  let x_685 : f32 = u_xlat18;
  let x_688 : f32 = x_18.unity_FogParams.x;
  u_xlat18 = (x_685 * x_688);
  let x_690 : f32 = u_xlat18;
  let x_691 : f32 = u_xlat18;
  u_xlat18 = (x_690 * -(x_691));
  let x_694 : f32 = u_xlat18;
  u_xlat18 = exp2(x_694);
  let x_698 : vec3<f32> = u_xlat0;
  let x_699 : f32 = u_xlat18;
  let x_701 : vec3<f32> = (x_698 * vec3<f32>(x_699, x_699, x_699));
  let x_702 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_701.x, x_701.y, x_701.z, x_702.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(3) vs_TEXCOORD2_param : vec3<f32>, @location(1) vs_TEXCOORD3_param : f32, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(5) vs_TEXCOORD5_param : vec4<f32>, @location(2) vs_TEXCOORD1_param : vec3<f32>, @location(4) vs_TEXCOORD6_param : f32, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

