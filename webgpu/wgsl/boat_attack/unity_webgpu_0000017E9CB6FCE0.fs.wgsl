diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_PCUVToBrushUVScales : vec4<f32>,
  /* @offset(16) */
  x_PCUVToBrushUVOffset : vec2<f32>,
  /* @offset(32) */
  x_BrushParams : vec4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_17 : PGlobals;

var<private> u_xlat4 : vec2<f32>;

var<private> u_xlatb4 : vec2<bool>;

@group(0) @binding(1) var x_BrushTex : texture_2d<f32>;

@group(0) @binding(3) var sampler_BrushTex : sampler;

var<private> u_xlatb2 : bool;

var<private> u_xlat2 : f32;

var<private> u_xlat1 : vec2<f32>;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(2) var sampler_MainTex : sampler;

var<private> u_xlat6 : f32;

var<private> u_xlat3 : f32;

var<private> u_xlatu0 : vec2<u32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_196 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec2<f32> = vs_TEXCOORD0;
  let x_22 : vec4<f32> = x_17.x_PCUVToBrushUVScales;
  u_xlat0 = (vec4<f32>(x_13.x, x_13.x, x_13.y, x_13.y) * x_22);
  let x_24 : vec4<f32> = u_xlat0;
  let x_26 : vec4<f32> = u_xlat0;
  let x_28 : vec2<f32> = (vec2<f32>(x_24.z, x_24.w) + vec2<f32>(x_26.x, x_26.y));
  let x_29 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_28.x, x_28.y, x_29.z, x_29.w);
  let x_31 : vec4<f32> = u_xlat0;
  let x_36 : vec2<f32> = x_17.x_PCUVToBrushUVOffset;
  let x_37 : vec2<f32> = (vec2<f32>(x_31.x, x_31.y) + x_36);
  let x_38 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_37.x, x_37.y, x_38.z, x_38.w);
  let x_42 : vec4<f32> = u_xlat0;
  u_xlat4 = vec2<f32>(x_42.x, x_42.y);
  let x_44 : vec2<f32> = u_xlat4;
  u_xlat4 = clamp(x_44, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_54 : vec4<f32> = u_xlat0;
  let x_56 : vec2<f32> = u_xlat4;
  let x_59 : vec4<bool> = (vec4<f32>(x_54.x, x_54.y, x_54.x, x_54.y) == vec4<f32>(x_56.x, x_56.y, x_56.x, x_56.y));
  u_xlatb4 = vec2<bool>(x_59.x, x_59.y);
  let x_71 : vec4<f32> = u_xlat0;
  let x_73 : vec4<f32> = textureSample(x_BrushTex, sampler_BrushTex, vec2<f32>(x_71.x, x_71.y));
  let x_74 : vec2<f32> = vec2<f32>(x_73.x, x_73.y);
  let x_75 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_74.x, x_74.y, x_75.z, x_75.w);
  let x_81 : f32 = u_xlat0.y;
  let x_86 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_81 * 256.0f) + x_86);
  let x_92 : bool = u_xlatb4.y;
  let x_94 : bool = u_xlatb4.x;
  u_xlatb2 = (x_92 & x_94);
  let x_97 : bool = u_xlatb2;
  u_xlat2 = select(0.0f, 1.0f, x_97);
  let x_99 : f32 = u_xlat2;
  let x_101 : f32 = u_xlat0.x;
  u_xlat0.x = (x_99 * x_101);
  let x_105 : f32 = u_xlat0.x;
  let x_110 : f32 = x_17.x_BrushParams.z;
  u_xlat0.x = (x_105 * x_110);
  let x_114 : f32 = u_xlat0.x;
  u_xlat0.x = (x_114 * 0.00389105058275163174f);
  let x_120 : f32 = x_17.x_BrushParams.w;
  u_xlat2 = (-(x_120) + 1.0f);
  let x_123 : f32 = u_xlat2;
  u_xlat2 = clamp(x_123, 0.0f, 1.0f);
  let x_125 : f32 = u_xlat2;
  u_xlat2 = (x_125 * 8.0f);
  let x_128 : f32 = u_xlat2;
  u_xlat2 = exp2(x_128);
  let x_130 : f32 = u_xlat2;
  let x_132 : f32 = u_xlat0.x;
  u_xlat4.x = (x_130 * x_132);
  let x_136 : f32 = u_xlat4.x;
  u_xlat4.x = exp2(x_136);
  let x_145 : vec2<f32> = vs_TEXCOORD0;
  let x_146 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_145);
  u_xlat1 = vec2<f32>(x_146.x, x_146.y);
  let x_150 : f32 = u_xlat1.y;
  let x_153 : f32 = u_xlat1.x;
  u_xlat6 = ((x_150 * 256.0f) + x_153);
  let x_155 : f32 = u_xlat6;
  u_xlat1.x = (x_155 * 0.00389105058275163174f);
  let x_159 : f32 = u_xlat2;
  let x_161 : f32 = u_xlat1.x;
  u_xlat3 = (x_159 * x_161);
  let x_163 : f32 = u_xlat3;
  u_xlat3 = exp2(x_163);
  let x_166 : f32 = u_xlat4.x;
  let x_167 : f32 = u_xlat3;
  u_xlat4.x = (x_166 + x_167);
  let x_171 : f32 = u_xlat4.x;
  u_xlat4.x = (x_171 + -1.0f);
  let x_176 : f32 = u_xlat4.x;
  u_xlat4.x = log2(x_176);
  let x_180 : f32 = u_xlat4.x;
  let x_181 : f32 = u_xlat2;
  u_xlat2 = (x_180 / x_181);
  let x_184 : f32 = u_xlat0.x;
  let x_186 : f32 = u_xlat1.x;
  u_xlat0.x = max(x_184, x_186);
  let x_190 : f32 = x_17.x_BrushParams.w;
  u_xlatb4.x = (0.0f < x_190);
  let x_194 : bool = u_xlatb4.x;
  if (x_194) {
    let x_199 : f32 = u_xlat2;
    x_196 = x_199;
  } else {
    let x_202 : f32 = u_xlat0.x;
    x_196 = x_202;
  }
  let x_203 : f32 = x_196;
  u_xlat0.x = x_203;
  let x_205 : f32 = u_xlat6;
  let x_209 : f32 = u_xlat0.x;
  u_xlat0.x = ((-(x_205) * 0.00389105058275163174f) + x_209);
  let x_213 : f32 = x_17.x_BrushParams.x;
  let x_215 : f32 = u_xlat0.x;
  let x_218 : f32 = u_xlat1.x;
  u_xlat0.x = ((x_213 * x_215) + x_218);
  let x_222 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_222, 0.0f);
  let x_226 : f32 = u_xlat0.x;
  u_xlat0.x = min(x_226, 0.49997711181640625f);
  let x_231 : f32 = u_xlat0.x;
  u_xlat0.x = (x_231 * 65535.0f);
  let x_239 : f32 = u_xlat0.x;
  u_xlatu0.x = u32(x_239);
  let x_244 : u32 = u_xlatu0.x;
  u_xlatu0.y = (x_244 & 255u);
  let x_249 : u32 = u_xlatu0.x;
  u_xlatu0.x = (x_249 >> 8u);
  let x_253 : vec2<u32> = u_xlatu0;
  u_xlat1 = vec2<f32>(vec2<u32>(x_253.y, x_253.x));
  let x_258 : vec2<f32> = u_xlat1;
  let x_261 : vec2<f32> = (x_258 * vec2<f32>(0.0039215688593685627f, 0.0039215688593685627f));
  let x_262 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_261.x, x_261.y, x_262.z, x_262.w);
  let x_265 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_265.x, x_265.y, vec2<f32>(0.0f, 0.0f).x, vec2<f32>(0.0f, 0.0f).y);
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


