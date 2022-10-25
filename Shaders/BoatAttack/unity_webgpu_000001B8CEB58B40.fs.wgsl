struct PGlobals {
  x_PCUVToBrushUVScales : vec4<f32>,
  x_PCUVToBrushUVOffset : vec2<f32>,
  @size(8)
  padding : u32,
  x_BrushParams : vec4<f32>,
}

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_17 : PGlobals;

@group(0) @binding(1) var x_BrushTex : texture_2d<f32>;

@group(0) @binding(3) var sampler_BrushTex : sampler;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(2) var sampler_MainTex : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat4 : vec2<f32>;
  var u_xlatb4 : vec2<bool>;
  var u_xlatb2 : bool;
  var u_xlat2 : vec2<f32>;
  var u_xlatu0 : vec2<u32>;
  var u_xlat1 : vec2<f32>;
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
  u_xlat2.x = select(0.0f, 1.0f, x_97);
  let x_101 : f32 = u_xlat2.x;
  let x_103 : f32 = u_xlat0.x;
  u_xlat0.x = (x_101 * x_103);
  let x_107 : f32 = u_xlat0.x;
  let x_111 : f32 = x_17.x_BrushParams.x;
  u_xlat0.x = (x_107 * x_111);
  let x_115 : f32 = u_xlat0.x;
  u_xlat0.x = (x_115 * 0.00389105058f);
  let x_124 : vec2<f32> = vs_TEXCOORD0;
  let x_125 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_124);
  u_xlat2 = vec2<f32>(x_125.x, x_125.y);
  let x_128 : f32 = u_xlat2.y;
  let x_131 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_128 * 256.0f) + x_131);
  let x_135 : f32 = u_xlat2.x;
  let x_138 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_135 * 0.00389105058f) + x_138);
  let x_142 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_142, 0.0f);
  let x_146 : f32 = u_xlat0.x;
  u_xlat0.x = min(x_146, 0.499977112f);
  let x_151 : f32 = u_xlat0.x;
  u_xlat0.x = (x_151 * 65535.0f);
  let x_159 : f32 = u_xlat0.x;
  u_xlatu0.x = u32(x_159);
  let x_164 : u32 = u_xlatu0.x;
  u_xlatu0.y = (x_164 & 255u);
  let x_169 : u32 = u_xlatu0.x;
  u_xlatu0.x = (x_169 >> 8u);
  let x_174 : vec2<u32> = u_xlatu0;
  u_xlat1 = vec2<f32>(vec2<u32>(x_174.y, x_174.x));
  let x_179 : vec2<f32> = u_xlat1;
  let x_182 : vec2<f32> = (x_179 * vec2<f32>(0.003921569f, 0.003921569f));
  let x_183 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_182.x, x_182.y, x_183.z, x_183.w);
  let x_186 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_186.x, x_186.y, vec2<f32>(0.0f, 0.0f).x, vec2<f32>(0.0f, 0.0f).y);
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

