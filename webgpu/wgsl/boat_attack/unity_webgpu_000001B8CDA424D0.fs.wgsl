struct PGlobals {
  x_Cutoff : f32,
}

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(1) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_35 : PGlobals;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec2<f32>;
  var u_xlatb0 : bool;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_22 : vec2<f32> = vs_TEXCOORD0;
  let x_24 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_22);
  u_xlat0.x = x_24.w;
  let x_32 : f32 = u_xlat0.x;
  let x_40 : f32 = x_35.x_Cutoff;
  u_xlat0.x = (x_32 + -(x_40));
  let x_48 : f32 = u_xlat0.x;
  u_xlatb0 = (x_48 < 0.0f);
  let x_51 : bool = u_xlatb0;
  if (((select(0i, 1i, x_51) * -1i) != 0i)) {
    discard;
  }
  let x_65 : f32 = vs_TEXCOORD1.z;
  u_xlat0.x = (x_65 + 1.0f);
  let x_69 : vec4<f32> = vs_TEXCOORD1;
  let x_71 : vec2<f32> = u_xlat0;
  u_xlat0 = (vec2<f32>(x_69.x, x_69.y) / vec2<f32>(x_71.x, x_71.x));
  let x_76 : vec2<f32> = u_xlat0;
  let x_82 : vec2<f32> = ((x_76 * vec2<f32>(0.281262308f, 0.281262308f)) + vec2<f32>(0.5f, 0.5f));
  let x_83 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_82.x, x_82.y, x_83.z, x_83.w);
  let x_85 : vec4<f32> = vs_TEXCOORD1;
  u_xlat0 = (vec2<f32>(x_85.w, x_85.w) * vec2<f32>(1.0f, 255.0f));
  let x_90 : vec2<f32> = u_xlat0;
  u_xlat0 = fract(x_90);
  let x_94 : f32 = u_xlat0.y;
  let x_99 : f32 = u_xlat0.x;
  SV_Target0.z = ((-(x_94) * 0.003921569f) + x_99);
  let x_104 : f32 = u_xlat0.y;
  SV_Target0.w = x_104;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

