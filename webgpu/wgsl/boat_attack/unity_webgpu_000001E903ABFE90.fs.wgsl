struct PGlobals {
  x_Time : vec4<f32>,
  x_ProjectionParams : vec4<f32>,
  x_WorldSpaceLightPos0 : vec4<f32>,
  unity_SHAr : vec4<f32>,
  unity_SHAg : vec4<f32>,
  unity_SHAb : vec4<f32>,
  unity_FogColor : vec4<f32>,
  unity_FogParams : vec4<f32>,
  x_LightColor0 : vec4<f32>,
  x_FaceUVSpeedX : f32,
  x_FaceUVSpeedY : f32,
  @size(8)
  padding : u32,
  x_FaceColor : vec4<f32>,
  x_OutlineSoftness : f32,
  x_OutlineUVSpeedX : f32,
  x_OutlineUVSpeedY : f32,
  @size(4)
  padding_1 : u32,
  x_OutlineColor : vec4<f32>,
  x_OutlineWidth : f32,
  x_ScaleRatioA : f32,
}

@group(1) @binding(0) var<uniform> x_12 : PGlobals;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(2) var x_OutlineTex : texture_2d<f32>;

@group(0) @binding(4) var sampler_OutlineTex : sampler;

var<private> vs_COLOR0 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(0) @binding(1) var x_FaceTex : texture_2d<f32>;

