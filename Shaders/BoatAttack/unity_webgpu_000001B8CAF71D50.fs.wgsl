struct PGlobals {
  x_GlobalMipBias : vec2<f32>,
  @size(8)
  padding : u32,
  x_Params : vec4<f32>,
}

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_23 : PGlobals;

var<private> SV_Target0 : vec4<f32>;

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

@group(0) @binding(1) var sampler_LinearClamp : sampler;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec2<f32>;
  var u_xlat4 : f32;
  var u_xlat6 : f32;
  var u_xlat1 : f32;
  var u_xlat3 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec2<f32> = vs_TEXCOORD0;
  u_xlat0 = ((x_12 * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_19 : vec2<f32> = u_xlat0;
  let x_28 : vec4<f32> = x_23.x_Params;
  u_xlat0 = (x_19 * vec2<f32>(x_28.x, x_28.y));
  let x_31 : vec2<f32> = u_xlat0;
  let x_33 : vec4<f32> = x_23.x_Params;
  u_xlat0 = (x_31 * vec2<f32>(x_33.w, x_33.w));
  let x_42 : f32 = x_23.x_Params.z;
  u_xlat4 = (x_42 + 1.0f);
  let x_46 : f32 = u_xlat4;
  let x_47 : f32 = u_xlat4;
  u_xlat6 = (x_46 * x_47);
  let x_51 : f32 = u_xlat0.x;
  let x_53 : f32 = u_xlat0.x;
  let x_55 : f32 = u_xlat6;
  u_xlat6 = ((x_51 * x_53) + x_55);
  let x_59 : f32 = u_xlat0.x;
  let x_61 : f32 = x_23.x_Params.z;
  u_xlat1 = (x_59 * x_61);
  let x_64 : f32 = u_xlat1;
  let x_66 : f32 = u_xlat1;
  let x_68 : f32 = u_xlat6;
  u_xlat3 = ((-(x_64) * x_66) + x_68);
  let x_70 : f32 = u_xlat3;
  u_xlat3 = sqrt(x_70);
  let x_72 : f32 = u_xlat4;
  let x_73 : f32 = u_xlat3;
  u_xlat3 = (x_72 * x_73);
  let x_75 : f32 = u_xlat1;
  let x_78 : f32 = u_xlat0.x;
  let x_80 : f32 = u_xlat3;
  u_xlat1 = ((-(x_75) * x_78) + x_80);
  let x_82 : f32 = u_xlat1;
  let x_83 : f32 = u_xlat6;
  u_xlat6 = (x_82 / x_83);
  let x_85 : f32 = u_xlat6;
  let x_87 : f32 = x_23.x_Params.z;
  u_xlat1 = (x_85 + x_87);
  let x_89 : f32 = u_xlat1;
  let x_90 : f32 = u_xlat4;
  u_xlat4 = (x_89 / x_90);
  let x_92 : f32 = u_xlat4;
  let x_94 : vec2<f32> = u_xlat0;
  u_xlat0 = (vec2<f32>(x_92, x_92) * x_94);
  let x_96 : vec2<f32> = u_xlat0;
  let x_97 : f32 = u_xlat6;
  u_xlat0 = (x_96 / vec2<f32>(x_97, x_97));
  let x_100 : vec2<f32> = u_xlat0;
  let x_102 : vec4<f32> = x_23.x_Params;
  u_xlat0 = (x_100 / vec2<f32>(x_102.x, x_102.y));
  let x_105 : vec2<f32> = u_xlat0;
  u_xlat0 = ((x_105 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
  let x_122 : vec2<f32> = u_xlat0;
  let x_125 : f32 = x_23.x_GlobalMipBias.x;
  let x_126 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, x_122, x_125);
  SV_Target0 = x_126;
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

