struct PGlobals {
  x_Dithering_Coords : vec4<f32>,
  x_Grain_Params1 : vec2<f32>,
  @size(8)
  padding : u32,
  x_Grain_Params2 : vec4<f32>,
}

var<private> u_xlat0 : vec3<f32>;

@group(0) @binding(3) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat1 : vec4<f32>;

@group(0) @binding(2) var x_MainTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlat9 : f32;

@group(0) @binding(0) var<uniform> x_77 : PGlobals;

@group(0) @binding(4) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_GrainTex : sampler;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlatb0 : vec3<bool>;

@group(0) @binding(1) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(5) var sampler_DitheringTex : sampler;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_191 : f32;
  var x_203 : f32;
  var x_216 : f32;
  var x_335 : f32;
  var x_347 : f32;
  var x_359 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_25 : vec4<f32> = textureSample(x_AutoExposureTex, sampler_AutoExposureTex, x_23);
  u_xlat0.x = x_25.x;
  let x_39 : vec2<f32> = vs_TEXCOORD1;
  let x_40 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_39);
  u_xlat1 = x_40;
  let x_41 : vec3<f32> = u_xlat0;
  let x_43 : vec4<f32> = u_xlat1;
  u_xlat0 = (vec3<f32>(x_41.x, x_41.x, x_41.x) * vec3<f32>(x_43.x, x_43.y, x_43.z));
  let x_50 : f32 = u_xlat1.w;
  SV_Target0.w = x_50;
  let x_53 : vec3<f32> = u_xlat0;
  let x_54 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_53.x, x_53.y, x_53.z, x_54.w);
  let x_56 : vec4<f32> = u_xlat1;
  let x_62 : vec3<f32> = clamp(vec3<f32>(x_56.x, x_56.y, x_56.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_63 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_62.x, x_62.y, x_62.z, x_63.w);
  let x_66 : vec4<f32> = u_xlat1;
  u_xlat9 = dot(vec3<f32>(x_66.x, x_66.y, x_66.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_73 : f32 = u_xlat9;
  u_xlat9 = sqrt(x_73);
  let x_82 : f32 = x_77.x_Grain_Params1.x;
  let x_83 : f32 = u_xlat9;
  u_xlat9 = ((x_82 * -(x_83)) + 1.0f);
  let x_87 : vec2<f32> = vs_TEXCOORD1;
  let x_91 : vec4<f32> = x_77.x_Grain_Params2;
  let x_95 : vec4<f32> = x_77.x_Grain_Params2;
  let x_97 : vec2<f32> = ((x_87 * vec2<f32>(x_91.x, x_91.y)) + vec2<f32>(x_95.z, x_95.w));
  let x_98 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_97.x, x_97.y, x_98.z, x_98.w);
  let x_105 : vec4<f32> = u_xlat1;
  let x_107 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_105.x, x_105.y));
  let x_108 : vec3<f32> = vec3<f32>(x_107.x, x_107.y, x_107.z);
  let x_109 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_108.x, x_108.y, x_108.z, x_109.w);
  let x_111 : vec3<f32> = u_xlat0;
  let x_112 : vec4<f32> = u_xlat1;
  let x_114 : vec3<f32> = (x_111 * vec3<f32>(x_112.x, x_112.y, x_112.z));
  let x_115 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_114.x, x_114.y, x_114.z, x_115.w);
  let x_117 : vec4<f32> = u_xlat1;
  let x_121 : f32 = x_77.x_Grain_Params1.y;
  let x_123 : f32 = x_77.x_Grain_Params1.y;
  let x_125 : f32 = x_77.x_Grain_Params1.y;
  let x_127 : vec3<f32> = (vec3<f32>(x_117.x, x_117.y, x_117.z) * vec3<f32>(x_121, x_123, x_125));
  let x_128 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_127.x, x_127.y, x_127.z, x_128.w);
  let x_130 : vec4<f32> = u_xlat1;
  let x_132 : f32 = u_xlat9;
  let x_135 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_130.x, x_130.y, x_130.z) * vec3<f32>(x_132, x_132, x_132)) + x_135);
  let x_137 : vec3<f32> = u_xlat0;
  let x_141 : vec3<f32> = max(abs(x_137), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_142 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_141.x, x_141.y, x_141.z, x_142.w);
  let x_144 : vec4<f32> = u_xlat1;
  let x_146 : vec3<f32> = log2(vec3<f32>(x_144.x, x_144.y, x_144.z));
  let x_147 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_146.x, x_146.y, x_146.z, x_147.w);
  let x_149 : vec4<f32> = u_xlat1;
  let x_153 : vec3<f32> = (vec3<f32>(x_149.x, x_149.y, x_149.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_154 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_153.x, x_153.y, x_153.z, x_154.w);
  let x_156 : vec4<f32> = u_xlat1;
  let x_158 : vec3<f32> = exp2(vec3<f32>(x_156.x, x_156.y, x_156.z));
  let x_159 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_158.x, x_158.y, x_158.z, x_159.w);
  let x_161 : vec4<f32> = u_xlat1;
  let x_168 : vec3<f32> = ((vec3<f32>(x_161.x, x_161.y, x_161.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_169 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_168.x, x_168.y, x_168.z, x_169.w);
  let x_172 : vec3<f32> = u_xlat0;
  u_xlat2 = (x_172 * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_182 : vec3<f32> = u_xlat0;
  let x_185 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_182.x, x_182.y, x_182.z, x_182.x));
  u_xlatb0 = vec3<bool>(x_185.x, x_185.y, x_185.z);
  let x_189 : bool = u_xlatb0.x;
  if (x_189) {
    let x_195 : f32 = u_xlat2.x;
    x_191 = x_195;
  } else {
    let x_198 : f32 = u_xlat1.x;
    x_191 = x_198;
  }
  let x_199 : f32 = x_191;
  u_xlat0.x = x_199;
  let x_202 : bool = u_xlatb0.y;
  if (x_202) {
    let x_207 : f32 = u_xlat2.y;
    x_203 = x_207;
  } else {
    let x_210 : f32 = u_xlat1.y;
    x_203 = x_210;
  }
  let x_211 : f32 = x_203;
  u_xlat0.y = x_211;
  let x_215 : bool = u_xlatb0.z;
  if (x_215) {
    let x_220 : f32 = u_xlat2.z;
    x_216 = x_220;
  } else {
    let x_223 : f32 = u_xlat1.z;
    x_216 = x_223;
  }
  let x_224 : f32 = x_216;
  u_xlat0.z = x_224;
  let x_226 : vec2<f32> = vs_TEXCOORD0;
  let x_229 : vec4<f32> = x_77.x_Dithering_Coords;
  let x_233 : vec4<f32> = x_77.x_Dithering_Coords;
  let x_235 : vec2<f32> = ((x_226 * vec2<f32>(x_229.x, x_229.y)) + vec2<f32>(x_233.z, x_233.w));
  let x_236 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_235.x, x_235.y, x_236.z, x_236.w);
  let x_243 : vec4<f32> = u_xlat1;
  let x_245 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_243.x, x_243.y));
  u_xlat9 = x_245.w;
  let x_247 : f32 = u_xlat9;
  u_xlat9 = ((x_247 * 2.0f) + -1.0f);
  let x_252 : f32 = u_xlat9;
  u_xlat1.x = (-(abs(x_252)) + 1.0f);
  let x_257 : f32 = u_xlat9;
  u_xlat9 = ((x_257 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_262 : f32 = u_xlat9;
  u_xlat9 = clamp(x_262, 0.0f, 1.0f);
  let x_264 : f32 = u_xlat9;
  u_xlat9 = ((x_264 * 2.0f) + -1.0f);
  let x_268 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_268);
  let x_272 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_272) + 1.0f);
  let x_276 : f32 = u_xlat9;
  let x_278 : f32 = u_xlat1.x;
  u_xlat9 = (x_276 * x_278);
  let x_280 : f32 = u_xlat9;
  let x_285 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_280, x_280, x_280) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + x_285);
  let x_287 : vec3<f32> = u_xlat0;
  let x_290 : vec3<f32> = (x_287 + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_291 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_290.x, x_290.y, x_290.z, x_291.w);
  let x_293 : vec4<f32> = u_xlat1;
  let x_297 : vec3<f32> = (vec3<f32>(x_293.x, x_293.y, x_293.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_298 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_297.x, x_297.y, x_297.z, x_298.w);
  let x_300 : vec4<f32> = u_xlat1;
  let x_303 : vec3<f32> = max(abs(vec3<f32>(x_300.x, x_300.y, x_300.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_304 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_303.x, x_303.y, x_303.z, x_304.w);
  let x_306 : vec4<f32> = u_xlat1;
  let x_308 : vec3<f32> = log2(vec3<f32>(x_306.x, x_306.y, x_306.z));
  let x_309 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_308.x, x_308.y, x_308.z, x_309.w);
  let x_311 : vec4<f32> = u_xlat1;
  let x_315 : vec3<f32> = (vec3<f32>(x_311.x, x_311.y, x_311.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_316 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_315.x, x_315.y, x_315.z, x_316.w);
  let x_318 : vec4<f32> = u_xlat1;
  let x_320 : vec3<f32> = exp2(vec3<f32>(x_318.x, x_318.y, x_318.z));
  let x_321 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_320.x, x_320.y, x_320.z, x_321.w);
  let x_323 : vec3<f32> = u_xlat0;
  u_xlat2 = (x_323 * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_329 : vec3<f32> = u_xlat0;
  let x_331 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_329.x, x_329.y, x_329.z, x_329.x));
  u_xlatb0 = vec3<bool>(x_331.x, x_331.y, x_331.z);
  let x_334 : bool = u_xlatb0.x;
  if (x_334) {
    let x_339 : f32 = u_xlat2.x;
    x_335 = x_339;
  } else {
    let x_342 : f32 = u_xlat1.x;
    x_335 = x_342;
  }
  let x_343 : f32 = x_335;
  SV_Target0.x = x_343;
  let x_346 : bool = u_xlatb0.y;
  if (x_346) {
    let x_351 : f32 = u_xlat2.y;
    x_347 = x_351;
  } else {
    let x_354 : f32 = u_xlat1.y;
    x_347 = x_354;
  }
  let x_355 : f32 = x_347;
  SV_Target0.y = x_355;
  let x_358 : bool = u_xlatb0.z;
  if (x_358) {
    let x_363 : f32 = u_xlat2.z;
    x_359 = x_363;
  } else {
    let x_366 : f32 = u_xlat1.z;
    x_359 = x_366;
  }
  let x_367 : f32 = x_359;
  SV_Target0.z = x_367;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

