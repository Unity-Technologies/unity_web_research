struct PGlobals {
  x_Dithering_Coords : vec4<f32>,
}

var<private> u_xlat0 : vec3<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(0) var<uniform> x_17 : PGlobals;

@group(0) @binding(1) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(4) var sampler_DitheringTex : sampler;

var<private> u_xlat3 : vec3<f32>;

@group(0) @binding(3) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_AutoExposureTex : sampler;

var<private> u_xlat1 : vec4<f32>;

@group(0) @binding(2) var x_MainTex : texture_2d<f32>;

@group(0) @binding(5) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlatb3 : vec3<bool>;

var<private> u_xlatb0 : vec3<bool>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_181 : f32;
  var x_194 : f32;
  var x_207 : f32;
  var x_273 : f32;
  var x_285 : f32;
  var x_297 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec2<f32> = vs_TEXCOORD0;
  let x_22 : vec4<f32> = x_17.x_Dithering_Coords;
  let x_26 : vec4<f32> = x_17.x_Dithering_Coords;
  let x_28 : vec2<f32> = ((x_13 * vec2<f32>(x_22.x, x_22.y)) + vec2<f32>(x_26.z, x_26.w));
  let x_29 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_28.x, x_28.y, x_29.z);
  let x_41 : vec3<f32> = u_xlat0;
  let x_43 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_41.x, x_41.y));
  u_xlat0.x = x_43.w;
  let x_51 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_51 * 2.0f) + -1.0f);
  let x_59 : f32 = u_xlat0.x;
  u_xlat3.x = (-(abs(x_59)) + 1.0f);
  let x_66 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_66 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_73 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_73, 0.0f, 1.0f);
  let x_78 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_78 * 2.0f) + -1.0f);
  let x_83 : f32 = u_xlat3.x;
  u_xlat3.x = sqrt(x_83);
  let x_87 : f32 = u_xlat3.x;
  u_xlat3.x = (-(x_87) + 1.0f);
  let x_92 : f32 = u_xlat3.x;
  let x_94 : f32 = u_xlat0.x;
  u_xlat0.x = (x_92 * x_94);
  let x_102 : vec2<f32> = vs_TEXCOORD0;
  let x_103 : vec4<f32> = textureSample(x_AutoExposureTex, sampler_AutoExposureTex, x_102);
  u_xlat3.x = x_103.x;
  let x_114 : vec2<f32> = vs_TEXCOORD1;
  let x_115 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_114);
  u_xlat1 = x_115;
  let x_116 : vec3<f32> = u_xlat3;
  let x_118 : vec4<f32> = u_xlat1;
  u_xlat3 = (vec3<f32>(x_116.x, x_116.x, x_116.x) * vec3<f32>(x_118.x, x_118.y, x_118.z));
  let x_124 : f32 = u_xlat1.w;
  SV_Target0.w = x_124;
  let x_127 : vec3<f32> = u_xlat3;
  let x_131 : vec3<f32> = max(abs(x_127), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_132 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_131.x, x_131.y, x_131.z, x_132.w);
  let x_134 : vec4<f32> = u_xlat1;
  let x_136 : vec3<f32> = log2(vec3<f32>(x_134.x, x_134.y, x_134.z));
  let x_137 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_136.x, x_136.y, x_136.z, x_137.w);
  let x_139 : vec4<f32> = u_xlat1;
  let x_143 : vec3<f32> = (vec3<f32>(x_139.x, x_139.y, x_139.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_144 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_143.x, x_143.y, x_143.z, x_144.w);
  let x_146 : vec4<f32> = u_xlat1;
  let x_148 : vec3<f32> = exp2(vec3<f32>(x_146.x, x_146.y, x_146.z));
  let x_149 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_148.x, x_148.y, x_148.z, x_149.w);
  let x_151 : vec4<f32> = u_xlat1;
  let x_158 : vec3<f32> = ((vec3<f32>(x_151.x, x_151.y, x_151.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_159 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_158.x, x_158.y, x_158.z, x_159.w);
  let x_162 : vec3<f32> = u_xlat3;
  u_xlat2 = (x_162 * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_172 : vec3<f32> = u_xlat3;
  let x_175 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0031308f) >= vec4<f32>(x_172.x, x_172.y, x_172.z, x_172.z));
  u_xlatb3 = vec3<bool>(x_175.x, x_175.y, x_175.z);
  let x_179 : bool = u_xlatb3.x;
  if (x_179) {
    let x_185 : f32 = u_xlat2.x;
    x_181 = x_185;
  } else {
    let x_188 : f32 = u_xlat1.x;
    x_181 = x_188;
  }
  let x_189 : f32 = x_181;
  u_xlat3.x = x_189;
  let x_193 : bool = u_xlatb3.y;
  if (x_193) {
    let x_198 : f32 = u_xlat2.y;
    x_194 = x_198;
  } else {
    let x_201 : f32 = u_xlat1.y;
    x_194 = x_201;
  }
  let x_202 : f32 = x_194;
  u_xlat3.y = x_202;
  let x_206 : bool = u_xlatb3.z;
  if (x_206) {
    let x_211 : f32 = u_xlat2.z;
    x_207 = x_211;
  } else {
    let x_214 : f32 = u_xlat1.z;
    x_207 = x_214;
  }
  let x_215 : f32 = x_207;
  u_xlat3.z = x_215;
  let x_217 : vec3<f32> = u_xlat0;
  let x_222 : vec3<f32> = u_xlat3;
  u_xlat0 = ((vec3<f32>(x_217.x, x_217.x, x_217.x) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + x_222);
  let x_224 : vec3<f32> = u_xlat0;
  let x_227 : vec3<f32> = (x_224 + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_228 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_227.x, x_227.y, x_227.z, x_228.w);
  let x_230 : vec4<f32> = u_xlat1;
  let x_234 : vec3<f32> = (vec3<f32>(x_230.x, x_230.y, x_230.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_235 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_234.x, x_234.y, x_234.z, x_235.w);
  let x_237 : vec4<f32> = u_xlat1;
  let x_240 : vec3<f32> = max(abs(vec3<f32>(x_237.x, x_237.y, x_237.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_241 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_240.x, x_240.y, x_240.z, x_241.w);
  let x_243 : vec4<f32> = u_xlat1;
  let x_245 : vec3<f32> = log2(vec3<f32>(x_243.x, x_243.y, x_243.z));
  let x_246 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_245.x, x_245.y, x_245.z, x_246.w);
  let x_248 : vec4<f32> = u_xlat1;
  let x_252 : vec3<f32> = (vec3<f32>(x_248.x, x_248.y, x_248.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_253 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_252.x, x_252.y, x_252.z, x_253.w);
  let x_255 : vec4<f32> = u_xlat1;
  let x_257 : vec3<f32> = exp2(vec3<f32>(x_255.x, x_255.y, x_255.z));
  let x_258 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_257.x, x_257.y, x_257.z, x_258.w);
  let x_260 : vec3<f32> = u_xlat0;
  u_xlat2 = (x_260 * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_267 : vec3<f32> = u_xlat0;
  let x_269 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_267.x, x_267.y, x_267.z, x_267.x));
  u_xlatb0 = vec3<bool>(x_269.x, x_269.y, x_269.z);
  let x_272 : bool = u_xlatb0.x;
  if (x_272) {
    let x_277 : f32 = u_xlat2.x;
    x_273 = x_277;
  } else {
    let x_280 : f32 = u_xlat1.x;
    x_273 = x_280;
  }
  let x_281 : f32 = x_273;
  SV_Target0.x = x_281;
  let x_284 : bool = u_xlatb0.y;
  if (x_284) {
    let x_289 : f32 = u_xlat2.y;
    x_285 = x_289;
  } else {
    let x_292 : f32 = u_xlat1.y;
    x_285 = x_292;
  }
  let x_293 : f32 = x_285;
  SV_Target0.y = x_293;
  let x_296 : bool = u_xlatb0.z;
  if (x_296) {
    let x_301 : f32 = u_xlat2.z;
    x_297 = x_301;
  } else {
    let x_304 : f32 = u_xlat1.z;
    x_297 = x_304;
  }
  let x_305 : f32 = x_297;
  SV_Target0.z = x_305;
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

