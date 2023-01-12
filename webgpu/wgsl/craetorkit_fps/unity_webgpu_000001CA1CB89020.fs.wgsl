struct PGlobals {
  x_Time : vec4<f32>,
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_ZBufferParams : vec4<f32>,
  x_WorldSpaceLightPos0 : vec4<f32>,
  unity_OcclusionMaskSelector : vec4<f32>,
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
  x_Color1 : vec4<f32>,
  x_Color2 : vec4<f32>,
  x_Edge : f32,
  x_Fade : f32,
  x_Fog : f32,
}

var<private> vs_TEXCOORD4 : vec3<f32>;

@group(1) @binding(0) var<uniform> x_18 : PGlobals;

var<private> vs_TEXCOORD5 : vec4<f32>;

@group(0) @binding(0) var x_CameraDepthTexture : texture_2d<f32>;

@group(0) @binding(15) var sampler_CameraDepthTexture : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(0) @binding(1) var x_Normal : texture_2d<f32>;

@group(0) @binding(12) var sampler_Normal : sampler;

@group(0) @binding(2) var x_Noise : texture_2d<f32>;

@group(0) @binding(14) var sampler_Noise : sampler;

@group(0) @binding(3) var x_MainTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_MainTex : sampler;

@group(0) @binding(4) var x_Ramp : texture_2d<f32>;

@group(0) @binding(13) var sampler_Ramp : sampler;

var<private> SV_Target0 : vec4<f32>;

@group(0) @binding(7) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(8) var samplerunity_ProbeVolumeSH : sampler;

@group(0) @binding(5) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(9) var sampler_LightTexture0 : sampler;

@group(0) @binding(6) var x_LightTextureB0 : texture_2d<f32>;

