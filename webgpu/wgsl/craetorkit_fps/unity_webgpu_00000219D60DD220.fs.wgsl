struct PGlobals {
  unity_OcclusionMaskSelector : vec4<f32>,
  unity_ProbeVolumeParams : vec4<f32>,
  unity_ProbeVolumeWorldToObject : mat4x4<f32>,
  unity_ProbeVolumeSizeInv : vec3<f32>,
  @size(4)
  padding : u32,
  unity_ProbeVolumeMin : vec3<f32>,
  @size(4)
  padding_1 : u32,
  x_LightColor0 : vec4<f32>,
  x_Color : vec4<f32>,
  x_GlossMapScale : f32,
  @size(12)
  padding_2 : u32,
  unity_WorldToLight : mat4x4<f32>,
}

@group(0) @binding(1) var x_MetallicGlossMap : texture_2d<f32>;

@group(0) @binding(11) var sampler_MetallicGlossMap : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_MainTex : sampler;

@group(1) @binding(0) var<uniform> x_46 : PGlobals;

@group(0) @binding(2) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(10) var sampler_BumpMap : sampler;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec3<f32>;

@group(0) @binding(6) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(7) var samplerunity_ProbeVolumeSH : sampler;

@group(0) @binding(3) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(12) var sampler_LightTexture0 : sampler;

@group(0) @binding(4) var x_LightTextureB0 : texture_2d<f32>;

@group(0) @binding(13) var sampler_LightTextureB0 : sampler;

var<private> vs_TEXCOORD1 : vec4<f32>;

@group(0) @binding(5) var unity_NHxRoughness : texture_2d<f32>;

