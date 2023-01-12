struct PGlobals {
  x_Dithering_Coords : vec4<f32>,
  x_Grain_Params1 : vec2<f32>,
  @size(8)
  padding : u32,
  x_Grain_Params2 : vec4<f32>,
}

@group(0) @binding(2) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(5) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

var<private> SV_Target0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_77 : PGlobals;

@group(0) @binding(3) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_GrainTex : sampler;

@group(0) @binding(0) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(4) var sampler_DitheringTex : sampler;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat9 : f32;
  var u_xlat2 : vec3<f32>;
  var u_xlatb0 : vec3<bool>;
  var x_190 : f32;
  var x_202 : f32;
  var x_215 : f32;
  var x_334 : f32;
  var x_346 : f32;
  var x_358 : f32;
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
    let x_194 : f32 = u_xlat2.x;
    x_190 = x_194;
  } else {
    let x_197 : f32 = u_xlat1.x;
    x_190 = x_197;
  }
  let x_198 : f32 = x_190;
  u_xlat0.x = x_198;
  let x_201 : bool = u_xlatb0.y;
  if (x_201) {
    let x_206 : f32 = u_xlat2.y;
    x_202 = x_206;
  } else {
    let x_209 : f32 = u_xlat1.y;
    x_202 = x_209;
  }
  let x_210 : f32 = x_202;
  u_xlat0.y = x_210;
  let x_214 : bool = u_xlatb0.z;
  if (x_214) {
    let x_219 : f32 = u_xlat2.z;
    x_215 = x_219;
  } else {
    let x_222 : f32 = u_xlat1.z;
    x_215 = x_222;
  }
  let x_223 : f32 = x_215;
  u_xlat0.z = x_223;
  let x_225 : vec2<f32> = vs_TEXCOORD0;
  let x_228 : vec4<f32> = x_77.x_Dithering_Coords;
  let x_232 : vec4<f32> = x_77.x_Dithering_Coords;
  let x_234 : vec2<f32> = ((x_225 * vec2<f32>(x_228.x, x_228.y)) + vec2<f32>(x_232.z, x_232.w));
  let x_235 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_234.x, x_234.y, x_235.z, x_235.w);
  let x_242 : vec4<f32> = u_xlat1;
  let x_244 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_242.x, x_242.y));
  u_xlat9 = x_244.w;
  let x_246 : f32 = u_xlat9;
  u_xlat9 = ((x_246 * 2.0f) + -1.0f);
  let x_251 : f32 = u_xlat9;
  u_xlat1.x = (-(abs(x_251)) + 1.0f);
  let x_256 : f32 = u_xlat9;
  u_xlat9 = ((x_256 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_261 : f32 = u_xlat9;
  u_xlat9 = clamp(x_261, 0.0f, 1.0f);
  let x_263 : f32 = u_xlat9;
  u_xlat9 = ((x_263 * 2.0f) + -1.0f);
  let x_267 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_267);
  let x_271 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_271) + 1.0f);
  let x_275 : f32 = u_xlat9;
  let x_277 : f32 = u_xlat1.x;
  u_xlat9 = (x_275 * x_277);
  let x_279 : f32 = u_xlat9;
  let x_284 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_279, x_279, x_279) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + x_284);
  let x_286 : vec3<f32> = u_xlat0;
  let x_289 : vec3<f32> = (x_286 + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_290 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_289.x, x_289.y, x_289.z, x_290.w);
  let x_292 : vec4<f32> = u_xlat1;
  let x_296 : vec3<f32> = (vec3<f32>(x_292.x, x_292.y, x_292.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_297 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_296.x, x_296.y, x_296.z, x_297.w);
  let x_299 : vec4<f32> = u_xlat1;
  let x_302 : vec3<f32> = max(abs(vec3<f32>(x_299.x, x_299.y, x_299.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_303 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_302.x, x_302.y, x_302.z, x_303.w);
  let x_305 : vec4<f32> = u_xlat1;
  let x_307 : vec3<f32> = log2(vec3<f32>(x_305.x, x_305.y, x_305.z));
  let x_308 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_307.x, x_307.y, x_307.z, x_308.w);
  let x_310 : vec4<f32> = u_xlat1;
  let x_314 : vec3<f32> = (vec3<f32>(x_310.x, x_310.y, x_310.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_315 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_314.x, x_314.y, x_314.z, x_315.w);
  let x_317 : vec4<f32> = u_xlat1;
  let x_319 : vec3<f32> = exp2(vec3<f32>(x_317.x, x_317.y, x_317.z));
  let x_320 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_319.x, x_319.y, x_319.z, x_320.w);
  let x_322 : vec3<f32> = u_xlat0;
  u_xlat2 = (x_322 * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_328 : vec3<f32> = u_xlat0;
  let x_330 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_328.x, x_328.y, x_328.z, x_328.x));
  u_xlatb0 = vec3<bool>(x_330.x, x_330.y, x_330.z);
  let x_333 : bool = u_xlatb0.x;
  if (x_333) {
    let x_338 : f32 = u_xlat2.x;
    x_334 = x_338;
  } else {
    let x_341 : f32 = u_xlat1.x;
    x_334 = x_341;
  }
  let x_342 : f32 = x_334;
  SV_Target0.x = x_342;
  let x_345 : bool = u_xlatb0.y;
  if (x_345) {
    let x_350 : f32 = u_xlat2.y;
    x_346 = x_350;
  } else {
    let x_353 : f32 = u_xlat1.y;
    x_346 = x_353;
  }
  let x_354 : f32 = x_346;
  SV_Target0.y = x_354;
  let x_357 : bool = u_xlatb0.z;
  if (x_357) {
    let x_362 : f32 = u_xlat2.z;
    x_358 = x_362;
  } else {
    let x_365 : f32 = u_xlat1.z;
    x_358 = x_365;
  }
  let x_366 : f32 = x_358;
  SV_Target0.z = x_366;
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