@group(0) @binding(10) var sampler_LightTextureB0 : sampler;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat21 : f32;
  var u_xlat1 : vec3<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat22 : f32;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat10 : vec3<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlat23 : f32;
  var u_xlat6 : vec4<f32>;
  var u_xlatb23 : bool;
  var x_433 : vec3<f32>;
  var u_xlat25 : f32;
  var u_xlatb25 : bool;
  var u_xlat24 : f32;
  var u_xlat9 : f32;
  var u_xlat7 : vec3<f32>;
  var u_xlat14 : f32;
  var u_xlat8 : f32;
  var u_xlatb21 : bool;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec3<f32> = vs_TEXCOORD4;
  let x_23 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  u_xlat0 = (-(x_12) + vec3<f32>(x_23.x, x_23.y, x_23.z));
  let x_28 : vec3<f32> = u_xlat0;
  let x_29 : vec3<f32> = u_xlat0;
  u_xlat21 = dot(x_28, x_29);
  let x_31 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_31);
  let x_34 : f32 = u_xlat21;
  let x_36 : vec3<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_34, x_34, x_34) * x_36);
  let x_39 : vec3<f32> = vs_TEXCOORD4;
  let x_44 : vec3<f32> = x_18.x_WorldSpaceCameraPos;
  u_xlat2 = (-(x_39) + x_44);
  let x_47 : vec3<f32> = u_xlat2;
  let x_48 : vec3<f32> = u_xlat2;
  u_xlat22 = dot(x_47, x_48);
  let x_50 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_50);
  let x_52 : f32 = u_xlat22;
  let x_54 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_52, x_52, x_52) * x_54);
  let x_61 : vec4<f32> = vs_TEXCOORD5;
  let x_63 : vec4<f32> = vs_TEXCOORD5;
  let x_65 : vec2<f32> = (vec2<f32>(x_61.x, x_61.y) / vec2<f32>(x_63.w, x_63.w));
  let x_66 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_65.x, x_65.y, x_66.z, x_66.w);
  let x_78 : vec4<f32> = u_xlat3;
  let x_80 : vec4<f32> = textureSample(x_CameraDepthTexture, sampler_CameraDepthTexture, vec2<f32>(x_78.x, x_78.y));
  u_xlat22 = x_80.x;
  let x_88 : f32 = x_18.x_ZBufferParams.z;
  let x_89 : f32 = u_xlat22;
  let x_93 : f32 = x_18.x_ZBufferParams.w;
  u_xlat22 = ((x_88 * x_89) + x_93);
  let x_96 : f32 = u_xlat22;
  u_xlat22 = (1.0f / x_96);
  let x_98 : f32 = u_xlat22;
  let x_101 : f32 = vs_TEXCOORD5.z;
  u_xlat22 = (x_98 + -(x_101));
  let x_104 : f32 = u_xlat22;
  let x_109 : f32 = x_18.x_Edge;
  let x_112 : f32 = x_18.x_Fog;
  let x_115 : f32 = x_18.x_Fade;
  let x_118 : vec3<f32> = (abs(vec3<f32>(x_104, x_104, x_104)) + -(vec3<f32>(x_109, x_112, x_115)));
  let x_119 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_118.x, x_118.y, x_118.z, x_119.w);
  let x_121 : vec4<f32> = u_xlat3;
  let x_124 : f32 = x_18.x_Edge;
  let x_126 : f32 = x_18.x_Fog;
  let x_128 : f32 = x_18.x_Fade;
  let x_131 : vec3<f32> = (vec3<f32>(x_121.x, x_121.y, x_121.z) / -(vec3<f32>(x_124, x_126, x_128)));
  let x_132 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_131.x, x_131.y, x_131.z, x_132.w);
  let x_134 : vec4<f32> = u_xlat3;
  let x_139 : vec3<f32> = clamp(vec3<f32>(x_134.x, x_134.y, x_134.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_140 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_139.x, x_139.y, x_139.z, x_140.w);
  let x_144 : f32 = u_xlat3.y;
  u_xlat22 = (-(x_144) + 1.0f);
  let x_150 : vec4<f32> = x_18.x_Time;
  let x_157 : vec4<f32> = vs_TEXCOORD0;
  let x_159 : vec3<f32> = ((vec3<f32>(x_150.x, x_150.x, x_150.x) * vec3<f32>(0.200000003f, 0.100000001f, 0.200000003f)) + vec3<f32>(x_157.z, x_157.w, x_157.y));
  let x_160 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_159.x, x_159.y, x_159.z, x_160.w);
  let x_163 : vec4<f32> = u_xlat4;
  let x_167 : vec2<f32> = (vec2<f32>(x_163.x, x_163.y) * vec2<f32>(0.5f, 0.5f));
  let x_168 : vec3<f32> = u_xlat10;
  u_xlat10 = vec3<f32>(x_167.x, x_168.y, x_167.y);
  let x_176 : vec3<f32> = u_xlat10;
  let x_178 : vec4<f32> = textureSample(x_Normal, sampler_Normal, vec2<f32>(x_176.x, x_176.z));
  u_xlat5 = vec3<f32>(x_178.x, x_178.y, x_178.w);
  let x_181 : f32 = u_xlat5.z;
  let x_183 : f32 = u_xlat5.x;
  u_xlat5.x = (x_181 * x_183);
  let x_186 : vec3<f32> = u_xlat5;
  let x_193 : vec2<f32> = ((vec2<f32>(x_186.x, x_186.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_194 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_193.x, x_193.y, x_194.z);
  let x_197 : vec3<f32> = u_xlat5;
  let x_199 : vec3<f32> = u_xlat5;
  u_xlat23 = dot(vec2<f32>(x_197.x, x_197.y), vec2<f32>(x_199.x, x_199.y));
  let x_202 : f32 = u_xlat23;
  u_xlat23 = min(x_202, 1.0f);
  let x_204 : f32 = u_xlat23;
  u_xlat23 = (-(x_204) + 1.0f);
  let x_207 : f32 = u_xlat23;
  u_xlat5.z = sqrt(x_207);
  let x_210 : vec4<f32> = vs_TEXCOORD0;
  let x_211 : vec2<f32> = vec2<f32>(x_210.x, x_210.x);
  let x_212 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_211.x, x_212.y, x_212.z, x_211.y);
  let x_214 : vec3<f32> = u_xlat5;
  let x_218 : vec4<f32> = u_xlat4;
  let x_220 : vec2<f32> = ((vec2<f32>(x_214.x, x_214.y) * vec2<f32>(0.200000003f, 0.200000003f)) + vec2<f32>(x_218.w, x_218.z));
  let x_221 : vec3<f32> = u_xlat10;
  u_xlat10 = vec3<f32>(x_220.x, x_221.y, x_220.y);
  let x_224 : f32 = vs_TEXCOORD0.y;
  let x_226 : f32 = x_18.x_Time.x;
  u_xlat4.y = (x_224 + x_226);
  let x_229 : vec3<f32> = u_xlat5;
  let x_231 : vec4<f32> = u_xlat4;
  let x_233 : vec2<f32> = (vec2<f32>(x_229.x, x_229.y) + vec2<f32>(x_231.x, x_231.y));
  let x_234 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_233.x, x_233.y, x_234.z, x_234.w);
  let x_236 : vec4<f32> = u_xlat4;
  let x_238 : vec2<f32> = (vec2<f32>(x_236.x, x_236.y) * vec2<f32>(0.200000003f, 0.200000003f));
  let x_239 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_238.x, x_238.y, x_239.z, x_239.w);
  let x_246 : vec4<f32> = u_xlat4;
  let x_248 : vec4<f32> = textureSample(x_Noise, sampler_Noise, vec2<f32>(x_246.x, x_246.y));
  u_xlat23 = x_248.x;
  let x_255 : vec3<f32> = u_xlat10;
  let x_257 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_255.x, x_255.z));
  u_xlat10.x = x_257.x;
  u_xlat10.z = 0.0f;
  let x_266 : vec3<f32> = u_xlat10;
  let x_268 : vec4<f32> = textureSample(x_Ramp, sampler_Ramp, vec2<f32>(x_266.x, x_266.z));
  let x_269 : vec3<f32> = vec3<f32>(x_268.x, x_268.y, x_268.z);
  let x_270 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_269.x, x_269.y, x_269.z, x_270.w);
  let x_273 : vec4<f32> = u_xlat4;
  let x_278 : vec4<f32> = x_18.x_Color2;
  let x_280 : vec3<f32> = (-(vec3<f32>(x_273.x, x_273.y, x_273.z)) + vec3<f32>(x_278.x, x_278.y, x_278.z));
  let x_281 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_280.x, x_280.y, x_280.z, x_281.w);
  let x_283 : vec4<f32> = u_xlat3;
  let x_285 : vec4<f32> = u_xlat6;
  let x_288 : vec4<f32> = u_xlat4;
  let x_290 : vec3<f32> = ((vec3<f32>(x_283.x, x_283.x, x_283.x) * vec3<f32>(x_285.x, x_285.y, x_285.z)) + vec3<f32>(x_288.x, x_288.y, x_288.z));
  let x_291 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_290.x, x_290.y, x_290.z, x_291.w);
  let x_293 : f32 = u_xlat22;
  let x_294 : f32 = u_xlat23;
  u_xlat23 = (x_293 + -(x_294));
  let x_297 : f32 = u_xlat23;
  u_xlat23 = clamp(x_297, 0.0f, 1.0f);
  let x_299 : f32 = u_xlat23;
  u_xlat3.x = ((x_299 * -2.0f) + 3.0f);
  let x_305 : f32 = u_xlat23;
  let x_306 : f32 = u_xlat23;
  u_xlat23 = (x_305 * x_306);
  let x_308 : f32 = u_xlat23;
  let x_310 : f32 = u_xlat3.x;
  u_xlat23 = (x_308 * x_310);
  let x_312 : f32 = u_xlat22;
  let x_313 : f32 = u_xlat23;
  u_xlat22 = (x_312 * x_313);
  let x_317 : vec4<f32> = x_18.x_Color1;
  let x_320 : vec4<f32> = x_18.x_Color2;
  let x_323 : vec3<f32> = (vec3<f32>(x_317.x, x_317.y, x_317.z) + -(vec3<f32>(x_320.x, x_320.y, x_320.z)));
  let x_324 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_323.x, x_323.y, x_323.z, x_324.w);
  let x_326 : f32 = u_xlat22;
  let x_328 : vec4<f32> = u_xlat6;
  let x_332 : vec4<f32> = x_18.x_Color2;
  let x_334 : vec3<f32> = ((vec3<f32>(x_326, x_326, x_326) * vec3<f32>(x_328.x, x_328.y, x_328.z)) + vec3<f32>(x_332.x, x_332.y, x_332.z));
  let x_335 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_334.x, x_334.y, x_334.z, x_335.w);
  let x_337 : vec4<f32> = u_xlat4;
  let x_339 : vec4<f32> = u_xlat6;
  let x_341 : vec3<f32> = (vec3<f32>(x_337.x, x_337.y, x_337.z) + vec3<f32>(x_339.x, x_339.y, x_339.z));
  let x_342 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_341.x, x_341.y, x_341.z, x_342.w);
  let x_345 : f32 = u_xlat10.x;
  u_xlat22 = (-(x_345) + 1.0f);
  let x_351 : f32 = u_xlat3.z;
  SV_Target0.w = (-(x_351) + 1.0f);
  let x_356 : vec3<f32> = vs_TEXCOORD4;
  let x_360 : vec4<f32> = x_18.unity_WorldToLight[1i];
  u_xlat3 = (vec4<f32>(x_356.y, x_356.y, x_356.y, x_356.y) * x_360);
  let x_363 : vec4<f32> = x_18.unity_WorldToLight[0i];
  let x_364 : vec3<f32> = vs_TEXCOORD4;
  let x_367 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_363 * vec4<f32>(x_364.x, x_364.x, x_364.x, x_364.x)) + x_367);
  let x_370 : vec4<f32> = x_18.unity_WorldToLight[2i];
  let x_371 : vec3<f32> = vs_TEXCOORD4;
  let x_374 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_370 * vec4<f32>(x_371.z, x_371.z, x_371.z, x_371.z)) + x_374);
  let x_376 : vec4<f32> = u_xlat3;
  let x_378 : vec4<f32> = x_18.unity_WorldToLight[3i];
  u_xlat3 = (x_376 + x_378);
  let x_385 : f32 = x_18.unity_ProbeVolumeParams.x;
  u_xlatb23 = (x_385 == 1.0f);
  let x_387 : bool = u_xlatb23;
  if (x_387) {
    let x_391 : f32 = x_18.unity_ProbeVolumeParams.y;
    u_xlatb23 = (x_391 == 1.0f);
    let x_393 : vec3<f32> = vs_TEXCOORD4;
    let x_397 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[1i];
    let x_399 : vec3<f32> = (vec3<f32>(x_393.y, x_393.y, x_393.y) * vec3<f32>(x_397.x, x_397.y, x_397.z));
    let x_400 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_399.x, x_399.y, x_399.z, x_400.w);
    let x_403 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[0i];
    let x_405 : vec3<f32> = vs_TEXCOORD4;
    let x_408 : vec4<f32> = u_xlat6;
    let x_410 : vec3<f32> = ((vec3<f32>(x_403.x, x_403.y, x_403.z) * vec3<f32>(x_405.x, x_405.x, x_405.x)) + vec3<f32>(x_408.x, x_408.y, x_408.z));
    let x_411 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_410.x, x_410.y, x_410.z, x_411.w);
    let x_414 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[2i];
    let x_416 : vec3<f32> = vs_TEXCOORD4;
    let x_419 : vec4<f32> = u_xlat6;
    let x_421 : vec3<f32> = ((vec3<f32>(x_414.x, x_414.y, x_414.z) * vec3<f32>(x_416.z, x_416.z, x_416.z)) + vec3<f32>(x_419.x, x_419.y, x_419.z));
    let x_422 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_421.x, x_421.y, x_421.z, x_422.w);
    let x_424 : vec4<f32> = u_xlat6;
    let x_427 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[3i];
    let x_429 : vec3<f32> = (vec3<f32>(x_424.x, x_424.y, x_424.z) + vec3<f32>(x_427.x, x_427.y, x_427.z));
    let x_430 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_429.x, x_429.y, x_429.z, x_430.w);
    let x_432 : bool = u_xlatb23;
    if (x_432) {
      let x_436 : vec4<f32> = u_xlat6;
      x_433 = vec3<f32>(x_436.x, x_436.y, x_436.z);
    } else {
      let x_439 : vec3<f32> = vs_TEXCOORD4;
      x_433 = x_439;
    }
    let x_440 : vec3<f32> = x_433;
    let x_441 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_440.x, x_440.y, x_440.z, x_441.w);
    let x_443 : vec4<f32> = u_xlat6;
    let x_447 : vec3<f32> = x_18.unity_ProbeVolumeMin;
    let x_449 : vec3<f32> = (vec3<f32>(x_443.x, x_443.y, x_443.z) + -(x_447));
    let x_450 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_449.x, x_449.y, x_449.z, x_450.w);
    let x_452 : vec4<f32> = u_xlat6;
    let x_456 : vec3<f32> = x_18.unity_ProbeVolumeSizeInv;
    let x_457 : vec3<f32> = (vec3<f32>(x_452.x, x_452.y, x_452.z) * x_456);
    let x_458 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_458.x, x_457.x, x_457.y, x_457.z);
    let x_461 : f32 = u_xlat6.y;
    u_xlat23 = ((x_461 * 0.25f) + 0.75f);
    let x_468 : f32 = x_18.unity_ProbeVolumeParams.z;
    u_xlat25 = ((x_468 * 0.5f) + 0.75f);
    let x_471 : f32 = u_xlat23;
    let x_472 : f32 = u_xlat25;
    u_xlat6.x = max(x_471, x_472);
    let x_483 : vec4<f32> = u_xlat6;
    let x_485 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_483.x, x_483.z, x_483.w));
    u_xlat6 = x_485;
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
    u_xlat6.w = 1.0f;
  }
  let x_491 : vec4<f32> = u_xlat6;
  let x_494 : vec4<f32> = x_18.unity_OcclusionMaskSelector;
  u_xlat23 = dot(x_491, x_494);
  let x_496 : f32 = u_xlat23;
  u_xlat23 = clamp(x_496, 0.0f, 1.0f);
  let x_500 : f32 = u_xlat3.z;
  u_xlatb25 = (0.0f < x_500);
  let x_502 : bool = u_xlatb25;
  u_xlat25 = select(0.0f, 1.0f, x_502);
  let x_504 : vec4<f32> = u_xlat3;
  let x_506 : vec4<f32> = u_xlat3;
  let x_508 : vec2<f32> = (vec2<f32>(x_504.x, x_504.y) / vec2<f32>(x_506.w, x_506.w));
  let x_509 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_508.x, x_508.y, x_509.z, x_509.w);
  let x_511 : vec4<f32> = u_xlat6;
  let x_513 : vec2<f32> = (vec2<f32>(x_511.x, x_511.y) + vec2<f32>(0.5f, 0.5f));
  let x_514 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_513.x, x_513.y, x_514.z, x_514.w);
  let x_522 : vec4<f32> = u_xlat6;
  let x_524 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, vec2<f32>(x_522.x, x_522.y));
  u_xlat24 = x_524.w;
  let x_526 : f32 = u_xlat24;
  let x_527 : f32 = u_xlat25;
  u_xlat24 = (x_526 * x_527);
  let x_529 : vec4<f32> = u_xlat3;
  let x_531 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_529.x, x_529.y, x_529.z), vec3<f32>(x_531.x, x_531.y, x_531.z));
  let x_540 : vec4<f32> = u_xlat3;
  let x_542 : vec4<f32> = textureSample(x_LightTextureB0, sampler_LightTextureB0, vec2<f32>(x_540.x, x_540.x));
  u_xlat3.x = x_542.x;
  let x_546 : f32 = u_xlat3.x;
  let x_547 : f32 = u_xlat24;
  u_xlat3.x = (x_546 * x_547);
  let x_550 : f32 = u_xlat23;
  let x_552 : f32 = u_xlat3.x;
  u_xlat23 = (x_550 * x_552);
  let x_555 : vec3<f32> = vs_TEXCOORD1;
  let x_556 : vec3<f32> = u_xlat5;
  u_xlat3.x = dot(x_555, x_556);
  let x_560 : vec3<f32> = vs_TEXCOORD2;
  let x_561 : vec3<f32> = u_xlat5;
  u_xlat3.y = dot(x_560, x_561);
  let x_565 : vec3<f32> = vs_TEXCOORD3;
  let x_566 : vec3<f32> = u_xlat5;
  u_xlat3.z = dot(x_565, x_566);
  let x_569 : vec4<f32> = u_xlat3;
  let x_571 : vec4<f32> = u_xlat3;
  u_xlat24 = dot(vec3<f32>(x_569.x, x_569.y, x_569.z), vec3<f32>(x_571.x, x_571.y, x_571.z));
  let x_574 : f32 = u_xlat24;
  u_xlat24 = inverseSqrt(x_574);
  let x_576 : f32 = u_xlat24;
  let x_578 : vec4<f32> = u_xlat3;
  let x_580 : vec3<f32> = (vec3<f32>(x_576, x_576, x_576) * vec3<f32>(x_578.x, x_578.y, x_578.z));
  let x_581 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_580.x, x_580.y, x_580.z, x_581.w);
  let x_583 : f32 = u_xlat23;
  let x_587 : vec4<f32> = x_18.x_LightColor0;
  u_xlat5 = (vec3<f32>(x_583, x_583, x_583) * vec3<f32>(x_587.x, x_587.y, x_587.z));
  let x_590 : vec4<f32> = u_xlat4;
  let x_594 : vec3<f32> = (vec3<f32>(x_590.x, x_590.y, x_590.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_595 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_594.x, x_594.y, x_594.z, x_595.w);
  let x_599 : f32 = x_18.x_Metallic;
  let x_601 : f32 = x_18.x_Metallic;
  let x_603 : f32 = x_18.x_Metallic;
  let x_604 : vec3<f32> = vec3<f32>(x_599, x_601, x_603);
  let x_609 : vec4<f32> = u_xlat6;
  let x_614 : vec3<f32> = ((vec3<f32>(x_604.x, x_604.y, x_604.z) * vec3<f32>(x_609.x, x_609.y, x_609.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_615 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_614.x, x_614.y, x_614.z, x_615.w);
  let x_618 : f32 = x_18.x_Metallic;
  u_xlat23 = ((-(x_618) * 0.959999979f) + 0.959999979f);
  let x_623 : f32 = u_xlat23;
  let x_625 : vec4<f32> = u_xlat4;
  let x_627 : vec3<f32> = (vec3<f32>(x_623, x_623, x_623) * vec3<f32>(x_625.x, x_625.y, x_625.z));
  let x_628 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_627.x, x_627.y, x_627.z, x_628.w);
  let x_630 : f32 = u_xlat22;
  let x_634 : f32 = x_18.x_Glossiness;
  u_xlat22 = ((-(x_630) * x_634) + 1.0f);
  let x_637 : vec3<f32> = u_xlat0;
  let x_638 : f32 = u_xlat21;
  let x_641 : vec3<f32> = u_xlat2;
  u_xlat0 = ((x_637 * vec3<f32>(x_638, x_638, x_638)) + x_641);
  let x_643 : vec3<f32> = u_xlat0;
  let x_644 : vec3<f32> = u_xlat0;
  u_xlat21 = dot(x_643, x_644);
  let x_646 : f32 = u_xlat21;
  u_xlat21 = max(x_646, 0.001f);
  let x_649 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_649);
  let x_651 : f32 = u_xlat21;
  let x_653 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_651, x_651, x_651) * x_653);
  let x_655 : vec4<f32> = u_xlat3;
  let x_657 : vec3<f32> = u_xlat2;
  u_xlat21 = dot(vec3<f32>(x_655.x, x_655.y, x_655.z), x_657);
  let x_659 : vec4<f32> = u_xlat3;
  let x_661 : vec3<f32> = u_xlat1;
  u_xlat2.x = dot(vec3<f32>(x_659.x, x_659.y, x_659.z), x_661);
  let x_665 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_665, 0.0f, 1.0f);
  let x_669 : vec4<f32> = u_xlat3;
  let x_671 : vec3<f32> = u_xlat0;
  u_xlat9 = dot(vec3<f32>(x_669.x, x_669.y, x_669.z), x_671);
  let x_673 : f32 = u_xlat9;
  u_xlat9 = clamp(x_673, 0.0f, 1.0f);
  let x_675 : vec3<f32> = u_xlat1;
  let x_676 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(x_675, x_676);
  let x_680 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_680, 0.0f, 1.0f);
  let x_685 : f32 = u_xlat0.x;
  let x_687 : f32 = u_xlat0.x;
  u_xlat7.x = (x_685 * x_687);
  let x_690 : vec3<f32> = u_xlat7;
  let x_692 : f32 = u_xlat22;
  u_xlat7.x = dot(vec2<f32>(x_690.x, x_690.x), vec2<f32>(x_692, x_692));
  let x_697 : f32 = u_xlat7.x;
  u_xlat7.x = (x_697 + -0.5f);
  let x_703 : f32 = u_xlat2.x;
  u_xlat14 = (-(x_703) + 1.0f);
  let x_706 : f32 = u_xlat14;
  let x_707 : f32 = u_xlat14;
  u_xlat1.x = (x_706 * x_707);
  let x_711 : f32 = u_xlat1.x;
  let x_713 : f32 = u_xlat1.x;
  u_xlat1.x = (x_711 * x_713);
  let x_716 : f32 = u_xlat14;
  let x_718 : f32 = u_xlat1.x;
  u_xlat14 = (x_716 * x_718);
  let x_721 : f32 = u_xlat7.x;
  let x_722 : f32 = u_xlat14;
  u_xlat14 = ((x_721 * x_722) + 1.0f);
  let x_725 : f32 = u_xlat21;
  u_xlat1.x = (-(abs(x_725)) + 1.0f);
  let x_732 : f32 = u_xlat1.x;
  let x_734 : f32 = u_xlat1.x;
  u_xlat8 = (x_732 * x_734);
  let x_736 : f32 = u_xlat8;
  let x_737 : f32 = u_xlat8;
  u_xlat8 = (x_736 * x_737);
  let x_740 : f32 = u_xlat1.x;
  let x_741 : f32 = u_xlat8;
  u_xlat1.x = (x_740 * x_741);
  let x_745 : f32 = u_xlat7.x;
  let x_747 : f32 = u_xlat1.x;
  u_xlat7.x = ((x_745 * x_747) + 1.0f);
  let x_752 : f32 = u_xlat7.x;
  let x_753 : f32 = u_xlat14;
  u_xlat7.x = (x_752 * x_753);
  let x_756 : f32 = u_xlat22;
  let x_757 : f32 = u_xlat22;
  u_xlat14 = (x_756 * x_757);
  let x_759 : f32 = u_xlat14;
  u_xlat14 = max(x_759, 0.002f);
  let x_762 : f32 = u_xlat14;
  u_xlat1.x = (-(x_762) + 1.0f);
  let x_766 : f32 = u_xlat21;
  let x_769 : f32 = u_xlat1.x;
  let x_771 : f32 = u_xlat14;
  u_xlat8 = ((abs(x_766) * x_769) + x_771);
  let x_774 : f32 = u_xlat2.x;
  let x_776 : f32 = u_xlat1.x;
  let x_778 : f32 = u_xlat14;
  u_xlat1.x = ((x_774 * x_776) + x_778);
  let x_781 : f32 = u_xlat21;
  let x_784 : f32 = u_xlat1.x;
  u_xlat21 = (abs(x_781) * x_784);
  let x_787 : f32 = u_xlat2.x;
  let x_788 : f32 = u_xlat8;
  let x_790 : f32 = u_xlat21;
  u_xlat21 = ((x_787 * x_788) + x_790);
  let x_792 : f32 = u_xlat21;
  u_xlat21 = (x_792 + 0.00001f);
  let x_795 : f32 = u_xlat21;
  u_xlat21 = (0.5f / x_795);
  let x_797 : f32 = u_xlat14;
  let x_798 : f32 = u_xlat14;
  u_xlat14 = (x_797 * x_798);
  let x_800 : f32 = u_xlat9;
  let x_801 : f32 = u_xlat14;
  let x_803 : f32 = u_xlat9;
  u_xlat1.x = ((x_800 * x_801) + -(x_803));
  let x_808 : f32 = u_xlat1.x;
  let x_809 : f32 = u_xlat9;
  u_xlat1.x = ((x_808 * x_809) + 1.0f);
  let x_813 : f32 = u_xlat14;
  u_xlat14 = (x_813 * 0.318309873f);
  let x_817 : f32 = u_xlat1.x;
  let x_819 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_817 * x_819) + 0.0000001f);
  let x_824 : f32 = u_xlat14;
  let x_826 : f32 = u_xlat1.x;
  u_xlat14 = (x_824 / x_826);
  let x_828 : f32 = u_xlat14;
  let x_829 : f32 = u_xlat21;
  u_xlat7.y = (x_828 * x_829);
  let x_832 : vec3<f32> = u_xlat2;
  let x_834 : vec3<f32> = u_xlat7;
  let x_836 : vec2<f32> = (vec2<f32>(x_832.x, x_832.x) * vec2<f32>(x_834.x, x_834.y));
  let x_837 : vec3<f32> = u_xlat7;
  u_xlat7 = vec3<f32>(x_836.x, x_836.y, x_837.z);
  let x_840 : f32 = u_xlat7.y;
  u_xlat14 = (x_840 * 3.141592741f);
  let x_843 : f32 = u_xlat14;
  u_xlat14 = max(x_843, 0.0f);
  let x_845 : vec4<f32> = u_xlat6;
  let x_847 : vec4<f32> = u_xlat6;
  u_xlat21 = dot(vec3<f32>(x_845.x, x_845.y, x_845.z), vec3<f32>(x_847.x, x_847.y, x_847.z));
  let x_851 : f32 = u_xlat21;
  u_xlatb21 = !((x_851 == 0.0f));
  let x_853 : bool = u_xlatb21;
  u_xlat21 = select(0.0f, 1.0f, x_853);
  let x_855 : f32 = u_xlat21;
  let x_856 : f32 = u_xlat14;
  u_xlat14 = (x_855 * x_856);
  let x_858 : vec3<f32> = u_xlat7;
  let x_860 : vec3<f32> = u_xlat5;
  u_xlat1 = (vec3<f32>(x_858.x, x_858.x, x_858.x) * x_860);
  let x_862 : vec3<f32> = u_xlat5;
  let x_863 : f32 = u_xlat14;
  u_xlat7 = (x_862 * vec3<f32>(x_863, x_863, x_863));
  let x_867 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_867) + 1.0f);
  let x_872 : f32 = u_xlat0.x;
  let x_874 : f32 = u_xlat0.x;
  u_xlat22 = (x_872 * x_874);
  let x_876 : f32 = u_xlat22;
  let x_877 : f32 = u_xlat22;
  u_xlat22 = (x_876 * x_877);
  let x_880 : f32 = u_xlat0.x;
  let x_881 : f32 = u_xlat22;
  u_xlat0.x = (x_880 * x_881);
  let x_884 : vec4<f32> = u_xlat6;
  u_xlat2 = (-(vec3<f32>(x_884.x, x_884.y, x_884.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_889 : vec3<f32> = u_xlat2;
  let x_890 : vec3<f32> = u_xlat0;
  let x_893 : vec4<f32> = u_xlat6;
  u_xlat2 = ((x_889 * vec3<f32>(x_890.x, x_890.x, x_890.x)) + vec3<f32>(x_893.x, x_893.y, x_893.z));
  let x_896 : vec3<f32> = u_xlat7;
  let x_897 : vec3<f32> = u_xlat2;
  u_xlat0 = (x_896 * x_897);
  let x_899 : vec4<f32> = u_xlat4;
  let x_901 : vec3<f32> = u_xlat1;
  let x_903 : vec3<f32> = u_xlat0;
  let x_904 : vec3<f32> = ((vec3<f32>(x_899.x, x_899.y, x_899.z) * x_901) + x_903);
  let x_905 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_904.x, x_904.y, x_904.z, x_905.w);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(4) vs_TEXCOORD4_param : vec3<f32>, @location(5) vs_TEXCOORD5_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(3) vs_TEXCOORD3_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