@group(0) @binding(3) var sampler_FaceTex : sampler;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(5) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD5 : vec2<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> vs_TEXCOORD8 : f32;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat6 : f32;
  var u_xlat10 : f32;
  var u_xlat5 : f32;
  var u_xlat12 : f32;
  var u_xlat3 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_17 : f32 = x_12.x_OutlineUVSpeedX;
  let x_20 : f32 = x_12.x_OutlineUVSpeedY;
  let x_26 : vec4<f32> = x_12.x_Time;
  let x_31 : vec2<f32> = vs_TEXCOORD1;
  let x_32 : vec2<f32> = ((vec2<f32>(x_17, x_20) * vec2<f32>(x_26.y, x_26.y)) + x_31);
  let x_33 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_32.x, x_32.y, x_33.z, x_33.w);
  let x_45 : vec4<f32> = u_xlat0;
  let x_47 : vec4<f32> = textureSample(x_OutlineTex, sampler_OutlineTex, vec2<f32>(x_45.x, x_45.y));
  u_xlat0 = x_47;
  let x_49 : vec4<f32> = u_xlat0;
  let x_53 : vec4<f32> = x_12.x_OutlineColor;
  let x_55 : vec3<f32> = (vec3<f32>(x_49.x, x_49.y, x_49.z) * vec3<f32>(x_53.x, x_53.y, x_53.z));
  let x_56 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_55.x, x_55.y, x_55.z, x_56.w);
  let x_65 : f32 = vs_COLOR0.w;
  let x_67 : f32 = x_12.x_OutlineColor.w;
  u_xlat1.x = (x_65 * x_67);
  let x_73 : f32 = u_xlat0.w;
  let x_75 : f32 = u_xlat1.x;
  u_xlat1.w = (x_73 * x_75);
  let x_78 : vec4<f32> = u_xlat0;
  let x_80 : vec4<f32> = u_xlat1;
  let x_82 : vec3<f32> = (vec3<f32>(x_78.x, x_78.y, x_78.z) * vec3<f32>(x_80.w, x_80.w, x_80.w));
  let x_83 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_82.x, x_82.y, x_82.z, x_83.w);
  let x_87 : f32 = x_12.x_FaceUVSpeedX;
  let x_90 : f32 = x_12.x_FaceUVSpeedY;
  let x_93 : vec4<f32> = x_12.x_Time;
  let x_97 : vec4<f32> = vs_TEXCOORD0;
  let x_99 : vec2<f32> = ((vec2<f32>(x_87, x_90) * vec2<f32>(x_93.y, x_93.y)) + vec2<f32>(x_97.z, x_97.w));
  let x_100 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_99.x, x_99.y, x_100.z, x_100.w);
  let x_107 : vec4<f32> = u_xlat0;
  let x_109 : vec4<f32> = textureSample(x_FaceTex, sampler_FaceTex, vec2<f32>(x_107.x, x_107.y));
  u_xlat0 = x_109;
  let x_111 : vec4<f32> = vs_COLOR0;
  let x_114 : vec4<f32> = x_12.x_FaceColor;
  u_xlat2 = (x_111 * x_114);
  let x_116 : vec4<f32> = u_xlat0;
  let x_117 : vec4<f32> = u_xlat2;
  u_xlat0 = (x_116 * x_117);
  let x_119 : vec4<f32> = u_xlat0;
  let x_121 : vec4<f32> = u_xlat0;
  let x_123 : vec3<f32> = (vec3<f32>(x_119.w, x_119.w, x_119.w) * vec3<f32>(x_121.x, x_121.y, x_121.z));
  let x_124 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_123.x, x_123.y, x_123.z, x_124.w);
  let x_126 : vec4<f32> = u_xlat0;
  let x_128 : vec4<f32> = u_xlat1;
  u_xlat1 = (-(x_126) + x_128);
  let x_135 : vec4<f32> = vs_TEXCOORD0;
  let x_137 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_135.x, x_135.y));
  u_xlat2.x = x_137.w;
  let x_141 : f32 = u_xlat2.x;
  u_xlat2.x = (-(x_141) + 0.5f);
  let x_147 : f32 = u_xlat2.x;
  let x_150 : f32 = vs_TEXCOORD5.x;
  u_xlat2.x = (x_147 + -(x_150));
  let x_155 : f32 = u_xlat2.x;
  let x_158 : f32 = vs_TEXCOORD5.y;
  u_xlat2.x = ((x_155 * x_158) + 0.5f);
  let x_165 : f32 = x_12.x_OutlineWidth;
  let x_168 : f32 = x_12.x_ScaleRatioA;
  u_xlat6 = (x_165 * x_168);
  let x_170 : f32 = u_xlat6;
  let x_172 : f32 = vs_TEXCOORD5.y;
  u_xlat6 = (x_170 * x_172);
  let x_175 : f32 = u_xlat6;
  let x_178 : f32 = u_xlat2.x;
  u_xlat10 = ((x_175 * 0.5f) + x_178);
  let x_180 : f32 = u_xlat10;
  u_xlat10 = clamp(x_180, 0.0f, 1.0f);
  let x_184 : f32 = u_xlat6;
  let x_188 : f32 = u_xlat2.x;
  u_xlat2.x = ((-(x_184) * 0.5f) + x_188);
  let x_191 : f32 = u_xlat6;
  u_xlat6 = min(x_191, 1.0f);
  let x_193 : f32 = u_xlat6;
  u_xlat6 = sqrt(x_193);
  let x_195 : f32 = u_xlat6;
  let x_196 : f32 = u_xlat10;
  u_xlat6 = (x_195 * x_196);
  let x_198 : f32 = u_xlat6;
  let x_200 : vec4<f32> = u_xlat1;
  let x_202 : vec4<f32> = u_xlat0;
  u_xlat0 = ((vec4<f32>(x_198, x_198, x_198, x_198) * x_200) + x_202);
  let x_206 : f32 = x_12.x_OutlineSoftness;
  let x_208 : f32 = x_12.x_ScaleRatioA;
  u_xlat1.x = (x_206 * x_208);
  let x_213 : f32 = u_xlat1.x;
  let x_215 : f32 = vs_TEXCOORD5.y;
  u_xlat5 = (x_213 * x_215);
  let x_218 : f32 = u_xlat1.x;
  let x_220 : f32 = vs_TEXCOORD5.y;
  u_xlat1.x = ((x_218 * x_220) + 1.0f);
  let x_224 : f32 = u_xlat5;
  let x_227 : f32 = u_xlat2.x;
  u_xlat5 = ((x_224 * 0.5f) + x_227);
  let x_229 : f32 = u_xlat5;
  let x_231 : f32 = u_xlat1.x;
  u_xlat1.x = (x_229 / x_231);
  let x_235 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_235, 0.0f, 1.0f);
  let x_239 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_239) + 1.0f);
  let x_243 : vec4<f32> = u_xlat0;
  let x_244 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_243 * vec4<f32>(x_244.x, x_244.x, x_244.x, x_244.x));
  let x_248 : f32 = u_xlat0.w;
  u_xlat1.x = max(x_248, 0.0001f);
  let x_252 : vec4<f32> = u_xlat0;
  let x_254 : vec4<f32> = u_xlat1;
  let x_256 : vec3<f32> = (vec3<f32>(x_252.x, x_252.y, x_252.z) / vec3<f32>(x_254.x, x_254.x, x_254.x));
  let x_257 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_256.x, x_256.y, x_256.z, x_257.w);
  let x_262 : f32 = u_xlat0.w;
  SV_Target0.w = x_262;
  let x_265 : vec4<f32> = u_xlat0;
  let x_269 : vec4<f32> = x_12.x_LightColor0;
  let x_271 : vec3<f32> = (vec3<f32>(x_265.x, x_265.y, x_265.z) * vec3<f32>(x_269.x, x_269.y, x_269.z));
  let x_272 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_271.x, x_271.y, x_271.z, x_272.w);
  let x_277 : f32 = vs_TEXCOORD2.z;
  u_xlat2.x = x_277;
  let x_281 : f32 = vs_TEXCOORD3.z;
  u_xlat2.y = x_281;
  let x_285 : f32 = vs_TEXCOORD4.z;
  u_xlat2.z = x_285;
  let x_288 : vec4<f32> = u_xlat2;
  let x_290 : vec4<f32> = u_xlat2;
  u_xlat12 = dot(vec3<f32>(x_288.x, x_288.y, x_288.z), vec3<f32>(x_290.x, x_290.y, x_290.z));
  let x_293 : f32 = u_xlat12;
  u_xlat12 = inverseSqrt(x_293);
  let x_295 : f32 = u_xlat12;
  let x_297 : vec4<f32> = u_xlat2;
  let x_299 : vec3<f32> = (vec3<f32>(x_295, x_295, x_295) * vec3<f32>(x_297.x, x_297.y, x_297.z));
  let x_300 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_299.x, x_299.y, x_299.z, x_300.w);
  u_xlat2.w = 1.0f;
  let x_307 : vec4<f32> = x_12.unity_SHAr;
  let x_308 : vec4<f32> = u_xlat2;
  u_xlat3.x = dot(x_307, x_308);
  let x_313 : vec4<f32> = x_12.unity_SHAg;
  let x_314 : vec4<f32> = u_xlat2;
  u_xlat3.y = dot(x_313, x_314);
  let x_319 : vec4<f32> = x_12.unity_SHAb;
  let x_320 : vec4<f32> = u_xlat2;
  u_xlat3.z = dot(x_319, x_320);
  let x_323 : vec4<f32> = u_xlat2;
  let x_327 : vec4<f32> = x_12.x_WorldSpaceLightPos0;
  u_xlat12 = dot(vec3<f32>(x_323.x, x_323.y, x_323.z), vec3<f32>(x_327.x, x_327.y, x_327.z));
  let x_330 : f32 = u_xlat12;
  u_xlat12 = max(x_330, 0.0f);
  let x_332 : vec3<f32> = u_xlat3;
  let x_335 : vec3<f32> = vs_TEXCOORD7;
  let x_336 : vec3<f32> = (x_332 + x_335);
  let x_337 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_336.x, x_336.y, x_336.z, x_337.w);
  let x_339 : vec4<f32> = u_xlat2;
  let x_342 : vec3<f32> = max(vec3<f32>(x_339.x, x_339.y, x_339.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_343 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_342.x, x_342.y, x_342.z, x_343.w);
  let x_345 : vec4<f32> = u_xlat0;
  let x_347 : vec4<f32> = u_xlat2;
  let x_349 : vec3<f32> = (vec3<f32>(x_345.x, x_345.y, x_345.z) * vec3<f32>(x_347.x, x_347.y, x_347.z));
  let x_350 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_349.x, x_349.y, x_349.z, x_350.w);
  let x_352 : vec4<f32> = u_xlat1;
  let x_354 : f32 = u_xlat12;
  let x_357 : vec4<f32> = u_xlat0;
  let x_359 : vec3<f32> = ((vec3<f32>(x_352.x, x_352.y, x_352.z) * vec3<f32>(x_354, x_354, x_354)) + vec3<f32>(x_357.x, x_357.y, x_357.z));
  let x_360 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_359.x, x_359.y, x_359.z, x_360.w);
  let x_362 : vec4<f32> = u_xlat0;
  let x_366 : vec4<f32> = x_12.unity_FogColor;
  let x_369 : vec3<f32> = (vec3<f32>(x_362.x, x_362.y, x_362.z) + -(vec3<f32>(x_366.x, x_366.y, x_366.z)));
  let x_370 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_369.x, x_369.y, x_369.z, x_370.w);
  let x_373 : f32 = vs_TEXCOORD8;
  let x_376 : f32 = x_12.x_ProjectionParams.y;
  u_xlat12 = (x_373 / x_376);
  let x_378 : f32 = u_xlat12;
  u_xlat12 = (-(x_378) + 1.0f);
  let x_381 : f32 = u_xlat12;
  let x_383 : f32 = x_12.x_ProjectionParams.z;
  u_xlat12 = (x_381 * x_383);
  let x_385 : f32 = u_xlat12;
  u_xlat12 = max(x_385, 0.0f);
  let x_387 : f32 = u_xlat12;
  let x_390 : f32 = x_12.unity_FogParams.x;
  u_xlat12 = (x_387 * x_390);
  let x_392 : f32 = u_xlat12;
  let x_393 : f32 = u_xlat12;
  u_xlat12 = (x_392 * -(x_393));
  let x_396 : f32 = u_xlat12;
  u_xlat12 = exp2(x_396);
  let x_398 : f32 = u_xlat12;
  let x_400 : vec4<f32> = u_xlat0;
  let x_404 : vec4<f32> = x_12.unity_FogColor;
  let x_406 : vec3<f32> = ((vec3<f32>(x_398, x_398, x_398) * vec3<f32>(x_400.x, x_400.y, x_400.z)) + vec3<f32>(x_404.x, x_404.y, x_404.z));
  let x_407 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_406.x, x_406.y, x_406.z, x_407.w);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(1) vs_TEXCOORD1_param : vec2<f32>, @location(6) vs_COLOR0_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec4<f32>, @location(2) vs_TEXCOORD5_param : vec2<f32>, @location(3) vs_TEXCOORD2_param : vec4<f32>, @location(4) vs_TEXCOORD3_param : vec4<f32>, @location(5) vs_TEXCOORD4_param : vec4<f32>, @location(8) vs_TEXCOORD7_param : vec3<f32>, @location(7) vs_TEXCOORD8_param : f32, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_COLOR0 = vs_COLOR0_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD8 = vs_TEXCOORD8_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

