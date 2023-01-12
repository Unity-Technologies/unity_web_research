struct PGlobals {
  x_Cutoff : f32,
  @size(12)
  padding : u32,
  x_Color : vec4<f32>,
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
  let x_40 : f32 = x_35.x_Color.w;
  let x_44 : f32 = x_35.x_Cutoff;
  u_xlat0.x = ((x_32 * x_40) + -(x_44));
  let x_52 : f32 = u_xlat0.x;
  u_xlatb0 = (x_52 < 0.0f);
  let x_55 : bool = u_xlatb0;
  if (((select(0i, 1i, x_55) * -1i) != 0i)) {
    discard;
  }
  let x_68 : f32 = vs_TEXCOORD1.z;
  u_xlat0.x = (x_68 + 1.0f);
  let x_72 : vec4<f32> = vs_TEXCOORD1;
  let x_74 : vec2<f32> = u_xlat0;
  u_xlat0 = (vec2<f32>(x_72.x, x_72.y) / vec2<f32>(x_74.x, x_74.x));
  let x_79 : vec2<f32> = u_xlat0;
  let x_85 : vec2<f32> = ((x_79 * vec2<f32>(0.281262308f, 0.281262308f)) + vec2<f32>(0.5f, 0.5f));
  let x_86 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_85.x, x_85.y, x_86.z, x_86.w);
  let x_88 : vec4<f32> = vs_TEXCOORD1;
  u_xlat0 = (vec2<f32>(x_88.w, x_88.w) * vec2<f32>(1.0f, 255.0f));
  let x_93 : vec2<f32> = u_xlat0;
  u_xlat0 = fract(x_93);
  let x_97 : f32 = u_xlat0.y;
  let x_102 : f32 = u_xlat0.x;
  SV_Target0.z = ((-(x_97) * 0.003921569f) + x_102);
  let x_107 : f32 = u_xlat0.y;
  SV_Target0.w = x_107;
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

