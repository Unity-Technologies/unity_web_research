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

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(2) var x_MetallicGlossMap : texture_2d<f32>;

@group(0) @binding(12) var sampler_MetallicGlossMap : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> u_xlat1 : vec3<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_MainTex : sampler;

var<private> u_xlat2 : vec3<f32>;

@group(0) @binding(0) var<uniform> x_46 : PGlobals;

var<private> u_xlat3 : vec3<f32>;

@group(0) @binding(3) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(11) var sampler_BumpMap : sampler;

var<private> u_xlat14 : vec2<f32>;

var<private> u_xlat22 : f32;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec3<f32>;

var<private> u_xlatb14 : bool;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat21 : f32;

@group(0) @binding(7) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(8) var samplerunity_ProbeVolumeSH : sampler;

var<private> u_xlatb21 : bool;

@group(0) @binding(4) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(13) var sampler_LightTexture0 : sampler;

@group(0) @binding(5) var x_LightTextureB0 : texture_2d<f32>;

@group(0) @binding(14) var sampler_LightTextureB0 : sampler;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlat7 : f32;

@group(0) @binding(6) var unity_NHxRoughness : texture_2d<f32>;

@group(0) @binding(9) var samplerunity_NHxRoughness : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_226 : vec3<f32>;
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
      let x_229 : vec4<f32> = u_xlat5;
      x_226 = vec3<f32>(x_229.x, x_229.y, x_229.z);
    } else {
      let x_232 : vec3<f32> = vs_TEXCOORD5;
      x_226 = x_232;
    }
    let x_233 : vec3<f32> = x_226;
    let x_234 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_233.x, x_233.y, x_233.z, x_234.w);
    let x_236 : vec4<f32> = u_xlat5;
    let x_241 : vec3<f32> = x_46.unity_ProbeVolumeMin;
    let x_243 : vec3<f32> = (vec3<f32>(x_236.x, x_236.y, x_236.z) + -(x_241));
    let x_244 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_243.x, x_243.y, x_243.z, x_244.w);
    let x_246 : vec4<f32> = u_xlat5;
    let x_249 : vec3<f32> = x_46.unity_ProbeVolumeSizeInv;
    let x_250 : vec3<f32> = (vec3<f32>(x_246.x, x_246.y, x_246.z) * x_249);
    let x_251 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_251.x, x_250.x, x_250.y, x_250.z);
    let x_254 : f32 = u_xlat5.y;
    u_xlat14.x = ((x_254 * 0.25f) + 0.75f);
    let x_262 : f32 = x_46.unity_ProbeVolumeParams.z;
    u_xlat21 = ((x_262 * 0.5f) + 0.75f);
    let x_266 : f32 = u_xlat21;
    let x_268 : f32 = u_xlat14.x;
    u_xlat5.x = max(x_266, x_268);
    let x_279 : vec4<f32> = u_xlat5;
    let x_281 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_279.x, x_279.z, x_279.w));
    u_xlat5 = x_281;
  } else {
    u_xlat5.x = 1.0f;
    u_xlat5.y = 1.0f;
    u_xlat5.z = 1.0f;
    u_xlat5.w = 1.0f;
  }
  let x_288 : vec4<f32> = u_xlat5;
  let x_290 : vec4<f32> = x_46.unity_OcclusionMaskSelector;
  u_xlat14.x = dot(x_288, x_290);
  let x_294 : f32 = u_xlat14.x;
  u_xlat14.x = clamp(x_294, 0.0f, 1.0f);
  let x_300 : f32 = u_xlat4.z;
  u_xlatb21 = (0.0f < x_300);
  let x_302 : bool = u_xlatb21;
  u_xlat21 = select(0.0f, 1.0f, x_302);
  let x_304 : vec4<f32> = u_xlat4;
  let x_306 : vec4<f32> = u_xlat4;
  let x_308 : vec2<f32> = (vec2<f32>(x_304.x, x_304.y) / vec2<f32>(x_306.w, x_306.w));
  let x_309 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_308.x, x_308.y, x_309.z, x_309.w);
  let x_311 : vec4<f32> = u_xlat5;
  let x_314 : vec2<f32> = (vec2<f32>(x_311.x, x_311.y) + vec2<f32>(0.5f, 0.5f));
  let x_315 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_314.x, x_314.y, x_315.z, x_315.w);
  let x_322 : vec4<f32> = u_xlat5;
  let x_324 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, vec2<f32>(x_322.x, x_322.y));
  u_xlat22 = x_324.w;
  let x_326 : f32 = u_xlat21;
  let x_327 : f32 = u_xlat22;
  u_xlat21 = (x_326 * x_327);
  let x_329 : vec4<f32> = u_xlat4;
  let x_331 : vec4<f32> = u_xlat4;
  u_xlat22 = dot(vec3<f32>(x_329.x, x_329.y, x_329.z), vec3<f32>(x_331.x, x_331.y, x_331.z));
  let x_339 : f32 = u_xlat22;
  let x_341 : vec4<f32> = textureSample(x_LightTextureB0, sampler_LightTextureB0, vec2<f32>(x_339, x_339));
  u_xlat22 = x_341.x;
  let x_343 : f32 = u_xlat21;
  let x_344 : f32 = u_xlat22;
  u_xlat21 = (x_343 * x_344);
  let x_347 : f32 = u_xlat14.x;
  let x_348 : f32 = u_xlat21;
  u_xlat14.x = (x_347 * x_348);
  let x_351 : vec2<f32> = u_xlat14;
  let x_355 : vec4<f32> = x_46.x_LightColor0;
  let x_357 : vec3<f32> = (vec3<f32>(x_351.x, x_351.x, x_351.x) * vec3<f32>(x_355.x, x_355.y, x_355.z));
  let x_358 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_357.x, x_357.y, x_357.z, x_358.w);
  let x_361 : vec4<f32> = vs_TEXCOORD1;
  let x_364 : vec3<f32> = u_xlat3;
  u_xlat14.x = dot(-(vec3<f32>(x_361.x, x_361.y, x_361.z)), x_364);
  let x_368 : f32 = u_xlat14.x;
  let x_370 : f32 = u_xlat14.x;
  u_xlat14.x = (x_368 + x_370);
  let x_373 : vec3<f32> = u_xlat3;
  let x_374 : vec2<f32> = u_xlat14;
  let x_378 : vec4<f32> = vs_TEXCOORD1;
  let x_381 : vec3<f32> = ((x_373 * -(vec3<f32>(x_374.x, x_374.x, x_374.x))) + -(vec3<f32>(x_378.x, x_378.y, x_378.z)));
  let x_382 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_381.x, x_381.y, x_381.z, x_382.w);
  let x_387 : f32 = vs_TEXCOORD2.w;
  u_xlat6.x = x_387;
  let x_390 : f32 = vs_TEXCOORD3.w;
  u_xlat6.y = x_390;
  let x_393 : f32 = vs_TEXCOORD4.w;
  u_xlat6.z = x_393;
  let x_395 : vec3<f32> = u_xlat3;
  let x_396 : vec3<f32> = u_xlat6;
  u_xlat14.x = dot(x_395, x_396);
  let x_400 : f32 = u_xlat14.x;
  u_xlat14.x = clamp(x_400, 0.0f, 1.0f);
  let x_403 : vec4<f32> = u_xlat5;
  let x_405 : vec3<f32> = u_xlat6;
  u_xlat21 = dot(vec3<f32>(x_403.x, x_403.y, x_403.z), x_405);
  let x_407 : f32 = u_xlat21;
  let x_408 : f32 = u_xlat21;
  u_xlat21 = (x_407 * x_408);
  let x_410 : f32 = u_xlat21;
  let x_411 : f32 = u_xlat21;
  u_xlat3.x = (x_410 * x_411);
  let x_415 : f32 = u_xlat0.y;
  let x_419 : f32 = x_46.x_GlossMapScale;
  u_xlat3.y = ((-(x_415) * x_419) + 1.0f);
  let x_429 : vec3<f32> = u_xlat3;
  let x_431 : vec4<f32> = textureSample(unity_NHxRoughness, samplerunity_NHxRoughness, vec2<f32>(x_429.x, x_429.y));
  u_xlat7 = x_431.x;
  let x_433 : f32 = u_xlat7;
  u_xlat7 = (x_433 * 16.0f);
  let x_436 : vec3<f32> = u_xlat1;
  let x_437 : f32 = u_xlat7;
  u_xlat1 = (x_436 * vec3<f32>(x_437, x_437, x_437));
  let x_440 : vec3<f32> = u_xlat2;
  let x_441 : vec4<f32> = u_xlat0;
  let x_444 : vec3<f32> = u_xlat1;
  let x_445 : vec3<f32> = ((x_440 * vec3<f32>(x_441.x, x_441.x, x_441.x)) + x_444);
  let x_446 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_445.x, x_445.y, x_446.z, x_445.z);
  let x_448 : vec2<f32> = u_xlat14;
  let x_450 : vec4<f32> = u_xlat4;
  u_xlat1 = (vec3<f32>(x_448.x, x_448.x, x_448.x) * vec3<f32>(x_450.x, x_450.y, x_450.z));
  let x_455 : vec4<f32> = u_xlat0;
  let x_457 : vec3<f32> = u_xlat1;
  let x_458 : vec3<f32> = (vec3<f32>(x_455.x, x_455.y, x_455.w) * x_457);
  let x_459 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_458.x, x_458.y, x_458.z, x_459.w);
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

