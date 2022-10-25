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
  var u_xlat2 : f32;
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
  let x_41 : f32 = u_xlat0.x;
  let x_43 : f32 = u_xlat0.x;
  u_xlat2 = (x_41 * x_43);
  let x_47 : f32 = u_xlat0.x;
  let x_49 : f32 = u_xlat0.x;
  u_xlat3 = ((x_47 * x_49) + 4.0f);
  let x_53 : f32 = u_xlat3;
  u_xlat3 = sqrt(x_53);
  let x_55 : f32 = u_xlat2;
  let x_56 : f32 = u_xlat3;
  u_xlat2 = (x_55 / x_56);
  let x_58 : f32 = u_xlat2;
  let x_60 : f32 = u_xlat3;
  u_xlat2 = (-(x_58) + x_60);
  let x_62 : f32 = u_xlat2;
  let x_63 : f32 = u_xlat3;
  u_xlat2 = (x_62 / x_63);
  let x_65 : f32 = u_xlat2;
  let x_67 : vec2<f32> = u_xlat0;
  u_xlat0 = (vec2<f32>(x_65, x_65) * x_67);
  let x_69 : f32 = u_xlat2;
  u_xlat2 = ((x_69 * 2.0f) + -1.0f);
  let x_72 : vec2<f32> = u_xlat0;
  let x_73 : f32 = u_xlat2;
  u_xlat0 = (x_72 / vec2<f32>(x_73, x_73));
  let x_76 : vec2<f32> = u_xlat0;
  let x_78 : vec4<f32> = x_23.x_Params;
  u_xlat0 = (x_76 / vec2<f32>(x_78.x, x_78.y));
  let x_81 : vec2<f32> = u_xlat0;
  u_xlat0 = ((x_81 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
  let x_98 : vec2<f32> = u_xlat0;
  let x_102 : f32 = x_23.x_GlobalMipBias.x;
  let x_103 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, x_98, x_102);
  SV_Target0 = x_103;
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