@group(0) @binding(8) var samplerunity_NHxRoughness : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat14 : vec2<f32>;
  var u_xlat22 : f32;
  var u_xlat4 : vec4<f32>;
  var u_xlatb14 : bool;
  var u_xlat5 : vec4<f32>;
  var x_225 : vec3<f32>;
  var u_xlat21 : f32;
  var u_xlatb21 : bool;
  var u_xlat6 : vec3<f32>;
  var u_xlat7 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec4<f32> = vs_TEXCOORD0;
  let x_25 : vec4<f32> = textureSample(x_MetallicGlossMap, sampler_MetallicGlossMap, vec2<f32>(x_23.x, x_23.y));
  let x_26 : vec2<f32> = vec2<f32>(x_25.x, x_25.w);
  let x_27 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_26.x, x_26.y, x_27.z, x_27.w);
  let x_37 : vec4<f32> = vs_TEXCOORD0;
  let x_39 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_37.x, x_37.y));
  u_xlat1 = vec3<f32>(x_39.x, x_39.y, x_39.z);
  let x_42 : vec3<f32> = u_xlat1;
  let x_51 : vec4<f32> = x_46.x_Color;
  u_xlat2 = (x_42 * vec3<f32>(x_51.x, x_51.y, x_51.z));
  let x_55 : vec4<f32> = x_46.x_Color;
  let x_57 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_55.x, x_55.y, x_55.z) * x_57) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_62 : vec4<f32> = u_xlat0;
  let x_64 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_62.x, x_62.x, x_62.x) * x_64) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_73 : f32 = u_xlat0.x;
  u_xlat0.x = ((-(x_73) * 0.959999979f) + 0.959999979f);
  let x_85 : vec4<f32> = vs_TEXCOORD0;
  let x_87 : vec4<f32> = textureSample(x_BumpMap, sampler_BumpMap, vec2<f32>(x_85.x, x_85.y));
  u_xlat3 = vec3<f32>(x_87.x, x_87.y, x_87.w);
  let x_91 : f32 = u_xlat3.z;
  let x_93 : f32 = u_xlat3.x;
  u_xlat3.x = (x_91 * x_93);
  let x_98 : vec3<f32> = u_xlat3;
  u_xlat14 = ((vec2<f32>(x_98.x, x_98.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_107 : vec2<f32> = u_xlat14;
  let x_108 : vec2<f32> = u_xlat14;
  u_xlat22 = dot(x_107, x_108);
  let x_110 : f32 = u_xlat22;
  u_xlat22 = min(x_110, 1.0f);
  let x_113 : f32 = u_xlat22;
  u_xlat22 = (-(x_113) + 1.0f);
  let x_116 : f32 = u_xlat22;
  u_xlat22 = sqrt(x_116);
  let x_118 : vec2<f32> = u_xlat14;
  let x_121 : vec4<f32> = vs_TEXCOORD3;
  u_xlat3 = (vec3<f32>(x_118.y, x_118.y, x_118.y) * vec3<f32>(x_121.x, x_121.y, x_121.z));
  let x_125 : vec4<f32> = vs_TEXCOORD2;
  let x_127 : vec2<f32> = u_xlat14;
  let x_130 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_125.x, x_125.y, x_125.z) * vec3<f32>(x_127.x, x_127.x, x_127.x)) + x_130);
  let x_133 : vec4<f32> = vs_TEXCOORD4;
  let x_135 : f32 = u_xlat22;
  let x_138 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_133.x, x_133.y, x_133.z) * vec3<f32>(x_135, x_135, x_135)) + x_138);
  let x_143 : vec3<f32> = vs_TEXCOORD5;
  let x_148 : vec4<f32> = x_46.unity_WorldToLight[1i];
  u_xlat4 = (vec4<f32>(x_143.y, x_143.y, x_143.y, x_143.y) * x_148);
  let x_152 : vec4<f32> = x_46.unity_WorldToLight[0i];
  let x_153 : vec3<f32> = vs_TEXCOORD5;
  let x_156 : vec4<f32> = u_xlat4;
  u_xlat4 = ((x_152 * vec4<f32>(x_153.x, x_153.x, x_153.x, x_153.x)) + x_156);
  let x_160 : vec4<f32> = x_46.unity_WorldToLight[2i];
  let x_161 : vec3<f32> = vs_TEXCOORD5;
  let x_164 : vec4<f32> = u_xlat4;
  u_xlat4 = ((x_160 * vec4<f32>(x_161.z, x_161.z, x_161.z, x_161.z)) + x_164);
  let x_166 : vec4<f32> = u_xlat4;
  let x_169 : vec4<f32> = x_46.unity_WorldToLight[3i];
  u_xlat4 = (x_166 + x_169);
  let x_176 : f32 = x_46.unity_ProbeVolumeParams.x;
  u_xlatb14 = (x_176 == 1.0f);
  let x_178 : bool = u_xlatb14;
  if (x_178) {
    let x_183 : f32 = x_46.unity_ProbeVolumeParams.y;
    u_xlatb14 = (x_183 == 1.0f);
    let x_186 : vec3<f32> = vs_TEXCOORD5;
    let x_189 : vec4<f32> = x_46.unity_ProbeVolumeWorldToObject[1i];
    let x_191 : vec3<f32> = (vec3<f32>(x_186.y, x_186.y, x_186.y) * vec3<f32>(x_189.x, x_189.y, x_189.z));
    let x_192 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_191.x, x_191.y, x_191.z, x_192.w);
    let x_195 : vec4<f32> = x_46.unity_ProbeVolumeWorldToObject[0i];
    let x_197 : vec3<f32> = vs_TEXCOORD5;
    let x_200 : vec4<f32> = u_xlat5;
    let x_202 : vec3<f32> = ((vec3<f32>(x_195.x, x_195.y, x_195.z) * vec3<f32>(x_197.x, x_197.x, x_197.x)) + vec3<f32>(x_200.x, x_200.y, x_200.z));
    let x_203 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_202.x, x_202.y, x_202.z, x_203.w);
    let x_206 : vec4<f32> = x_46.unity_ProbeVolumeWorldToObject[2i];
    let x_208 : vec3<f32> = vs_TEXCOORD5;
    let x_211 : vec4<f32> = u_xlat5;
    let x_213 : vec3<f32> = ((vec3<f32>(x_206.x, x_206.y, x_206.z) * vec3<f32>(x_208.z, x_208.z, x_208.z)) + vec3<f32>(x_211.x, x_211.y, x_211.z));
    let x_214 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_213.x, x_213.y, x_213.z, x_214.w);
    let x_216 : vec4<f32> = u_xlat5;
    let x_219 : vec4<f32> = x_46.unity_ProbeVolumeWorldToObject[3i];
    let x_221 : vec3<f32> = (vec3<f32>(x_216.x, x_216.y, x_216.z) + vec3<f32>(x_219.x, x_219.y, x_219.z));
    let x_222 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_221.x, x_221.y, x_221.z, x_222.w);
    let x_224 : bool = u_xlatb14;
    if (x_224) {
      let x_228 : vec4<f32> = u_xlat5;
      x_225 = vec3<f32>(x_228.x, x_228.y, x_228.z);
    } else {
      let x_231 : vec3<f32> = vs_TEXCOORD5;
      x_225 = x_231;
    }
    let x_232 : vec3<f32> = x_225;
    let x_233 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_232.x, x_232.y, x_232.z, x_233.w);
    let x_235 : vec4<f32> = u_xlat5;
    let x_240 : vec3<f32> = x_46.unity_ProbeVolumeMin;
    let x_242 : vec3<f32> = (vec3<f32>(x_235.x, x_235.y, x_235.z) + -(x_240));
    let x_243 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_242.x, x_242.y, x_242.z, x_243.w);
    let x_245 : vec4<f32> = u_xlat5;
    let x_248 : vec3<f32> = x_46.unity_ProbeVolumeSizeInv;
    let x_249 : vec3<f32> = (vec3<f32>(x_245.x, x_245.y, x_245.z) * x_248);
    let x_250 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_250.x, x_249.x, x_249.y, x_249.z);
    let x_253 : f32 = u_xlat5.y;
    u_xlat14.x = ((x_253 * 0.25f) + 0.75f);
    let x_261 : f32 = x_46.unity_ProbeVolumeParams.z;
    u_xlat21 = ((x_261 * 0.5f) + 0.75f);
    let x_265 : f32 = u_xlat21;
    let x_267 : f32 = u_xlat14.x;
    u_xlat5.x = max(x_265, x_267);
    let x_278 : vec4<f32> = u_xlat5;
    let x_280 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_278.x, x_278.z, x_278.w));
    u_xlat5 = x_280;
  } else {
    u_xlat5.x = 1.0f;
    u_xlat5.y = 1.0f;
    u_xlat5.z = 1.0f;
    u_xlat5.w = 1.0f;
  }
  let x_287 : vec4<f32> = u_xlat5;
  let x_289 : vec4<f32> = x_46.unity_OcclusionMaskSelector;
  u_xlat14.x = dot(x_287, x_289);
  let x_293 : f32 = u_xlat14.x;
  u_xlat14.x = clamp(x_293, 0.0f, 1.0f);
  let x_299 : f32 = u_xlat4.z;
  u_xlatb21 = (0.0f < x_299);
  let x_301 : bool = u_xlatb21;
  u_xlat21 = select(0.0f, 1.0f, x_301);
  let x_303 : vec4<f32> = u_xlat4;
  let x_305 : vec4<f32> = u_xlat4;
  let x_307 : vec2<f32> = (vec2<f32>(x_303.x, x_303.y) / vec2<f32>(x_305.w, x_305.w));
  let x_308 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_307.x, x_307.y, x_308.z, x_308.w);
  let x_310 : vec4<f32> = u_xlat5;
  let x_313 : vec2<f32> = (vec2<f32>(x_310.x, x_310.y) + vec2<f32>(0.5f, 0.5f));
  let x_314 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_313.x, x_313.y, x_314.z, x_314.w);
  let x_321 : vec4<f32> = u_xlat5;
  let x_323 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, vec2<f32>(x_321.x, x_321.y));
  u_xlat22 = x_323.w;
  let x_325 : f32 = u_xlat21;
  let x_326 : f32 = u_xlat22;
  u_xlat21 = (x_325 * x_326);
  let x_328 : vec4<f32> = u_xlat4;
  let x_330 : vec4<f32> = u_xlat4;
  u_xlat22 = dot(vec3<f32>(x_328.x, x_328.y, x_328.z), vec3<f32>(x_330.x, x_330.y, x_330.z));
  let x_338 : f32 = u_xlat22;
  let x_340 : vec4<f32> = textureSample(x_LightTextureB0, sampler_LightTextureB0, vec2<f32>(x_338, x_338));
  u_xlat22 = x_340.x;
  let x_342 : f32 = u_xlat21;
  let x_343 : f32 = u_xlat22;
  u_xlat21 = (x_342 * x_343);
  let x_346 : f32 = u_xlat14.x;
  let x_347 : f32 = u_xlat21;
  u_xlat14.x = (x_346 * x_347);
  let x_350 : vec2<f32> = u_xlat14;
  let x_354 : vec4<f32> = x_46.x_LightColor0;
  let x_356 : vec3<f32> = (vec3<f32>(x_350.x, x_350.x, x_350.x) * vec3<f32>(x_354.x, x_354.y, x_354.z));
  let x_357 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_356.x, x_356.y, x_356.z, x_357.w);
  let x_360 : vec4<f32> = vs_TEXCOORD1;
  let x_363 : vec3<f32> = u_xlat3;
  u_xlat14.x = dot(-(vec3<f32>(x_360.x, x_360.y, x_360.z)), x_363);
  let x_367 : f32 = u_xlat14.x;
  let x_369 : f32 = u_xlat14.x;
  u_xlat14.x = (x_367 + x_369);
  let x_372 : vec3<f32> = u_xlat3;
  let x_373 : vec2<f32> = u_xlat14;
  let x_377 : vec4<f32> = vs_TEXCOORD1;
  let x_380 : vec3<f32> = ((x_372 * -(vec3<f32>(x_373.x, x_373.x, x_373.x))) + -(vec3<f32>(x_377.x, x_377.y, x_377.z)));
  let x_381 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_380.x, x_380.y, x_380.z, x_381.w);
  let x_386 : f32 = vs_TEXCOORD2.w;
  u_xlat6.x = x_386;
  let x_389 : f32 = vs_TEXCOORD3.w;
  u_xlat6.y = x_389;
  let x_392 : f32 = vs_TEXCOORD4.w;
  u_xlat6.z = x_392;
  let x_394 : vec3<f32> = u_xlat3;
  let x_395 : vec3<f32> = u_xlat6;
  u_xlat14.x = dot(x_394, x_395);
  let x_399 : f32 = u_xlat14.x;
  u_xlat14.x = clamp(x_399, 0.0f, 1.0f);
  let x_402 : vec4<f32> = u_xlat5;
  let x_404 : vec3<f32> = u_xlat6;
  u_xlat21 = dot(vec3<f32>(x_402.x, x_402.y, x_402.z), x_404);
  let x_406 : f32 = u_xlat21;
  let x_407 : f32 = u_xlat21;
  u_xlat21 = (x_406 * x_407);
  let x_409 : f32 = u_xlat21;
  let x_410 : f32 = u_xlat21;
  u_xlat3.x = (x_409 * x_410);
  let x_414 : f32 = u_xlat0.y;
  let x_418 : f32 = x_46.x_GlossMapScale;
  u_xlat3.y = ((-(x_414) * x_418) + 1.0f);
  let x_428 : vec3<f32> = u_xlat3;
  let x_430 : vec4<f32> = textureSample(unity_NHxRoughness, samplerunity_NHxRoughness, vec2<f32>(x_428.x, x_428.y));
  u_xlat7 = x_430.x;
  let x_432 : f32 = u_xlat7;
  u_xlat7 = (x_432 * 16.0f);
  let x_435 : vec3<f32> = u_xlat1;
  let x_436 : f32 = u_xlat7;
  u_xlat1 = (x_435 * vec3<f32>(x_436, x_436, x_436));
  let x_439 : vec3<f32> = u_xlat2;
  let x_440 : vec4<f32> = u_xlat0;
  let x_443 : vec3<f32> = u_xlat1;
  let x_444 : vec3<f32> = ((x_439 * vec3<f32>(x_440.x, x_440.x, x_440.x)) + x_443);
  let x_445 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_444.x, x_444.y, x_445.z, x_444.z);
  let x_447 : vec2<f32> = u_xlat14;
  let x_449 : vec4<f32> = u_xlat4;
  u_xlat1 = (vec3<f32>(x_447.x, x_447.x, x_447.x) * vec3<f32>(x_449.x, x_449.y, x_449.z));
  let x_452 : vec4<f32> = u_xlat0;
  let x_454 : vec3<f32> = u_xlat1;
  let x_455 : vec3<f32> = (vec3<f32>(x_452.x, x_452.y, x_452.w) * x_454);
  let x_456 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_455.x, x_455.y, x_455.z, x_456.w);
  let x_459 : f32 = vs_TEXCOORD1.w;
  u_xlat21 = x_459;
  let x_460 : f32 = u_xlat21;
  u_xlat21 = clamp(x_460, 0.0f, 1.0f);
  let x_464 : vec4<f32> = u_xlat0;
  let x_466 : f32 = u_xlat21;
  let x_468 : vec3<f32> = (vec3<f32>(x_464.x, x_464.y, x_464.z) * vec3<f32>(x_466, x_466, x_466));
  let x_469 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_468.x, x_468.y, x_468.z, x_469.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(5) vs_TEXCOORD5_param : vec3<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

