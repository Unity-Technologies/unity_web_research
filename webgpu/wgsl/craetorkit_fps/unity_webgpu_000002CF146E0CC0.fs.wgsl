struct PGlobals {
  x_MainTex_TexelSize : vec4<f32>,
}

@group(1) @binding(0) var<uniform> x_12 : PGlobals;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(1) var sampler_MainTex : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat6 : vec2<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat4 : f32;
  var u_xlatb1 : bool;
  var x_76 : vec2<f32>;
  var u_xlat7 : vec2<f32>;
  var u_xlat9 : f32;
  var u_xlatb6 : bool;
  var x_128 : vec2<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlatb9 : bool;
  var x_170 : vec2<f32>;
  var u_xlat8 : f32;
  var x_218 : vec2<f32>;
  var x_238 : vec2<f32>;
  var x_292 : vec2<f32>;
  var x_314 : vec2<f32>;
  var x_334 : vec2<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_17 : vec4<f32> = x_12.x_MainTex_TexelSize;
  let x_26 : vec2<f32> = vs_TEXCOORD0;
  u_xlat0 = ((vec4<f32>(x_17.y, x_17.y, x_17.x, x_17.y) * vec4<f32>(0.0f, 1.0f, 1.0f, 1.0f)) + vec4<f32>(x_26.x, x_26.y, x_26.x, x_26.y));
  let x_39 : vec4<f32> = u_xlat0;
  let x_41 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_39.x, x_39.y));
  let x_42 : vec2<f32> = vec2<f32>(x_41.x, x_41.y);
  let x_43 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_42.x, x_42.y, x_43.z, x_43.w);
  let x_50 : vec4<f32> = u_xlat0;
  let x_52 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_50.z, x_50.w));
  u_xlat6 = vec2<f32>(x_52.x, x_52.y);
  let x_55 : vec4<f32> = u_xlat0;
  let x_57 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec2<f32>(x_55.x, x_55.y), vec2<f32>(x_57.x, x_57.y));
  let x_65 : vec2<f32> = u_xlat6;
  let x_66 : vec2<f32> = u_xlat6;
  u_xlat4 = dot(x_65, x_66);
  let x_72 : f32 = u_xlat1.x;
  let x_73 : f32 = u_xlat4;
  u_xlatb1 = (x_72 < x_73);
  let x_75 : bool = u_xlatb1;
  if (x_75) {
    let x_79 : vec2<f32> = u_xlat6;
    x_76 = x_79;
  } else {
    let x_81 : vec4<f32> = u_xlat0;
    x_76 = vec2<f32>(x_81.x, x_81.y);
  }
  let x_83 : vec2<f32> = x_76;
  let x_84 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_83.x, x_83.y, x_84.z, x_84.w);
  let x_86 : vec4<f32> = u_xlat0;
  let x_88 : vec4<f32> = u_xlat0;
  u_xlat6.x = dot(vec2<f32>(x_86.x, x_86.y), vec2<f32>(x_88.x, x_88.y));
  let x_93 : vec4<f32> = x_12.x_MainTex_TexelSize;
  let x_98 : vec2<f32> = vs_TEXCOORD0;
  u_xlat1 = ((vec4<f32>(x_93.x, x_93.y, x_93.x, x_93.y) * vec4<f32>(1.0f, 0.0f, -1.0f, 1.0f)) + vec4<f32>(x_98.x, x_98.y, x_98.x, x_98.y));
  let x_105 : vec4<f32> = u_xlat1;
  let x_107 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_105.z, x_105.w));
  u_xlat7 = vec2<f32>(x_107.x, x_107.y);
  let x_112 : vec4<f32> = u_xlat1;
  let x_114 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_112.x, x_112.y));
  let x_115 : vec2<f32> = vec2<f32>(x_114.x, x_114.y);
  let x_116 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_115.x, x_115.y, x_116.z, x_116.w);
  let x_119 : vec2<f32> = u_xlat7;
  let x_120 : vec2<f32> = u_xlat7;
  u_xlat9 = dot(x_119, x_120);
  let x_123 : f32 = u_xlat9;
  let x_125 : f32 = u_xlat6.x;
  u_xlatb6 = (x_123 < x_125);
  let x_127 : bool = u_xlatb6;
  if (x_127) {
    let x_131 : vec4<f32> = u_xlat0;
    x_128 = vec2<f32>(x_131.x, x_131.y);
  } else {
    let x_134 : vec2<f32> = u_xlat7;
    x_128 = x_134;
  }
  let x_135 : vec2<f32> = x_128;
  let x_136 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_135.x, x_135.y, x_136.z, x_136.w);
  let x_138 : vec4<f32> = u_xlat0;
  let x_140 : vec4<f32> = u_xlat0;
  u_xlat6.x = dot(vec2<f32>(x_138.x, x_138.y), vec2<f32>(x_140.x, x_140.y));
  let x_144 : vec4<f32> = u_xlat1;
  let x_146 : vec4<f32> = u_xlat1;
  u_xlat9 = dot(vec2<f32>(x_144.x, x_144.y), vec2<f32>(x_146.x, x_146.y));
  let x_152 : vec2<f32> = vs_TEXCOORD0;
  let x_153 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_152);
  u_xlat7 = vec2<f32>(x_153.x, x_153.y);
  let x_155 : vec2<f32> = u_xlat7;
  u_xlat7 = (x_155 * vec2<f32>(1.00999999f, 1.00999999f));
  let x_160 : vec2<f32> = u_xlat7;
  let x_161 : vec2<f32> = u_xlat7;
  u_xlat2.x = dot(x_160, x_161);
  let x_166 : f32 = u_xlat2.x;
  let x_167 : f32 = u_xlat9;
  u_xlatb9 = (x_166 < x_167);
  let x_169 : bool = u_xlatb9;
  if (x_169) {
    let x_173 : vec4<f32> = u_xlat1;
    x_170 = vec2<f32>(x_173.x, x_173.y);
  } else {
    let x_176 : vec2<f32> = u_xlat7;
    x_170 = x_176;
  }
  let x_177 : vec2<f32> = x_170;
  let x_178 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_177.x, x_177.y, x_178.z, x_178.w);
  let x_180 : vec4<f32> = u_xlat1;
  let x_182 : vec4<f32> = u_xlat1;
  u_xlat9 = dot(vec2<f32>(x_180.x, x_180.y), vec2<f32>(x_182.x, x_182.y));
  let x_186 : vec4<f32> = x_12.x_MainTex_TexelSize;
  let x_191 : vec2<f32> = vs_TEXCOORD0;
  u_xlat2 = ((-(vec4<f32>(x_186.x, x_186.y, x_186.x, x_186.y)) * vec4<f32>(-1.0f, 1.0f, 1.0f, 0.0f)) + vec4<f32>(x_191.x, x_191.y, x_191.x, x_191.y));
  let x_197 : vec4<f32> = u_xlat2;
  let x_199 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_197.z, x_197.w));
  u_xlat7 = vec2<f32>(x_199.x, x_199.y);
  let x_204 : vec4<f32> = u_xlat2;
  let x_206 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_204.x, x_204.y));
  let x_207 : vec2<f32> = vec2<f32>(x_206.x, x_206.y);
  let x_208 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_207.x, x_207.y, x_208.z, x_208.w);
  let x_211 : vec2<f32> = u_xlat7;
  let x_212 : vec2<f32> = u_xlat7;
  u_xlat8 = dot(x_211, x_212);
  let x_214 : f32 = u_xlat8;
  let x_215 : f32 = u_xlat9;
  u_xlatb9 = (x_214 < x_215);
  let x_217 : bool = u_xlatb9;
  if (x_217) {
    let x_221 : vec4<f32> = u_xlat1;
    x_218 = vec2<f32>(x_221.x, x_221.y);
  } else {
    let x_224 : vec2<f32> = u_xlat7;
    x_218 = x_224;
  }
  let x_225 : vec2<f32> = x_218;
  let x_226 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_225.x, x_225.y, x_226.z, x_226.w);
  let x_228 : vec4<f32> = u_xlat1;
  let x_230 : vec4<f32> = u_xlat1;
  u_xlat9 = dot(vec2<f32>(x_228.x, x_228.y), vec2<f32>(x_230.x, x_230.y));
  let x_233 : f32 = u_xlat9;
  let x_235 : f32 = u_xlat6.x;
  u_xlatb6 = (x_233 < x_235);
  let x_237 : bool = u_xlatb6;
  if (x_237) {
    let x_241 : vec4<f32> = u_xlat0;
    x_238 = vec2<f32>(x_241.x, x_241.y);
  } else {
    let x_244 : vec4<f32> = u_xlat1;
    x_238 = vec2<f32>(x_244.x, x_244.y);
  }
  let x_246 : vec2<f32> = x_238;
  let x_247 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_246.x, x_246.y, x_247.z, x_247.w);
  let x_249 : vec4<f32> = u_xlat0;
  let x_251 : vec4<f32> = u_xlat0;
  u_xlat6.x = dot(vec2<f32>(x_249.x, x_249.y), vec2<f32>(x_251.x, x_251.y));
  let x_255 : vec4<f32> = u_xlat2;
  let x_257 : vec4<f32> = u_xlat2;
  u_xlat9 = dot(vec2<f32>(x_255.x, x_255.y), vec2<f32>(x_257.x, x_257.y));
  let x_261 : vec4<f32> = x_12.x_MainTex_TexelSize;
  let x_266 : vec2<f32> = vs_TEXCOORD0;
  u_xlat1 = ((-(vec4<f32>(x_261.x, x_261.y, x_261.y, x_261.y)) * vec4<f32>(1.0f, 1.0f, 0.0f, 1.0f)) + vec4<f32>(x_266.x, x_266.y, x_266.x, x_266.y));
  let x_272 : vec4<f32> = u_xlat1;
  let x_274 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_272.z, x_272.w));
  u_xlat7 = vec2<f32>(x_274.x, x_274.y);
  let x_279 : vec4<f32> = u_xlat1;
  let x_281 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_279.x, x_279.y));
  let x_282 : vec2<f32> = vec2<f32>(x_281.x, x_281.y);
  let x_283 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_282.x, x_282.y, x_283.z, x_283.w);
  let x_285 : vec2<f32> = u_xlat7;
  let x_286 : vec2<f32> = u_xlat7;
  u_xlat8 = dot(x_285, x_286);
  let x_288 : f32 = u_xlat8;
  let x_289 : f32 = u_xlat9;
  u_xlatb9 = (x_288 < x_289);
  let x_291 : bool = u_xlatb9;
  if (x_291) {
    let x_295 : vec4<f32> = u_xlat2;
    x_292 = vec2<f32>(x_295.x, x_295.y);
  } else {
    let x_298 : vec2<f32> = u_xlat7;
    x_292 = x_298;
  }
  let x_299 : vec2<f32> = x_292;
  u_xlat7 = x_299;
  let x_300 : vec2<f32> = u_xlat7;
  let x_301 : vec2<f32> = u_xlat7;
  u_xlat9 = dot(x_300, x_301);
  let x_303 : vec4<f32> = u_xlat1;
  let x_305 : vec4<f32> = u_xlat1;
  u_xlat2.x = dot(vec2<f32>(x_303.x, x_303.y), vec2<f32>(x_305.x, x_305.y));
  let x_310 : f32 = u_xlat2.x;
  let x_311 : f32 = u_xlat9;
  u_xlatb9 = (x_310 < x_311);
  let x_313 : bool = u_xlatb9;
  if (x_313) {
    let x_317 : vec2<f32> = u_xlat7;
    x_314 = x_317;
  } else {
    let x_319 : vec4<f32> = u_xlat1;
    x_314 = vec2<f32>(x_319.x, x_319.y);
  }
  let x_321 : vec2<f32> = x_314;
  let x_322 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_321.x, x_321.y, x_322.z, x_322.w);
  let x_324 : vec4<f32> = u_xlat1;
  let x_326 : vec4<f32> = u_xlat1;
  u_xlat9 = dot(vec2<f32>(x_324.x, x_324.y), vec2<f32>(x_326.x, x_326.y));
  let x_329 : f32 = u_xlat9;
  let x_331 : f32 = u_xlat6.x;
  u_xlatb6 = (x_329 < x_331);
  let x_333 : bool = u_xlatb6;
  if (x_333) {
    let x_337 : vec4<f32> = u_xlat0;
    x_334 = vec2<f32>(x_337.x, x_337.y);
  } else {
    let x_340 : vec4<f32> = u_xlat1;
    x_334 = vec2<f32>(x_340.x, x_340.y);
  }
  let x_342 : vec2<f32> = x_334;
  let x_343 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_342.x, x_342.y, x_343.z, x_343.w);
  let x_347 : vec4<f32> = u_xlat0;
  let x_351 : vec2<f32> = (vec2<f32>(x_347.x, x_347.y) * vec2<f32>(0.990099013f, 0.990099013f));
  let x_352 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_351.x, x_351.y, x_352.z, x_352.w);
  let x_355 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_355.x, x_355.y, vec2<f32>(0.0f, 0.0f).x, vec2<f32>(0.0f, 0.0f).y);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

